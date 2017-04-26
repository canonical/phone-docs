---
Title: unity.scopes.Scope
---

# unity.scopes.Scope

<p>Allows queries, preview requests, and activation requests to be sent to a scope.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/Scope.h&gt;</code></p>
Inheritance diagram for unity::scopes::Scope:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/67396ef0-5393-4d41-b02b-0f8b9a521f3a-../unity.scopes.Scope/classunity_1_1scopes_1_1_scope__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a09976690ca801ecada50687df6046a29"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a09976690ca801ecada50687df6046a29">search</a> (std::string const &amp;query_string, <a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;metadata, SearchListenerBase::SPtr const &amp;reply)=0</td></tr>
<tr class="memdesc:a09976690ca801ecada50687df6046a29"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initiates a search query.  More...<br /></td></tr>
<tr class="separator:a09976690ca801ecada50687df6046a29"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab1a19b76666ac9d900122261ea209c62"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab1a19b76666ac9d900122261ea209c62">search</a> (std::string const &amp;query_string, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, <a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;metadata, SearchListenerBase::SPtr const &amp;reply)=0</td></tr>
<tr class="memdesc:ab1a19b76666ac9d900122261ea209c62"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initiates a search query (overloaded method).  More...<br /></td></tr>
<tr class="separator:ab1a19b76666ac9d900122261ea209c62"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4aa5feb40055fd7edaa45e7d059438c7"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4aa5feb40055fd7edaa45e7d059438c7">search</a> (std::string const &amp;query_string, std::string const &amp;department_id, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, <a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;metadata, SearchListenerBase::SPtr const &amp;reply)=0</td></tr>
<tr class="memdesc:a4aa5feb40055fd7edaa45e7d059438c7"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initiates a search query (overloaded method).  More...<br /></td></tr>
<tr class="separator:a4aa5feb40055fd7edaa45e7d059438c7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0af40d8e0032ea8b0344e380360dae18"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0af40d8e0032ea8b0344e380360dae18">activate</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata, ActivationListenerBase::SPtr const &amp;reply)=0</td></tr>
<tr class="memdesc:a0af40d8e0032ea8b0344e380360dae18"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initiates activation of a search result.  More...<br /></td></tr>
<tr class="separator:a0af40d8e0032ea8b0344e380360dae18"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a61f749e46b8fbf1a687d1c055d349f4f"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a61f749e46b8fbf1a687d1c055d349f4f">perform_action</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata, std::string const &amp;widget_id, std::string const &amp;action_id, ActivationListenerBase::SPtr const &amp;reply)=0</td></tr>
<tr class="memdesc:a61f749e46b8fbf1a687d1c055d349f4f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initiates activation of a preview action.  More...<br /></td></tr>
<tr class="separator:a61f749e46b8fbf1a687d1c055d349f4f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a82b24083994e676524b10c407f281aa4"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a82b24083994e676524b10c407f281aa4">preview</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata, PreviewListenerBase::SPtr const &amp;reply)=0</td></tr>
<tr class="memdesc:a82b24083994e676524b10c407f281aa4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initiates preview request.  More...<br /></td></tr>
<tr class="separator:a82b24083994e676524b10c407f281aa4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8d717a89a470cfa65080f132ea2ff4ab"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8d717a89a470cfa65080f132ea2ff4ab">~Scope</a> ()</td></tr>
<tr class="memdesc:a8d717a89a470cfa65080f132ea2ff4ab"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destroys a Scope.  More...<br /></td></tr>
<tr class="separator:a8d717a89a470cfa65080f132ea2ff4ab"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1b9676ae625ffff0ee992da1f4bd8a5c"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1b9676ae625ffff0ee992da1f4bd8a5c">child_scopes</a> ()=0</td></tr>
<tr class="memdesc:a1b9676ae625ffff0ee992da1f4bd8a5c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a list of child scopes aggregated by this scope.  More...<br /></td></tr>
<tr class="separator:a1b9676ae625ffff0ee992da1f4bd8a5c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7dcef44d071e0b0bcff34bf588408297"><td class="memItemLeft" align="right" valign="top">virtual bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7dcef44d071e0b0bcff34bf588408297">set_child_scopes</a> (<a class="el" href="unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> const &amp;<a class="el" href="#a1b9676ae625ffff0ee992da1f4bd8a5c">child_scopes</a>)=0</td></tr>
<tr class="memdesc:a7dcef44d071e0b0bcff34bf588408297"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets the list of child scopes aggregated by this scope.  More...<br /></td></tr>
<tr class="separator:a7dcef44d071e0b0bcff34bf588408297"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a27d05e99cc572508bcfe620d20158c91"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a27d05e99cc572508bcfe620d20158c91">search</a> (std::string const &amp;query_string, std::string const &amp;department_id, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;user_data, <a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;metadata, SearchListenerBase::SPtr const &amp;reply)=0</td></tr>
<tr class="memdesc:a27d05e99cc572508bcfe620d20158c91"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initiates a search query (overloaded method).  More...<br /></td></tr>
<tr class="separator:a27d05e99cc572508bcfe620d20158c91"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa53e54f6d9b505913dafda9ffca24d58"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa53e54f6d9b505913dafda9ffca24d58">activate_result_action</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata, std::string const &amp;action_id, ActivationListenerBase::SPtr const &amp;reply)=0</td></tr>
<tr class="memdesc:aa53e54f6d9b505913dafda9ffca24d58"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initiates activation of a result (in-card) action.  More...<br /></td></tr>
<tr class="separator:aa53e54f6d9b505913dafda9ffca24d58"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_object"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_object')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/cb9aa353-b926-4138-8dcd-2973c900ea1b-../unity.scopes.Scope/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.Object.md">unity::scopes::Object</a></td></tr>
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
<p>Allows queries, preview requests, and activation requests to be sent to a scope. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual unity::scopes::Scope::~Scope </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Destroys a <a class="el" href="index.html" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>. </p>
<p>Destroying a <a class="el" href="index.html" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a> has no effect on any query that might still be in progress. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::activate </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Result.md">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>result</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">ActivationListenerBase::SPtr const &amp;&#160;</td>
<td class="paramname"><em>reply</em>&#160;</td>
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
<p>Initiates activation of a search result. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result that was activated. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data to pass to the scope. </td></tr>
<tr><td class="paramname">reply</td><td>The callback object to receive replies </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A proxy that permits cancellation of this request. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::activate_result_action </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Result.md">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>result</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>action_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">ActivationListenerBase::SPtr const &amp;&#160;</td>
<td class="paramname"><em>reply</em>&#160;</td>
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
<p>Initiates activation of a result (in-card) action. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result that was was activated. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data to pass to the scope. </td></tr>
<tr><td class="paramname">action_id</td><td>The identifier of the action. </td></tr>
<tr><td class="paramname">reply</td><td>The callback object to receive replies </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A proxy that permits cancellation of this request. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> unity::scopes::Scope::child_scopes </td>
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
<p>Returns a list of child scopes aggregated by this scope. </p>
<dl class="section return"><dt>Returns</dt><dd>The list of child scopes aggregated by this scope. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::perform_action </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Result.md">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>result</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>widget_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>action_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">ActivationListenerBase::SPtr const &amp;&#160;</td>
<td class="paramname"><em>reply</em>&#160;</td>
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
<p>Initiates activation of a preview action. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result that was previewed. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data to pass to the scope. </td></tr>
<tr><td class="paramname">widget_id</td><td>The identifier of the 'actions' widget of the activated action. </td></tr>
<tr><td class="paramname">action_id</td><td>The identifier of an action to activate. </td></tr>
<tr><td class="paramname">reply</td><td>The callback object to receive replies </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A proxy that permits cancellation of this request. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::preview </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Result.md">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>result</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">PreviewListenerBase::SPtr const &amp;&#160;</td>
<td class="paramname"><em>reply</em>&#160;</td>
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
<p>Initiates preview request. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result to be previewed. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data to pass to the scope. </td></tr>
<tr><td class="paramname">reply</td><td>The callback object to receive replies. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A proxy that permits cancellation of this request. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::search </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>query_string</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">SearchListenerBase::SPtr const &amp;&#160;</td>
<td class="paramname"><em>reply</em>&#160;</td>
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
<p>Initiates a search query. </p>
<p>The <a class="el" href="#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">search()</a> method expects a <a class="el" href="unity.scopes.SearchListenerBase.md" title="Abstract base interface for a client to receive the results of a query. ">SearchListenerBase</a>, which it uses to return the results for the query. <a class="el" href="#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">search()</a> may block for some time, for example, if the target scope is not running and needs to be started first. Results for the query may begin to arrive only after <a class="el" href="#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">search()</a> completes (but may also arrive while <a class="el" href="#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">search()</a> is still running).</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">query_string</td><td>The search string. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data to pass to the scope. </td></tr>
<tr><td class="paramname">reply</td><td>The callback object to receive replies. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A proxy that permits cancellation of this request. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::search </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>query_string</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">SearchListenerBase::SPtr const &amp;&#160;</td>
<td class="paramname"><em>reply</em>&#160;</td>
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
<p>Initiates a search query (overloaded method). </p>
<p>This method has same synopsis as previous method, but it takes additional <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">unity::scopes::FilterState</a> argument.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">query_string</td><td>The search string. </td></tr>
<tr><td class="paramname">filter_state</td><td>The state of filters. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data to pass to the scope. </td></tr>
<tr><td class="paramname">reply</td><td>The callback object to receive replies. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A proxy that permits cancellation of this request. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::search </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>query_string</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>department_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">SearchListenerBase::SPtr const &amp;&#160;</td>
<td class="paramname"><em>reply</em>&#160;</td>
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
<p>Initiates a search query (overloaded method). </p>
<p>This method has same synopsis as previous method, but it takes additional department identifier argument.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">query_string</td><td>The search string. </td></tr>
<tr><td class="paramname">department_id</td><td>The identifier of a department to search. </td></tr>
<tr><td class="paramname">filter_state</td><td>The state of filters. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data to pass to the scope. </td></tr>
<tr><td class="paramname">reply</td><td>The callback object to receive replies. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A proxy that permits cancellation of this request. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::search </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>query_string</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>department_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>user_data</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">SearchListenerBase::SPtr const &amp;&#160;</td>
<td class="paramname"><em>reply</em>&#160;</td>
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
<p>Initiates a search query (overloaded method). </p>
<p>This method has same synopsis as previous search method, but it takes additional user_data argument.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">query_string</td><td>The search string. </td></tr>
<tr><td class="paramname">department_id</td><td>The identifier of a department to search. </td></tr>
<tr><td class="paramname">filter_state</td><td>The state of filters. </td></tr>
<tr><td class="paramname">user_data</td><td>Arbitrary data. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data to pass to the scope. </td></tr>
<tr><td class="paramname">reply</td><td>The callback object to receive replies </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A proxy that permits cancellation of this request. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual bool unity::scopes::Scope::set_child_scopes </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> const &amp;&#160;</td>
<td class="paramname"><em>child_scopes</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Sets the list of child scopes aggregated by this scope. </p>
<dl class="section note"><dt>Note</dt><dd>The only time this call will return false is if the scope cannot write to its config directory. This should not happen in real-world usage, but if it does, check the log for more detail. </dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">child_scopes</td><td>The list of child scopes aggregated by this scope. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>True if the list was successfully set. </dd></dl>
