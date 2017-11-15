---
Title: unity.scopes.FilterGroup
---

# unity.scopes.FilterGroup

<p>Groups several filters into an expandable widget in the UI.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/FilterGroup.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a0a42c7ad65a4115dfdfbdf2aa32a6ca4"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0a42c7ad65a4115dfdfbdf2aa32a6ca4">id</a> () const </td></tr>
<tr class="memdesc:a0a42c7ad65a4115dfdfbdf2aa32a6ca4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the id of the widget group.  More...<br /></td></tr>
<tr class="separator:a0a42c7ad65a4115dfdfbdf2aa32a6ca4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aef99f5048cc090da4b96f68c39020f44"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aef99f5048cc090da4b96f68c39020f44">label</a> () const </td></tr>
<tr class="memdesc:aef99f5048cc090da4b96f68c39020f44"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the label of the widget group.  More...<br /></td></tr>
<tr class="separator:aef99f5048cc090da4b96f68c39020f44"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Static Public Member Functions</h2></td></tr>
<tr class="memitem:a8438bee537e5b4624875233f9e6ad4a9"><td class="memItemLeft" align="right" valign="top">static FilterGroup::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8438bee537e5b4624875233f9e6ad4a9">create</a> (std::string const &amp;<a class="el" href="#a0a42c7ad65a4115dfdfbdf2aa32a6ca4">id</a>, std::string const &amp;<a class="el" href="#aef99f5048cc090da4b96f68c39020f44">label</a>)</td></tr>
<tr class="memdesc:a8438bee537e5b4624875233f9e6ad4a9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create a WidgetGroup.  More...<br /></td></tr>
<tr class="separator:a8438bee537e5b4624875233f9e6ad4a9"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Groups several filters into an expandable widget in the UI. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">FilterGroup::SCPtr unity::scopes::FilterGroup::create </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>label</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">static</span></span>  </td>
</tr>
</table>
<p>Create a WidgetGroup. </p>
<dl class="section return"><dt>Returns</dt><dd>An instance of WidgetGroup. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::FilterGroup::id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the id of the widget group. </p>
<dl class="section return"><dt>Returns</dt><dd>The identifier. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::FilterGroup::label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the label of the widget group. </p>
<dl class="section return"><dt>Returns</dt><dd>The label. </dd></dl>
