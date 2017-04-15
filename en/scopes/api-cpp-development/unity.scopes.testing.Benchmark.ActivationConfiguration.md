---
Title: unity.scopes.testing.Benchmark.ActivationConfiguration
---
        
ActivationConfiguration
=======================

The <a href="index.html" title="The ActivationConfiguration struct constains all options controlling the benchmark of scope activatio...">ActivationConfiguration</a> struct constains all options controlling the benchmark of scope activation operations. [More...](#details)

`#include <unity/scopes/testing/Benchmark.h>`

pub-types
-----------------------------------------

typedef std::function&lt; std::pair&lt; <a href="unity.scopes.Result.md">unity::scopes::Result</a>, <a href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a> &gt;) &gt; 
<a href="#ad9b338829ebd254c9beccfb866e2a7e4">Sampler</a>
 
pub-attribs
------------------------------------------------

<a href="#ad9b338829ebd254c9beccfb866e2a7e4">Sampler</a> 
<a href="#a364c411f10d9f217b01f55f7167e89cd">sampler</a> {}
 
<a href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> 
<a href="#a1f65dd91e904c04041e47507389a44bb">trial_configuration</a> {}
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" title="The ActivationConfiguration struct constains all options controlling the benchmark of scope activatio...">ActivationConfiguration</a> struct constains all options controlling the benchmark of scope activation operations.

Member Typedef Documentation
----------------------------

<span id="ad9b338829ebd254c9beccfb866e2a7e4" class="anchor"></span>
|                                                                                                                                                                                                                                                                                                                                                                                |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| typedef std::function&lt; std::pair&lt; <a href="unity.scopes.Result.md">unity::scopes::Result</a>, <a href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a>&gt;) &gt; <a href="#ad9b338829ebd254c9beccfb866e2a7e4">unity::scopes::testing::Benchmark::ActivationConfiguration::Sampler</a> |

Function signature for choosing an activation configuration.

Member Data Documentation
-------------------------

<span id="a364c411f10d9f217b01f55f7167e89cd" class="anchor"></span>
|                                                                                                                                                      |
|------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#ad9b338829ebd254c9beccfb866e2a7e4">Sampler</a> unity::scopes::testing::Benchmark::ActivationConfiguration::sampler {} |

The sampling function instance for choosing a preview configuration. Has to be set to an actual instance.

<span id="a1f65dd91e904c04041e47507389a44bb" class="anchor"></span>
|                                                                                                                                                                                                 |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> unity::scopes::testing::Benchmark::ActivationConfiguration::trial\_configuration {} |

fold in trial configuration options into the overall setup.

