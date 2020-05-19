/**
 * @name Query built from user-controlled sources
 * @description Building a SQL or Java Persistence query from user-controlled sources is vulnerable to insertion of
 *              malicious code by the user.
 * @kind path-problem
 * @problem.severity error
 * @precision high
 * @id java/sql-injection
 * @tags security
 *       external/cwe/cwe-089
 */
import java
import semmle.code.java.Expr
import semmle.code.java.dataflow.FlowSources
import DataFlow::PathGraph

import semmle.code.java.frameworks.android.SQLite
import semmle.code.java.frameworks.javaee.Persistence
import semmle.code.java.frameworks.SpringJdbc
import semmle.code.java.frameworks.MyBatis
import semmle.code.java.frameworks.Hibernate





from QueryInjectionSink query, DataFlow::PathNode source, DataFlow::PathNode sink
where queryTaintedBy(query, source, sink)
select query, source, sink, "Query might include code from $@.", source.getNode(), "this user input"


/**
 * Implementation of `SqlTainted.ql`. This is extracted to a QLL so that it
 * can be excluded from `SqlUnescaped.ql` to avoid overlapping results.
 */
predicate queryTaintedBy(
  QueryInjectionSink query, DataFlow::PathNode source, DataFlow::PathNode sink
) {
  exists(QueryInjectionFlowConfig conf | conf.hasFlowPath(source, sink) and sink.getNode() = query)
}

/** A sink for Java Persistence Query Language injection vulnerabilities. */
class PersistenceQueryInjectionSink extends QueryInjectionSink {
  PersistenceQueryInjectionSink() {
    // the query (first) argument to a `createQuery` or `createNativeQuery` method on `EntityManager`
    exists(MethodAccess call, TypeEntityManager em | call.getArgument(0) = this.getExpr() |
      call.getMethod() = em.getACreateQueryMethod() or
      call.getMethod() = em.getACreateNativeQueryMethod()
      // note: `createNamedQuery` is safe, as it takes only the query name,
      // and named queries can only be constructed using constants as the query text
    )
  }
}

private class QueryInjectionFlowConfig extends TaintTracking::Configuration {
  QueryInjectionFlowConfig() { this = "SqlInjectionLib::QueryInjectionFlowConfig" }

  override predicate isSource(DataFlow::Node src) { src instanceof RemoteFlowSource }

  override predicate isSink(DataFlow::Node sink) { sink instanceof QueryInjectionSink }

  override predicate isSanitizer(DataFlow::Node node) {
    node.getType() instanceof PrimitiveType or node.getType() instanceof BoxedType
  }
}


  /** A sink for database query language injection vulnerabilities. */
abstract class QueryInjectionSink extends DataFlow::ExprNode { }

/** A sink for SQL injection vulnerabilities. */
class SqlInjectionSink extends QueryInjectionSink {
  SqlInjectionSink() {
    this.getExpr() instanceof SqlExpr
    or
    exists(MethodAccess ma, Method m, int index |
      ma.getMethod() = m and
      ma.getArgument(index) = this.getExpr()
    |
      index = m.(SQLiteRunner).sqlIndex()
      or
      m instanceof BatchUpdateVarargsMethod
      or
      index = 0 and jdbcSqlMethod(m)
      or
      index = 0 and mybatisSqlMethod(m)
      or
      index = 0 and hibernateSqlMethod(m)
    )
  }
}