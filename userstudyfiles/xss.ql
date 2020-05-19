

import java
import semmle.code.java.dataflow.FlowSources
import semmle.code.java.dataflow.TaintTracking2
import semmle.code.java.security.XSS
import DataFlow2::PathGraph

// TODO: You can implement the class XSSConfig to model a taint tracking problem
// Hint: You can use the predefined classes RemoteFlowSource and XssSink
//class XSSConfig extends TaintTracking2::Configuration {
   // XSSConfig() { this = "XSSConfig" }
   
//}

from 
where 
select 

