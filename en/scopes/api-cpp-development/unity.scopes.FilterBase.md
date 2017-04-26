---
Title: unity.scopes.FilterBase
---

# unity.scopes.FilterBase

<p>Base class for all implementations of filters.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/FilterBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::FilterBase:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/24fbb5f8-0877-4514-9819-56ec249d6214-../unity.scopes.FilterBase/classunity_1_1scopes_1_1_filter_base__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:ab9e833d5e4029fed745d15ba63715159"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab9e833d5e4029fed745d15ba63715159">DisplayHints</a> { <a class="el" href="#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f">Default</a> = 0, 
<a class="el" href="#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56">Primary</a> = 1
}</td></tr>
<tr class="memdesc:ab9e833d5e4029fed745d15ba63715159"><td class="mdescLeft">&#160;</td><td class="mdescRight">Display hints for the Shell UI.  <a href="#ab9e833d5e4029fed745d15ba63715159">More...</a><br /></td></tr>
<tr class="separator:ab9e833d5e4029fed745d15ba63715159"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ab4ab1b600ce3967dc50255e736c6d02e"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab4ab1b600ce3967dc50255e736c6d02e">set_display_hints</a> (int hints)</td></tr>
<tr class="memdesc:ab4ab1b600ce3967dc50255e736c6d02e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets display hints for the Shell UI.  More...<br /></td></tr>
<tr class="separator:ab4ab1b600ce3967dc50255e736c6d02e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8f20819591155edaab29d535c5c4c261"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8f20819591155edaab29d535c5c4c261">display_hints</a> () const </td></tr>
<tr class="memdesc:a8f20819591155edaab29d535c5c4c261"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get display hints of this filter.  More...<br /></td></tr>
<tr class="separator:a8f20819591155edaab29d535c5c4c261"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f2d96647b23af77b1ff1cffc80f3868"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1f2d96647b23af77b1ff1cffc80f3868">id</a> () const </td></tr>
<tr class="memdesc:a1f2d96647b23af77b1ff1cffc80f3868"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the identifier of this filter.  More...<br /></td></tr>
<tr class="separator:a1f2d96647b23af77b1ff1cffc80f3868"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aadc7344c951961331dcbe67149d56c78"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aadc7344c951961331dcbe67149d56c78">filter_type</a> () const </td></tr>
<tr class="memdesc:aadc7344c951961331dcbe67149d56c78"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the type name of this filter.  More...<br /></td></tr>
<tr class="separator:aadc7344c951961331dcbe67149d56c78"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aec8ceae8141811833af087ba2ebe086c"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aec8ceae8141811833af087ba2ebe086c">set_title</a> (std::string const &amp;<a class="el" href="#a3f0c324b3aac39bb8967fc900f3a909e">title</a>)</td></tr>
<tr class="memdesc:aec8ceae8141811833af087ba2ebe086c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set an optional title of this filter.  More...<br /></td></tr>
<tr class="separator:aec8ceae8141811833af087ba2ebe086c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3f0c324b3aac39bb8967fc900f3a909e"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3f0c324b3aac39bb8967fc900f3a909e">title</a> () const </td></tr>
<tr class="memdesc:a3f0c324b3aac39bb8967fc900f3a909e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the optional title of this filter.  More...<br /></td></tr>
<tr class="separator:a3f0c324b3aac39bb8967fc900f3a909e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afff4685371fe67e6f87f58e31f69a037"><td class="memItemLeft" align="right" valign="top">FilterGroup::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afff4685371fe67e6f87f58e31f69a037">filter_group</a> () const </td></tr>
<tr class="memdesc:afff4685371fe67e6f87f58e31f69a037"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the filter group this filter belongs to.  More...<br /></td></tr>
<tr class="separator:afff4685371fe67e6f87f58e31f69a037"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Base class for all implementations of filters. </p>
<p>All implementations of <a class="el" href="index.html" title="Base class for all implementations of filters. ">FilterBase</a> define the "look" of a filter in the UI and do not hold any state information. The actual state of a filters is kept by a <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> object. </p>
<h2 class="groupheader">Member Enumeration Documentation</h2>
<table class="memname">
<tr>
<td class="memname">enum <a class="el" href="#ab9e833d5e4029fed745d15ba63715159">unity::scopes::FilterBase::DisplayHints</a></td>
</tr>
</table>
<p>Display hints for the Shell UI. </p>
<table class="fieldtable">
<tr><th colspan="2">Enumerator</th></tr><tr><td class="fieldname">Default&#160;</td><td class="fielddoc">
<p>Default value (no hint) </p>
</td></tr>
<tr><td class="fieldname">Primary&#160;</td><td class="fielddoc">
<p>Display this filter as a primary navigation, if possible. Currently only the <a class="el" href="unity.scopes.OptionSelectorFilter.md" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a> can act as primary navigation. </p>
</td></tr>
</table>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">int unity::scopes::FilterBase::display_hints </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get display hints of this filter. </p>
<dl class="section return"><dt>Returns</dt><dd>Display hints flags. </dd></dl>
<table class="memname">
<tr>
<td class="memname">FilterGroup::SCPtr unity::scopes::FilterBase::filter_group </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the filter group this filter belongs to. </p>
<dl class="section return"><dt>Returns</dt><dd>The filter group (or null) </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::FilterBase::filter_type </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the type name of this filter. </p>
<dl class="section return"><dt>Returns</dt><dd>The filter type string. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::FilterBase::id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the identifier of this filter. </p>
<dl class="section return"><dt>Returns</dt><dd>The filter id. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::FilterBase::set_display_hints </td>
<td>(</td>
<td class="paramtype">int&#160;</td>
<td class="paramname"><em>hints</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Sets display hints for the Shell UI. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">hints</td><td>A combination of DisplayHints for this filter. </td></tr>
</table>
</dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>if given hints value is unsupported by current filter type. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::FilterBase::set_title </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>title</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set an optional title of this filter. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">title</td><td>The title. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::FilterBase::title </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the optional title of this filter. </p>
<dl class="section return"><dt>Returns</dt><dd>Filter title (can be empty). </dd></dl>
