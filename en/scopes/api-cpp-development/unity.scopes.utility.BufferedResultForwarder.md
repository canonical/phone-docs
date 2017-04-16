---
Title: unity.scopes.utility.BufferedResultForwarder
---

# unity.scopes.utility.BufferedResultForwarder

<p>Base class for a client to receive and buffer the results of a query until another <a class="el" href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a> becomes ready.  
<a href="#details">More...</a></p>
Inheritance diagram for unity::scopes::utility::BufferedResultForwarder:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/25d640d4-864d-45d2-bb0a-63fdebbf2cc9-../unity.scopes.utility.BufferedResultForwarder/classunity_1_1scopes_1_1utility_1_1_buffered_result_forwarder__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1utility_1_1_buffered_result_forwarder_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1utility_1_1_buffered_result_forwarder_inherit__map" id="unity_1_1scopes_1_1utility_1_1_buffered_result_forwarder_inherit__map">
<area shape="rect" id="node2" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_search_listener_base.html" title="Abstract base interface for a client to receive the results of a query. " alt="" coords="5,80,247,107"/><area shape="rect" id="node3" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_listener_base.html" title="Abstract base class to be notified of request completion (such as a query or activation request)..." alt="" coords="28,5,224,32"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:acd998587334a306b04e3e3a5e548ff93"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acd998587334a306b04e3e3a5e548ff93">BufferedResultForwarder</a> (<a class="el" href="unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">unity::scopes::SearchReplyProxy</a> const &amp;<a class="el" href="#a55fd083a188f5dd2a940b1f280409347">upstream</a>, BufferedResultForwarder::SPtr const &amp;next_forwarder=BufferedResultForwarder::SPtr())</td></tr>
<tr class="memdesc:acd998587334a306b04e3e3a5e548ff93"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create a forwarder that sends (at least one) result to its upstream reply proxy before indicating that it is ready to its follower.  More...<br /></td></tr>
<tr class="separator:acd998587334a306b04e3e3a5e548ff93"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af712d8a72e6cd0818ab9d2c3274b25e6"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af712d8a72e6cd0818ab9d2c3274b25e6">push</a> (<a class="el" href="unity.scopes.CategorisedResult.md">CategorisedResult</a> result) override</td></tr>
<tr class="memdesc:af712d8a72e6cd0818ab9d2c3274b25e6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Forwards a single result before calling <code>set_ready()</code>.  More...<br /></td></tr>
<tr class="separator:af712d8a72e6cd0818ab9d2c3274b25e6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a57ee331710c5bbaa806082b2dd8abc23"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a57ee331710c5bbaa806082b2dd8abc23">is_ready</a> () const </td></tr>
<tr class="memdesc:a57ee331710c5bbaa806082b2dd8abc23"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this forwarder is ready.  More...<br /></td></tr>
<tr class="separator:a57ee331710c5bbaa806082b2dd8abc23"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_search_listener_base')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/2e292d21-a391-4520-8aca-c764caa30109-../unity.scopes.utility.BufferedResultForwarder/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.SearchListenerBase.md">unity::scopes::SearchListenerBase</a></td></tr>
<tr class="memitem:a93ba33c6e1a0064ac9756134ccb11705 inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.SearchListenerBase.md#a93ba33c6e1a0064ac9756134ccb11705">push</a> (Department::SCPtr const &amp;parent)</td></tr>
<tr class="memdesc:a93ba33c6e1a0064ac9756134ccb11705 inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called at most once by the scopes runtime for a tree of departments returned by a query.  More...<br /></td></tr>
<tr class="separator:a93ba33c6e1a0064ac9756134ccb11705 inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab96864e4b3d6718e4b87b81aa14657e3 inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.SearchListenerBase.md#ab96864e4b3d6718e4b87b81aa14657e3">push</a> (experimental::Annotation annotation)</td></tr>
<tr class="memdesc:ab96864e4b3d6718e4b87b81aa14657e3 inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes runtime for each annotation that is returned by a query().  More...<br /></td></tr>
<tr class="separator:ab96864e4b3d6718e4b87b81aa14657e3 inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af246bd38c8ba9cec36dfae3d0607dbfc inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.SearchListenerBase.md#af246bd38c8ba9cec36dfae3d0607dbfc">push</a> (Category::SCPtr const &amp;category)</td></tr>
<tr class="memdesc:af246bd38c8ba9cec36dfae3d0607dbfc inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes runtime for each category that is returned by a query().  More...<br /></td></tr>
<tr class="separator:af246bd38c8ba9cec36dfae3d0607dbfc inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac7904ac1f83fe60cddc8f08c6e7d971b inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.SearchListenerBase.md#ac7904ac1f83fe60cddc8f08c6e7d971b">push</a> (<a class="el" href="unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &amp;filters, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state)</td></tr>
<tr class="memdesc:ac7904ac1f83fe60cddc8f08c6e7d971b inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes to send all the filters and their state.  More...<br /></td></tr>
<tr class="separator:ac7904ac1f83fe60cddc8f08c6e7d971b inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aaf1af46d5d7b1219558f15c22ef85b10 inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.SearchListenerBase.md#aaf1af46d5d7b1219558f15c22ef85b10">push</a> (<a class="el" href="unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &amp;filters)</td></tr>
<tr class="memdesc:aaf1af46d5d7b1219558f15c22ef85b10 inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scope to send all filters and their states.  More...<br /></td></tr>
<tr class="separator:aaf1af46d5d7b1219558f15c22ef85b10 inherit pub_methods_classunity_1_1scopes_1_1_search_listener_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_listener_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_listener_base')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/3e93daed-cf0a-4ab8-8c7b-d8f0103b890d-../unity.scopes.utility.BufferedResultForwarder/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.ListenerBase.md">unity::scopes::ListenerBase</a></td></tr>
<tr class="memitem:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ListenerBase.md#a3b38fa642754142f40968f3ff8d1bdc8">info</a> (<a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;op_info)</td></tr>
<tr class="memdesc:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime each time a scope reports additional information about the reply to a query.  More...<br /></td></tr>
<tr class="separator:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Protected Member Functions</h2></td></tr>
<tr class="memitem:a20816aac742adffdc16b8e8405c61c87"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a20816aac742adffdc16b8e8405c61c87">set_ready</a> ()</td></tr>
<tr class="memdesc:a20816aac742adffdc16b8e8405c61c87"><td class="mdescLeft">&#160;</td><td class="mdescRight">Mark this forwarder as ready.  More...<br /></td></tr>
<tr class="separator:a20816aac742adffdc16b8e8405c61c87"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a55fd083a188f5dd2a940b1f280409347"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">unity::scopes::SearchReplyProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a55fd083a188f5dd2a940b1f280409347">upstream</a> () const </td></tr>
<tr class="memdesc:a55fd083a188f5dd2a940b1f280409347"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the upstream proxy.  More...<br /></td></tr>
<tr class="separator:a55fd083a188f5dd2a940b1f280409347"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9bd57e76c08a01560a700d665cc40e96"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9bd57e76c08a01560a700d665cc40e96">finished</a> (<a class="el" href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &amp;details) override</td></tr>
<tr class="memdesc:a9bd57e76c08a01560a700d665cc40e96"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes runtime after the final result for a request was sent.  More...<br /></td></tr>
<tr class="separator:a9bd57e76c08a01560a700d665cc40e96"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Base class for a client to receive and buffer the results of a query until another <a class="el" href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a> becomes ready. </p>
<p>This class implements result buffering, useful for aggregator scopes that receive results from multiple child scopes and need to display categories in a specific order. The aggregator scope must create an instance of <a class="el" href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a> for every child scope it queries and chain the instances together in the desired order.</p>
<p>The default implementation of <a class="el" href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a> forwards the results it receives upstream and declares itself "ready" after receiving the first result. The results are then buffered until all prior forwarders have declared themselves ready. Buffering is very efficient&mdash;results are buffered only until proper order is guaranteed, and buffering is disabled for forwarders that do not need to wait for a predecessor to become ready. This means that results are pushed to the client (displayed) as early as possible.</p>
<p>The default implementation only pushes results and their categories, but ignores departments, filters, and annotations. If you wish to handle and forward these, you must to derive your own forwarder from <a class="el" href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a> and override the appropropriate methods of the <a class="el" href="unity.scopes.SearchListenerBase.md">SearchListenerBase</a> class.</p>
<p>The default implementation buffers a single result before indicating to its follower that it is ready. This means that the first category from each child determines overall order. For example, if each child produces results for a single category, the chaining insures the correct order (results from child A followed by results from child B, or vice versa). However, if child A produces results for categories A1 and A2, and child B produces results for categories B1 and B2, the overall order could, for example, be A1, B1, A2, B2, or it could be A1, A2, B1, B2, or it could be A1, B2, B1, A2 (among others).</p>
<p>If you want to ensure that all categories from child A arrive in a particular order, followed by all categories from child B in a particular order, you must override <a class="el" href="#af712d8a72e6cd0818ab9d2c3274b25e6">push()</a> to, for example, collapse categories received from a child into a single category, or otherwise buffer results yourself until you have established the order you need.</p>
<p>Note that buffering fundamentally conflicts with the need to render results as soon as possible. You should avoid buffering more data than absolutely necessary in order for the display to start updating as soon as possible after a query was sent.</p>
<p>If you create a custom implementation of a forwarder, you <em>must</em> push results via the proxy returned by <a class="el" href="#a55fd083a188f5dd2a940b1f280409347" title="Get the upstream proxy. ">BufferedResultForwarder::upstream()</a>. (This is a different proxy than the one that is passed to the constructor.) Your forwarder then must declare itself ready by calling <a class="el" href="#a20816aac742adffdc16b8e8405c61c87" title="Mark this forwarder as ready. ">BufferedResultForwarder::set_ready()</a> as soon as it knows it will not push results for any new categories. In the case where your aggregator aggregates all results from given child scope into a single category, you can call <code><a class="el" href="#a20816aac742adffdc16b8e8405c61c87" title="Mark this forwarder as ready. ">set_ready()</a></code> as soon as you have pushed the first result.</p>
<p>Here is a code example that shows how to write a result forwarder that creates a separate category for results from each of three children and controls the order in which these categories are rendered.</p>
```
<span class="keyword">class </span>SearchReceiver : <span class="keyword">public</span> <a class="code" href="#acd998587334a306b04e3e3a5e548ff93">BufferedResultForwarder</a>
{
<span class="keyword">public</span>:
SearchReceiver(unity::scopes::Category::SCPtr target_cat, <a class="code" href="unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">unity::scopes::SearchReplyProxy</a> <span class="keyword">const</span>&amp; <a class="code" href="#a55fd083a188f5dd2a940b1f280409347">upstream</a>, BufferedResultForwarder::SPtr <span class="keyword">const</span>&amp;
next_forwarder = BufferedResultForwarder::SPtr())
: <a class="code" href="#acd998587334a306b04e3e3a5e548ff93">BufferedResultForwarder</a>(upstream, next_forwarder),
category_(target_cat)
{
}
<span class="keywordtype">void</span> <a class="code" href="#af712d8a72e6cd0818ab9d2c3274b25e6">push</a>(CategorisedResult result)<span class="keyword"> override</span>
<span class="keyword">    </span>{
result.set_category(category_); <span class="comment">// put all incoming results in single category</span>
<a class="code" href="#a55fd083a188f5dd2a940b1f280409347">upstream</a>()-&gt;push(result); <span class="comment">// push modified result to the client</span>
<span class="comment">// we push into a single target category, so we&#39;re ready as soon as we received and pushed first result</span>
<a class="code" href="#a20816aac742adffdc16b8e8405c61c87">set_ready</a>();
}
<span class="keyword">private</span>:
unity::scopes::Category::SCPtr category_;
};
<span class="keywordtype">void</span> AggregatorSearchQueryBase::run(<a class="code" href="unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">SearchReplyProxy</a> <span class="keyword">const</span>&amp; upstream_reply)
{
<span class="keyword">auto</span> cat1 = upstream_reply-&gt;register_category(<span class="stringliteral">&quot;cat1&quot;</span>, <span class="stringliteral">&quot;Results from scope 1&quot;</span>, <span class="stringliteral">&quot;&quot;</span>, CategoryRenderer());
<span class="keyword">auto</span> cat2 = upstream_reply-&gt;register_category(<span class="stringliteral">&quot;cat2&quot;</span>, <span class="stringliteral">&quot;Results from scope 2&quot;</span>, <span class="stringliteral">&quot;&quot;</span>, CategoryRenderer());
<span class="keyword">auto</span> cat3 = upstream_reply-&gt;register_category(<span class="stringliteral">&quot;cat3&quot;</span>, <span class="stringliteral">&quot;Results from scope 3&quot;</span>, <span class="stringliteral">&quot;&quot;</span>, CategoryRenderer());
<span class="comment">// note: the order of construction is reversed</span>
<span class="keyword">auto</span> scope3fwd = std::make_shared&lt;SearchReceiver&gt;(cat3, upstream_reply);
<span class="keyword">auto</span> scope2fwd = std::make_shared&lt;SearchReceiver&gt;(cat2, upstream_reply, scope3fwd);
<span class="keyword">auto</span> scope1fwd = std::make_shared&lt;SearchReceiver&gt;(cat1, upstream_reply, scope2fwd);
<span class="comment">// invoke search for child scopes; make sure you do this only after all forwarders are created</span>
subsearch(scope1proxy, <span class="stringliteral">&quot;&quot;</span>, scope1fwd);
subsearch(scope2proxy, <span class="stringliteral">&quot;&quot;</span>, scope2fwd);
subsearch(scope3proxy, <span class="stringliteral">&quot;&quot;</span>, scope3fwd);
}
```
<dl class="section see"><dt>See also</dt><dd><a class="el" href="unity.scopes.SearchListenerBase.md" title="Abstract base interface for a client to receive the results of a query. ">SearchListenerBase</a>. </dd></dl>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::utility::BufferedResultForwarder::BufferedResultForwarder </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">unity::scopes::SearchReplyProxy</a> const &amp;&#160;</td>
<td class="paramname"><em>upstream</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">BufferedResultForwarder::SPtr const &amp;&#160;</td>
<td class="paramname"><em>next_forwarder</em> = <code>BufferedResultForwarder::SPtr()</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create a forwarder that sends (at least one) result to its upstream reply proxy before indicating that it is ready to its follower. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">upstream</td><td>The reply proxy for the upstream receiver. </td></tr>
<tr><td class="paramname">next_forwarder</td><td>The forwarder that becomes ready once this forwarder calls <a class="el" href="#a20816aac742adffdc16b8e8405c61c87" title="Mark this forwarder as ready. ">set_ready()</a>. </td></tr>
</table>
</dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>when passed next_forwarder that has already been linked to another <a class="el" href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a>. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void unity::scopes::utility::BufferedResultForwarder::finished </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &amp;&#160;</td>
<td class="paramname"><em>details</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">protected</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called once by the scopes runtime after the final result for a request was sent. </p>
<p>Calls to <a class="el" href="#a9bd57e76c08a01560a700d665cc40e96" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are made by an arbitrary thread.</p>
<p>Exceptions thrown from <a class="el" href="#a9bd57e76c08a01560a700d665cc40e96" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are ignored. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">details</td><td>Contains details about the completion status of a query as well as any additional information regarding the operation of the request. </td></tr>
</table>
</dd>
</dl>
<p>Implements <a class="el" href="unity.scopes.ListenerBase.md#afb44937749b61c9e3ebfa20ec6e4634b">unity::scopes::ListenerBase</a>.</p>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::utility::BufferedResultForwarder::is_ready </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this forwarder is ready. </p>
<p>Once ready, the forwarder no longer buffers any results and passes them to the upstream proxy immediately.</p>
<dl class="section return"><dt>Returns</dt><dd><code>true</code> if this forwarder called <a class="el" href="#a20816aac742adffdc16b8e8405c61c87" title="Mark this forwarder as ready. ">set_ready()</a>, <code>false</code> otherwise. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void unity::scopes::utility::BufferedResultForwarder::push </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.CategorisedResult.md">CategorisedResult</a>&#160;</td>
<td class="paramname"><em>result</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Forwards a single result before calling <code><a class="el" href="#a20816aac742adffdc16b8e8405c61c87" title="Mark this forwarder as ready. ">set_ready()</a></code>. </p>
<p>This default implementation forwards incoming results unchanged to the upstream reply proxy and marks the forwarder ready after forwarding the first result.</p>
<p>This method is called once by the scopes run time for each result that is returned by a query().</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The received result. </td></tr>
</table>
</dd>
</dl>
<p>Implements <a class="el" href="unity.scopes.SearchListenerBase.md#a3ebd3e8be67824c7a34068da6075bd99">unity::scopes::SearchListenerBase</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void unity::scopes::utility::BufferedResultForwarder::set_ready </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
</tr>
</table>
<p>Mark this forwarder as ready. </p>
<p>If you create a custom forwarder, you should call this method as soon as your forwarder will no longer push results for new categories. </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">unity::scopes::SearchReplyProxy</a> unity::scopes::utility::BufferedResultForwarder::upstream </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">protected</span></span>  </td>
</tr>
</table>
<p>Get the upstream proxy. </p>
<p>Returns an instance of buffered reply proxy for all push, register_departments, and register_category operations. Note that this proxy is <em>not</em> the same proxy as the one passed to the constructor.</p>
<dl class="section return"><dt>Returns</dt><dd>The buffered reply proxy. </dd></dl>
