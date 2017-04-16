---
Title: unity.scopes.testing.Benchmark.QueryConfiguration
---

# unity.scopes.testing.Benchmark.QueryConfiguration

<p>The <a class="el" href="index.html" title="The QueryConfiguration struct constains all options controlling the benchmark of scope query operatio...">QueryConfiguration</a> struct constains all options controlling the benchmark of scope query operations.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/testing/Benchmark.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:a5989c5a913c2980e26b65d7e485f0fce"><td class="memItemLeft" align="right" valign="top">typedef std::function&lt; std::pair&lt; <a class="el" href="unity.scopes.CannedQuery.md">unity::scopes::CannedQuery</a>, <a class="el" href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> &gt;) &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5989c5a913c2980e26b65d7e485f0fce">Sampler</a></td></tr>
<tr class="separator:a5989c5a913c2980e26b65d7e485f0fce"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Attributes</h2></td></tr>
<tr class="memitem:a164536c278d29914d24fdbca3a3fa4a8"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a5989c5a913c2980e26b65d7e485f0fce">Sampler</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a164536c278d29914d24fdbca3a3fa4a8">sampler</a> {}</td></tr>
<tr class="separator:a164536c278d29914d24fdbca3a3fa4a8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a33f804ce4983df9be79f2747d7672ff3"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a33f804ce4983df9be79f2747d7672ff3">trial_configuration</a> {}</td></tr>
<tr class="separator:a33f804ce4983df9be79f2747d7672ff3"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The <a class="el" href="index.html" title="The QueryConfiguration struct constains all options controlling the benchmark of scope query operatio...">QueryConfiguration</a> struct constains all options controlling the benchmark of scope query operations. </p>
<h2 class="groupheader">Member Typedef Documentation</h2>
<table class="memname">
<tr>
<td class="memname">typedef std::function&lt; std::pair&lt; <a class="el" href="unity.scopes.CannedQuery.md">unity::scopes::CannedQuery</a>, <a class="el" href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a>&gt;) &gt; <a class="el" href="#a5989c5a913c2980e26b65d7e485f0fce">unity::scopes::testing::Benchmark::QueryConfiguration::Sampler</a></td>
</tr>
</table>
<p>Function signature for choosing a query configuration. </p>
<h2 class="groupheader">Member Data Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#a5989c5a913c2980e26b65d7e485f0fce">Sampler</a> unity::scopes::testing::Benchmark::QueryConfiguration::sampler {}</td>
</tr>
</table>
<p>The sampling function instance for choosing a query configuration. Has to be set to an actual instance. </p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> unity::scopes::testing::Benchmark::QueryConfiguration::trial_configuration {}</td>
</tr>
</table>
<p>fold in trial configuration options into the overall setup. </p>
