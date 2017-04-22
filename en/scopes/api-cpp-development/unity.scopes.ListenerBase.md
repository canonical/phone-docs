---
Title: unity.scopes.ListenerBase
---

# unity.scopes.ListenerBase

<p>Abstract base class to be notified of request completion (such as a query or activation request).  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ListenerBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::ListenerBase:
<img src="../../../../media/classunity_1_1scopes_1_1_listener_base__inherit__graph.png" border="0" alt="Inheritance graph"/>


<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:afb44937749b61c9e3ebfa20ec6e4634b"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afb44937749b61c9e3ebfa20ec6e4634b">finished</a> (<a class="el" href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &amp;details)=0</td></tr>
<tr class="memdesc:afb44937749b61c9e3ebfa20ec6e4634b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes runtime after the final result for a request was sent.  More...<br /></td></tr>
<tr class="separator:afb44937749b61c9e3ebfa20ec6e4634b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3b38fa642754142f40968f3ff8d1bdc8"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3b38fa642754142f40968f3ff8d1bdc8">info</a> (<a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;op_info)</td></tr>
<tr class="memdesc:a3b38fa642754142f40968f3ff8d1bdc8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime each time a scope reports additional information about the reply to a query.  More...<br /></td></tr>
<tr class="separator:a3b38fa642754142f40968f3ff8d1bdc8"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Abstract base class to be notified of request completion (such as a query or activation request). </p>
<dl class="section see"><dt>See also</dt><dd><a class="el" href="unity.scopes.ActivationListenerBase.md" title="Base class to receive a response to a result activation request. ">ActivationListenerBase</a> </dd>
<dd>
<a class="el" href="unity.scopes.PreviewQueryBase.md" title="Abstract base class to represent a particular preview. ">PreviewQueryBase</a> </dd>
<dd>
<a class="el" href="unity.scopes.SearchListenerBase.md" title="Abstract base interface for a client to receive the results of a query. ">SearchListenerBase</a> </dd></dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::ListenerBase::finished </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &amp;&#160;</td>
<td class="paramname"><em>details</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Called once by the scopes runtime after the final result for a request was sent. </p>
<p>Calls to <a class="el" href="#afb44937749b61c9e3ebfa20ec6e4634b" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are made by an arbitrary thread.</p>
<p>Exceptions thrown from <a class="el" href="#afb44937749b61c9e3ebfa20ec6e4634b" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are ignored. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">details</td><td>Contains details about the completion status of a query as well as any additional information regarding the operation of the request. </td></tr>
</table>
</dd>
</dl>
<p>Implemented in <a class="el" href="unity.scopes.utility.BufferedResultForwarder.md#a9bd57e76c08a01560a700d665cc40e96">unity::scopes::utility::BufferedResultForwarder</a>, and <a class="el" href="unity.scopes.ActivationListenerBase.md#a89f1e3697d62b098c73704368d3bc4c8">unity::scopes::ActivationListenerBase</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::ListenerBase::info </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;&#160;</td>
<td class="paramname"><em>op_info</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called by the scopes runtime each time a scope reports additional information about the reply to a query. </p>
<p>More than one <a class="el" href="#a3b38fa642754142f40968f3ff8d1bdc8" title="Called by the scopes runtime each time a scope reports additional information about the reply to a qu...">info()</a> call can arrive during processing of a single query.</p>
<p>Calls to <a class="el" href="#a3b38fa642754142f40968f3ff8d1bdc8" title="Called by the scopes runtime each time a scope reports additional information about the reply to a qu...">info()</a> are made by an arbitrary thread.</p>
<p>Exceptions thrown from <a class="el" href="#a3b38fa642754142f40968f3ff8d1bdc8" title="Called by the scopes runtime each time a scope reports additional information about the reply to a qu...">info()</a> are ignored. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">op_info</td><td>Contains all details of the information being reported. </td></tr>
</table>
</dd>
</dl>
