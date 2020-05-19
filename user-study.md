
# User study

## Overview

This is a comparative, whithin-subjects study between fluentTQL and CodeQL.
The user study was conducted over a set of teleconferences where each participant shared the screen with the moderator. Each study took on average 80 minutes. The session was recorded for post-processing purposes. The identity of the participants is protected. We invited 32 software developers to take part in the study, from which 23 accepted the invitation, referred to as P01-P23. We invited professional developers via our contacts from the industry as well as reseachers and master level students. Additionally, we asked three students to participate in a test session which helped us to estimate the time and adjust the difficulty of the tasks.

## Structure

During the session, each participant worked in Eclipse with available tool support for both DSLs. We referred to the DSLs by DSL-1 and DSL-2 to avoid any bias. At the beginning the participants received a project with all files needed for the practical part. Initially the moderator gave an introduction to taint analysis and showed a Java code example with a SQL injection
vulnerability. The goal of the introduction is to make sure that the participant understands how taint analysis can statically detect SQL injection. The concepts of source, sanitizer, required propagator, and sink were covered. Then, the exercises for DSL-1 and DSL-2 followed. Each exercise consisted of a tutorial and a task. The moderator gave a tutorial for the DSL based on the SQL injection vulnerability. Then, the participants had ten minutes to write a specification in the same DSL for a new vulnerability that was explained by the moderator. We chose the vulnerability types open redirect for fluentTQL and cross-site scripting for CodeQL.
For either type we selected an example with the same pattern in form of source-sanitizer-sink. This ensures that writing a specification for each of vulnerability is equally hard, i.e., the effort to solve the task is same regardless on the example vulnerability.
For each vulnerability type we provided a Java code example as a reference. The participant was allowed to use any of the files provided that included the Java classes and the files with example specifications of fluentTQL and CodeQL. For each task we additionally provided a file with a skeleton code in which the participant wrote the solution. During the tasks, the participants were
allowed to ask questions for clarification. After the tasks we let the participants fill a web form. The moderator guided the participant in the discussion and collected the data for the questionnaire.

## Tutorial

The tutorial of each DSL contains SQL injection example in Java. The class <a href="https://github.com/fluenttql/fluenttql.github.io/blob/master/userstudyfiles/Demo1.java">Demo1.java</a> contains the vulnerabilty. The class <a href="https://github.com/fluenttql/fluenttql.github.io/blob/master/userstudyfiles/Demo2.java">Demo2.java</a> is extension with use of sanitizer that breaks the taint between the source and the sink. 

The fluentTQL specification for the SQL injection example is in the files <a href="https://github.com/fluenttql/fluenttql.github.io/blob/master/userstudyfiles/exampleDemo1.qwel">ExampleDemo1.qwel</a> and <a href="https://github.com/fluenttql/fluenttql.github.io/blob/master/userstudyfiles/exampleDemo2.qwel">ExampleDemo2.qwel</a>. 

The code QL specification for SQL injection example is in the file <a href="https://github.com/fluenttql/fluenttql.github.io/blob/master/userstudyfiles/SQLinjection.ql">SQLinjection.ql</a>. 

## Task

### fluentTQL

The Java code used to explain the Open redirect vulnerabilty is in the class <a href="https://github.com/fluenttql/fluenttql.github.io/blob/master/userstudyfiles/Test2.java">Test2.java</a>. The stub code provided for the solution is in the file <a href="https://github.com/fluenttql/fluenttql.github.io/blob/master/userstudyfiles/example2.qwel">example2.qwel</a>.

### CodeQL

The Java code used to explain the Cross-site scripting vulnerabilty is in the class <a href="https://github.com/fluenttql/fluenttql.github.io/blob/master/userstudyfiles/Test3.java">Test3.java</a>. The stub code provided for the solution is in the file <a href="https://github.com/fluenttql/fluenttql.github.io/blob/master/userstudyfiles/xss.ql">xss.ql</a>.

## Data

The collected data from the user study is in the excel file data.xsl.


## Questionnaire

* Q1 How many years of coding experience do you have? Answer is single option: 1-2, 3-5, 6-9, 10+ years.
* Q2 What is your experience in application security? Answer is single option: Beginner, Basic knowledge, Advenced, Expert.
* Q3 I am interested to learn new DSLs. Answer is on an agreement scale 1 to 10.
* Q4 I find DSL 1 understandable to use. Answer is on an agreement scale 1 to 5.
* Q5 I find DSL 1 unnecessarily complex. Answer is on an agreement scale 1 to 5.
* Q6 I think most people would learn to use DSL 1 very quickly. Answer is on an agreement scale 1 to 5.
* Q7 I would need the support of an expert to use DSL 1. Answer is on an agreement scale 1 to 5.
* Q8 I find DSL 1 to be very readable and elegant. Answer is on an agreement scale 1 to 5.
* Q9 I thought there was too much inconsistency in DSL 1. Answer is on an agreement scale 1 to 5.
* Q10 I felt confident using DSL 1. Answer is on an agreement scale 1 to 5.
* Q11 I needed to learn a lot of things before I could get going with DSL 1. Answer is on an agreement scale 1 to 5.
* Q12 I would recommend DSL 1 to other people. Answer is on an agreement scale 1 to 5.
* Q13 Using DSL 1 was frustrating for me. Answer is on an agreement scale 1 to 5.
* Q14 I find DSL 2 understandable to use. Answer is on an agreement scale 1 to 5.
* Q15 I find DSL 2 unnecessarily complex. Answer is on an agreement scale 1 to 5.
* Q16 I think most people would learn to use DSL 2 very quickly. Answer is on an agreement scale 1 to 5.
* Q17 I would need the support of an expert to use DSL 2. Answer is on an agreement scale 1 to 5.
* Q18 I find DSL 2 to be very readable and elegant. Answer is on an agreement scale 1 to 5.
* Q19 I thought there was too much inconsistency in DSL 2. Answer is on an agreement scale 1 to 5.
* Q20 I felt confident using DSL 2. Answer is on an agreement scale 1 to 5.
* Q21 I needed to learn a lot of things before I could get going with DSL 2. Answer is on an agreement scale 1 to 5.
* Q22 I would recommend DSL 2 to other people. Answer is on an agreement scale 1 to 5.
* Q23 Using DSL 2 was frustrating for me. Answer is on an agreement scale 1 to 5.
* Q24 How much would you recommend DSL 1 over DSL 2 to a friend for the type of task you performed? Answer is on an agreement scale 0 to 10.
* Q25 How much would you recommend DSL 2 over DSL 1 to a friend for the type of task you performed? Answer is on an agreement scale o to 10.
* Q26 Are there syntax elements from DSL 1 that are not understandable? or would you change? Feedback. Open question.
* Q27 Are there syntax elements from DSL 2 that are not understandable? or would you change? Feedback. Open question.
* Q28 Learning new PL through examples is more useful than complete language specification (eg. grammar). Answer is on an agreement scale 1 to 10.

The questionnare was filled out in the webbrowser. 


