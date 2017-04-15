---
Title: unity.scopes.testing.Benchmark.PreviewConfiguration
---
        
PreviewConfiguration
====================

The <a href="index.html" title="The PreviewConfiguration struct constains all options controlling the benchmark of scope preview oper...">PreviewConfiguration</a> struct constains all options controlling the benchmark of scope preview operations. [More...](#details)

`#include <unity/scopes/testing/Benchmark.h>`

pub-types
-----------------------------------------

typedef std::function&lt; std::pair&lt; <a href="unity.scopes.Result.md">unity::scopes::Result</a>, <a href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a> &gt;) &gt; 
<a href="#a7c4c1946344d6042b189eef172401ee9">Sampler</a>
 
pub-attribs
------------------------------------------------

<a href="#a7c4c1946344d6042b189eef172401ee9">Sampler</a> 
<a href="#a13297c92c2e62b7c418afaddc01dee91">sampler</a> {}
 
<a href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> 
<a href="#ac447b62ad5c1b1c8e8241deec7bc4349">trial_configuration</a> {}
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" title="The PreviewConfiguration struct constains all options controlling the benchmark of scope preview oper...">PreviewConfiguration</a> struct constains all options controlling the benchmark of scope preview operations.

Member Typedef Documentation
----------------------------

<span id="a7c4c1946344d6042b189eef172401ee9" class="anchor"></span>
|                                                                                                                                                                                                                                                                                                                                                                              |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| typedef std::function&lt; std::pair&lt; <a href="unity.scopes.Result.md">unity::scopes::Result</a>, <a href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a> &gt;) &gt; <a href="#a7c4c1946344d6042b189eef172401ee9">unity::scopes::testing::Benchmark::PreviewConfiguration::Sampler</a> |

Function signature for choosing a preview configuration.

Member Data Documentation
-------------------------

<span id="a13297c92c2e62b7c418afaddc01dee91" class="anchor"></span>
|                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#a7c4c1946344d6042b189eef172401ee9">Sampler</a> unity::scopes::testing::Benchmark::PreviewConfiguration::sampler {} |

The sampling function instance for choosing a preview configuration. Has to be set to an actual instance.

<span id="ac447b62ad5c1b1c8e8241deec7bc4349" class="anchor"></span>
|                                                                                                                                                                                              |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> unity::scopes::testing::Benchmark::PreviewConfiguration::trial\_configuration {} |

fold in trial configuration options into the overall setup.

