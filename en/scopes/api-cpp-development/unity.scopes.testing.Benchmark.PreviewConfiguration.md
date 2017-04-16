---
Title: unity.scopes.testing.Benchmark.PreviewConfiguration
---

# unity.scopes.testing.Benchmark.PreviewConfiguration

<p>The <a class="el" href="index.html" title="The PreviewConfiguration struct constains all options controlling the benchmark of scope preview oper...">PreviewConfiguration</a> struct constains all options controlling the benchmark of scope preview operations.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/testing/Benchmark.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:a7c4c1946344d6042b189eef172401ee9"><td class="memItemLeft" align="right" valign="top">typedef std::function&lt; std::pair&lt; <a class="el" href="unity.scopes.Result.md">unity::scopes::Result</a>, <a class="el" href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a> &gt;) &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7c4c1946344d6042b189eef172401ee9">Sampler</a></td></tr>
<tr class="separator:a7c4c1946344d6042b189eef172401ee9"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Attributes</h2></td></tr>
<tr class="memitem:a13297c92c2e62b7c418afaddc01dee91"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a7c4c1946344d6042b189eef172401ee9">Sampler</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a13297c92c2e62b7c418afaddc01dee91">sampler</a> {}</td></tr>
<tr class="separator:a13297c92c2e62b7c418afaddc01dee91"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac447b62ad5c1b1c8e8241deec7bc4349"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac447b62ad5c1b1c8e8241deec7bc4349">trial_configuration</a> {}</td></tr>
<tr class="separator:ac447b62ad5c1b1c8e8241deec7bc4349"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The <a class="el" href="index.html" title="The PreviewConfiguration struct constains all options controlling the benchmark of scope preview oper...">PreviewConfiguration</a> struct constains all options controlling the benchmark of scope preview operations. </p>
<h2 class="groupheader">Member Typedef Documentation</h2>
<table class="memname">
<tr>
<td class="memname">typedef std::function&lt; std::pair&lt; <a class="el" href="unity.scopes.Result.md">unity::scopes::Result</a>, <a class="el" href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a> &gt;) &gt; <a class="el" href="#a7c4c1946344d6042b189eef172401ee9">unity::scopes::testing::Benchmark::PreviewConfiguration::Sampler</a></td>
</tr>
</table>
<p>Function signature for choosing a preview configuration. </p>
<h2 class="groupheader">Member Data Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#a7c4c1946344d6042b189eef172401ee9">Sampler</a> unity::scopes::testing::Benchmark::PreviewConfiguration::sampler {}</td>
</tr>
</table>
<p>The sampling function instance for choosing a preview configuration. Has to be set to an actual instance. </p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> unity::scopes::testing::Benchmark::PreviewConfiguration::trial_configuration {}</td>
</tr>
</table>
<p>fold in trial configuration options into the overall setup. </p>
