---
Title: unity.scopes.testing.Benchmark
---
        
Benchmark
=========

The <a href="index.html" title="The Benchmark class defines an interface to provide scope authors with runtime benchmarking capabilit...">Benchmark</a> class defines an interface to provide scope authors with runtime benchmarking capabilities to be used in their own testing. [More...](#details)

`#include <unity/scopes/testing/Benchmark.h>`

Inheritance diagram for unity::scopes::testing::Benchmark:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/d09d1e7d-312a-40c9-9f07-cae92c778aa1-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Benchmark/classunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png)

<span class="legend">\[legend\]</span>

nested-classes
-----------------------------------------

struct  
<a href="unity.scopes.testing.Benchmark.ActionConfiguration.md">ActionConfiguration</a>
 
The <a href="unity.scopes.testing.Benchmark.ActionConfiguration.md" title="The ActionConfiguration struct constains all options controlling the benchmark of scope action activa...">ActionConfiguration</a> struct constains all options controlling the benchmark of scope action activation operations. [More...](../unity.scopes.testing.Benchmark.ActionConfiguration.md#details)
 
struct  
<a href="unity.scopes.testing.Benchmark.ActivationConfiguration.md">ActivationConfiguration</a>
 
The <a href="unity.scopes.testing.Benchmark.ActivationConfiguration.md" title="The ActivationConfiguration struct constains all options controlling the benchmark of scope activatio...">ActivationConfiguration</a> struct constains all options controlling the benchmark of scope activation operations. [More...](../unity.scopes.testing.Benchmark.ActivationConfiguration.md#details)
 
struct  
<a href="unity.scopes.testing.Benchmark.PreviewConfiguration.md">PreviewConfiguration</a>
 
The <a href="unity.scopes.testing.Benchmark.PreviewConfiguration.md" title="The PreviewConfiguration struct constains all options controlling the benchmark of scope preview oper...">PreviewConfiguration</a> struct constains all options controlling the benchmark of scope preview operations. [More...](../unity.scopes.testing.Benchmark.PreviewConfiguration.md#details)
 
struct  
<a href="unity.scopes.testing.Benchmark.QueryConfiguration.md">QueryConfiguration</a>
 
The <a href="unity.scopes.testing.Benchmark.QueryConfiguration.md" title="The QueryConfiguration struct constains all options controlling the benchmark of scope query operatio...">QueryConfiguration</a> struct constains all options controlling the benchmark of scope query operations. [More...](../unity.scopes.testing.Benchmark.QueryConfiguration.md#details)
 
struct  
<a href="unity.scopes.testing.Benchmark.Result.md">Result</a>
 
The <a href="unity.scopes.testing.Benchmark.Result.md" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a> struct encapsulates all of the result gathered from one individual benchmark run consisting of multiple independent trials. [More...](../unity.scopes.testing.Benchmark.Result.md#details)
 
struct  
<a href="unity.scopes.testing.Benchmark.StatisticsConfiguration.md">StatisticsConfiguration</a>
 
The <a href="unity.scopes.testing.Benchmark.StatisticsConfiguration.md" title="The StatisticsConfiguration struct contains options controlling the calculation of benchmark result s...">StatisticsConfiguration</a> struct contains options controlling the calculation of benchmark result statistics. [More...](../unity.scopes.testing.Benchmark.StatisticsConfiguration.md#details)
 
struct  
<a href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a>
 
The <a href="unity.scopes.testing.Benchmark.TrialConfiguration.md" title="The TrialConfiguration struct contains options controlling the execution of individual trials...">TrialConfiguration</a> struct contains options controlling the execution of individual trials. [More...](../unity.scopes.testing.Benchmark.TrialConfiguration.md#details)
 
pub-methods
------------------------------------------------------

virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#ad815c88ce0d76e4a6abc82438237e987">for_query</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.QueryConfiguration.md">QueryConfiguration</a> configuration)=0
 
for\_query executes a benchmark to measure the scope's query performance. More...
 
virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#a37da073840cfbeb22ed20c2d4631b7ff">for_preview</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.PreviewConfiguration.md">PreviewConfiguration</a> configuration)=0
 
for\_preview executes a benchmark to measure the scope's preview performance. More...
 
virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#a531fbb8fd2259337123495bf7de0bd4a">for_activation</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.ActivationConfiguration.md">ActivationConfiguration</a> configuration)=0
 
for\_preview executes a benchmark to measure the scope's activation performance. More...
 
virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#ad31b1781960e3edd0018a9cf8df4a506">for_action</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.ActionConfiguration.md">ActionConfiguration</a> configuration)=0
 
for\_preview executes a benchmark to measure the scope's action activation performance. More...
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" title="The Benchmark class defines an interface to provide scope authors with runtime benchmarking capabilit...">Benchmark</a> class defines an interface to provide scope authors with runtime benchmarking capabilities to be used in their own testing.

Member Function Documentation
-----------------------------

<span id="ad31b1781960e3edd0018a9cf8df4a506" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::Benchmark::for_action</td>
<td>(</td>
<td>const std::shared_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp; </td>
<td><em>scope</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.testing.Benchmark.ActionConfiguration.md">ActionConfiguration</a> </td>
<td><em>configuration</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

for\_preview executes a benchmark to measure the scope's action activation performance.

Exceptions  
|                     |                              |
|---------------------|------------------------------|
| std::runtime\_error | in case of timeouts.         |
| std::logic\_error   | in case of misconfiguration. |

<!-- -->

Parameters  
|               |                                     |
|---------------|-------------------------------------|
| scope         | The scope instance to benchmark.    |
| configuration | Options controlling the experiment. |

<!-- -->

Returns  
An instance of <a href="unity.scopes.testing.Benchmark.Result.md" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a>.

Implemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark.md#a47874911c026c201699d8fce0443e4bb">unity::scopes::testing::OutOfProcessBenchmark</a>, and <a href="../unity.scopes.testing.InProcessBenchmark.md#a570e17bc7fbb0c7aafb3ed720a5fc35c">unity::scopes::testing::InProcessBenchmark</a>.

<span id="a531fbb8fd2259337123495bf7de0bd4a" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::Benchmark::for_activation</td>
<td>(</td>
<td>const std::shared_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp; </td>
<td><em>scope</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.testing.Benchmark.ActivationConfiguration.md">ActivationConfiguration</a> </td>
<td><em>configuration</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

for\_preview executes a benchmark to measure the scope's activation performance.

Exceptions  
|                     |                              |
|---------------------|------------------------------|
| std::runtime\_error | in case of timeouts.         |
| std::logic\_error   | in case of misconfiguration. |

<!-- -->

Parameters  
|               |                                     |
|---------------|-------------------------------------|
| scope         | The scope instance to benchmark.    |
| configuration | Options controlling the experiment. |

<!-- -->

Returns  
An instance of <a href="unity.scopes.testing.Benchmark.Result.md" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a>.

Implemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark.md#ad918f6c89543eabb3492eb834712e38f">unity::scopes::testing::OutOfProcessBenchmark</a>, and <a href="../unity.scopes.testing.InProcessBenchmark.md#adc815bde331263487183e38836811610">unity::scopes::testing::InProcessBenchmark</a>.

<span id="a37da073840cfbeb22ed20c2d4631b7ff" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::Benchmark::for_preview</td>
<td>(</td>
<td>const std::shared_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp; </td>
<td><em>scope</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.testing.Benchmark.PreviewConfiguration.md">PreviewConfiguration</a> </td>
<td><em>configuration</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

for\_preview executes a benchmark to measure the scope's preview performance.

Exceptions  
|                     |                              |
|---------------------|------------------------------|
| std::runtime\_error | in case of timeouts.         |
| std::logic\_error   | in case of misconfiguration. |

<!-- -->

Parameters  
|               |                                     |
|---------------|-------------------------------------|
| scope         | The scope instance to benchmark.    |
| configuration | Options controlling the experiment. |

<!-- -->

Returns  
An instance of <a href="unity.scopes.testing.Benchmark.Result.md" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a>.

Implemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark.md#a397be9ae5eaca3d6ca96fa2957498c86">unity::scopes::testing::OutOfProcessBenchmark</a>, and <a href="../unity.scopes.testing.InProcessBenchmark.md#a8823d30698cba5f6a03c4989e7356195">unity::scopes::testing::InProcessBenchmark</a>.

<span id="ad815c88ce0d76e4a6abc82438237e987" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::Benchmark::for_query</td>
<td>(</td>
<td>const std::shared_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp; </td>
<td><em>scope</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.testing.Benchmark.QueryConfiguration.md">QueryConfiguration</a> </td>
<td><em>configuration</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

for\_query executes a benchmark to measure the scope's query performance.

Exceptions  
|                     |                              |
|---------------------|------------------------------|
| std::runtime\_error | in case of timeouts.         |
| std::logic\_error   | in case of misconfiguration. |

<!-- -->

Parameters  
|               |                                     |
|---------------|-------------------------------------|
| scope         | The scope instance to benchmark.    |
| configuration | Options controlling the experiment. |

<!-- -->

Returns  
An instance of <a href="unity.scopes.testing.Benchmark.Result.md" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a>.

Implemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark.md#a530a08db775c38ea13478a3d8e1c5bbc">unity::scopes::testing::OutOfProcessBenchmark</a>, and <a href="../unity.scopes.testing.InProcessBenchmark.md#a72460e26d0aa98ae7091f634d0089aa9">unity::scopes::testing::InProcessBenchmark</a>.

