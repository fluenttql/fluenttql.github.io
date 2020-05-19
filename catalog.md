---
layout: page
title: Catalog
subtitle: 
---



## Content and location

The fluentTQL catalog is a set of Java applications with known vulnerabilities, tests that demonstrate how the vulnerabilities can occur,  Javadoc, and fluentTQL specifications for those vulnerabilities. The Java applications are created from code examples from several sources, like the OWASP Benchmark and MITRE database for Common Weakness Enumerations, which is documented in the Javadoc. 

The implementation is located at <a href="https://github.com/fluenttql/fluenttql.catalog">fluenttql.catalog</a>. This src folder in this repository contains the Java source files and the tests. The Javadoc is in the docs folder, whereas the fluentTQL specifications (with .tql file extension) are in the folder specification. 

## Vulnerabilities

| Vulnerability type | CWE | #flows | #sources | #sanitizers | #requiredPropagators | #sinks | Total
| ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| SQL injection | 89 | 3 | 13 | 3 | 6 | 10 | 32 |
| XPath | 634 | 1 | 12 | 1 | 0 | 12 | 25 |
| Command injection | 77 | 1 | 12 | 1 |  | 1 | 15 |
| XML injection | 91 | 1 | 12 | 1 | 1 | 4 | 17 |
| LDAP injection | 90| 1 | 12 | 1 | 0 | 8 | 21 |
| Cross-site scripting | 79 | 2 | 13 | 1 | 1 | 3 | 18 |
| Open redirect | 601 | 2 | 13 | 1 | 0 | 2 | 16 |
| NoSQL injection | 943 | 2 | 5 | 2 | 3 | 2 | 12 |
| Trust boundary violation | 501 | 1 | 12 | 1 | 0 | 1 | 15 |
| Path traversal | 23 | 2 | 12 | 1 | 1 | 2 | 16 |
| Log injection | 117 | 2 | 12 | 1 | 1 | 4 | 18 |
| Total (unique) |  | 18 | 46 | 14 | 13 | 49 | 122 |
