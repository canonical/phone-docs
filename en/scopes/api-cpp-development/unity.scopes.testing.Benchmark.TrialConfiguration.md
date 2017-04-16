---
Title: unity.scopes.testing.Benchmark.TrialConfiguration
---

# unity.scopes.testing.Benchmark.TrialConfiguration

<p>The <a class="el" href="index.html" title="The TrialConfiguration struct contains options controlling the execution of individual trials...">TrialConfiguration</a> struct contains options controlling the execution of individual trials.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/testing/Benchmark.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Attributes</h2></td></tr>
<tr class="memitem:ae3113a9aff03633e590788fec58afedf"><td class="memItemLeft" align="right" valign="top">std::size_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae3113a9aff03633e590788fec58afedf">trial_count</a> {25}</td></tr>
<tr class="separator:ae3113a9aff03633e590788fec58afedf"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a41de1d88174a2de335649461af175c80"><td class="memItemLeft" align="right" valign="top">std::chrono::microseconds&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a41de1d88174a2de335649461af175c80">per_trial_timeout</a> {std::chrono::seconds{10}}</td></tr>
<tr class="separator:a41de1d88174a2de335649461af175c80"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acea63d9b0755526494257de988ae4222"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.testing.Benchmark.StatisticsConfiguration.md">StatisticsConfiguration</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acea63d9b0755526494257de988ae4222">statistics_configuration</a> {}</td></tr>
<tr class="separator:acea63d9b0755526494257de988ae4222"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The <a class="el" href="index.html" title="The TrialConfiguration struct contains options controlling the execution of individual trials...">TrialConfiguration</a> struct contains options controlling the execution of individual trials. </p>
<h2 class="groupheader">Member Data Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::chrono::microseconds unity::scopes::testing::Benchmark::TrialConfiguration::per_trial_timeout {std::chrono::seconds{10}}</td>
</tr>
</table>
<p>Wait at most this time for one trial to finish or throw if a timeout is encountered. </p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.testing.Benchmark.StatisticsConfiguration.md">StatisticsConfiguration</a> unity::scopes::testing::Benchmark::TrialConfiguration::statistics_configuration {}</td>
</tr>
</table>
<p>Fold in statistics configuration into the overall trial setup. </p>
<table class="memname">
<tr>
<td class="memname">std::size_t unity::scopes::testing::Benchmark::TrialConfiguration::trial_count {25}</td>
</tr>
</table>
<p>The number of independent trials. Please note that the number should not be &lt;&lt; 10 </p>
