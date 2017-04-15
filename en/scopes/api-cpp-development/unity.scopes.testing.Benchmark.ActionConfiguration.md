---
Title: unity.scopes.testing.Benchmark.ActionConfiguration
---
        
ActionConfiguration
===================

The <a href="index.html" title="The ActionConfiguration struct constains all options controlling the benchmark of scope action activa...">ActionConfiguration</a> struct constains all options controlling the benchmark of scope action activation operations. [More...](#details)

`#include <unity/scopes/testing/Benchmark.h>`

pub-types
-----------------------------------------

typedef std::function&lt; std::tuple&lt; <a href="unity.scopes.Result.md">unity::scopes::Result</a>, <a href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a>, std::string, std::string &gt;) &gt; 
<a href="#ae19d4beb525c9a294a62e57cac271b78">Sampler</a>
 
pub-attribs
------------------------------------------------

<a href="#ae19d4beb525c9a294a62e57cac271b78">Sampler</a> 
<a href="#acd2351295122c55b350631d2b4619f18">sampler</a> {}
 
<a href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> 
<a href="#afe76469ab9fadfe40a6de86188060fd5">trial_configuration</a>
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" title="The ActionConfiguration struct constains all options controlling the benchmark of scope action activa...">ActionConfiguration</a> struct constains all options controlling the benchmark of scope action activation operations.

Member Typedef Documentation
----------------------------

<span id="ae19d4beb525c9a294a62e57cac271b78" class="anchor"></span>
|                                                                                                                                                                                                                                                                                                                                                                                                        |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| typedef std::function&lt; std::tuple&lt; <a href="unity.scopes.Result.md">unity::scopes::Result</a>, <a href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a>, std::string, std::string &gt;) &gt; <a href="#ae19d4beb525c9a294a62e57cac271b78">unity::scopes::testing::Benchmark::ActionConfiguration::Sampler</a> |

Function signature for choosing an action invocation configuration.

Member Data Documentation
-------------------------

<span id="acd2351295122c55b350631d2b4619f18" class="anchor"></span>
|                                                                                                                                                  |
|--------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#ae19d4beb525c9a294a62e57cac271b78">Sampler</a> unity::scopes::testing::Benchmark::ActionConfiguration::sampler {} |

The sampling function instance for choosing an action activation configuration. Has to be set to an actual instance.

<span id="afe76469ab9fadfe40a6de86188060fd5" class="anchor"></span>
|                                                                                                                                                                                          |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> unity::scopes::testing::Benchmark::ActionConfiguration::trial\_configuration |

fold in trial configuration options into the overall setup.

