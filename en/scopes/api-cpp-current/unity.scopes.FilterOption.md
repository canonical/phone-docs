---
Title: unity.scopes.FilterOption
---

# unity.scopes.FilterOption

<p>Holds definition of filter option for <a class="el" href="unity.scopes.OptionSelectorFilter.md" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a>.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/FilterOption.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:af85bb24c630335f26a201e5d78af4fec"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af85bb24c630335f26a201e5d78af4fec">id</a> () const </td></tr>
<tr class="memdesc:af85bb24c630335f26a201e5d78af4fec"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the identifier of this filter option.  More...<br /></td></tr>
<tr class="separator:af85bb24c630335f26a201e5d78af4fec"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac8b998f42e5dd144b235d8a8d1f38ab3"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac8b998f42e5dd144b235d8a8d1f38ab3">label</a> () const </td></tr>
<tr class="memdesc:ac8b998f42e5dd144b235d8a8d1f38ab3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the label of this filter option.  More...<br /></td></tr>
<tr class="separator:ac8b998f42e5dd144b235d8a8d1f38ab3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae202dadd8615a4c416c169f702c4f711"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae202dadd8615a4c416c169f702c4f711">default_value</a> () const </td></tr>
<tr class="memdesc:ae202dadd8615a4c416c169f702c4f711"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return the default value of this filter option.  More...<br /></td></tr>
<tr class="separator:ae202dadd8615a4c416c169f702c4f711"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Holds definition of filter option for <a class="el" href="unity.scopes.OptionSelectorFilter.md" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a>. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::FilterOption::default_value </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return the default value of this filter option. </p>
<dl class="section return"><dt>Returns</dt><dd>The default value. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::FilterOption::id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the identifier of this filter option. </p>
<dl class="section return"><dt>Returns</dt><dd>The option identifier. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::FilterOption::label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the label of this filter option. </p>
<dl class="section return"><dt>Returns</dt><dd>The option label. </dd></dl>
