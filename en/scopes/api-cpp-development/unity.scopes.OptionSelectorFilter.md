---
Title: unity.scopes.OptionSelectorFilter
---

# unity.scopes.OptionSelectorFilter

<p>A selection filter that displays a list of choices and allows one or more of them to be selected.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/OptionSelectorFilter.h&gt;</code></p>
Inheritance diagram for unity::scopes::OptionSelectorFilter:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/0612c9b6-cba6-49cb-a2c1-91e90b05aed5-../unity.scopes.OptionSelectorFilter/classunity_1_1scopes_1_1_option_selector_filter__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a125c5b43a776bb80f02293ae6d1801d3"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a125c5b43a776bb80f02293ae6d1801d3">label</a> () const </td></tr>
<tr class="memdesc:a125c5b43a776bb80f02293ae6d1801d3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the label of this filter.  More...<br /></td></tr>
<tr class="separator:a125c5b43a776bb80f02293ae6d1801d3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa1799eafbae1d5228d4520a2dc74f146"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa1799eafbae1d5228d4520a2dc74f146">multi_select</a> () const </td></tr>
<tr class="memdesc:aa1799eafbae1d5228d4520a2dc74f146"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this filter supports multiple options to be selected.  More...<br /></td></tr>
<tr class="separator:aa1799eafbae1d5228d4520a2dc74f146"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adeebc09dbf919d0ba9015eae669a0d33"><td class="memItemLeft" align="right" valign="top">FilterOption::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adeebc09dbf919d0ba9015eae669a0d33">add_option</a> (std::string const &amp;<a class="el" href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, std::string const &amp;<a class="el" href="#a125c5b43a776bb80f02293ae6d1801d3">label</a>)</td></tr>
<tr class="memdesc:adeebc09dbf919d0ba9015eae669a0d33"><td class="mdescLeft">&#160;</td><td class="mdescRight">Add a new option to this filter. The option is 'off' by default.  More...<br /></td></tr>
<tr class="separator:adeebc09dbf919d0ba9015eae669a0d33"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a773c6364c3cee05042e975e927faf808"><td class="memItemLeft" align="right" valign="top">std::list&lt; FilterOption::SCPtr &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a773c6364c3cee05042e975e927faf808">options</a> () const </td></tr>
<tr class="memdesc:a773c6364c3cee05042e975e927faf808"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get all options of this filter, in the order they were added.  More...<br /></td></tr>
<tr class="separator:a773c6364c3cee05042e975e927faf808"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6b80b908411779b8bb402c9cbfa2f576"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6b80b908411779b8bb402c9cbfa2f576">has_active_option</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state) const </td></tr>
<tr class="memdesc:a6b80b908411779b8bb402c9cbfa2f576"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if an option is active for this filter.  More...<br /></td></tr>
<tr class="separator:a6b80b908411779b8bb402c9cbfa2f576"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3015abeb0439ccd29bd61afa9b7059df"><td class="memItemLeft" align="right" valign="top">std::set&lt; FilterOption::SCPtr &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3015abeb0439ccd29bd61afa9b7059df">active_options</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state) const </td></tr>
<tr class="memdesc:a3015abeb0439ccd29bd61afa9b7059df"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the active options from a FilterState instance for this filter.  More...<br /></td></tr>
<tr class="separator:a3015abeb0439ccd29bd61afa9b7059df"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a616c09732a25a01fc97341a74aac62f6"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a616c09732a25a01fc97341a74aac62f6">update_state</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> &amp;filter_state, FilterOption::SCPtr option, bool active) const </td></tr>
<tr class="memdesc:a616c09732a25a01fc97341a74aac62f6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Marks given FilterOption of this filter instance as active (or not active) in a FilterState object.  More...<br /></td></tr>
<tr class="separator:a616c09732a25a01fc97341a74aac62f6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a02124402ba7551b06a10398850343109"><td class="memItemLeft" align="right" valign="top">FilterOption::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a02124402ba7551b06a10398850343109">add_option</a> (std::string const &amp;<a class="el" href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, std::string const &amp;<a class="el" href="#a125c5b43a776bb80f02293ae6d1801d3">label</a>, bool value)</td></tr>
<tr class="memdesc:a02124402ba7551b06a10398850343109"><td class="mdescLeft">&#160;</td><td class="mdescRight">Add a new option to this filter and provide its default value.  More...<br /></td></tr>
<tr class="separator:a02124402ba7551b06a10398850343109"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_filter_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_filter_base')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/79318c8e-7cfd-4cbb-8d5d-f237ab2283aa-../unity.scopes.OptionSelectorFilter/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a></td></tr>
<tr class="memitem:ab4ab1b600ce3967dc50255e736c6d02e inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.FilterBase.md#ab4ab1b600ce3967dc50255e736c6d02e">set_display_hints</a> (int hints)</td></tr>
<tr class="memdesc:ab4ab1b600ce3967dc50255e736c6d02e inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets display hints for the Shell UI.  More...<br /></td></tr>
<tr class="separator:ab4ab1b600ce3967dc50255e736c6d02e inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8f20819591155edaab29d535c5c4c261 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.FilterBase.md#a8f20819591155edaab29d535c5c4c261">display_hints</a> () const </td></tr>
<tr class="memdesc:a8f20819591155edaab29d535c5c4c261 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get display hints of this filter.  More...<br /></td></tr>
<tr class="separator:a8f20819591155edaab29d535c5c4c261 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f2d96647b23af77b1ff1cffc80f3868 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a> () const </td></tr>
<tr class="memdesc:a1f2d96647b23af77b1ff1cffc80f3868 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the identifier of this filter.  More...<br /></td></tr>
<tr class="separator:a1f2d96647b23af77b1ff1cffc80f3868 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aadc7344c951961331dcbe67149d56c78 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.FilterBase.md#aadc7344c951961331dcbe67149d56c78">filter_type</a> () const </td></tr>
<tr class="memdesc:aadc7344c951961331dcbe67149d56c78 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the type name of this filter.  More...<br /></td></tr>
<tr class="separator:aadc7344c951961331dcbe67149d56c78 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aec8ceae8141811833af087ba2ebe086c inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.FilterBase.md#aec8ceae8141811833af087ba2ebe086c">set_title</a> (std::string const &amp;<a class="el" href="unity.scopes.FilterBase.md#a3f0c324b3aac39bb8967fc900f3a909e">title</a>)</td></tr>
<tr class="memdesc:aec8ceae8141811833af087ba2ebe086c inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set an optional title of this filter.  More...<br /></td></tr>
<tr class="separator:aec8ceae8141811833af087ba2ebe086c inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3f0c324b3aac39bb8967fc900f3a909e inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.FilterBase.md#a3f0c324b3aac39bb8967fc900f3a909e">title</a> () const </td></tr>
<tr class="memdesc:a3f0c324b3aac39bb8967fc900f3a909e inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the optional title of this filter.  More...<br /></td></tr>
<tr class="separator:a3f0c324b3aac39bb8967fc900f3a909e inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afff4685371fe67e6f87f58e31f69a037 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memItemLeft" align="right" valign="top">FilterGroup::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.FilterBase.md#afff4685371fe67e6f87f58e31f69a037">filter_group</a> () const </td></tr>
<tr class="memdesc:afff4685371fe67e6f87f58e31f69a037 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the filter group this filter belongs to.  More...<br /></td></tr>
<tr class="separator:afff4685371fe67e6f87f58e31f69a037 inherit pub_methods_classunity_1_1scopes_1_1_filter_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Static Public Member Functions</h2></td></tr>
<tr class="memitem:a2930156d8f60172c9e926a3d6ebc85ee"><td class="memItemLeft" align="right" valign="top">static OptionSelectorFilter::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2930156d8f60172c9e926a3d6ebc85ee">create</a> (std::string const &amp;<a class="el" href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, std::string const &amp;<a class="el" href="#a125c5b43a776bb80f02293ae6d1801d3">label</a>, bool <a class="el" href="#aa1799eafbae1d5228d4520a2dc74f146">multi_select</a>=false)</td></tr>
<tr class="memdesc:a2930156d8f60172c9e926a3d6ebc85ee"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates an OpionSelectorFilter.  More...<br /></td></tr>
<tr class="separator:a2930156d8f60172c9e926a3d6ebc85ee"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad2f90f01ea9d197dbc089c9b64f0b5a7"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad2f90f01ea9d197dbc089c9b64f0b5a7">update_state</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> &amp;filter_state, std::string const &amp;filter_id, std::string const &amp;option_id, bool value)</td></tr>
<tr class="memdesc:ad2f90f01ea9d197dbc089c9b64f0b5a7"><td class="mdescLeft">&#160;</td><td class="mdescRight">Marks an option of a filter active/inactive in a FilterState object, without having an instance of OptionSelectorFilter.  More...<br /></td></tr>
<tr class="separator:ad2f90f01ea9d197dbc089c9b64f0b5a7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2b1dfa99fc949df95c7e4a5601aceaf6"><td class="memItemLeft" align="right" valign="top">static OptionSelectorFilter::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2b1dfa99fc949df95c7e4a5601aceaf6">create</a> (std::string const &amp;<a class="el" href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, std::string const &amp;<a class="el" href="#a125c5b43a776bb80f02293ae6d1801d3">label</a>, FilterGroup::SCPtr const &amp;group, bool <a class="el" href="#aa1799eafbae1d5228d4520a2dc74f146">multi_select</a>=false)</td></tr>
<tr class="memdesc:a2b1dfa99fc949df95c7e4a5601aceaf6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates an OpionSelectorFilter inside a FilterGroup.  More...<br /></td></tr>
<tr class="separator:a2b1dfa99fc949df95c7e4a5601aceaf6"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Additional Inherited Members</h2></td></tr>
<tr class="inherit_header pub_types_classunity_1_1scopes_1_1_filter_base"><td colspan="2" onclick="javascript:toggleInherit('pub_types_classunity_1_1scopes_1_1_filter_base')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/ac29060b-5bc4-4e00-99d1-727c5224de09-../unity.scopes.OptionSelectorFilter/closed.png" alt="-"/>&#160;Public Types inherited from <a class="el" href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a></td></tr>
<tr class="memitem:ab9e833d5e4029fed745d15ba63715159 inherit pub_types_classunity_1_1scopes_1_1_filter_base"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159">DisplayHints</a> { <a class="el" href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f">Default</a> = 0, 
<a class="el" href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56">Primary</a> = 1
}</td></tr>
<tr class="memdesc:ab9e833d5e4029fed745d15ba63715159"><td class="mdescLeft">&#160;</td><td class="mdescRight">Display hints for the Shell UI.  <a href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159">More...</a><br /></td></tr>
<tr class="separator:ab9e833d5e4029fed745d15ba63715159 inherit pub_types_classunity_1_1scopes_1_1_filter_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A selection filter that displays a list of choices and allows one or more of them to be selected. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::set&lt; FilterOption::SCPtr &gt; unity::scopes::OptionSelectorFilter::active_options </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the active options from a <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> instance for this filter. </p>
<p>The returned set may be empty if the user de-selected all options. However, if there is no state recorded for this filter in the filter_state instance, then all the options enabled by default are returned.</p>
<dl class="section return"><dt>Returns</dt><dd>The set of selected filter options (or options enabled by default if the filter is not present in the filter_state). </dd></dl>
<table class="memname">
<tr>
<td class="memname">FilterOption::SCPtr unity::scopes::OptionSelectorFilter::add_option </td>
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
<p>Add a new option to this filter. The option is 'off' by default. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>on invalid id or label </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The new option instance. </dd></dl>
<table class="memname">
<tr>
<td class="memname">FilterOption::SCPtr unity::scopes::OptionSelectorFilter::add_option </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">bool&#160;</td>
<td class="paramname"><em>value</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Add a new option to this filter and provide its default value. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if multiple options with value of 'true' are provided for a single-selection <a class="el" href="index.html" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a>. </td></tr>
<tr><td class="paramname">unity::InvalidArgumentException</td><td>on invalid id or label </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The new option instance. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">OptionSelectorFilter::UPtr unity::scopes::OptionSelectorFilter::create </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">bool&#160;</td>
<td class="paramname"><em>multi_select</em> = <code>false</code>&#160;</td>
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
<p>Creates an OpionSelectorFilter. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>A unique identifier for the filter that can be used to later identify it among several filters. </td></tr>
<tr><td class="paramname">label</td><td>A display label for the filter. </td></tr>
<tr><td class="paramname">multi_select</td><td>If true, the filter permits more than option to be selected; otherwise, only a single option can be selected.</td></tr>
</table>
</dd>
</dl>
<dl class="section note"><dt>Note</dt><dd>The multi-selection cannot be combined with unity::scopes::FilterBase::DisplayHints::Primary flag set via <a class="el" href="unity.scopes.FilterBase.md#ab4ab1b600ce3967dc50255e736c6d02e" title="Sets display hints for the Shell UI. ">unity::scopes::FilterBase::set_display_hints()</a>. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">OptionSelectorFilter::UPtr unity::scopes::OptionSelectorFilter::create </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">FilterGroup::SCPtr const &amp;&#160;</td>
<td class="paramname"><em>group</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">bool&#160;</td>
<td class="paramname"><em>multi_select</em> = <code>false</code>&#160;</td>
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
<p>Creates an OpionSelectorFilter inside a <a class="el" href="unity.scopes.FilterGroup.md" title="Groups several filters into an expandable widget in the UI. ">FilterGroup</a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>A unique identifier for the filter that can be used to later identify it among several filters. </td></tr>
<tr><td class="paramname">label</td><td>A display label for the filter. </td></tr>
<tr><td class="paramname">group</td><td>A filter group this filter should be added to. </td></tr>
<tr><td class="paramname">multi_select</td><td>If true, the filter permits more than option to be selected; otherwise, only a single option can be selected. </td></tr>
</table>
</dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>on invalid null group.</td></tr>
</table>
</dd>
</dl>
<dl class="section note"><dt>Note</dt><dd>The multi-selection cannot be combined with unity::scopes::FilterBase::DisplayHints::Primary flag set via <a class="el" href="unity.scopes.FilterBase.md#ab4ab1b600ce3967dc50255e736c6d02e" title="Sets display hints for the Shell UI. ">unity::scopes::FilterBase::set_display_hints()</a>. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::OptionSelectorFilter::has_active_option </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if an option is active for this filter. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">filter_state</td><td>The state of filters </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>true if an option is active </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::OptionSelectorFilter::label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the label of this filter. </p>
<dl class="section return"><dt>Returns</dt><dd>The filter label. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::OptionSelectorFilter::multi_select </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this filter supports multiple options to be selected. </p>
<dl class="section return"><dt>Returns</dt><dd>True if multi-selection is enabled. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::list&lt; FilterOption::SCPtr &gt; unity::scopes::OptionSelectorFilter::options </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get all options of this filter, in the order they were added. </p>
<dl class="section return"><dt>Returns</dt><dd>The list of options. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::OptionSelectorFilter::update_state </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> &amp;&#160;</td>
<td class="paramname"><em>filter_state</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">FilterOption::SCPtr&#160;</td>
<td class="paramname"><em>option</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">bool&#160;</td>
<td class="paramname"><em>active</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Marks given <a class="el" href="unity.scopes.FilterOption.md" title="Holds definition of filter option for OptionSelectorFilter. ">FilterOption</a> of this filter instance as active (or not active) in a <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> object. </p>
<p>Records the given <a class="el" href="unity.scopes.FilterOption.md" title="Holds definition of filter option for OptionSelectorFilter. ">FilterOption</a> as "selected" in the <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a>. This is meant to be used to modify a <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> received with a search request before sending it back to the client (UI shell). </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void unity::scopes::OptionSelectorFilter::update_state </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> &amp;&#160;</td>
<td class="paramname"><em>filter_state</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>filter_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>option_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">bool&#160;</td>
<td class="paramname"><em>value</em>&#160;</td>
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
<p>Marks an option of a filter active/inactive in a <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> object, without having an instance of <a class="el" href="index.html" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a>. </p>
<p>Updates an instance of <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a>, without the need for an <a class="el" href="index.html" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a> instance. This is meant to be used when creating a canned Query that references another scope. </p>
