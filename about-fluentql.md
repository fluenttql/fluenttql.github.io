---
layout: page
title: fluentTQL
subtitle: 
---

fluentTQL is a taint-flow query specification language implemented as Java internal DSL, with a fluent-interface design. The taint-flow queries written in fluentTQL model the data-flow between relevant API calls from the analyzed code. The queries can express various taint-style vulnerability types, e.g. injections, cross-site scripting or path traversal. fluentTQL is independent of the underlying analysis. In this implementation we provide two instances, one with Boomerang and another with FlowDroid. We will provide the full implementation for the artifact evaluation.  

