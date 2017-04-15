---
Title: unity.scopes.testing.InProcessBenchmark
---
        
InProcessBenchmark
==================

The <a href="index.html" title="The InProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in the same process. ">InProcessBenchmark</a> class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in the same process. [More...](#details)

`#include <unity/scopes/testing/InProcessBenchmark.h>`

Inheritance diagram for unity::scopes::testing::InProcessBenchmark:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/2852f971-8545-4c60-ba58-042f69fdd944-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.InProcessBenchmark/classunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#a72460e26d0aa98ae7091f634d0089aa9">for_query</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.QueryConfiguration.md">QueryConfiguration</a> configuration) override
 
for\_query executes a benchmark to measure the scope's query performance. More...
 
virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#a8823d30698cba5f6a03c4989e7356195">for_preview</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.PreviewConfiguration.md">PreviewConfiguration</a> preview\_configuration) override
 
for\_preview executes a benchmark to measure the scope's preview performance. More...
 
virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#adc815bde331263487183e38836811610">for_activation</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.ActivationConfiguration.md">ActivationConfiguration</a> activation\_configuration) override
 
for\_preview executes a benchmark to measure the scope's activation performance. More...
 
virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> 
<a href="#a570e17bc7fbb0c7aafb3ed720a5fc35c">for_action</a> (const std::shared\_ptr&lt; <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &scope, <a href="unity.scopes.testing.Benchmark.ActionConfiguration.md">ActionConfiguration</a> activation\_configuration) override
 
for\_preview executes a benchmark to measure the scope's action activation performance. More...
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" title="The InProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in the same process. ">InProcessBenchmark</a> class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in the same process.

<a href="index.html" class="code">unity::scopes::testing::InProcessBenchmark</a> benchmark;

unity::scopes::Query query{scope\_id};

query.set\_query\_string(scope\_query\_string);

<a href="unity.scopes.SearchMetadata.md" class="code">unity::scopes::SearchMetadata</a> meta\_data{default\_locale, default\_form\_factor};

<a href="unity.scopes.testing.Benchmark.QueryConfiguration.md" class="code">unity::scopes::testing::Benchmark::QueryConfiguration</a> config;

config.<a href="../unity.scopes.testing.Benchmark.QueryConfiguration.md#a164536c278d29914d24fdbca3a3fa4a8" class="code">sampler</a> = \[query, meta\_data\]()

{

<span class="keywordflow">return</span> std::make\_pair(query, meta\_data);

};

<span class="keyword">auto</span> result = benchmark.<a href="#a72460e26d0aa98ae7091f634d0089aa9" class="code">for_query</a>(scope, config);

Member Function Documentation
-----------------------------

<span id="a570e17bc7fbb0c7aafb3ed720a5fc35c" class="anchor"></span>
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
<td>virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::InProcessBenchmark::for_action</td>
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

Implements <a href="../unity.scopes.testing.Benchmark.md#ad31b1781960e3edd0018a9cf8df4a506">unity::scopes::testing::Benchmark</a>.

Reimplemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark.md#a47874911c026c201699d8fce0443e4bb">unity::scopes::testing::OutOfProcessBenchmark</a>.

<span id="adc815bde331263487183e38836811610" class="anchor"></span>
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
<td>virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::InProcessBenchmark::for_activation</td>
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

Implements <a href="../unity.scopes.testing.Benchmark.md#a531fbb8fd2259337123495bf7de0bd4a">unity::scopes::testing::Benchmark</a>.

Reimplemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark.md#ad918f6c89543eabb3492eb834712e38f">unity::scopes::testing::OutOfProcessBenchmark</a>.

<span id="a8823d30698cba5f6a03c4989e7356195" class="anchor"></span>
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
<td>virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::InProcessBenchmark::for_preview</td>
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

Implements <a href="../unity.scopes.testing.Benchmark.md#a37da073840cfbeb22ed20c2d4631b7ff">unity::scopes::testing::Benchmark</a>.

Reimplemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark.md#a397be9ae5eaca3d6ca96fa2957498c86">unity::scopes::testing::OutOfProcessBenchmark</a>.

<span id="a72460e26d0aa98ae7091f634d0089aa9" class="anchor"></span>
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
<td>virtual <a href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::InProcessBenchmark::for_query</td>
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

Implements <a href="../unity.scopes.testing.Benchmark.md#ad815c88ce0d76e4a6abc82438237e987">unity::scopes::testing::Benchmark</a>.

Reimplemented in <a href="../unity.scopes.testing.OutOfProcessBenchmark.md#a530a08db775c38ea13478a3d8e1c5bbc">unity::scopes::testing::OutOfProcessBenchmark</a>.

