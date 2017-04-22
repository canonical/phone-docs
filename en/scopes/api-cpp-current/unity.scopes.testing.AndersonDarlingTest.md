---
Title: unity.scopes.testing.AndersonDarlingTest
---

# unity.scopes.testing.AndersonDarlingTest

<p>Implements the Anderson-Darling test for normality for the case of empirical mean and variance.  
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
<tr class="memitem:ab280c9c1652c8f2f7b4b011aa72db55f"><td class="memItemLeft" align="right" valign="top">Result&#160;</td><td class="memItemRight" valign="bottom">for_normality (const Sample &amp;sample)</td></tr>
<tr class="memdesc:ab280c9c1652c8f2f7b4b011aa72db55f"><td class="mdescLeft">&#160;</td><td class="mdescRight">for_normality evaluates a given sample to check if its underlying distribution is normal.  More...<br /></td></tr>
<tr class="separator:ab280c9c1652c8f2f7b4b011aa72db55f"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Implements the Anderson-Darling test for normality for the case of empirical mean and variance. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::testing::AndersonDarlingTest::Result unity::scopes::testing::AndersonDarlingTest::for_normality </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="unity.scopes.testing.Sample.md">Sample</a> &amp;&#160;</td>
<td class="paramname"><em>sample</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>for_normality evaluates a given sample to check if its underlying distribution is normal. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">sample</td><td>The sample to check. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A hypothesis containing the test statistics, can be evaluated at different confidence levels. </dd></dl>
