---
Title: unity.scopes.OperationInfo
---

# unity.scopes.OperationInfo

<p>A container for details about something of interest that occurs during the operation of a request.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/OperationInfo.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:a57178085d8ea6d116347b8fa3fe8878d"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a> { <br />
&#160;&#160;<b>Unknown</b>, 
<b>NoInternet</b>, 
<b>PoorInternet</b>, 
<b>NoLocationData</b>, 
<br />
&#160;&#160;<b>InaccurateLocationData</b>, 
<b>ResultsIncomplete</b>, 
<b>DefaultSettingsUsed</b>, 
<b>SettingsProblem</b>, 
<br />
&#160;&#160;<b>LastInfoCode_</b> = SettingsProblem
<br />
}</td></tr>
<tr class="memdesc:a57178085d8ea6d116347b8fa3fe8878d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates the type of / cause for the information being reported.  <a href="#a57178085d8ea6d116347b8fa3fe8878d">More...</a><br /></td></tr>
<tr class="separator:a57178085d8ea6d116347b8fa3fe8878d"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a38875517344af4ca90565cc523af918b"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a38875517344af4ca90565cc523af918b">OperationInfo</a> (<a class="el" href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a> <a class="el" href="#a7e00ec86a3a0974df981146cea0202f9">code</a>)</td></tr>
<tr class="memdesc:a38875517344af4ca90565cc523af918b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create OperationInfo with the given info code.  More...<br /></td></tr>
<tr class="separator:a38875517344af4ca90565cc523af918b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a711cd4c4d7ca4a4ff884b81440fd3934"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a711cd4c4d7ca4a4ff884b81440fd3934">OperationInfo</a> (<a class="el" href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a> <a class="el" href="#a7e00ec86a3a0974df981146cea0202f9">code</a>, std::string <a class="el" href="#a2676a34824fc6c2481dbc30836d7ebf2">message</a>)</td></tr>
<tr class="memdesc:a711cd4c4d7ca4a4ff884b81440fd3934"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create OperationInfo with the given info code and message.  More...<br /></td></tr>
<tr class="separator:a711cd4c4d7ca4a4ff884b81440fd3934"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7e00ec86a3a0974df981146cea0202f9"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7e00ec86a3a0974df981146cea0202f9">code</a> () const noexcept</td></tr>
<tr class="memdesc:a7e00ec86a3a0974df981146cea0202f9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the info code.  More...<br /></td></tr>
<tr class="separator:a7e00ec86a3a0974df981146cea0202f9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2676a34824fc6c2481dbc30836d7ebf2"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2676a34824fc6c2481dbc30836d7ebf2">message</a> () const </td></tr>
<tr class="memdesc:a2676a34824fc6c2481dbc30836d7ebf2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the message string.  More...<br /></td></tr>
<tr class="separator:a2676a34824fc6c2481dbc30836d7ebf2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a67ba27fc68ab22305f8f919cbbd879b0"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>OperationInfo</b> (<a class="el" href="index.html">OperationInfo</a> const &amp;other)</td></tr>
<tr class="separator:a67ba27fc68ab22305f8f919cbbd879b0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9ce4f4b7360835f1b7f964e214ef94c1"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>OperationInfo</b> (<a class="el" href="index.html">OperationInfo</a> &amp;&amp;)</td></tr>
<tr class="separator:a9ce4f4b7360835f1b7f964e214ef94c1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af468429806a5e59b182d084ff5c38ede"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">OperationInfo</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">OperationInfo</a> const &amp;other)</td></tr>
<tr class="separator:af468429806a5e59b182d084ff5c38ede"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a21ee79454820214be60a00d6fd0a87c1"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">OperationInfo</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">OperationInfo</a> &amp;&amp;)</td></tr>
<tr class="separator:a21ee79454820214be60a00d6fd0a87c1"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A container for details about something of interest that occurs during the operation of a request. </p>
<h2 class="groupheader">Member Enumeration Documentation</h2>
<table class="memname">
<tr>
<td class="memname">enum <a class="el" href="#a57178085d8ea6d116347b8fa3fe8878d">unity::scopes::OperationInfo::InfoCode</a></td>
</tr>
</table>
<p>Indicates the type of / cause for the information being reported. </p>
<p>For example, the <code>NoInternet</code> enumerator may indicate that access to the internet was required in order to properly evaluate a request, but no internet connectivity was available. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::OperationInfo::OperationInfo </td>
<td>(</td>
<td class="paramtype"><a class="el" href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a>&#160;</td>
<td class="paramname"><em>code</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Create <a class="el" href="index.html" title="A container for details about something of interest that occurs during the operation of a request...">OperationInfo</a> with the given info code. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">code</td><td>Indicates the type of / cause for the information. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">unity::scopes::OperationInfo::OperationInfo </td>
<td>(</td>
<td class="paramtype"><a class="el" href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a>&#160;</td>
<td class="paramname"><em>code</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string&#160;</td>
<td class="paramname"><em>message</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create <a class="el" href="index.html" title="A container for details about something of interest that occurs during the operation of a request...">OperationInfo</a> with the given info code and message. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">code</td><td>Indicates the type of / cause for the information. </td></tr>
<tr><td class="paramname">message</td><td>Contains further details about the info code. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#a57178085d8ea6d116347b8fa3fe8878d">OperationInfo::InfoCode</a> unity::scopes::OperationInfo::code </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the info code. </p>
<dl class="section return"><dt>Returns</dt><dd>Enum indicating the type of info contained. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::OperationInfo::message </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the message string. </p>
<dl class="section return"><dt>Returns</dt><dd>The message string. </dd></dl>
