---
Title: unity.scopes.testing.Benchmark.ActionConfiguration
---

# unity.scopes.testing.Benchmark.ActionConfiguration

<p>The <a class="el" href="index.html" title="The ActionConfiguration struct constains all options controlling the benchmark of scope action activa...">ActionConfiguration</a> struct constains all options controlling the benchmark of scope action activation operations.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/testing/Benchmark.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:ae19d4beb525c9a294a62e57cac271b78"><td class="memItemLeft" align="right" valign="top">typedef std::function&lt; std::tuple&lt; <a class="el" href="unity.scopes.Result.md">unity::scopes::Result</a>, <a class="el" href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a>, std::string, std::string &gt;) &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae19d4beb525c9a294a62e57cac271b78">Sampler</a></td></tr>
<tr class="separator:ae19d4beb525c9a294a62e57cac271b78"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Attributes</h2></td></tr>
<tr class="memitem:acd2351295122c55b350631d2b4619f18"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#ae19d4beb525c9a294a62e57cac271b78">Sampler</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acd2351295122c55b350631d2b4619f18">sampler</a> {}</td></tr>
<tr class="separator:acd2351295122c55b350631d2b4619f18"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afe76469ab9fadfe40a6de86188060fd5"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afe76469ab9fadfe40a6de86188060fd5">trial_configuration</a></td></tr>
<tr class="separator:afe76469ab9fadfe40a6de86188060fd5"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The <a class="el" href="index.html" title="The ActionConfiguration struct constains all options controlling the benchmark of scope action activa...">ActionConfiguration</a> struct constains all options controlling the benchmark of scope action activation operations. </p>
<h2 class="groupheader">Member Typedef Documentation</h2>
<table class="memname">
<tr>
<td class="memname">typedef std::function&lt; std::tuple&lt; <a class="el" href="unity.scopes.Result.md">unity::scopes::Result</a>, <a class="el" href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a>, std::string, std::string &gt;) &gt; <a class="el" href="#ae19d4beb525c9a294a62e57cac271b78">unity::scopes::testing::Benchmark::ActionConfiguration::Sampler</a></td>
</tr>
</table>
<p>Function signature for choosing an action invocation configuration. </p>
<h2 class="groupheader">Member Data Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#ae19d4beb525c9a294a62e57cac271b78">Sampler</a> unity::scopes::testing::Benchmark::ActionConfiguration::sampler {}</td>
</tr>
</table>
<p>The sampling function instance for choosing an action activation configuration. Has to be set to an actual instance. </p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.testing.Benchmark.TrialConfiguration.md">TrialConfiguration</a> unity::scopes::testing::Benchmark::ActionConfiguration::trial_configuration</td>
</tr>
</table>
<p>fold in trial configuration options into the overall setup. </p>
