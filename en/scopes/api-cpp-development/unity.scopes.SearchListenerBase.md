---
Title: unity.scopes.SearchListenerBase
---

# unity.scopes.SearchListenerBase

<p>Abstract base interface for a client to receive the results of a query.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/SearchListenerBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::SearchListenerBase:
<img src="../../../media/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a93ba33c6e1a0064ac9756134ccb11705"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a93ba33c6e1a0064ac9756134ccb11705">push</a> (Department::SCPtr const &amp;parent)</td></tr>
<tr class="memdesc:a93ba33c6e1a0064ac9756134ccb11705"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called at most once by the scopes runtime for a tree of departments returned by a query.  More...<br /></td></tr>
<tr class="separator:a93ba33c6e1a0064ac9756134ccb11705"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3ebd3e8be67824c7a34068da6075bd99"><td class="memItemLeft" align="right" valign="top">
virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3ebd3e8be67824c7a34068da6075bd99">push</a> (<a class="el" href="unity.scopes.CategorisedResult.md">CategorisedResult</a> result)=0</td></tr>
<tr class="memdesc:a3ebd3e8be67824c7a34068da6075bd99"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes runtime for each result that is returned by a query(). <br /></td></tr>
<tr class="separator:a3ebd3e8be67824c7a34068da6075bd99"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab96864e4b3d6718e4b87b81aa14657e3"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab96864e4b3d6718e4b87b81aa14657e3">push</a> (experimental::Annotation annotation)</td></tr>
<tr class="memdesc:ab96864e4b3d6718e4b87b81aa14657e3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes runtime for each annotation that is returned by a query().  More...<br /></td></tr>
<tr class="separator:ab96864e4b3d6718e4b87b81aa14657e3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af246bd38c8ba9cec36dfae3d0607dbfc"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af246bd38c8ba9cec36dfae3d0607dbfc">push</a> (Category::SCPtr const &amp;category)</td></tr>
<tr class="memdesc:af246bd38c8ba9cec36dfae3d0607dbfc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes runtime for each category that is returned by a query().  More...<br /></td></tr>
<tr class="separator:af246bd38c8ba9cec36dfae3d0607dbfc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac7904ac1f83fe60cddc8f08c6e7d971b"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac7904ac1f83fe60cddc8f08c6e7d971b">push</a> (<a class="el" href="unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &amp;filters, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state)</td></tr>
<tr class="memdesc:ac7904ac1f83fe60cddc8f08c6e7d971b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes to send all the filters and their state.  More...<br /></td></tr>
<tr class="separator:ac7904ac1f83fe60cddc8f08c6e7d971b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aaf1af46d5d7b1219558f15c22ef85b10"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aaf1af46d5d7b1219558f15c22ef85b10">push</a> (<a class="el" href="unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &amp;filters)</td></tr>
<tr class="memdesc:aaf1af46d5d7b1219558f15c22ef85b10"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scope to send all filters and their states.  More...<br /></td></tr>
<tr class="separator:aaf1af46d5d7b1219558f15c22ef85b10"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_listener_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_listener_base')"><img src="../../../media/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.ListenerBase.md">unity::scopes::ListenerBase</a></td></tr>
<tr class="memitem:afb44937749b61c9e3ebfa20ec6e4634b inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ListenerBase.md#afb44937749b61c9e3ebfa20ec6e4634b">finished</a> (<a class="el" href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &amp;details)=0</td></tr>
<tr class="memdesc:afb44937749b61c9e3ebfa20ec6e4634b inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes runtime after the final result for a request was sent.  More...<br /></td></tr>
<tr class="separator:afb44937749b61c9e3ebfa20ec6e4634b inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ListenerBase.md#a3b38fa642754142f40968f3ff8d1bdc8">info</a> (<a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;op_info)</td></tr>
<tr class="memdesc:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime each time a scope reports additional information about the reply to a query.  More...<br /></td></tr>
<tr class="separator:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Abstract base interface for a client to receive the results of a query. </p>
<p>An instance of this interface must be passed to <a class="el" href="unity.scopes.Scope.md#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">Scope::search()</a>. Results for the query are delivered to the client by the scopes run time by invoking the appropriate push method.</p>
<p>If the implementation of a push method throws an exception, the scopes runtime calls <a class="el" href="unity.scopes.ListenerBase.md#afb44937749b61c9e3ebfa20ec6e4634b" title="Called once by the scopes runtime after the final result for a request was sent. ">ListenerBase::finished()</a> with an 'Error' status.</p>
<dl class="section see"><dt>See also</dt><dd><a class="el" href="unity.scopes.ListenerBase.md" title="Abstract base class to be notified of request completion (such as a query or activation request)...">ListenerBase</a> </dd></dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::SearchListenerBase::push </td>
<td>(</td>
<td class="paramtype">Department::SCPtr const &amp;&#160;</td>
<td class="paramname"><em>parent</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called at most once by the scopes runtime for a tree of departments returned by a query. </p>
<p>The default implementation does nothing. </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::SearchListenerBase::push </td>
<td>(</td>
<td class="paramtype">experimental::Annotation&#160;</td>
<td class="paramname"><em>annotation</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called once by the scopes runtime for each annotation that is returned by a query(). </p>
<p>The default implementation does nothing. </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::SearchListenerBase::push </td>
<td>(</td>
<td class="paramtype">Category::SCPtr const &amp;&#160;</td>
<td class="paramname"><em>category</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called once by the scopes runtime for each category that is returned by a query(). </p>
<p>Receipt of categories may be interleaved with the receipt of results, that is, there is no guarantee that the complete set of categories will be provided before the first query result.</p>
<p>The default implementation does nothing. </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::SearchListenerBase::push </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &amp;&#160;</td>
<td class="paramname"><em>filters</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called once by the scopes to send all the filters and their state. </p>
<dl class="deprecated"><dt><b><a class="el" href="deprecated.md#_deprecated000001">Deprecated:</a></b></dt><dd>Please override the push(Filters&amp; const) method instead. This method will be removed from future releases.</dd></dl>
<p>The default implementation does nothing. </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::SearchListenerBase::push </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &amp;&#160;</td>
<td class="paramname"><em>filters</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called once by the scope to send all filters and their states. </p>
<p>The default implementation does nothing. </p>
