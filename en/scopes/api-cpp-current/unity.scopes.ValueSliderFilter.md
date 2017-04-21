---
Title: unity.scopes.ValueSliderFilter
---

# unity.scopes.ValueSliderFilter

<p>A value slider filter that allows for selecting a value within a given range.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ValueSliderFilter.h&gt;</code></p>
Inheritance diagram for unity::scopes::ValueSliderFilter:
<img src="../../../../media/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png" border="0" alt="Inheritance graph"/>

<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ac868b40a91520b9a56c2ed98152f1a1a"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac868b40a91520b9a56c2ed98152f1a1a">set_default_value</a> (double val)</td></tr>
<tr class="memdesc:ac868b40a91520b9a56c2ed98152f1a1a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Change the default value of this filter.  More...<br /></td></tr>
<tr class="separator:ac868b40a91520b9a56c2ed98152f1a1a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a32344819474a1ef0956f63e87fb047a4"><td class="memItemLeft" align="right" valign="top">double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a32344819474a1ef0956f63e87fb047a4">default_value</a> () const </td></tr>
<tr class="memdesc:a32344819474a1ef0956f63e87fb047a4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the default value of this filter.  More...<br /></td></tr>
<tr class="separator:a32344819474a1ef0956f63e87fb047a4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab6a8d69f025709d3ee09d7cb362eba03"><td class="memItemLeft" align="right" valign="top">double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab6a8d69f025709d3ee09d7cb362eba03">min</a> () const </td></tr>
<tr class="memdesc:ab6a8d69f025709d3ee09d7cb362eba03"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the minimum allowed value.  More...<br /></td></tr>
<tr class="separator:ab6a8d69f025709d3ee09d7cb362eba03"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5e2e527d77390dc02db1bd1cbdce6460"><td class="memItemLeft" align="right" valign="top">double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5e2e527d77390dc02db1bd1cbdce6460">max</a> () const </td></tr>
<tr class="memdesc:a5e2e527d77390dc02db1bd1cbdce6460"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the maximum allowed value.  More...<br /></td></tr>
<tr class="separator:a5e2e527d77390dc02db1bd1cbdce6460"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9a113cc7fbda26aed161067fb7892119"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9a113cc7fbda26aed161067fb7892119">has_value</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state) const </td></tr>
<tr class="memdesc:a9a113cc7fbda26aed161067fb7892119"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if filter state object holds a value of this filter.  More...<br /></td></tr>
<tr class="separator:a9a113cc7fbda26aed161067fb7892119"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7a81dec2e0595cf95effa6f9f24259ba"><td class="memItemLeft" align="right" valign="top">double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7a81dec2e0595cf95effa6f9f24259ba">value</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state) const </td></tr>
<tr class="memdesc:a7a81dec2e0595cf95effa6f9f24259ba"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get value of this filter from filter state object.  More...<br /></td></tr>
<tr class="separator:a7a81dec2e0595cf95effa6f9f24259ba"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6dc105b666f967fa6a9bbf2eca2ee9dc"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6dc105b666f967fa6a9bbf2eca2ee9dc">labels</a> () const </td></tr>
<tr class="memdesc:a6dc105b666f967fa6a9bbf2eca2ee9dc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get value labeles for this slider filter.  More...<br /></td></tr>
<tr class="separator:a6dc105b666f967fa6a9bbf2eca2ee9dc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5b336122dcab4ed78974badb9016e622"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5b336122dcab4ed78974badb9016e622">update_state</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> &amp;filter_state, double <a class="el" href="#a7a81dec2e0595cf95effa6f9f24259ba">value</a>) const </td></tr>
<tr class="memdesc:a5b336122dcab4ed78974badb9016e622"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets value of this filter instance in filter state object.  More...<br /></td></tr>
<tr class="separator:a5b336122dcab4ed78974badb9016e622"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_filter_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_filter_base')"><img src="../../../../media/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a></td></tr>
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
<tr class="memitem:a5828d2bf89830af47ac5b2cd53cd4e57"><td class="memItemLeft" align="right" valign="top">static ValueSliderFilter::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5828d2bf89830af47ac5b2cd53cd4e57">create</a> (std::string const &amp;<a class="el" href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, double <a class="el" href="#ab6a8d69f025709d3ee09d7cb362eba03">min</a>, double <a class="el" href="#a5e2e527d77390dc02db1bd1cbdce6460">max</a>, double <a class="el" href="#a32344819474a1ef0956f63e87fb047a4">default_value</a>, <a class="el" href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const &amp;value_labels)</td></tr>
<tr class="memdesc:a5828d2bf89830af47ac5b2cd53cd4e57"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create ValueSliderFilter.  More...<br /></td></tr>
<tr class="separator:a5828d2bf89830af47ac5b2cd53cd4e57"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:accaaa9011772ba4f297cb245b3d24738"><td class="memItemLeft" align="right" valign="top">static ValueSliderFilter::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#accaaa9011772ba4f297cb245b3d24738">create</a> (std::string const &amp;<a class="el" href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, double <a class="el" href="#ab6a8d69f025709d3ee09d7cb362eba03">min</a>, double <a class="el" href="#a5e2e527d77390dc02db1bd1cbdce6460">max</a>, double <a class="el" href="#a32344819474a1ef0956f63e87fb047a4">default_value</a>, <a class="el" href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const &amp;value_labels, FilterGroup::SCPtr const &amp;group)</td></tr>
<tr class="memdesc:accaaa9011772ba4f297cb245b3d24738"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create ValueSliderFilter inside a FilterGroup.  More...<br /></td></tr>
<tr class="separator:accaaa9011772ba4f297cb245b3d24738"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae72a0d0a94095bd3d2fb6950a2c9221e"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae72a0d0a94095bd3d2fb6950a2c9221e">update_state</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> &amp;filter_state, std::string const &amp;filter_id, double <a class="el" href="#a7a81dec2e0595cf95effa6f9f24259ba">value</a>)</td></tr>
<tr class="memdesc:ae72a0d0a94095bd3d2fb6950a2c9221e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets value of this filter instance in filter state object, without having an instance of ValueSliderFilter.  More...<br /></td></tr>
<tr class="separator:ae72a0d0a94095bd3d2fb6950a2c9221e"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Additional Inherited Members</h2></td></tr>
<tr class="inherit_header pub_types_classunity_1_1scopes_1_1_filter_base"><td colspan="2" onclick="javascript:toggleInherit('pub_types_classunity_1_1scopes_1_1_filter_base')"><img src="../../../../media/closed.png" alt="-"/>&#160;Public Types inherited from <a class="el" href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a></td></tr>
<tr class="memitem:ab9e833d5e4029fed745d15ba63715159 inherit pub_types_classunity_1_1scopes_1_1_filter_base"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159">DisplayHints</a> { <a class="el" href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f">Default</a> = 0,
<a class="el" href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56">Primary</a> = 1
}</td></tr>
<tr class="memdesc:ab9e833d5e4029fed745d15ba63715159"><td class="mdescLeft">&#160;</td><td class="mdescRight">Display hints for the Shell UI.  <a href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159">More...</a><br /></td></tr>
<tr class="separator:ab9e833d5e4029fed745d15ba63715159 inherit pub_types_classunity_1_1scopes_1_1_filter_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A value slider filter that allows for selecting a value within a given range. </p>
<p>The <a class="el" href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> allows for selecting a value within a range defined by minimum and maximum values. Both minimum and maximum values can have labels and, in addition, the scope may provide extra labels to mark other values from that range - these label will serve as a guidance to the user. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">ValueSliderFilter::UPtr unity::scopes::ValueSliderFilter::create </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>min</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>max</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>default_value</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const &amp;&#160;</td>
<td class="paramname"><em>value_labels</em>&#160;</td>
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
<p>Create <a class="el" href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. </p>
<p>Creates <a class="el" href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> of ValueSliderFilter::SliderType::LessThan type.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>A unique identifier for the filter that can be used to later identify it among several filters. </td></tr>
<tr><td class="paramname">min</td><td>The minimum allowed value </td></tr>
<tr><td class="paramname">max</td><td>The maximum allowed value </td></tr>
<tr><td class="paramname">default_value</td><td>The default value of this filter, from the min..max range. </td></tr>
<tr><td class="paramname">value_labels</td><td>The labels for min and max values as well as optional extra labels. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Instance of <a class="el" href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>on invalid (min, max) range or erroneous value_labels. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">ValueSliderFilter::UPtr unity::scopes::ValueSliderFilter::create </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>min</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>max</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>default_value</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const &amp;&#160;</td>
<td class="paramname"><em>value_labels</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">FilterGroup::SCPtr const &amp;&#160;</td>
<td class="paramname"><em>group</em>&#160;</td>
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
<p>Create <a class="el" href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> inside a <a class="el" href="unity.scopes.FilterGroup.md" title="Groups several filters into an expandable widget in the UI. ">FilterGroup</a>. </p>
<p>Creates <a class="el" href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> of ValueSliderFilter::SliderType::LessThan type.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>A unique identifier for the filter that can be used to later identify it among several filters. </td></tr>
<tr><td class="paramname">min</td><td>The minimum allowed value </td></tr>
<tr><td class="paramname">max</td><td>The maximum allowed value </td></tr>
<tr><td class="paramname">default_value</td><td>The default value of this filter, from the min..max range. </td></tr>
<tr><td class="paramname">value_labels</td><td>The labels for min and max values as well as optional extra labels. </td></tr>
<tr><td class="paramname">group</td><td>A filter group this filter should be added to. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Instance of <a class="el" href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>on invalid (min, max) range or erroneous value_labels. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">double unity::scopes::ValueSliderFilter::default_value </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the default value of this filter. </p>
<p>The default value will be used by the shell if no value is present for this filter in the <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">unity::scopes::FilterState</a> (no value has been set by the user).</p>
<dl class="section return"><dt>Returns</dt><dd>The default value </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::ValueSliderFilter::has_value </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if filter state object holds a value of this filter. </p>
<dl class="section return"><dt>Returns</dt><dd>true if filter_state has a value of this filter. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const &amp; unity::scopes::ValueSliderFilter::labels </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get value labeles for this slider filter. </p>
<dl class="section return"><dt>Returns</dt><dd>the value labels. </dd></dl>
<table class="memname">
<tr>
<td class="memname">double unity::scopes::ValueSliderFilter::max </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the maximum allowed value. </p>
<dl class="section return"><dt>Returns</dt><dd>maximum value </dd></dl>
<table class="memname">
<tr>
<td class="memname">double unity::scopes::ValueSliderFilter::min </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the minimum allowed value. </p>
<dl class="section return"><dt>Returns</dt><dd>mimimum value </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ValueSliderFilter::set_default_value </td>
<td>(</td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>val</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Change the default value of this filter. </p>
<p>The default value will be used by the shell if no value is present for this filter in the <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">unity::scopes::FilterState</a> (no value has been set by the user).</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">val</td><td>The new default value. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ValueSliderFilter::update_state </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> &amp;&#160;</td>
<td class="paramname"><em>filter_state</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>value</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Sets value of this filter instance in filter state object. </p>
<p>This is meant to be used to modify a <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> received with a search request before sending it back to the client (UI shell).</p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if value is out of (min, max) range. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ValueSliderFilter::update_state </td>
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
<td class="paramtype">double&#160;</td>
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
<p>Sets value of this filter instance in filter state object, without having an instance of <a class="el" href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. </p>
<p>Updates an instance of <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a>, without the need for an <a class="el" href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> instance. This is meant to be used when creating a canned Query that references another scope. </p>
<table class="memname">
<tr>
<td class="memname">double unity::scopes::ValueSliderFilter::value </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get value of this filter from filter state object. </p>
<dl class="section return"><dt>Returns</dt><dd>value of this filter or the default value if value is not present in the filter_state. </dd></dl>
