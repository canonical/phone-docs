---
Title: unity.scopes.testing.Benchmark.QueryConfiguration
---
        
QueryConfiguration
==================

The <a href="index.html" title="The QueryConfiguration struct constains all options controlling the benchmark of scope query operatio...">QueryConfiguration</a> struct constains all options controlling the benchmark of scope query operations. [More...](#details)

`#include <unity/scopes/testing/Benchmark.h>`

pub-types
-----------------------------------------

typedef std::function&lt; std::pair&lt; <a href="unity.scopes.CannedQuery.md">unity::scopes::CannedQuery</a>, <a href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> &gt;) &gt; 
<a href="#a5989c5a913c2980e26b65d7e485f0fce">Sampler</a>
 
pub-attribs
------------------------------------------------

<a href="#a5989c5a913c2980e26b65d7e485f0fce">Sampler</a> 
<a href="#a164536c278d29914d24fdbca3a3fa4a8">sampler</a> {}
 
<a href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> 
<a href="#a33f804ce4983df9be79f2747d7672ff3">trial_configuration</a> {}
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" title="The QueryConfiguration struct constains all options controlling the benchmark of scope query operatio...">QueryConfiguration</a> struct constains all options controlling the benchmark of scope query operations.

Member Typedef Documentation
----------------------------

<span id="a5989c5a913c2980e26b65d7e485f0fce" class="anchor"></span>
|                                                                                                                                                                                                                                                                                                                                                                                     |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| typedef std::function&lt; std::pair&lt; <a href="unity.scopes.CannedQuery.md">unity::scopes::CannedQuery</a>, <a href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a>&gt;) &gt; <a href="#a5989c5a913c2980e26b65d7e485f0fce">unity::scopes::testing::Benchmark::QueryConfiguration::Sampler</a> |

Function signature for choosing a query configuration.

Member Data Documentation
-------------------------

<span id="a164536c278d29914d24fdbca3a3fa4a8" class="anchor"></span>
|                                                                                                                                                 |
|-------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#a5989c5a913c2980e26b65d7e485f0fce">Sampler</a> unity::scopes::testing::Benchmark::QueryConfiguration::sampler {} |

The sampling function instance for choosing a query configuration. Has to be set to an actual instance.

<span id="a33f804ce4983df9be79f2747d7672ff3" class="anchor"></span>
|                                                                                                                                                                                            |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> unity::scopes::testing::Benchmark::QueryConfiguration::trial\_configuration {} |

fold in trial configuration options into the overall setup.

