---
layout: page
title: Catalog
subtitle: 
---



## Content and location

The fluentTQL catalog is a set of Java applications with known vulnerabilities, tests that demonstrate how the vulnerabilities can occur,  Javadoc, and fluentTQL specifications for those vulnerabilities. The Java applications are created from code examples from several sources, like the OWASP Benchmark and MITRE database for Common Weakness Enumerations, which is documented in the Javadoc. 

The implementation is located at <a href="https://github.com/fluenttql/fluenttql.catalog
">fluenttql.catalog</a>. This src folder in this repository contains the Java source files and the tests. The Javadoc is in the docs folder, whereas the fluentTQL specifications are in the folder specification. 

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



## SANS Top 25 vulnerabilities

The following table shows how many of the top 25 vulnerabilites can be statically detected with taint analysis and how many of them can be expressed in fluentTQL. 

| CWE | Description | Taint-style | Expressible with fluentTQL |
| ------ | ------ | ------ | ------ |
| 79 | Cross-site Scripting | yes | yes |
| 119 | Improper Restriction of Operations within the Bounds of a Memory Buffer | yes | no |
| 20 | Improper Input Validation | yes | yes |
| 200 | Information Exposure | yes | yes |
| 125 | Out-of-bounds Read | no | no |
| 89 | SQL Injection | yes | yes |
| 416 | Use After Free | no | no |
| 190 | Integer Overflow or Wraparound | no | no |
| 352 | Cross-Site Request Forgery (CSRF) | yes* | yes |
| 22 | Improper Limitation of a Pathname to a Restricted Directory | yes | yes |
| 78 | Improper Neutralization of Special Elements used in an OS Command | yes | yes |
| 787 | Out-of-bounds Write | yes | no |
| 287 | Improper Authentication | yes* | yes |
| 476 | NULL Pointer Dereference | yes | no |
| 732 | Incorrect Permission Assignment for Critical Resource | no | no |
| 434 | Unrestricted Upload of File with Dangerous Type | yes | yes |
| 611 | Improper Restriction of XML External Entity Reference | yes | yes |
| 94 | Improper Control of Generation of Code | yes | yes |
| 798 | Use of Hard-coded Credentials | yes | no |
| 400 | Uncontrolled Resource Consumption | no | no |
| 772 | Missing Release of Resource after Effective Lifetime | no | no |
| 426 | Untrusted Search Path | yes |  yes |
| 502 | Deserialization of Untrusted Data | yes | yes  |
| 269 | Improper Privilege Management | no | no |
| 295 | Improper Certificate Validation | no | no |


*this is specific to the programming language and frameworks
