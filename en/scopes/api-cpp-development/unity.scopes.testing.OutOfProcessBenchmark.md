---
Title: unity.scopes.testing.OutOfProcessBenchmark
---

# unity.scopes.testing.OutOfProcessBenchmark

<p>The <a class="el" href="index.html" title="The OutOfProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in another process. ">OutOfProcessBenchmark</a> class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in another process.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/testing/OutOfProcessBenchmark.h&gt;</code></p>
Inheritance diagram for unity::scopes::testing::OutOfProcessBenchmark:
<img src="https://assets.ubuntu.com/v1/921e9177-classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a530a08db775c38ea13478a3d8e1c5bbc"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a530a08db775c38ea13478a3d8e1c5bbc">for_query</a> (const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;scope, <a class="el" href="unity.scopes.testing.Benchmark.QueryConfiguration.md">QueryConfiguration</a> configuration) override</td></tr>
<tr class="memdesc:a530a08db775c38ea13478a3d8e1c5bbc"><td class="mdescLeft">&#160;</td><td class="mdescRight">for_query executes a benchmark to measure the scope's query performance.  More...<br /></td></tr>
<tr class="separator:a530a08db775c38ea13478a3d8e1c5bbc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a397be9ae5eaca3d6ca96fa2957498c86"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a397be9ae5eaca3d6ca96fa2957498c86">for_preview</a> (const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;scope, <a class="el" href="unity.scopes.testing.Benchmark.PreviewConfiguration.md">PreviewConfiguration</a> preview_configuration) override</td></tr>
<tr class="memdesc:a397be9ae5eaca3d6ca96fa2957498c86"><td class="mdescLeft">&#160;</td><td class="mdescRight">for_preview executes a benchmark to measure the scope's preview performance.  More...<br /></td></tr>
<tr class="separator:a397be9ae5eaca3d6ca96fa2957498c86"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad918f6c89543eabb3492eb834712e38f"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad918f6c89543eabb3492eb834712e38f">for_activation</a> (const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;scope, <a class="el" href="unity.scopes.testing.Benchmark.ActivationConfiguration.md">ActivationConfiguration</a> activation_configuration) override</td></tr>
<tr class="memdesc:ad918f6c89543eabb3492eb834712e38f"><td class="mdescLeft">&#160;</td><td class="mdescRight">for_preview executes a benchmark to measure the scope's activation performance.  More...<br /></td></tr>
<tr class="separator:ad918f6c89543eabb3492eb834712e38f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a47874911c026c201699d8fce0443e4bb"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a47874911c026c201699d8fce0443e4bb">for_action</a> (const std::shared_ptr&lt; <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a> &gt; &amp;scope, <a class="el" href="unity.scopes.testing.Benchmark.ActionConfiguration.md">ActionConfiguration</a> activation_configuration) override</td></tr>
<tr class="memdesc:a47874911c026c201699d8fce0443e4bb"><td class="mdescLeft">&#160;</td><td class="mdescRight">for_preview executes a benchmark to measure the scope's action activation performance.  More...<br /></td></tr>
<tr class="separator:a47874911c026c201699d8fce0443e4bb"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The <a class="el" href="index.html" title="The OutOfProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in another process. ">OutOfProcessBenchmark</a> class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in another process. </p>
<p>Please note that this class provides better test isolation than the class <a class="el" href="unity.scopes.testing.InProcessBenchmark.md" title="The InProcessBenchmark class provides scope authors with runtime benchmarking capabilities. The actual runs are executed in the same process. ">InProcessBenchmark</a> and we promote use of this implementation due to this feature. However, as the internal implementation relies on fork(), the results in case of multi-threaded environments that exist before the execution of the benchmark are undefined.</p>
```
<a class="code" href="index.html">unity::scopes::testing::OutOfProcessBenchmark</a> benchmark;
unity::scopes::Query query{scope_id};
query.set_query_string(scope_query_string);
<a class="code" href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> meta_data{default_locale, default_form_factor};
<a class="code" href="unity.scopes.testing.Benchmark.QueryConfiguration.md">unity::scopes::testing::Benchmark::QueryConfiguration</a> config;
config.<a class="code" href="unity.scopes.testing.Benchmark.QueryConfiguration.md#a164536c278d29914d24fdbca3a3fa4a8">sampler</a> = [query, meta_data]()
{
<span class="keywordflow">return</span> std::make_pair(query, meta_data);
};
<span class="keyword">auto</span> result = benchmark.<a class="code" href="#a530a08db775c38ea13478a3d8e1c5bbc">for_query</a>(scope, config);
```
 <h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::OutOfProcessBenchmark::for_action </td>
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
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span>  </td>
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
<dl class="section return"><dt>Returns</dt><dd>An instance of <a class="el" href="unity.scopes.testing.Result.md" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>. </dd></dl>
<p>Reimplemented from <a class="el" href="unity.scopes.testing.InProcessBenchmark.md#a570e17bc7fbb0c7aafb3ed720a5fc35c">unity::scopes::testing::InProcessBenchmark</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::OutOfProcessBenchmark::for_activation </td>
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
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span>  </td>
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
<dl class="section return"><dt>Returns</dt><dd>An instance of <a class="el" href="unity.scopes.testing.Result.md" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>. </dd></dl>
<p>Reimplemented from <a class="el" href="unity.scopes.testing.InProcessBenchmark.md#adc815bde331263487183e38836811610">unity::scopes::testing::InProcessBenchmark</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::OutOfProcessBenchmark::for_preview </td>
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
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span>  </td>
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
<dl class="section return"><dt>Returns</dt><dd>An instance of <a class="el" href="unity.scopes.testing.Result.md" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>. </dd></dl>
<p>Reimplemented from <a class="el" href="unity.scopes.testing.InProcessBenchmark.md#a8823d30698cba5f6a03c4989e7356195">unity::scopes::testing::InProcessBenchmark</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.testing.Benchmark.Result.md">Result</a> unity::scopes::testing::OutOfProcessBenchmark::for_query </td>
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
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span>  </td>
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
<dl class="section return"><dt>Returns</dt><dd>An instance of <a class="el" href="unity.scopes.testing.Result.md" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a>. </dd></dl>
<p>Reimplemented from <a class="el" href="unity.scopes.testing.InProcessBenchmark.md#a72460e26d0aa98ae7091f634d0089aa9">unity::scopes::testing::InProcessBenchmark</a>.</p>
