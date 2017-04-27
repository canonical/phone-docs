---
Title: unity.scopes.qt.QPreviewQueryBaseAPI
---

# unity.scopes.qt.QPreviewQueryBaseAPI

<p>Abstract base class to represent a particular preview.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QPreviewQueryBaseAPI.h&gt;</code></p>
Inheritance diagram for unity::scopes::qt::QPreviewQueryBaseAPI:
<img src="../../../media/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ab9aea9df41977a7d999967e525b3b3cf"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab9aea9df41977a7d999967e525b3b3cf">run</a> (<a class="el" href="unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754">unity::scopes::PreviewReplyProxy</a> const &amp;reply) final</td></tr>
<tr class="memdesc:ab9aea9df41977a7d999967e525b3b3cf"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by scopes run time to start the query.  More...<br /></td></tr>
<tr class="separator:ab9aea9df41977a7d999967e525b3b3cf"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac68c5e63e55f818a31a358c8f87ccdeb"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac68c5e63e55f818a31a358c8f87ccdeb">cancelled</a> () final</td></tr>
<tr class="memdesc:ac68c5e63e55f818a31a358c8f87ccdeb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes run time when the query originator cancels a query.  More...<br /></td></tr>
<tr class="separator:ac68c5e63e55f818a31a358c8f87ccdeb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_preview_query_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_preview_query_base')"><img src="../../../media/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.PreviewQueryBase.md">unity::scopes::PreviewQueryBase</a></td></tr>
<tr class="memitem:af6887f9d12ffb69c94b2ddab8c1f99ba inherit pub_methods_classunity_1_1scopes_1_1_preview_query_base"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.PreviewQueryBase.md#af6887f9d12ffb69c94b2ddab8c1f99ba">result</a> () const </td></tr>
<tr class="memdesc:af6887f9d12ffb69c94b2ddab8c1f99ba inherit pub_methods_classunity_1_1scopes_1_1_preview_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get result for this preview request.  More...<br /></td></tr>
<tr class="separator:af6887f9d12ffb69c94b2ddab8c1f99ba inherit pub_methods_classunity_1_1scopes_1_1_preview_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a40f82d521b7c31a3b29f4c1143242d62 inherit pub_methods_classunity_1_1scopes_1_1_preview_query_base"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.PreviewQueryBase.md#a40f82d521b7c31a3b29f4c1143242d62">action_metadata</a> () const </td></tr>
<tr class="memdesc:a40f82d521b7c31a3b29f4c1143242d62 inherit pub_methods_classunity_1_1scopes_1_1_preview_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get metadata for this preview request.  More...<br /></td></tr>
<tr class="separator:a40f82d521b7c31a3b29f4c1143242d62 inherit pub_methods_classunity_1_1scopes_1_1_preview_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_query_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_query_base')"><img src="../../../media/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.QueryBase.md">unity::scopes::QueryBase</a></td></tr>
<tr class="memitem:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryBase.md#a095e61eabe2042eeea5c4df1a444d7d4">valid</a> () const </td></tr>
<tr class="memdesc:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether this query is still valid.  More...<br /></td></tr>
<tr class="separator:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryBase.md#ab6a25ba587387a7f490b8b5a081e9ed6">settings</a> () const </td></tr>
<tr class="memdesc:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a dictionary with the scope's current settings.  More...<br /></td></tr>
<tr class="separator:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Additional Inherited Members</h2></td></tr>
<tr class="inherit_header pro_methods_classunity_1_1scopes_1_1_preview_query_base"><td colspan="2" onclick="javascript:toggleInherit('pro_methods_classunity_1_1scopes_1_1_preview_query_base')"><img src="../../../media/closed.png" alt="-"/>&#160;Protected Member Functions inherited from <a class="el" href="unity.scopes.PreviewQueryBase.md">unity::scopes::PreviewQueryBase</a></td></tr>
<tr class="memitem:acb87c2d6c81760696d75e9f0a378d6e7 inherit pro_methods_classunity_1_1scopes_1_1_preview_query_base"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.PreviewQueryBase.md#acb87c2d6c81760696d75e9f0a378d6e7">PreviewQueryBase</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;<a class="el" href="unity.scopes.PreviewQueryBase.md#af6887f9d12ffb69c94b2ddab8c1f99ba">result</a>, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata)</td></tr>
<tr class="memdesc:acb87c2d6c81760696d75e9f0a378d6e7 inherit pro_methods_classunity_1_1scopes_1_1_preview_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Instantiates a PreviewQueryBase.  More...<br /></td></tr>
<tr class="separator:acb87c2d6c81760696d75e9f0a378d6e7 inherit pro_methods_classunity_1_1scopes_1_1_preview_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Abstract base class to represent a particular preview. </p>
<p>A scope must return an instance of this class from its implementation of <a class="el" href="unity.scopes.ScopeBase.md#a154b9b4cfc0f40572cfec60dd819396f" title="Invoked when a scope is requested to create a preview for a particular result. ">ScopeBase::preview()</a>.</p>
<p>This is the class that links scope API calls with the main QThread. The instance of this class is moved to the main QThread and pushes events to the Qt event loop.</p>
<dl class="section note"><dt>Note</dt><dd>The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block. </dd></dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::qt::QPreviewQueryBaseAPI::cancelled </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called by the scopes run time when the query originator cancels a query. </p>
<p>Your implementation of this method should ensure that the scope stops processing the current query as soon as possible. Any calls to a <code>push()</code> method once a query is cancelled are ignored, so continuing to push after cancellation only wastes CPU cycles. (<code>push()</code> returns <code>false</code> once a query is cancelled or exceeds its cardinality limit.) </p>
<p>Implements <a class="el" href="unity.scopes.QueryBase.md#a596b19dbfd6efe96b834be75a9b64c68">unity::scopes::QueryBase</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::qt::QPreviewQueryBaseAPI::run </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754">unity::scopes::PreviewReplyProxy</a> const &amp;&#160;</td>
<td class="paramname"><em>reply</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called by scopes run time to start the query. </p>
<p>Your implementation of <a class="el" href="#ab9aea9df41977a7d999967e525b3b3cf" title="Called by scopes run time to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a class="el" href="#ab9aea9df41977a7d999967e525b3b3cf" title="Called by scopes run time to start the query. ">run()</a>, in which case the query implicitly completes when <a class="el" href="#ab9aea9df41977a7d999967e525b3b3cf" title="Called by scopes run time to start the query. ">run()</a> returns. Alternatively, <a class="el" href="#ab9aea9df41977a7d999967e525b3b3cf" title="Called by scopes run time to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call <code>push()</code> from multiple threads without synchronization.</p>
<p>The query completes either when <a class="el" href="#ab9aea9df41977a7d999967e525b3b3cf" title="Called by scopes run time to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">reply</td><td>The proxy on which to push results for the query. </td></tr>
</table>
</dd>
</dl>
<p>Implements <a class="el" href="unity.scopes.PreviewQueryBase.md#a81b89daf29cd1ada55286f2a3a871347">unity::scopes::PreviewQueryBase</a>.</p>
