---
Title: unity.scopes.PreviewReply
---

# unity.scopes.PreviewReply

<p>Allows the results of a preview to be sent to the preview requester.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/PreviewReply.h&gt;</code></p>
Inheritance diagram for unity::scopes::PreviewReply:
<img src="../../../../media/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1_preview_reply_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1_preview_reply_inherit__map" id="unity_1_1scopes_1_1_preview_reply_inherit__map">
<area shape="rect" id="node4" href="https://developer.ubuntu.com/api//classunity_1_1scopes_1_1testing_1_1_mock_preview_reply.html" title="Mock for unity::scopes::PreviewReply class. " alt="" coords="24,229,181,271"/><area shape="rect" id="node2" href="https://developer.ubuntu.com/api//classunity_1_1scopes_1_1_reply.html" title="Allows query termination to be sent to the source of a query. " alt="" coords="29,80,176,107"/><area shape="rect" id="node3" href="https://developer.ubuntu.com/api//classunity_1_1scopes_1_1_object.html" title="The root base class for all proxies. " alt="" coords="25,5,180,32"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a16a757d821bd3792d1a69112b1f13964"><td class="memItemLeft" align="right" valign="top">virtual bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a16a757d821bd3792d1a69112b1f13964">register_layout</a> (<a class="el" href="unity.scopes.md#a5b970e3c73bf25548398b32e79b2224d">ColumnLayoutList</a> const &amp;layouts)=0</td></tr>
<tr class="memdesc:a16a757d821bd3792d1a69112b1f13964"><td class="mdescLeft">&#160;</td><td class="mdescRight">Registers a list of column layouts for the current preview.  More...<br /></td></tr>
<tr class="separator:a16a757d821bd3792d1a69112b1f13964"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9fc593618b83ec444fb6c9b2b298764a"><td class="memItemLeft" align="right" valign="top">virtual bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9fc593618b83ec444fb6c9b2b298764a">push</a> (<a class="el" href="unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> const &amp;widget_list)=0</td></tr>
<tr class="memdesc:a9fc593618b83ec444fb6c9b2b298764a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sends widget definitions to the sender of the preview query.  More...<br /></td></tr>
<tr class="separator:a9fc593618b83ec444fb6c9b2b298764a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8697306bc56dc29bb005d988841f0c8e"><td class="memItemLeft" align="right" valign="top">virtual bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8697306bc56dc29bb005d988841f0c8e">push</a> (std::string const &amp;key, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;value)=0</td></tr>
<tr class="memdesc:a8697306bc56dc29bb005d988841f0c8e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sends data for a preview widget attribute.  More...<br /></td></tr>
<tr class="separator:a8697306bc56dc29bb005d988841f0c8e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_reply"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_reply')"><img src="../../../../media/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.Reply.md">unity::scopes::Reply</a></td></tr>
<tr class="memitem:a9ca653d5d7f7c97a781bc362f2af7749 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749">finished</a> ()=0</td></tr>
<tr class="memdesc:a9ca653d5d7f7c97a781bc362f2af7749 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="mdescLeft">&#160;</td><td class="mdescRight">Informs the source of a query that the query results are complete.  More...<br /></td></tr>
<tr class="separator:a9ca653d5d7f7c97a781bc362f2af7749 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a526c9cbb11f896210835fb3420324ba8 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Reply.md#a526c9cbb11f896210835fb3420324ba8">error</a> (std::exception_ptr ex)=0</td></tr>
<tr class="memdesc:a526c9cbb11f896210835fb3420324ba8 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="mdescLeft">&#160;</td><td class="mdescRight">Informs the source of a query that the query was terminated due to an error.  More...<br /></td></tr>
<tr class="separator:a526c9cbb11f896210835fb3420324ba8 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af35cbaba152e4919306f32b06bd81029 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Reply.md#af35cbaba152e4919306f32b06bd81029">info</a> (<a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;op_info)=0</td></tr>
<tr class="memdesc:af35cbaba152e4919306f32b06bd81029 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="mdescLeft">&#160;</td><td class="mdescRight">Informs the source of a query that additional information regarding the reply is available.  More...<br /></td></tr>
<tr class="separator:af35cbaba152e4919306f32b06bd81029 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9f0cfeeee75a27e111ebd955523e1bb0 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Reply.md#a9f0cfeeee75a27e111ebd955523e1bb0">~Reply</a> ()</td></tr>
<tr class="memdesc:a9f0cfeeee75a27e111ebd955523e1bb0 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destroys a Reply.  More...<br /></td></tr>
<tr class="separator:a9f0cfeeee75a27e111ebd955523e1bb0 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_object"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_object')"><img src="../../../../media/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.Object.md">unity::scopes::Object</a></td></tr>
<tr class="memitem:ad7618cc9d878c40b389361d4acd473ae inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#ad7618cc9d878c40b389361d4acd473ae">endpoint</a> ()=0</td></tr>
<tr class="memdesc:ad7618cc9d878c40b389361d4acd473ae inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the endpoint this proxy connects to.  More...<br /></td></tr>
<tr class="separator:ad7618cc9d878c40b389361d4acd473ae inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1b55aea886f0a68cb8a578f7ee0b1cfd inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a1b55aea886f0a68cb8a578f7ee0b1cfd">identity</a> ()=0</td></tr>
<tr class="memdesc:a1b55aea886f0a68cb8a578f7ee0b1cfd inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the identity of the target object of this proxy.  More...<br /></td></tr>
<tr class="separator:a1b55aea886f0a68cb8a578f7ee0b1cfd inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a40a997516629df3dacca9742dbddd6cb inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a40a997516629df3dacca9742dbddd6cb">target_category</a> ()=0</td></tr>
<tr class="memdesc:a40a997516629df3dacca9742dbddd6cb inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the category of the target object of this proxy.  More...<br /></td></tr>
<tr class="separator:a40a997516629df3dacca9742dbddd6cb inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a41d9839f1e3cbcd6d8baee0736feccab inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual int64_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a41d9839f1e3cbcd6d8baee0736feccab">timeout</a> ()=0</td></tr>
<tr class="memdesc:a41d9839f1e3cbcd6d8baee0736feccab inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the timeout in milliseconds if this proxy is a twoway proxy.  More...<br /></td></tr>
<tr class="separator:a41d9839f1e3cbcd6d8baee0736feccab inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9ae27e1f30dc755abcd796a1e8a25150 inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a9ae27e1f30dc755abcd796a1e8a25150">to_string</a> ()=0</td></tr>
<tr class="memdesc:a9ae27e1f30dc755abcd796a1e8a25150 inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Converts a proxy into its string representation.  More...<br /></td></tr>
<tr class="separator:a9ae27e1f30dc755abcd796a1e8a25150 inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Allows the results of a preview to be sent to the preview requester. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual bool unity::scopes::PreviewReply::push </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> const &amp;&#160;</td>
<td class="paramname"><em>widget_list</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Sends widget definitions to the sender of the preview query. </p>
<p>This method can be called mutiple times to send widgets in stages. </p><dl class="section return"><dt>Returns</dt><dd>True if the query is still alive, false if the query failed or was cancelled. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual bool unity::scopes::PreviewReply::push </td>
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
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Sends data for a preview widget attribute. </p>
<dl class="section return"><dt>Returns</dt><dd>True if the query is still alive, false if the query failed or was cancelled. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual bool unity::scopes::PreviewReply::register_layout </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#a5b970e3c73bf25548398b32e79b2224d">ColumnLayoutList</a> const &amp;&#160;</td>
<td class="paramname"><em>layouts</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Registers a list of column layouts for the current preview. </p>
<p>Layouts must be registered before pushing a <a class="el" href="unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d" title="List of preview widgets (see unity::scopes::PreviewWidget) ">unity::scopes::PreviewWidgetList</a>, and must be registered only once. </p><dl class="section return"><dt>Returns</dt><dd>True if the query is still alive, false if the query failed or was cancelled. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td><a class="el" href="#a16a757d821bd3792d1a69112b1f13964" title="Registers a list of column layouts for the current preview. ">register_layout()</a> is called more than once. </td></tr>
</table>
</dd>
</dl>
