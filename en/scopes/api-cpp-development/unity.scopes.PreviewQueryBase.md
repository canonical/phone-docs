---
Title: unity.scopes.PreviewQueryBase
---

# unity.scopes.PreviewQueryBase

<p>Abstract base class to represent a particular preview.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/PreviewQueryBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::PreviewQueryBase:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/2763e997-b211-430f-a6e2-42c170f25574-../unity.scopes.PreviewQueryBase/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1_preview_query_base_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1_preview_query_base_inherit__map" id="unity_1_1scopes_1_1_preview_query_base_inherit__map">
<area shape="rect" id="node3" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i.html" title="Abstract base class to represent a particular preview. " alt="" coords="35,155,206,196"/><area shape="rect" id="node2" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_query_base.html" title="Abstract server&#45;side base interface for a query that is executed inside a scope. " alt="" coords="29,5,212,32"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a81b89daf29cd1ada55286f2a3a871347"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a81b89daf29cd1ada55286f2a3a871347">run</a> (<a class="el" href="unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754">PreviewReplyProxy</a> const &amp;reply)=0</td></tr>
<tr class="memdesc:a81b89daf29cd1ada55286f2a3a871347"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by scopes runtime to start the preview.  More...<br /></td></tr>
<tr class="separator:a81b89daf29cd1ada55286f2a3a871347"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af6887f9d12ffb69c94b2ddab8c1f99ba"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af6887f9d12ffb69c94b2ddab8c1f99ba">result</a> () const </td></tr>
<tr class="memdesc:af6887f9d12ffb69c94b2ddab8c1f99ba"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get result for this preview request.  More...<br /></td></tr>
<tr class="separator:af6887f9d12ffb69c94b2ddab8c1f99ba"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a40f82d521b7c31a3b29f4c1143242d62"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a40f82d521b7c31a3b29f4c1143242d62">action_metadata</a> () const </td></tr>
<tr class="memdesc:a40f82d521b7c31a3b29f4c1143242d62"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get metadata for this preview request.  More...<br /></td></tr>
<tr class="separator:a40f82d521b7c31a3b29f4c1143242d62"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_query_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_query_base')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/d06a7fbd-f47e-4027-9e21-3cb9203d2581-../unity.scopes.PreviewQueryBase/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.QueryBase.md">unity::scopes::QueryBase</a></td></tr>
<tr class="memitem:a596b19dbfd6efe96b834be75a9b64c68 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryBase.md#a596b19dbfd6efe96b834be75a9b64c68">cancelled</a> ()=0</td></tr>
<tr class="memdesc:a596b19dbfd6efe96b834be75a9b64c68 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime when the query originator cancels a query.  More...<br /></td></tr>
<tr class="separator:a596b19dbfd6efe96b834be75a9b64c68 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryBase.md#a095e61eabe2042eeea5c4df1a444d7d4">valid</a> () const </td></tr>
<tr class="memdesc:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether this query is still valid.  More...<br /></td></tr>
<tr class="separator:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryBase.md#ab6a25ba587387a7f490b8b5a081e9ed6">settings</a> () const </td></tr>
<tr class="memdesc:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a dictionary with the scope's current settings.  More...<br /></td></tr>
<tr class="separator:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Protected Member Functions</h2></td></tr>
<tr class="memitem:acb87c2d6c81760696d75e9f0a378d6e7"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acb87c2d6c81760696d75e9f0a378d6e7">PreviewQueryBase</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;<a class="el" href="#af6887f9d12ffb69c94b2ddab8c1f99ba">result</a>, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata)</td></tr>
<tr class="memdesc:acb87c2d6c81760696d75e9f0a378d6e7"><td class="mdescLeft">&#160;</td><td class="mdescRight">Instantiates a PreviewQueryBase.  More...<br /></td></tr>
<tr class="separator:acb87c2d6c81760696d75e9f0a378d6e7"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Abstract base class to represent a particular preview. </p>
<p>A scope must return an instance of this class from its implementation of <a class="el" href="unity.scopes.ScopeBase.md#a154b9b4cfc0f40572cfec60dd819396f" title="Invoked when a scope is requested to create a preview for a particular result. ">ScopeBase::preview()</a>.</p>
<dl class="section note"><dt>Note</dt><dd>The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block. </dd></dl>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">unity::scopes::PreviewQueryBase::PreviewQueryBase </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Result.md">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>result</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
</tr>
</table>
<p>Instantiates a <a class="el" href="index.html" title="Abstract base class to represent a particular preview. ">PreviewQueryBase</a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result to be previewed. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data for the preview. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> unity::scopes::PreviewQueryBase::action_metadata </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get metadata for this preview request. </p>
<dl class="section return"><dt>Returns</dt><dd>search metadata </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if preview metadata was not initialized (the default ctor was used). </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Result.md">Result</a> unity::scopes::PreviewQueryBase::result </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get result for this preview request. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if result was not initialized (the default ctor was used). </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>result </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::PreviewQueryBase::run </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754">PreviewReplyProxy</a> const &amp;&#160;</td>
<td class="paramname"><em>reply</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Called by scopes runtime to start the preview. </p>
<p>Your implementation of <a class="el" href="#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">run()</a> can use the reply proxy to push results for the preview. You can push results from within <a class="el" href="#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">run()</a>, in which case the preview implicitly completes when <a class="el" href="#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">run()</a> returns. Alternatively, <a class="el" href="#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call <code>push()</code> from multiple threads without synchronization.</p>
<p>The preview completes either when <a class="el" href="#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">reply</td><td>The proxy on which to push results for the preview. </td></tr>
</table>
</dd>
</dl>
<p>Implemented in <a class="el" href="unity.scopes.qt.QPreviewQueryBaseAPI.md#ab9aea9df41977a7d999967e525b3b3cf">unity::scopes::qt::QPreviewQueryBaseAPI</a>.</p>
