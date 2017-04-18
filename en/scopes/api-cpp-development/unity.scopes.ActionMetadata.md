---
Title: unity.scopes.ActionMetadata
---

# unity.scopes.ActionMetadata

<p>Metadata passed to scopes for preview and activation.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ActionMetadata.h&gt;</code></p>
Inheritance diagram for unity::scopes::ActionMetadata:
<img src="../../../../media/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1_action_metadata_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1_action_metadata_inherit__map" id="unity_1_1scopes_1_1_action_metadata_inherit__map">
<area shape="rect" id="node2" href="https://developer.ubuntu.com/api//classunity_1_1scopes_1_1_query_metadata.html" title="Base class for extra metadata passed to scopes as a part of a request. " alt="" coords="7,5,219,32"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a23b266a9ee4a78a26754a6affd6447d6"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a23b266a9ee4a78a26754a6affd6447d6">ActionMetadata</a> (std::string const &amp;<a class="el" href="unity.scopes.QueryMetadata.md#a3ca25150669d96171aec6ab56ef6bb0e">locale</a>, std::string const &amp;<a class="el" href="unity.scopes.QueryMetadata.md#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a>)</td></tr>
<tr class="memdesc:a23b266a9ee4a78a26754a6affd6447d6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create ActionMetadata with the given locale and form factor.  More...<br /></td></tr>
<tr class="separator:a23b266a9ee4a78a26754a6affd6447d6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a562159a400cba00176ecb0be479775b5"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a562159a400cba00176ecb0be479775b5">set_scope_data</a> (<a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;data)</td></tr>
<tr class="memdesc:a562159a400cba00176ecb0be479775b5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Attach arbitrary data to this ActionMetadata.  More...<br /></td></tr>
<tr class="separator:a562159a400cba00176ecb0be479775b5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a34777e687ce700a7b6313f3dad6d3340"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a34777e687ce700a7b6313f3dad6d3340">scope_data</a> () const </td></tr>
<tr class="memdesc:a34777e687ce700a7b6313f3dad6d3340"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get data attached to this ActionMetadata.  More...<br /></td></tr>
<tr class="separator:a34777e687ce700a7b6313f3dad6d3340"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a12b6cf0c4aa1fd80da3b75c23e5f12d5"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a12b6cf0c4aa1fd80da3b75c23e5f12d5">set_hint</a> (std::string const &amp;key, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;value)</td></tr>
<tr class="memdesc:a12b6cf0c4aa1fd80da3b75c23e5f12d5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets a hint.  More...<br /></td></tr>
<tr class="separator:a12b6cf0c4aa1fd80da3b75c23e5f12d5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a46d85a19a5eb20d4ee63e201e68cc6c4"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a46d85a19a5eb20d4ee63e201e68cc6c4">hints</a> () const </td></tr>
<tr class="memdesc:a46d85a19a5eb20d4ee63e201e68cc6c4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get all hints.  More...<br /></td></tr>
<tr class="separator:a46d85a19a5eb20d4ee63e201e68cc6c4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a845e60ef8aca1fd25c950edddb031f69"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a845e60ef8aca1fd25c950edddb031f69">contains_hint</a> (std::string const &amp;key) const </td></tr>
<tr class="memdesc:a845e60ef8aca1fd25c950edddb031f69"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this SearchMetadata has a hint.  More...<br /></td></tr>
<tr class="separator:a845e60ef8aca1fd25c950edddb031f69"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a41854841528dc1934ba73aec6e34b38e"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a41854841528dc1934ba73aec6e34b38e">operator[]</a> (std::string const &amp;key)</td></tr>
<tr class="memdesc:a41854841528dc1934ba73aec6e34b38e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a reference to a hint.  More...<br /></td></tr>
<tr class="separator:a41854841528dc1934ba73aec6e34b38e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0662d6922a822b36b5eb20df3796a03e"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0662d6922a822b36b5eb20df3796a03e">operator[]</a> (std::string const &amp;key) const </td></tr>
<tr class="memdesc:a0662d6922a822b36b5eb20df3796a03e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a const reference to a hint.  More...<br /></td></tr>
<tr class="separator:a0662d6922a822b36b5eb20df3796a03e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:ae766e634b8bd820c7c03e8262a3b743c"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ActionMetadata</b> (<a class="el" href="index.html">ActionMetadata</a> const &amp;other)</td></tr>
<tr class="separator:ae766e634b8bd820c7c03e8262a3b743c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad258c9a06a8773024a362bf933c03fc9"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ActionMetadata</b> (<a class="el" href="index.html">ActionMetadata</a> &amp;&amp;)</td></tr>
<tr class="separator:ad258c9a06a8773024a362bf933c03fc9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a82f1a5147c07eb69e65b2c197fa201c1"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ActionMetadata</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ActionMetadata</a> const &amp;other)</td></tr>
<tr class="separator:a82f1a5147c07eb69e65b2c197fa201c1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a625a159fc913ace02d17895f8a994c0f"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ActionMetadata</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ActionMetadata</a> &amp;&amp;)</td></tr>
<tr class="separator:a625a159fc913ace02d17895f8a994c0f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_query_metadata"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_query_metadata')"><img src="../../../../media/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.QueryMetadata.md">unity::scopes::QueryMetadata</a></td></tr>
<tr class="memitem:a3ca25150669d96171aec6ab56ef6bb0e inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryMetadata.md#a3ca25150669d96171aec6ab56ef6bb0e">locale</a> () const </td></tr>
<tr class="memdesc:a3ca25150669d96171aec6ab56ef6bb0e inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the locale string.  More...<br /></td></tr>
<tr class="separator:a3ca25150669d96171aec6ab56ef6bb0e inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a494f592f3055fba4da6554a6d8fb7c42 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryMetadata.md#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a> () const </td></tr>
<tr class="memdesc:a494f592f3055fba4da6554a6d8fb7c42 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the form factor string.  More...<br /></td></tr>
<tr class="separator:a494f592f3055fba4da6554a6d8fb7c42 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5b2395aff97cbe1009759de03f270bf3 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryMetadata.md#a5b2395aff97cbe1009759de03f270bf3">set_internet_connectivity</a> (<a class="el" href="unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> connectivity_status)</td></tr>
<tr class="memdesc:a5b2395aff97cbe1009759de03f270bf3 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set internet connectivity status.  More...<br /></td></tr>
<tr class="separator:a5b2395aff97cbe1009759de03f270bf3 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3da06f370e53b5e381ec8cf33d8ee191 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryMetadata.md#a3da06f370e53b5e381ec8cf33d8ee191">internet_connectivity</a> () const </td></tr>
<tr class="memdesc:a3da06f370e53b5e381ec8cf33d8ee191 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get internet connectivity status.  More...<br /></td></tr>
<tr class="separator:a3da06f370e53b5e381ec8cf33d8ee191 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Additional Inherited Members</h2></td></tr>
<tr class="inherit_header pub_types_classunity_1_1scopes_1_1_query_metadata"><td colspan="2" onclick="javascript:toggleInherit('pub_types_classunity_1_1scopes_1_1_query_metadata')"><img src="../../../../media/closed.png" alt="-"/>&#160;Public Types inherited from <a class="el" href="unity.scopes.QueryMetadata.md">unity::scopes::QueryMetadata</a></td></tr>
<tr class="memitem:a20eb916661728a7d9c00485e28f88701 inherit pub_types_classunity_1_1scopes_1_1_query_metadata"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> { <b>Unknown</b>, 
<b>Connected</b>, 
<b>Disconnected</b>
}</td></tr>
<tr class="memdesc:a20eb916661728a7d9c00485e28f88701"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates the internet connectivity status.  <a href="unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">More...</a><br /></td></tr>
<tr class="separator:a20eb916661728a7d9c00485e28f88701 inherit pub_types_classunity_1_1scopes_1_1_query_metadata"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Metadata passed to scopes for preview and activation. </p>
<dl class="section see"><dt>See also</dt><dd><a class="el" href="unity.scopes.ScopeBase.md#a154b9b4cfc0f40572cfec60dd819396f" title="Invoked when a scope is requested to create a preview for a particular result. ">unity::scopes::ScopeBase::preview</a>, <a class="el" href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a>, <a class="el" href="unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a> </dd></dl>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::ActionMetadata::ActionMetadata </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>locale</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>form_factor</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create <a class="el" href="index.html" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a> with the given locale and form factor. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">locale</td><td>locale string, eg. en_EN </td></tr>
<tr><td class="paramname">form_factor</td><td>form factor name, e.g. phone, desktop, phone-version etc. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::ActionMetadata::contains_hint </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this <a class="el" href="unity.scopes.SearchMetadata.md" title="Metadata passed with search requests. ">SearchMetadata</a> has a hint. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The hint name. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>True if the hint is set. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::ActionMetadata::hints </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get all hints. </p>
<dl class="section return"><dt>Returns</dt><dd>Hints dictionary. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::NotFoundException</td><td>if no hints are available. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> &amp; unity::scopes::ActionMetadata::operator[] </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Returns a reference to a hint. </p>
<p>This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of Variant::Type::Null. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the hint. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A reference to the hint. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp; unity::scopes::ActionMetadata::operator[] </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns a const reference to a hint. </p>
<p>This method can be used for read-only access to hints. Referencing a non-existing hint throws unity::InvalidArgumentException. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the hint. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A const reference to the hint. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::NotFoundException</td><td>if no hint with the given name exists. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> unity::scopes::ActionMetadata::scope_data </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get data attached to this <a class="el" href="index.html" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The attached data, or <a class="el" href="unity.scopes.Variant.md#a2bd2d5425fdec9af9340c22e3b47ac1c" title="Construct a null variant. ">Variant::null</a>. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ActionMetadata::set_hint </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>value</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Sets a hint. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the hint. </td></tr>
<tr><td class="paramname">value</td><td>Hint value </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ActionMetadata::set_scope_data </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>data</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Attach arbitrary data to this <a class="el" href="index.html" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">data</td><td>The data value to attach. </td></tr>
</table>
</dd>
</dl>
