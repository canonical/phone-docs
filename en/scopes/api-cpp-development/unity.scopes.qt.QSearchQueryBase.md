---
Title: unity.scopes.qt.QSearchQueryBase
---

# unity.scopes.qt.QSearchQueryBase

<p>Abstract base class to represent a particular query.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QSearchQueryBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::qt::QSearchQueryBase:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/7e61e600-c962-45fa-b6d0-7e29ec2a5647-../unity.scopes.qt.QSearchQueryBase/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1qt_1_1_q_search_query_base_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1qt_1_1_q_search_query_base_inherit__map" id="unity_1_1scopes_1_1qt_1_1_q_search_query_base_inherit__map">
</map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a1ad69c195d42ecaea4a7851f1dfc6023"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1ad69c195d42ecaea4a7851f1dfc6023">query</a> () const </td></tr>
<tr class="memdesc:a1ad69c195d42ecaea4a7851f1dfc6023"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get a canned query for this search request.  More...<br /></td></tr>
<tr class="separator:a1ad69c195d42ecaea4a7851f1dfc6023"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a222670a440c3712d1bf5cfe220d6f55a"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a222670a440c3712d1bf5cfe220d6f55a">search_metadata</a> () const </td></tr>
<tr class="memdesc:a222670a440c3712d1bf5cfe220d6f55a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get metadata for this search request.  More...<br /></td></tr>
<tr class="separator:a222670a440c3712d1bf5cfe220d6f55a"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Subquery methods</h2></td></tr>
<tr><td class="ititle" colspan="2"><p>The subsearch() methods are for use by aggregating scopes. When an aggregator passes a query to its child scopes, it should use subsearch() instead of the normal <a class="el" href="unity.scopes.Scope.md#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">Scope::search()</a> that would be called by a client. subsearch() takes care of automatically forwarding query cancellation to child scopes. This means that there is no need for an aggregating scope to explicitly forward cancellation to child scopes when its <a class="el" href="unity.scopes.QueryBase.md#a596b19dbfd6efe96b834be75a9b64c68" title="Called by the scopes runtime when the query originator cancels a query. ">QueryBase::cancelled()</a> method is called by the scopes run time. </p>
</td></tr>
<tr class="memitem:ab4977a32f485b4c7ac561a99d4b2af28"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &amp;scope, std::string const &amp;query_string, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:ab4977a32f485b4c7ac561a99d4b2af28"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a30757461a1f7de8808ebbabf4355b2d1"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &amp;scope, std::string const &amp;query_string, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:a30757461a1f7de8808ebbabf4355b2d1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8c30e6afd06543a53773f32d3a8fb007"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &amp;scope, std::string const &amp;query_string, std::string const &amp;department_id, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:a8c30e6afd06543a53773f32d3a8fb007"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a25141482608f312ae9c17564538cd143"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><b>subsearch</b> (<a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &amp;scope, std::string const &amp;query_string, std::string const &amp;department_id, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, <a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;hints, SearchListenerBase::SPtr const &amp;reply)</td></tr>
<tr class="separator:a25141482608f312ae9c17564538cd143"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae12e4040935c2240f2f02482acd49e89"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae12e4040935c2240f2f02482acd49e89">run</a> (QSearchReplyProxy const &amp;reply)=0</td></tr>
<tr class="memdesc:ae12e4040935c2240f2f02482acd49e89"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by scopes run time to start the query.  More...<br /></td></tr>
<tr class="separator:ae12e4040935c2240f2f02482acd49e89"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a811927afeb090c114fd8ad5b459ec4e7"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a811927afeb090c114fd8ad5b459ec4e7">cancelled</a> ()=0</td></tr>
<tr class="memdesc:a811927afeb090c114fd8ad5b459ec4e7"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes run time when the query originator cancels a query.  More...<br /></td></tr>
<tr class="separator:a811927afeb090c114fd8ad5b459ec4e7"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Abstract base class to represent a particular query. </p>
<p>A scope must return an instance of this class from its implementation of <a class="el" href="unity.scopes.ScopeBase.md#a0e4969ff26dc1d396d74c56d896fd564" title="Called by the scopes runtime when a scope needs to instantiate a query. ">ScopeBase::search()</a>.</p>
<dl class="section note"><dt>Note</dt><dd>The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block. </dd></dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::qt::QSearchQueryBase::cancelled </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span><span class="mlabel">slot</span></span>  </td>
</tr>
</table>
<p>Called by the scopes run time when the query originator cancels a query. </p>
<p>Your implementation of this method should ensure that the scope stops processing the current query as soon as possible. Any calls to a <code>push()</code> method once a query is cancelled are ignored, so continuing to push after cancellation only wastes CPU cycles. (<code>push()</code> returns <code>false</code> once a query is cancelled or exceeds its cardinality limit.) </p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> unity::scopes::qt::QSearchQueryBase::query </td>
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
<td class="memname">virtual void unity::scopes::qt::QSearchQueryBase::run </td>
<td>(</td>
<td class="paramtype">QSearchReplyProxy const &amp;&#160;</td>
<td class="paramname"><em>reply</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span><span class="mlabel">slot</span></span>  </td>
</tr>
</table>
<p>Called by scopes run time to start the query. </p>
<p>Your implementation of <a class="el" href="#ae12e4040935c2240f2f02482acd49e89" title="Called by scopes run time to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a class="el" href="#ae12e4040935c2240f2f02482acd49e89" title="Called by scopes run time to start the query. ">run()</a>, in which case the query implicitly completes when <a class="el" href="#ae12e4040935c2240f2f02482acd49e89" title="Called by scopes run time to start the query. ">run()</a> returns. Alternatively, <a class="el" href="#ae12e4040935c2240f2f02482acd49e89" title="Called by scopes run time to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call <code>push()</code> from multiple threads without synchronization.</p>
<p>The query completes either when <a class="el" href="#ae12e4040935c2240f2f02482acd49e89" title="Called by scopes run time to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">reply</td><td>The proxy on which to push results for the query. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> unity::scopes::qt::QSearchQueryBase::search_metadata </td>
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
