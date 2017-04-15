---
Title: unity.scopes.testing.OutOfProcessBenchmark
---
        
OutOfProcessBenchmark
=====================

The <a href="index.html" title="The OutOfProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in another process. ">OutOfProcessBenchmark</a> class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in another process. [More...](#details)

`#include <unity/scopes/testing/OutOfProcessBenchmark.h>`

Inheritance diagram for unity::scopes::testing::OutOfProcessBenchmark:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/1bbef8e1-a933-4107-97bb-e416c64abddd-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.OutOfProcessBenchmark/classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

<a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#a530a08db775c38ea13478a3d8e1c5bbc">for_query</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.QueryConfiguration.md">QueryConfiguration</a> configuration) override
 
for\_query executes a benchmark to measure the scope's query performance. More...
 
<a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#a397be9ae5eaca3d6ca96fa2957498c86">for_preview</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.PreviewConfiguration.md">PreviewConfiguration</a> preview\_configuration) override
 
for\_preview executes a benchmark to measure the scope's preview performance. More...
 
<a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#ad918f6c89543eabb3492eb834712e38f">for_activation</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.ActivationConfiguration.md">ActivationConfiguration</a> activation\_configuration) override
 
for\_preview executes a benchmark to measure the scope's activation performance. More...
 
<a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#a47874911c026c201699d8fce0443e4bb">for_action</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.ActionConfiguration.md">ActionConfiguration</a> activation\_configuration) override
 
for\_preview executes a benchmark to measure the scope's action activation performance. More...
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" title="The OutOfProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in another process. ">OutOfProcessBenchmark</a> class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in another process.

Please note that this class provides better test isolation than the class <a href="unity.scopes.testing.InProcessBenchmark.md" title="The InProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in the same process. ">InProcessBenchmark</a> and we promote use of this implementation due to this feature. However, as the internal implementation relies on fork(), the results in case of multi-threaded environments that exist before the execution of the benchmark are undefined.

<a href="index.html" class="code">unity::scopes::testing::OutOfProcessBenchmark</a> benchmark;

unity::scopes::Query query{scope\_id};

query.set\_query\_string(scope\_query\_string);

<a href="unity.scopes.SearchMetadata.md" class="code">unity::scopes::SearchMetadata</a> meta\_data{default\_locale, default\_form\_factor};

<a href="unity.scopes.testing.Benchmark.QueryConfiguration.md" class="code">unity::scopes::testing::Benchmark::QueryConfiguration</a> config;

config.<a href="../unity.scopes.testing.Benchmark.QueryConfiguration.md#a164536c278d29914d24fdbca3a3fa4a8" class="code">sampler</a> = \[query, meta\_data\]()

{

<span class="keywordflow">return</span> std::make\_pair(query, meta\_data);

};

<span class="keyword">auto</span> result = benchmark.<a href="#a530a08db775c38ea13478a3d8e1c5bbc" class="code">for_query</a>(scope, config);

Member Function Documentation
-----------------------------

<span id="a47874911c026c201699d8fce0443e4bb" class="anchor"></span>
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
<td><a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::OutOfProcessBenchmark::for_action</td>
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
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
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
An instance of <a href="unity.scopes.testing.Result.md" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>.

Reimplemented from <a href="../unity.scopes.testing.InProcessBenchmark.md#a570e17bc7fbb0c7aafb3ed720a5fc35c">unity::scopes::testing::InProcessBenchmark</a>.

<span id="ad918f6c89543eabb3492eb834712e38f" class="anchor"></span>
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
<td><a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::OutOfProcessBenchmark::for_activation</td>
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
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
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
An instance of <a href="unity.scopes.testing.Result.md" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>.

Reimplemented from <a href="../unity.scopes.testing.InProcessBenchmark.md#adc815bde331263487183e38836811610">unity::scopes::testing::InProcessBenchmark</a>.

<span id="a397be9ae5eaca3d6ca96fa2957498c86" class="anchor"></span>
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
<td><a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::OutOfProcessBenchmark::for_preview</td>
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
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
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
An instance of <a href="unity.scopes.testing.Result.md" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>.

Reimplemented from <a href="../unity.scopes.testing.InProcessBenchmark.md#a8823d30698cba5f6a03c4989e7356195">unity::scopes::testing::InProcessBenchmark</a>.

<span id="a530a08db775c38ea13478a3d8e1c5bbc" class="anchor"></span>
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
<td><a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::OutOfProcessBenchmark::for_query</td>
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
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
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
An instance of <a href="unity.scopes.testing.Result.md" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>.

Reimplemented from <a href="../unity.scopes.testing.InProcessBenchmark.md#a72460e26d0aa98ae7091f634d0089aa9">unity::scopes::testing::InProcessBenchmark</a>.

