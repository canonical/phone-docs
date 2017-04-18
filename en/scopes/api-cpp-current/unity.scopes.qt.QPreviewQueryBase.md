---
Title: unity.scopes.qt.QPreviewQueryBase
---

# unity.scopes.qt.QPreviewQueryBase

<p>Abstract base class to represent a particular preview.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QPreviewQueryBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::qt::QPreviewQueryBase:
<img src="../../../../media/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1qt_1_1_q_preview_query_base_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1qt_1_1_q_preview_query_base_inherit__map" id="unity_1_1scopes_1_1qt_1_1_q_preview_query_base_inherit__map">
</map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ad78a0506cb7e2522fc351bfb70ba45dc"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad78a0506cb7e2522fc351bfb70ba45dc">run</a> (unity::scopes::qt::QPreviewReplyProxy const &amp;reply)=0</td></tr>
<tr class="memdesc:ad78a0506cb7e2522fc351bfb70ba45dc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by scopes run time to start the query.  More...<br /></td></tr>
<tr class="separator:ad78a0506cb7e2522fc351bfb70ba45dc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9940e957abbea418e3e5975da60afda7"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9940e957abbea418e3e5975da60afda7">cancelled</a> ()=0</td></tr>
<tr class="memdesc:a9940e957abbea418e3e5975da60afda7"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes run time when the query originator cancels a query.  More...<br /></td></tr>
<tr class="separator:a9940e957abbea418e3e5975da60afda7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac2085be111dbd8e624af95d0205efc75"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.qt.QResult.md">QResult</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac2085be111dbd8e624af95d0205efc75">result</a> () const </td></tr>
<tr class="memdesc:ac2085be111dbd8e624af95d0205efc75"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get result for this preview request.  More...<br /></td></tr>
<tr class="separator:ac2085be111dbd8e624af95d0205efc75"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6fe3ece7ffc9258e9c9fc17ac3bb8f5e"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.qt.QActionMetadata.md">QActionMetadata</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6fe3ece7ffc9258e9c9fc17ac3bb8f5e">action_metadata</a> () const </td></tr>
<tr class="memdesc:a6fe3ece7ffc9258e9c9fc17ac3bb8f5e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get metadata for this preview request.  More...<br /></td></tr>
<tr class="separator:a6fe3ece7ffc9258e9c9fc17ac3bb8f5e"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Abstract base class to represent a particular preview. </p>
<p>A scope must return an instance of this class from its implementation of <a class="el" href="unity.scopes.ScopeBase.md#a154b9b4cfc0f40572cfec60dd819396f" title="Invoked when a scope is requested to create a preview for a particular result. ">ScopeBase::preview()</a>.</p>
<dl class="section note"><dt>Note</dt><dd>The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block. </dd></dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.qt.QActionMetadata.md">QActionMetadata</a> unity::scopes::qt::QPreviewQueryBase::action_metadata </td>
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
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::qt::QPreviewQueryBase::cancelled </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Called by the scopes run time when the query originator cancels a query. </p>
<p>Your implementation of this method should ensure that the scope stops processing the current query as soon as possible. Any calls to a <code>push()</code> method once a query is cancelled are ignored, so continuing to push after cancellation only wastes CPU cycles. (<code>push()</code> returns <code>false</code> once a query is cancelled or exceeds its cardinality limit.) </p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.qt.QResult.md">QResult</a> unity::scopes::qt::QPreviewQueryBase::result </td>
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
<td class="memname">virtual void unity::scopes::qt::QPreviewQueryBase::run </td>
<td>(</td>
<td class="paramtype">unity::scopes::qt::QPreviewReplyProxy const &amp;&#160;</td>
<td class="paramname"><em>reply</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Called by scopes run time to start the query. </p>
<p>Your implementation of <a class="el" href="#ad78a0506cb7e2522fc351bfb70ba45dc" title="Called by scopes run time to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a class="el" href="#ad78a0506cb7e2522fc351bfb70ba45dc" title="Called by scopes run time to start the query. ">run()</a>, in which case the query implicitly completes when <a class="el" href="#ad78a0506cb7e2522fc351bfb70ba45dc" title="Called by scopes run time to start the query. ">run()</a> returns. Alternatively, <a class="el" href="#ad78a0506cb7e2522fc351bfb70ba45dc" title="Called by scopes run time to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call <code>push()</code> from multiple threads without synchronization.</p>
<p>The query completes either when <a class="el" href="#ad78a0506cb7e2522fc351bfb70ba45dc" title="Called by scopes run time to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">reply</td><td>The proxy on which to push results for the query. </td></tr>
</table>
</dd>
</dl>
