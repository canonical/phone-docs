---
Title: unity.scopes.testing.Benchmark
---

# unity.scopes.testing.Benchmark

<p>The <a class="el" href="index.html" title="The Benchmark class defines an interface to provide scope authors with runtime benchmarking capabilit...">Benchmark</a> class defines an interface to provide scope authors with runtime benchmarking capabilities to be used in their own testing.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/testing/Benchmark.h&gt;</code></p>
Inheritance diagram for unity::scopes::testing::Benchmark:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/c9bc73cd-3c63-4127-877e-573030221f1d-../unity.scopes.testing.Benchmark/classunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1testing_1_1_benchmark_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1testing_1_1_benchmark_inherit__map" id="unity_1_1scopes_1_1testing_1_1_benchmark_inherit__map">
<area shape="rect" id="node2" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1testing_1_1_in_process_benchmark.html" title="The InProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in the same process. " alt="" coords="19,95,183,136"/><area shape="rect" id="node3" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark.html" title="The OutOfProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in another process. " alt="" coords="5,184,196,225"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Classes</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.testing.Benchmark.ActionConfiguration.md">ActionConfiguration</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">The <a class="el" href="unity.scopes.testing.Benchmark.ActionConfiguration.md" title="The ActionConfiguration struct constains all options controlling the benchmark of scope action activa...">ActionConfiguration</a> struct constains all options controlling the benchmark of scope action activation operations.  <a href="unity.scopes.testing.Benchmark.ActionConfiguration.md#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.testing.Benchmark.ActivationConfiguration.md">ActivationConfiguration</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">The <a class="el" href="unity.scopes.testing.Benchmark.ActivationConfiguration.md" title="The ActivationConfiguration struct constains all options controlling the benchmark of scope activatio...">ActivationConfiguration</a> struct constains all options controlling the benchmark of scope activation operations.  <a href="unity.scopes.testing.Benchmark.ActivationConfiguration.md#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.testing.Benchmark.PreviewConfiguration.md">PreviewConfiguration</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">The <a class="el" href="unity.scopes.testing.Benchmark.PreviewConfiguration.md" title="The PreviewConfiguration struct constains all options controlling the benchmark of scope preview oper...">PreviewConfiguration</a> struct constains all options controlling the benchmark of scope preview operations.  <a href="unity.scopes.testing.Benchmark.PreviewConfiguration.md#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.testing.Benchmark.QueryConfiguration.md">QueryConfiguration</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">The <a class="el" href="unity.scopes.testing.Benchmark.QueryConfiguration.md" title="The QueryConfiguration struct constains all options controlling the benchmark of scope query operatio...">QueryConfiguration</a> struct constains all options controlling the benchmark of scope query operations.  <a href="unity.scopes.testing.Benchmark.QueryConfiguration.md#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">The <a class="el" href="unity.scopes.testing.Benchmark.Result.md" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a> struct encapsulates all of the result gathered from one individual benchmark run consisting of multiple independent trials.  <a href="unity.scopes.testing.Benchmark.Result.md#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.testing.Benchmark.StatisticsConfiguration.md">StatisticsConfiguration</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">The <a class="el" href="unity.scopes.testing.Benchmark.StatisticsConfiguration.md" title="The StatisticsConfiguration struct contains options controlling the calculation of benchmark result s...">StatisticsConfiguration</a> struct contains options controlling the calculation of benchmark result statistics.  <a href="unity.scopes.testing.Benchmark.StatisticsConfiguration.md#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">The <a class="el" href="unity.scopes.testing.Benchmark.TrialConfiguration.md" title="The TrialConfiguration struct contains options controlling the execution of individual trials...">TrialConfiguration</a> struct contains options controlling the execution of individual trials.  <a href="unity.scopes.testing.Benchmark.TrialConfiguration.md#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ad815c88ce0d76e4a6abc82438237e987"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad815c88ce0d76e4a6abc82438237e987">for_query</a> (const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;scope, <a class="el" href="unity.scopes.testing.Benchmark.QueryConfiguration.md">QueryConfiguration</a> configuration)=0</td></tr>
<tr class="memdesc:ad815c88ce0d76e4a6abc82438237e987"><td class="mdescLeft">&#160;</td><td class="mdescRight">for_query executes a benchmark to measure the scope's query performance.  More...<br /></td></tr>
<tr class="separator:ad815c88ce0d76e4a6abc82438237e987"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a37da073840cfbeb22ed20c2d4631b7ff"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a37da073840cfbeb22ed20c2d4631b7ff">for_preview</a> (const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;scope, <a class="el" href="unity.scopes.testing.Benchmark.PreviewConfiguration.md">PreviewConfiguration</a> configuration)=0</td></tr>
<tr class="memdesc:a37da073840cfbeb22ed20c2d4631b7ff"><td class="mdescLeft">&#160;</td><td class="mdescRight">for_preview executes a benchmark to measure the scope's preview performance.  More...<br /></td></tr>
<tr class="separator:a37da073840cfbeb22ed20c2d4631b7ff"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a531fbb8fd2259337123495bf7de0bd4a"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a531fbb8fd2259337123495bf7de0bd4a">for_activation</a> (const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;scope, <a class="el" href="unity.scopes.testing.Benchmark.ActivationConfiguration.md">ActivationConfiguration</a> configuration)=0</td></tr>
<tr class="memdesc:a531fbb8fd2259337123495bf7de0bd4a"><td class="mdescLeft">&#160;</td><td class="mdescRight">for_preview executes a benchmark to measure the scope's activation performance.  More...<br /></td></tr>
<tr class="separator:a531fbb8fd2259337123495bf7de0bd4a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad31b1781960e3edd0018a9cf8df4a506"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad31b1781960e3edd0018a9cf8df4a506">for_action</a> (const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;scope, <a class="el" href="unity.scopes.testing.Benchmark.ActionConfiguration.md">ActionConfiguration</a> configuration)=0</td></tr>
<tr class="memdesc:ad31b1781960e3edd0018a9cf8df4a506"><td class="mdescLeft">&#160;</td><td class="mdescRight">for_preview executes a benchmark to measure the scope's action activation performance.  More...<br /></td></tr>
<tr class="separator:ad31b1781960e3edd0018a9cf8df4a506"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The <a class="el" href="index.html" title="The Benchmark class defines an interface to provide scope authors with runtime benchmarking capabilit...">Benchmark</a> class defines an interface to provide scope authors with runtime benchmarking capabilities to be used in their own testing. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::Benchmark::for_action </td>
<td>(</td>
<td class="paramtype">const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;&#160;</td>
<td class="paramname"><em>scope</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.testing.Benchmark.ActionConfiguration.md">ActionConfiguration</a>&#160;</td>
<td class="paramname"><em>configuration</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>for_preview executes a benchmark to measure the scope's action activation performance. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">std::runtime_error</td><td>in case of timeouts. </td></tr>
<tr><td class="paramname">std::logic_error</td><td>in case of misconfiguration. </td></tr>
</table>
</dd>
</dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">scope</td><td>The scope instance to benchmark. </td></tr>
<tr><td class="paramname">configuration</td><td>Options controlling the experiment. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>An instance of <a class="el" href="unity.scopes.testing.Benchmark.Result.md" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a>. </dd></dl>
<p>Implemented in <a class="el" href="unity.scopes.testing.OutOfProcessBenchmark.md#a47874911c026c201699d8fce0443e4bb">unity::scopes::testing::OutOfProcessBenchmark</a>, and <a class="el" href="unity.scopes.testing.InProcessBenchmark.md#a570e17bc7fbb0c7aafb3ed720a5fc35c">unity::scopes::testing::InProcessBenchmark</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::Benchmark::for_activation </td>
<td>(</td>
<td class="paramtype">const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;&#160;</td>
<td class="paramname"><em>scope</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.testing.Benchmark.ActivationConfiguration.md">ActivationConfiguration</a>&#160;</td>
<td class="paramname"><em>configuration</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>for_preview executes a benchmark to measure the scope's activation performance. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">std::runtime_error</td><td>in case of timeouts. </td></tr>
<tr><td class="paramname">std::logic_error</td><td>in case of misconfiguration. </td></tr>
</table>
</dd>
</dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">scope</td><td>The scope instance to benchmark. </td></tr>
<tr><td class="paramname">configuration</td><td>Options controlling the experiment. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>An instance of <a class="el" href="unity.scopes.testing.Benchmark.Result.md" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a>. </dd></dl>
<p>Implemented in <a class="el" href="unity.scopes.testing.OutOfProcessBenchmark.md#ad918f6c89543eabb3492eb834712e38f">unity::scopes::testing::OutOfProcessBenchmark</a>, and <a class="el" href="unity.scopes.testing.InProcessBenchmark.md#adc815bde331263487183e38836811610">unity::scopes::testing::InProcessBenchmark</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::Benchmark::for_preview </td>
<td>(</td>
<td class="paramtype">const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;&#160;</td>
<td class="paramname"><em>scope</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.testing.Benchmark.PreviewConfiguration.md">PreviewConfiguration</a>&#160;</td>
<td class="paramname"><em>configuration</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>for_preview executes a benchmark to measure the scope's preview performance. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">std::runtime_error</td><td>in case of timeouts. </td></tr>
<tr><td class="paramname">std::logic_error</td><td>in case of misconfiguration. </td></tr>
</table>
</dd>
</dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">scope</td><td>The scope instance to benchmark. </td></tr>
<tr><td class="paramname">configuration</td><td>Options controlling the experiment. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>An instance of <a class="el" href="unity.scopes.testing.Benchmark.Result.md" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a>. </dd></dl>
<p>Implemented in <a class="el" href="unity.scopes.testing.OutOfProcessBenchmark.md#a397be9ae5eaca3d6ca96fa2957498c86">unity::scopes::testing::OutOfProcessBenchmark</a>, and <a class="el" href="unity.scopes.testing.InProcessBenchmark.md#a8823d30698cba5f6a03c4989e7356195">unity::scopes::testing::InProcessBenchmark</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::Benchmark::for_query </td>
<td>(</td>
<td class="paramtype">const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;&#160;</td>
<td class="paramname"><em>scope</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.testing.Benchmark.QueryConfiguration.md">QueryConfiguration</a>&#160;</td>
<td class="paramname"><em>configuration</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>for_query executes a benchmark to measure the scope's query performance. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">std::runtime_error</td><td>in case of timeouts. </td></tr>
<tr><td class="paramname">std::logic_error</td><td>in case of misconfiguration. </td></tr>
</table>
</dd>
</dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">scope</td><td>The scope instance to benchmark. </td></tr>
<tr><td class="paramname">configuration</td><td>Options controlling the experiment. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>An instance of <a class="el" href="unity.scopes.testing.Benchmark.Result.md" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a>. </dd></dl>
<p>Implemented in <a class="el" href="unity.scopes.testing.OutOfProcessBenchmark.md#a530a08db775c38ea13478a3d8e1c5bbc">unity::scopes::testing::OutOfProcessBenchmark</a>, and <a class="el" href="unity.scopes.testing.InProcessBenchmark.md#a72460e26d0aa98ae7091f634d0089aa9">unity::scopes::testing::InProcessBenchmark</a>.</p>
