---
Title: unity.scopes.testing.Benchmark.ActivationConfiguration
---

# unity.scopes.testing.Benchmark.ActivationConfiguration

<p>The <a class="el" href="index.html" title="The ActivationConfiguration struct constains all options controlling the benchmark of scope activatio...">ActivationConfiguration</a> struct constains all options controlling the benchmark of scope activation operations.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/testing/Benchmark.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:ad9b338829ebd254c9beccfb866e2a7e4"><td class="memItemLeft" align="right" valign="top">typedef std::function&lt; std::pair&lt; <a class="el" href="unity.scopes.Result.md">unity::scopes::Result</a>, <a class="el" href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a> &gt;) &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad9b338829ebd254c9beccfb866e2a7e4">Sampler</a></td></tr>
<tr class="separator:ad9b338829ebd254c9beccfb866e2a7e4"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Attributes</h2></td></tr>
<tr class="memitem:a364c411f10d9f217b01f55f7167e89cd"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#ad9b338829ebd254c9beccfb866e2a7e4">Sampler</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a364c411f10d9f217b01f55f7167e89cd">sampler</a> {}</td></tr>
<tr class="separator:a364c411f10d9f217b01f55f7167e89cd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f65dd91e904c04041e47507389a44bb"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1f65dd91e904c04041e47507389a44bb">trial_configuration</a> {}</td></tr>
<tr class="separator:a1f65dd91e904c04041e47507389a44bb"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The <a class="el" href="index.html" title="The ActivationConfiguration struct constains all options controlling the benchmark of scope activatio...">ActivationConfiguration</a> struct constains all options controlling the benchmark of scope activation operations. </p>
<h2 class="groupheader">Member Typedef Documentation</h2>
<table class="memname">
<tr>
<td class="memname">typedef std::function&lt; std::pair&lt; <a class="el" href="unity.scopes.Result.md">unity::scopes::Result</a>, <a class="el" href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a>&gt;) &gt; <a class="el" href="#ad9b338829ebd254c9beccfb866e2a7e4">unity::scopes::testing::Benchmark::ActivationConfiguration::Sampler</a></td>
</tr>
</table>
<p>Function signature for choosing an activation configuration. </p>
<h2 class="groupheader">Member Data Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#ad9b338829ebd254c9beccfb866e2a7e4">Sampler</a> unity::scopes::testing::Benchmark::ActivationConfiguration::sampler {}</td>
</tr>
</table>
<p>The sampling function instance for choosing a preview configuration. Has to be set to an actual instance. </p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> unity::scopes::testing::Benchmark::ActivationConfiguration::trial_configuration {}</td>
</tr>
</table>
<p>fold in trial configuration options into the overall setup. </p>
