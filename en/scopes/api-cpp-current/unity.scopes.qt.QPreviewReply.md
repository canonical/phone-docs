---
Title: unity.scopes.qt.QPreviewReply
---

# unity.scopes.qt.QPreviewReply

<p>Allows the results of a preview to be sent to the preview requester.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QPreviewReply.h&gt;</code></p>
Inheritance diagram for unity::scopes::qt::QPreviewReply:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/d665d4b5-ab35-4bce-ba4a-ef87667a714d-../unity.scopes.qt.QPreviewReply/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1qt_1_1_q_preview_reply_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1qt_1_1_q_preview_reply_inherit__map" id="unity_1_1scopes_1_1qt_1_1_q_preview_reply_inherit__map">
</map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:abe5967042a22327f6ec9d5a1f595968c"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#abe5967042a22327f6ec9d5a1f595968c">register_layout</a> (QColumnLayoutList const &amp;layouts)</td></tr>
<tr class="memdesc:abe5967042a22327f6ec9d5a1f595968c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Registers a list of column layouts for the current preview.  More...<br /></td></tr>
<tr class="separator:abe5967042a22327f6ec9d5a1f595968c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a87571e9d961382e967ae6f12560bd755"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a87571e9d961382e967ae6f12560bd755">push</a> (QPreviewWidgetList const &amp;widget_list)</td></tr>
<tr class="memdesc:a87571e9d961382e967ae6f12560bd755"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sends widget definitions to the sender of the preview query.  More...<br /></td></tr>
<tr class="separator:a87571e9d961382e967ae6f12560bd755"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a31c34e45f1eab196c74d3c314881e147"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a31c34e45f1eab196c74d3c314881e147">push</a> (QString const &amp;key, QVariant const &amp;value)</td></tr>
<tr class="memdesc:a31c34e45f1eab196c74d3c314881e147"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sends data for a preview widget attribute.  More...<br /></td></tr>
<tr class="separator:a31c34e45f1eab196c74d3c314881e147"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Allows the results of a preview to be sent to the preview requester. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::qt::QPreviewReply::push </td>
<td>(</td>
<td class="paramtype">QPreviewWidgetList const &amp;&#160;</td>
<td class="paramname"><em>widget_list</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Sends widget definitions to the sender of the preview query. </p>
<p>This method can be called mutiple times to send widgets in stages. </p><dl class="section return"><dt>Returns</dt><dd>True if the query is still alive, false if the query failed or was cancelled. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::qt::QPreviewReply::push </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QVariant const &amp;&#160;</td>
<td class="paramname"><em>value</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Sends data for a preview widget attribute. </p>
<dl class="section return"><dt>Returns</dt><dd>True if the query is still alive, false if the query failed or was cancelled. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::qt::QPreviewReply::register_layout </td>
<td>(</td>
<td class="paramtype">QColumnLayoutList const &amp;&#160;</td>
<td class="paramname"><em>layouts</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Registers a list of column layouts for the current preview. </p>
<p>Layouts must be registered before pushing a <a class="el" href="unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d" title="List of preview widgets (see unity::scopes::PreviewWidget) ">unity::scopes::PreviewWidgetList</a>, and must be registered only once. </p><dl class="section return"><dt>Returns</dt><dd>True if the query is still alive, false if the query failed or was cancelled. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td><a class="el" href="#abe5967042a22327f6ec9d5a1f595968c" title="Registers a list of column layouts for the current preview. ">register_layout()</a> is called more than once. </td></tr>
</table>
</dd>
</dl>
