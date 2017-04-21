---
Title: unity.scopes.SearchQueryBase
---

# unity.scopes.SearchQueryBase

<p>Abstract base class to represent a particular query.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/SearchQueryBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::SearchQueryBase:
<img src="../../../../media/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png" border="0" alt="Inheritance graph"/>

<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:afc4f15b2266838d7da75b05ea37d504b"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afc4f15b2266838d7da75b05ea37d504b">run</a> (<a class="el" href="unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">SearchReplyProxy</a> const &amp;reply)=0</td></tr>
<tr class="memdesc:afc4f15b2266838d7da75b05ea37d504b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by scopes runtime to start the query.  More...<br /></td></tr>
<tr class="separator:afc4f15b2266838d7da75b05ea37d504b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a40d6b29a54d2fbd68870ffe38cab740f"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a40d6b29a54d2fbd68870ffe38cab740f">query</a> () const </td></tr>
<tr class="memdesc:a40d6b29a54d2fbd68870ffe38cab740f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get a canned query for this search request.  More...<br /></td></tr>
<tr class="separator:a40d6b29a54d2fbd68870ffe38cab740f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5ede5797f5ea09eaf1cf6a14d03bfe1f"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5ede5797f5ea09eaf1cf6a14d03bfe1f">search_metadata</a> () const </td></tr>
<tr class="memdesc:a5ede5797f5ea09eaf1cf6a14d03bfe1f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get metadata for this search request.  More...<br /></td></tr>
<tr class="separator:a5ede5797f5ea09eaf1cf6a14d03bfe1f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Subquery methods</td></tr>
<tr><td colspan="2"><p>The subsearch() methods are for use by aggregating scopes. When an aggregator passes a query to its child scopes, it should use subsearch() instead of the normal <a class="el" href="unity.scopes.Scope.md#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">Scope::search()</a> that would be called by a client. subsearch() takes care of automatically forwarding query cancellation to child scopes. This means that there is no need for an aggregating scope to explicitly forward cancellation to child scopes when its <a class="el" href="unity.scopes.QueryBase.md#a596b19dbfd6efe96b834be75a9b64c68" title="Called by the scopes runtime when the query originator cancels a query. ">QueryBase::cancelled()</a> method is called by the scopes runtime. </p>
</td></tr>
<tr class="memitem:a6de6966cb4bf06fb55e94d6d7cfad3ce"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &amp;scope, std::string const &amp;query_string, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:a6de6966cb4bf06fb55e94d6d7cfad3ce"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8402191af67bc3122bef9c97c74c5ca9"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.ChildScope.md">ChildScope</a> const &amp;scope, std::string const &amp;query_string, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:a8402191af67bc3122bef9c97c74c5ca9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a618c74e409b087fe4d5312c0f7605efa"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &amp;scope, std::string const &amp;query_string, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:a618c74e409b087fe4d5312c0f7605efa"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abe30d8b9683b2fa77bb538a01c9a5ce6"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &amp;scope, std::string const &amp;query_string, std::string const &amp;department_id, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:abe30d8b9683b2fa77bb538a01c9a5ce6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab48cedeedaf43c158f0b995386d9bf10"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.ChildScope.md">ChildScope</a> const &amp;scope, std::string const &amp;query_string, std::string const &amp;department_id, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:ab48cedeedaf43c158f0b995386d9bf10"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0c33fc1501779d8e5a93480f5229e40f"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &amp;scope, std::string const &amp;query_string, std::string const &amp;department_id, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, <a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;hints, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:a0c33fc1501779d8e5a93480f5229e40f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af13141a11f9a878bf44d05d66f8235bb"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.ChildScope.md">ChildScope</a> const &amp;scope, std::string const &amp;query_string, std::string const &amp;department_id, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, <a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;hints, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:af13141a11f9a878bf44d05d66f8235bb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af88efbb2b614e70bc1c9e17f1e15517f"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.ChildScope.md">ChildScope</a> const &amp;scope, std::string const &amp;query_string, std::string const &amp;department_id, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;user_data, <a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;hints, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:af88efbb2b614e70bc1c9e17f1e15517f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9821168cf48dd1548db3b258d6d8cba3"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &amp;scope, std::string const &amp;query_string, std::string const &amp;department_id, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;user_data, <a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;hints, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:a9821168cf48dd1548db3b258d6d8cba3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_query_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_query_base')"><img src="../../../../media/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.QueryBase.md">unity::scopes::QueryBase</a></td></tr>
<tr class="memitem:a596b19dbfd6efe96b834be75a9b64c68 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryBase.md#a596b19dbfd6efe96b834be75a9b64c68">cancelled</a> ()=0</td></tr>
<tr class="memdesc:a596b19dbfd6efe96b834be75a9b64c68 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime when the query originator cancels a query.  More...<br /></td></tr>
<tr class="separator:a596b19dbfd6efe96b834be75a9b64c68 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryBase.md#a095e61eabe2042eeea5c4df1a444d7d4">valid</a> () const </td></tr>
<tr class="memdesc:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether this query is still valid.  More...<br /></td></tr>
<tr class="separator:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryBase.md#ab6a25ba587387a7f490b8b5a081e9ed6">settings</a> () const </td></tr>
<tr class="memdesc:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a dictionary with the scope's current settings.  More...<br /></td></tr>
<tr class="separator:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Abstract base class to represent a particular query. </p>
<p>A scope must return an instance of this class from its implementation of <a class="el" href="unity.scopes.ScopeBase.md#a0e4969ff26dc1d396d74c56d896fd564" title="Called by the scopes runtime when a scope needs to instantiate a query. ">ScopeBase::search()</a>.</p>
<dl class="section note"><dt>Note</dt><dd>The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block. </dd></dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> unity::scopes::SearchQueryBase::query </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get a canned query for this search request. </p>
<dl class="section return"><dt>Returns</dt><dd>The canned query. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if the canned query was not initialized (was default-constructed). </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::SearchQueryBase::run </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">SearchReplyProxy</a> const &amp;&#160;</td>
<td class="paramname"><em>reply</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Called by scopes runtime to start the query. </p>
<p>Your implementation of <a class="el" href="#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a class="el" href="#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">run()</a>, in which case the query implicitly completes when <a class="el" href="#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">run()</a> returns. Alternatively, <a class="el" href="#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call <code>push()</code> from multiple threads without synchronization.</p>
<p>The query completes either when <a class="el" href="#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">reply</td><td>The proxy on which to push results for the query. </td></tr>
</table>
</dd>
</dl>
<p>Implemented in <a class="el" href="unity.scopes.qt.QSearchQueryBaseAPI.md#ade9ee7a415d8fcfc4f2391dae8bb37fb">unity::scopes::qt::QSearchQueryBaseAPI</a>.</p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> unity::scopes::SearchQueryBase::search_metadata </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get metadata for this search request. </p>
<dl class="section return"><dt>Returns</dt><dd>The search metadata. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if search metadata was not initialized (was default-constructed). </td></tr>
</table>
</dd>
</dl>
