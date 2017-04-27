---
Title: unity.scopes.RangeInputFilter
---

# unity.scopes.RangeInputFilter

<p>A range filter allows a start and end value to be entered by the user.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/RangeInputFilter.h&gt;</code></p>
Inheritance diagram for unity::scopes::RangeInputFilter:
<img src="../../../media/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a1a4cf761c6bfa2e07eb24b6f584ec05b"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1a4cf761c6bfa2e07eb24b6f584ec05b">start_prefix_label</a> () const </td></tr>
<tr class="memdesc:a1a4cf761c6bfa2e07eb24b6f584ec05b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the prefix label of start value.  More...<br /></td></tr>
<tr class="separator:a1a4cf761c6bfa2e07eb24b6f584ec05b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9e2a6ec4e9c06234ee4759dce2644008"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9e2a6ec4e9c06234ee4759dce2644008">start_postfix_label</a> () const </td></tr>
<tr class="memdesc:a9e2a6ec4e9c06234ee4759dce2644008"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the postfix label of start value.  More...<br /></td></tr>
<tr class="separator:a9e2a6ec4e9c06234ee4759dce2644008"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8acb48c94b3e9b6ca228a0e7ebb26ae5"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8acb48c94b3e9b6ca228a0e7ebb26ae5">end_prefix_label</a> () const </td></tr>
<tr class="memdesc:a8acb48c94b3e9b6ca228a0e7ebb26ae5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the prefix label of end value.  More...<br /></td></tr>
<tr class="separator:a8acb48c94b3e9b6ca228a0e7ebb26ae5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a81dde713bcfb2b2ca24683ba9e808e34"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a81dde713bcfb2b2ca24683ba9e808e34">end_postfix_label</a> () const </td></tr>
<tr class="memdesc:a81dde713bcfb2b2ca24683ba9e808e34"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the postfix label of end value.  More...<br /></td></tr>
<tr class="separator:a81dde713bcfb2b2ca24683ba9e808e34"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a41f517d0071ca0f953c478f8272bf41b"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a41f517d0071ca0f953c478f8272bf41b">central_label</a> () const </td></tr>
<tr class="memdesc:a41f517d0071ca0f953c478f8272bf41b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the central label for this filter.  More...<br /></td></tr>
<tr class="separator:a41f517d0071ca0f953c478f8272bf41b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adf545096dacbea4303361527450321fa"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adf545096dacbea4303361527450321fa">default_start_value</a> () const </td></tr>
<tr class="memdesc:adf545096dacbea4303361527450321fa"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the default start value if set (int, double or null).  More...<br /></td></tr>
<tr class="separator:adf545096dacbea4303361527450321fa"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aaf471258f02a8af0f7bfdb186ed61b0e"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aaf471258f02a8af0f7bfdb186ed61b0e">default_end_value</a> () const </td></tr>
<tr class="memdesc:aaf471258f02a8af0f7bfdb186ed61b0e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get default end value if set (int, double or null).  More...<br /></td></tr>
<tr class="separator:aaf471258f02a8af0f7bfdb186ed61b0e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a64f2c9ff7ed484f49d26f601f30e8616"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a64f2c9ff7ed484f49d26f601f30e8616">has_start_value</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state) const </td></tr>
<tr class="memdesc:a64f2c9ff7ed484f49d26f601f30e8616"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if filter state holds a start value for this filter instance.  More...<br /></td></tr>
<tr class="separator:a64f2c9ff7ed484f49d26f601f30e8616"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae459a665a5dae27445547b1c0be8c7c3"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae459a665a5dae27445547b1c0be8c7c3">has_end_value</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state) const </td></tr>
<tr class="memdesc:ae459a665a5dae27445547b1c0be8c7c3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if filter state holds an end value for this filter instance.  More...<br /></td></tr>
<tr class="separator:ae459a665a5dae27445547b1c0be8c7c3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afd86208a5f8fe8a81877bd0bf4588758"><td class="memItemLeft" align="right" valign="top">double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afd86208a5f8fe8a81877bd0bf4588758">start_value</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state) const </td></tr>
<tr class="memdesc:afd86208a5f8fe8a81877bd0bf4588758"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the start value for this filter instance.  More...<br /></td></tr>
<tr class="separator:afd86208a5f8fe8a81877bd0bf4588758"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af5bee0ddf65a375a4a5e19b4313de940"><td class="memItemLeft" align="right" valign="top">double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af5bee0ddf65a375a4a5e19b4313de940">end_value</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state) const </td></tr>
<tr class="memdesc:af5bee0ddf65a375a4a5e19b4313de940"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get end value for this filter instance.  More...<br /></td></tr>
<tr class="separator:af5bee0ddf65a375a4a5e19b4313de940"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5fa97b63d86a89e7144a89e0996d1304"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5fa97b63d86a89e7144a89e0996d1304">update_state</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> &amp;filter_state, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;<a class="el" href="#afd86208a5f8fe8a81877bd0bf4588758">start_value</a>, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;<a class="el" href="#af5bee0ddf65a375a4a5e19b4313de940">end_value</a>) const </td></tr>
<tr class="memdesc:a5fa97b63d86a89e7144a89e0996d1304"><td class="mdescLeft">&#160;</td><td class="mdescRight">Store start and end value for this filter in the filter state.  More...<br /></td></tr>
<tr class="separator:a5fa97b63d86a89e7144a89e0996d1304"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_filter_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_filter_base')"><img src="../../../media/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a></td></tr>
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
<tr class="memitem:a0717644ec86abcdc9dabf30302fead5d"><td class="memItemLeft" align="right" valign="top">static RangeInputFilter::SPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0717644ec86abcdc9dabf30302fead5d">create</a> (std::string const &amp;<a class="el" href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, std::string const &amp;<a class="el" href="#a1a4cf761c6bfa2e07eb24b6f584ec05b">start_prefix_label</a>, std::string const &amp;<a class="el" href="#a9e2a6ec4e9c06234ee4759dce2644008">start_postfix_label</a>, std::string const &amp;<a class="el" href="#a41f517d0071ca0f953c478f8272bf41b">central_label</a>, std::string const &amp;<a class="el" href="#a8acb48c94b3e9b6ca228a0e7ebb26ae5">end_prefix_label</a>, std::string const &amp;<a class="el" href="#a81dde713bcfb2b2ca24683ba9e808e34">end_postfix_label</a>)</td></tr>
<tr class="memdesc:a0717644ec86abcdc9dabf30302fead5d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a RangeInputFilter.  More...<br /></td></tr>
<tr class="separator:a0717644ec86abcdc9dabf30302fead5d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af011c6e541e7a3776cccacf88fdba2b5"><td class="memItemLeft" align="right" valign="top">static RangeInputFilter::SPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af011c6e541e7a3776cccacf88fdba2b5">create</a> (std::string const &amp;<a class="el" href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;<a class="el" href="#adf545096dacbea4303361527450321fa">default_start_value</a>, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;<a class="el" href="#aaf471258f02a8af0f7bfdb186ed61b0e">default_end_value</a>, std::string const &amp;<a class="el" href="#a1a4cf761c6bfa2e07eb24b6f584ec05b">start_prefix_label</a>, std::string const &amp;<a class="el" href="#a9e2a6ec4e9c06234ee4759dce2644008">start_postfix_label</a>, std::string const &amp;<a class="el" href="#a41f517d0071ca0f953c478f8272bf41b">central_label</a>, std::string const &amp;<a class="el" href="#a8acb48c94b3e9b6ca228a0e7ebb26ae5">end_prefix_label</a>, std::string const &amp;<a class="el" href="#a81dde713bcfb2b2ca24683ba9e808e34">end_postfix_label</a>)</td></tr>
<tr class="memdesc:af011c6e541e7a3776cccacf88fdba2b5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a RangeInputFilter with specific default values for start and end.  More...<br /></td></tr>
<tr class="separator:af011c6e541e7a3776cccacf88fdba2b5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aba826b77159d4d51ec804c2132ff0f62"><td class="memItemLeft" align="right" valign="top">static RangeInputFilter::SPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aba826b77159d4d51ec804c2132ff0f62">create</a> (std::string const &amp;<a class="el" href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, std::string const &amp;<a class="el" href="#a1a4cf761c6bfa2e07eb24b6f584ec05b">start_prefix_label</a>, std::string const &amp;<a class="el" href="#a9e2a6ec4e9c06234ee4759dce2644008">start_postfix_label</a>, std::string const &amp;<a class="el" href="#a41f517d0071ca0f953c478f8272bf41b">central_label</a>, std::string const &amp;<a class="el" href="#a8acb48c94b3e9b6ca228a0e7ebb26ae5">end_prefix_label</a>, std::string const &amp;<a class="el" href="#a81dde713bcfb2b2ca24683ba9e808e34">end_postfix_label</a>, FilterGroup::SCPtr const &amp;group)</td></tr>
<tr class="memdesc:aba826b77159d4d51ec804c2132ff0f62"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a RangeInputFilter inside a FilterGroup.  More...<br /></td></tr>
<tr class="separator:aba826b77159d4d51ec804c2132ff0f62"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac782e01462c0f1868fca744119da91c6"><td class="memItemLeft" align="right" valign="top">static RangeInputFilter::SPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac782e01462c0f1868fca744119da91c6">create</a> (std::string const &amp;<a class="el" href="unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;<a class="el" href="#adf545096dacbea4303361527450321fa">default_start_value</a>, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;<a class="el" href="#aaf471258f02a8af0f7bfdb186ed61b0e">default_end_value</a>, std::string const &amp;<a class="el" href="#a1a4cf761c6bfa2e07eb24b6f584ec05b">start_prefix_label</a>, std::string const &amp;<a class="el" href="#a9e2a6ec4e9c06234ee4759dce2644008">start_postfix_label</a>, std::string const &amp;<a class="el" href="#a41f517d0071ca0f953c478f8272bf41b">central_label</a>, std::string const &amp;<a class="el" href="#a8acb48c94b3e9b6ca228a0e7ebb26ae5">end_prefix_label</a>, std::string const &amp;<a class="el" href="#a81dde713bcfb2b2ca24683ba9e808e34">end_postfix_label</a>, FilterGroup::SCPtr const &amp;group)</td></tr>
<tr class="memdesc:ac782e01462c0f1868fca744119da91c6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a RangeInputFilter with specific default values for start and end, inside a FilterGroup.  More...<br /></td></tr>
<tr class="separator:ac782e01462c0f1868fca744119da91c6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7cb0b4523641ea4dec9b3c619f5b9c21"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7cb0b4523641ea4dec9b3c619f5b9c21">update_state</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> &amp;filter_state, std::string const &amp;filter_id, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;<a class="el" href="#afd86208a5f8fe8a81877bd0bf4588758">start_value</a>, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;<a class="el" href="#af5bee0ddf65a375a4a5e19b4313de940">end_value</a>)</td></tr>
<tr class="memdesc:a7cb0b4523641ea4dec9b3c619f5b9c21"><td class="mdescLeft">&#160;</td><td class="mdescRight">Store start and end value in the filter state, without having an instance of RangeInputFilter.  More...<br /></td></tr>
<tr class="separator:a7cb0b4523641ea4dec9b3c619f5b9c21"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Additional Inherited Members</h2></td></tr>
<tr class="inherit_header pub_types_classunity_1_1scopes_1_1_filter_base"><td colspan="2" onclick="javascript:toggleInherit('pub_types_classunity_1_1scopes_1_1_filter_base')"><img src="../../../media/closed.png" alt="-"/>&#160;Public Types inherited from <a class="el" href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a></td></tr>
<tr class="memitem:ab9e833d5e4029fed745d15ba63715159 inherit pub_types_classunity_1_1scopes_1_1_filter_base"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159">DisplayHints</a> { <a class="el" href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f">Default</a> = 0, 
<a class="el" href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56">Primary</a> = 1
}</td></tr>
<tr class="memdesc:ab9e833d5e4029fed745d15ba63715159"><td class="mdescLeft">&#160;</td><td class="mdescRight">Display hints for the Shell UI.  <a href="unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159">More...</a><br /></td></tr>
<tr class="separator:ab9e833d5e4029fed745d15ba63715159 inherit pub_types_classunity_1_1scopes_1_1_filter_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A range filter allows a start and end value to be entered by the user. </p>
<p>A <a class="el" href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> is composed of two input boxes that accept numeric values (both of them optional). The filter can have prefix and/or postfix labels for the start and end value, respectively, plus a single label that is displayed between the two input boxes. The filter can provide defaults for that start and end value, which are used by the UI if the user does not enter explicit values. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::RangeInputFilter::central_label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the central label for this filter. </p>
<dl class="section return"><dt>Returns</dt><dd>The central label. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>start_prefix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>start_postfix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>central_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>end_prefix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>end_postfix_label</em>&#160;</td>
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
<p>Creates a <a class="el" href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>A unique identifier for the filter that can be used to later identify it among several filters. </td></tr>
<tr><td class="paramname">start_prefix_label</td><td>A display label for the input box for the start value, displayed to the left (can be empty). </td></tr>
<tr><td class="paramname">start_postfix_label</td><td>A display label for the input box for the start value, displayed to the right (can be empty). </td></tr>
<tr><td class="paramname">central_label</td><td>A display label that is displayed between the two input boxes (can be empty). </td></tr>
<tr><td class="paramname">end_prefix_label</td><td>A display label for the input box for the end value, displayed to the left (can be empty). </td></tr>
<tr><td class="paramname">end_postfix_label</td><td>A display label for the input box for the end value, displayed to the right (can be empty). </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Instance of <a class="el" href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>default_start_value</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>default_end_value</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>start_prefix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>start_postfix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>central_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>end_prefix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>end_postfix_label</em>&#160;</td>
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
<p>Creates a <a class="el" href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> with specific default values for start and end. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>A unique identifier for the filter that can be used to later identify it among several filters. </td></tr>
<tr><td class="paramname">default_start_value</td><td>A default start value (double, int, or null). </td></tr>
<tr><td class="paramname">default_end_value</td><td>A default end value (double, int, or null). </td></tr>
<tr><td class="paramname">start_prefix_label</td><td>A display label for the input box for the start value, displayed to the left (can be empty). </td></tr>
<tr><td class="paramname">start_postfix_label</td><td>A display label for the input box for the start value, displayed to the right (can be empty). </td></tr>
<tr><td class="paramname">central_label</td><td>A display label displayed between the two input boxes (can be empty). </td></tr>
<tr><td class="paramname">end_prefix_label</td><td>A display label for the input box for the end value, displayed to the left (can be empty). </td></tr>
<tr><td class="paramname">end_postfix_label</td><td>A display label for the input box for the end value, displayed to the right (can be empty). </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Instance of <a class="el" href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>start_prefix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>start_postfix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>central_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>end_prefix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>end_postfix_label</em>, </td>
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
<p>Creates a <a class="el" href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> inside a <a class="el" href="unity.scopes.FilterGroup.md" title="Groups several filters into an expandable widget in the UI. ">FilterGroup</a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>A unique identifier for the filter that can be used to later identify it among several filters. </td></tr>
<tr><td class="paramname">start_prefix_label</td><td>A display label for the input box for the start value, displayed to the left (can be empty). </td></tr>
<tr><td class="paramname">start_postfix_label</td><td>A display label for the input box for the start value, displayed to the right (can be empty). </td></tr>
<tr><td class="paramname">central_label</td><td>A display label displayed between the two input boxes (can be empty). </td></tr>
<tr><td class="paramname">end_prefix_label</td><td>A display label for the input box for the end value, displayed to the left (can be empty). </td></tr>
<tr><td class="paramname">end_postfix_label</td><td>A display label for the input box for the end value, displayed to the right (can be empty). </td></tr>
<tr><td class="paramname">group</td><td>A filter group this filter should be added to. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Instance of <a class="el" href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>default_start_value</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>default_end_value</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>start_prefix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>start_postfix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>central_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>end_prefix_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>end_postfix_label</em>, </td>
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
<p>Creates a <a class="el" href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> with specific default values for start and end, inside a <a class="el" href="unity.scopes.FilterGroup.md" title="Groups several filters into an expandable widget in the UI. ">FilterGroup</a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>A unique identifier for the filter that can be used to later identify it among several filters. </td></tr>
<tr><td class="paramname">default_start_value</td><td>The default start value (double, int, or null). </td></tr>
<tr><td class="paramname">default_end_value</td><td>The default end value (double, int, or null). </td></tr>
<tr><td class="paramname">start_prefix_label</td><td>A display label for the input box for the start value, displayed to the left (can be empty). </td></tr>
<tr><td class="paramname">start_postfix_label</td><td>A display label for the input box for the start value, displayed to the right (can be empty). </td></tr>
<tr><td class="paramname">central_label</td><td>A display label displayed between the two input boxes (can be empty). </td></tr>
<tr><td class="paramname">end_prefix_label</td><td>A display label for the input box for the end value, displayed to the left (can be empty). </td></tr>
<tr><td class="paramname">end_postfix_label</td><td>A display label for the input box for the end value, displayed to the right (can be empty). </td></tr>
<tr><td class="paramname">group</td><td>A filter group this filter should be added to. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Instance of <a class="el" href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> unity::scopes::RangeInputFilter::default_end_value </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get default end value if set (int, double or null). </p>
<p>The default value should be used unless a value is present in the <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> - use <a class="el" href="#ae459a665a5dae27445547b1c0be8c7c3" title="Check if filter state holds an end value for this filter instance. ">unity::scopes::RangeInputFilter::has_end_value()</a> and <a class="el" href="#af5bee0ddf65a375a4a5e19b4313de940" title="Get end value for this filter instance. ">unity::scopes::RangeInputFilter::end_value()</a> before resorting to the default value. </p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> unity::scopes::RangeInputFilter::default_start_value </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the default start value if set (int, double or null). </p>
<p>The default value should be used unless a value is present in the <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> - use <a class="el" href="#a64f2c9ff7ed484f49d26f601f30e8616" title="Check if filter state holds a start value for this filter instance. ">unity::scopes::RangeInputFilter::has_start_value()</a> and <a class="el" href="#afd86208a5f8fe8a81877bd0bf4588758" title="Get the start value for this filter instance. ">unity::scopes::RangeInputFilter::start_value()</a> before resorting to the default value. </p>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::RangeInputFilter::end_postfix_label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the postfix label of end value. </p>
<dl class="section return"><dt>Returns</dt><dd>The postfix label of end value. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::RangeInputFilter::end_prefix_label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the prefix label of end value. </p>
<dl class="section return"><dt>Returns</dt><dd>The prefix label of end value. </dd></dl>
<table class="memname">
<tr>
<td class="memname">double unity::scopes::RangeInputFilter::end_value </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get end value for this filter instance. </p>
<dl class="section return"><dt>Returns</dt><dd>The end value or the default end value if not null. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if the end value is not set and the default end value is null. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::RangeInputFilter::has_end_value </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if filter state holds an end value for this filter instance. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">filter_state</td><td>The state of filters. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd><code>true</code> if filter_state has an end value for this filter. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::RangeInputFilter::has_start_value </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if filter state holds a start value for this filter instance. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">filter_state</td><td>The state of filters. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd><code>true</code> if filter_state has a start value for this filter. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::RangeInputFilter::start_postfix_label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the postfix label of start value. </p>
<dl class="section return"><dt>Returns</dt><dd>The postfix label of start value. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::RangeInputFilter::start_prefix_label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the prefix label of start value. </p>
<dl class="section return"><dt>Returns</dt><dd>The prefix label of start value. </dd></dl>
<table class="memname">
<tr>
<td class="memname">double unity::scopes::RangeInputFilter::start_value </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the start value for this filter instance. </p>
<dl class="section return"><dt>Returns</dt><dd>The start value or the default start value if not null. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if the start value is not set and the default start value is null. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::RangeInputFilter::update_state </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> &amp;&#160;</td>
<td class="paramname"><em>filter_state</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>start_value</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>end_value</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Store start and end value for this filter in the filter state. </p>
<p>Updates filter_state with start and end values for this filter instance. Allowed data types for start_value and end_value are Variant::Type::Null, Variant::Type::Double and Variant::Type::Int. Integer values are converted to double when returned via <a class="el" href="#afd86208a5f8fe8a81877bd0bf4588758" title="Get the start value for this filter instance. ">unity::scopes::RangeInputFilter::start_value()</a> and <a class="el" href="#af5bee0ddf65a375a4a5e19b4313de940" title="Get end value for this filter instance. ">unity::scopes::RangeInputFilter::end_value()</a> methods. Pass <a class="el" href="unity.scopes.Variant.md#a2bd2d5425fdec9af9340c22e3b47ac1c" title="Construct a null variant. ">Variant::null()</a> as start_value or end_value if that value is unspecified (hasn't been entered or was erased by the user from the input box).</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">filter_state</td><td><a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> instance to update </td></tr>
<tr><td class="paramname">start_value</td><td>Start value </td></tr>
<tr><td class="paramname">end_value</td><td>End value </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void unity::scopes::RangeInputFilter::update_state </td>
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
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>start_value</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>end_value</em>&#160;</td>
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
<p>Store start and end value in the filter state, without having an instance of <a class="el" href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>. </p>
<p>Updates filter_state with start and end values without an instance of <a class="el" href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>. This is meant to be used when creating a <a class="el" href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a> that references another scope.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">filter_state</td><td><a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> instance to update </td></tr>
<tr><td class="paramname">filter_id</td><td>Unique identifier of filter </td></tr>
<tr><td class="paramname">start_value</td><td>Start value </td></tr>
<tr><td class="paramname">end_value</td><td>End value </td></tr>
</table>
</dd>
</dl>
