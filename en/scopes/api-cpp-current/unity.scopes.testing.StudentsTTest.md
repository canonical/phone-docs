---
Title: unity.scopes.testing.StudentsTTest
---

# unity.scopes.testing.StudentsTTest

<p>Implements different variants of the Student's T-test (see <a href="http://en.wikipedia.org/wiki/Student's_t-test">http://en.wikipedia.org/wiki/Student's_t-test</a>)  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/testing/Statistics.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Classes</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom">Result</td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">Executing the test returns a set of hypothesis that have to be evaluated at the desired confidence level.  More...<br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:aaf584b159766a0a0e605e8365f87107f"><td class="memItemLeft" align="right" valign="top">Result&#160;</td><td class="memItemRight" valign="bottom">one_sample (const Sample &amp;sample, Sample::ValueType mean, Sample::ValueType std_dev)</td></tr>
<tr class="memdesc:aaf584b159766a0a0e605e8365f87107f"><td class="mdescLeft">&#160;</td><td class="mdescRight">one_sample calculates the Student's T test for one sample and a known mean and std. dev..  More...<br /></td></tr>
<tr class="separator:aaf584b159766a0a0e605e8365f87107f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a09c7d3760d9aef4fb50131265170cbac"><td class="memItemLeft" align="right" valign="top">Result&#160;</td><td class="memItemRight" valign="bottom">two_independent_samples (const Sample &amp;sample1, const Sample &amp;sample2)</td></tr>
<tr class="memdesc:a09c7d3760d9aef4fb50131265170cbac"><td class="mdescLeft">&#160;</td><td class="mdescRight">two_independent_samples calculates the Student's T test for two samples  More...<br /></td></tr>
<tr class="separator:a09c7d3760d9aef4fb50131265170cbac"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Implements different variants of the Student's T-test (see <a href="http://en.wikipedia.org/wiki/Student's_t-test">http://en.wikipedia.org/wiki/Student's_t-test</a>) </p>
```
<a class="code" href="unity.scopes.testing.OutOfProcessBenchmark.md">unity::scopes::testing::OutOfProcessBenchmark</a> benchmark;
<a class="code" href="unity.scopes.testing.Result.md">unity::scopes::testing::Result</a> search_result;
<a class="code" href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a> meta_data{default_locale, default_form_factor};
<span class="keyword">static</span> <span class="keyword">const</span> std::size_t sample_size{10};
<span class="keyword">static</span> <span class="keyword">const</span> std::chrono::seconds per_trial_timeout{1};
<a class="code" href="unity.scopes.testing.Benchmark.PreviewConfiguration.md">unity::scopes::testing::Benchmark::PreviewConfiguration</a> config
{
[search_result, meta_data]() { <span class="keywordflow">return</span> std::make_pair(search_result, meta_data); },
{
sample_size,
per_trial_timeout
}
};
<span class="keyword">auto</span> result = benchmark.<a class="code" href="unity.scopes.testing.OutOfProcessBenchmark.md#a397be9ae5eaca3d6ca96fa2957498c86">for_preview</a>(scope, config);
<span class="keyword">auto</span> test_result = <a class="code" href="index.html">unity::scopes::testing::StudentsTTest</a>().<a class="code" href="#aaf584b159766a0a0e605e8365f87107f">one_sample</a>(
reference_preview_performance,
result);
EXPECT_EQ(unity::scopes::testing::HypothesisStatus::not_rejected,
test_result.sample_mean_is_eq_to_reference(0.05));
EXPECT_EQ(unity::scopes::testing::HypothesisStatus::not_rejected,
test_result.sample_mean_is_ge_than_reference(0.05));
EXPECT_EQ(unity::scopes::testing::HypothesisStatus::rejected,
test_result.sample_mean_is_le_than_reference(0.05));
```
 <h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::testing::StudentsTTest::Result unity::scopes::testing::StudentsTTest::one_sample </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="unity.scopes.testing.Sample.md">Sample</a> &amp;&#160;</td>
<td class="paramname"><em>sample</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.testing.Sample.md#a9e02cfa261b23b40c9da59cda6ab0dc8">Sample::ValueType</a>&#160;</td>
<td class="paramname"><em>mean</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.testing.Sample.md#a9e02cfa261b23b40c9da59cda6ab0dc8">Sample::ValueType</a>&#160;</td>
<td class="paramname"><em>std_dev</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>one_sample calculates the Student's T test for one sample and a known mean and std. dev.. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">sample</td><td><a class="el" href="unity.scopes.testing.Sample.md" title="The Sample class models the interface to a sample of raw observations and their statistical propertie...">Sample</a> of values. </td></tr>
<tr><td class="paramname">mean</td><td>The known mean of the underlying distribution </td></tr>
<tr><td class="paramname">std_dev</td><td>The known std. dev. of the underlying distribution </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd></dd></dl>
<table class="memname">
<tr>
<td class="memname">unity::scopes::testing::StudentsTTest::Result unity::scopes::testing::StudentsTTest::two_independent_samples </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="unity.scopes.testing.Sample.md">Sample</a> &amp;&#160;</td>
<td class="paramname"><em>sample1</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">const <a class="el" href="unity.scopes.testing.Sample.md">Sample</a> &amp;&#160;</td>
<td class="paramname"><em>sample2</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>two_independent_samples calculates the Student's T test for two samples </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">sample1</td><td>The first sample </td></tr>
<tr><td class="paramname">sample2</td><td>The second sample </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>An instance of Result. </dd></dl>
