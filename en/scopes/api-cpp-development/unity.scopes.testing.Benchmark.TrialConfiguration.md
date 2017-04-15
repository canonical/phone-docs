---
Title: unity.scopes.testing.Benchmark.TrialConfiguration
---
        
TrialConfiguration
==================

The <a href="index.html" title="The TrialConfiguration struct contains options controlling the execution of individual trials...">TrialConfiguration</a> struct contains options controlling the execution of individual trials. [More...](#details)

`#include <unity/scopes/testing/Benchmark.h>`

pub-attribs
------------------------------------------------

std::size\_t 
<a href="#ae3113a9aff03633e590788fec58afedf">trial_count</a> {25}
 
std::chrono::microseconds 
<a href="#a41de1d88174a2de335649461af175c80">per_trial_timeout</a> {std::chrono::seconds{10}}
 
<a href="unity.scopes.testing.Benchmark.StatisticsConfiguration.md">StatisticsConfiguration</a> 
<a href="#acea63d9b0755526494257de988ae4222">statistics_configuration</a> {}
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" title="The TrialConfiguration struct contains options controlling the execution of individual trials...">TrialConfiguration</a> struct contains options controlling the execution of individual trials.

Member Data Documentation
-------------------------

<span id="a41de1d88174a2de335649461af175c80" class="anchor"></span>
|                                                                                                                                 |
|---------------------------------------------------------------------------------------------------------------------------------|
| std::chrono::microseconds unity::scopes::testing::Benchmark::TrialConfiguration::per\_trial\_timeout {std::chrono::seconds{10}} |

Wait at most this time for one trial to finish or throw if a timeout is encountered.

<span id="acea63d9b0755526494257de988ae4222" class="anchor"></span>
|                                                                                                                                                                                                           |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="unity.scopes.testing.Benchmark.StatisticsConfiguration.md">StatisticsConfiguration</a> unity::scopes::testing::Benchmark::TrialConfiguration::statistics\_configuration {} |

Fold in statistics configuration into the overall trial setup.

<span id="ae3113a9aff03633e590788fec58afedf" class="anchor"></span>
|                                                                                       |
|---------------------------------------------------------------------------------------|
| std::size\_t unity::scopes::testing::Benchmark::TrialConfiguration::trial\_count {25} |

The number of independent trials. Please note that the number should not be &lt;&lt; 10

