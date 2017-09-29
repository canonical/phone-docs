---
Title: unity.scopes.ActivationListenerBase
---

# unity.scopes.ActivationListenerBase

<p>Base class to receive a response to a result activation request.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ActivationListenerBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::ActivationListenerBase:
<img src="https://assets.ubuntu.com/v1/834f8bda-classunity_1_1scopes_1_1_activation_listener_base__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a52106ae2856a2dc7fd6035707bd0bee2"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a52106ae2856a2dc7fd6035707bd0bee2">activated</a> (<a class="el" href="unity.scopes.ActivationResponse.md">ActivationResponse</a> const &amp;response)</td></tr>
<tr class="memdesc:a52106ae2856a2dc7fd6035707bd0bee2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes runtime with the activation response.  More...<br /></td></tr>
<tr class="separator:a52106ae2856a2dc7fd6035707bd0bee2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a89f1e3697d62b098c73704368d3bc4c8"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a89f1e3697d62b098c73704368d3bc4c8">finished</a> (<a class="el" href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &amp;details) override</td></tr>
<tr class="memdesc:a89f1e3697d62b098c73704368d3bc4c8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes runtime after the final result for a request was sent.  More...<br /></td></tr>
<tr class="separator:a89f1e3697d62b098c73704368d3bc4c8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_listener_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_listener_base')"><img src="https://assets.ubuntu.com/v1/c6607712-closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.ListenerBase.md">unity::scopes::ListenerBase</a></td></tr>
<tr class="memitem:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ListenerBase.md#a3b38fa642754142f40968f3ff8d1bdc8">info</a> (<a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;op_info)</td></tr>
<tr class="memdesc:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime each time a scope reports additional information about the reply to a query.  More...<br /></td></tr>
<tr class="separator:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Base class to receive a response to a result activation request. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ActivationListenerBase::activated </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.ActivationResponse.md">ActivationResponse</a> const &amp;&#160;</td>
<td class="paramname"><em>response</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called once by the scopes runtime with the activation response. </p>
<p>The default implementation does nothing. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">response</td><td>The response to the activation request, returned by a scope from <a class="el" href="unity.scopes.ActivationQueryBase.md#a61ed49d8bc56e677ff2eb1f30e6a6b6b" title="Return response to the activation request. ">ActivationQueryBase::activate()</a>. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ActivationListenerBase::finished </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &amp;&#160;</td>
<td class="paramname"><em>details</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called once by the scopes runtime after the final result for a request was sent. </p>
<p>Calls to <a class="el" href="#a89f1e3697d62b098c73704368d3bc4c8" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are made by an arbitrary thread.</p>
<p>Exceptions thrown from <a class="el" href="#a89f1e3697d62b098c73704368d3bc4c8" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are ignored. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">details</td><td>Contains details about the completion status of a query as well as any additional information regarding the operation of the request. </td></tr>
</table>
</dd>
</dl>
<p>Implements <a class="el" href="unity.scopes.ListenerBase.md#afb44937749b61c9e3ebfa20ec6e4634b">unity::scopes::ListenerBase</a>.</p>
