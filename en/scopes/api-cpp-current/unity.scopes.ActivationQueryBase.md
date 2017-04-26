---
Title: unity.scopes.ActivationQueryBase
---

# unity.scopes.ActivationQueryBase

<p>Base class for an activation request that is executed inside a scope.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ActivationQueryBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::ActivationQueryBase:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/a6aa3dcd-df58-4be5-889c-c3a22937fe85-../unity.scopes.ActivationQueryBase/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ae853aab10c2fd7411208a1764b59c439"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae853aab10c2fd7411208a1764b59c439">ActivationQueryBase</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;<a class="el" href="#ac23d5b45f73f8ed38139996ef8c27195">result</a>, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata)</td></tr>
<tr class="memdesc:ae853aab10c2fd7411208a1764b59c439"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create ActivationQueryBase.  More...<br /></td></tr>
<tr class="separator:ae853aab10c2fd7411208a1764b59c439"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2f4b19b45dac666ab59454abdea73ea1"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2f4b19b45dac666ab59454abdea73ea1">ActivationQueryBase</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;<a class="el" href="#ac23d5b45f73f8ed38139996ef8c27195">result</a>, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata, std::string const &amp;<a class="el" href="#a95aa7e96b4b0f7b1bc10e2342de02db8">widget_id</a>, std::string const &amp;<a class="el" href="#a0cb38f795f4096a6bc2f40d5c192df6e">action_id</a>)</td></tr>
<tr class="memdesc:a2f4b19b45dac666ab59454abdea73ea1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create ActivationQueryBase.  More...<br /></td></tr>
<tr class="separator:a2f4b19b45dac666ab59454abdea73ea1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad4833abec80f83682b20b8aa4b37ae06"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad4833abec80f83682b20b8aa4b37ae06">ActivationQueryBase</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;update_result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata, std::string const &amp;<a class="el" href="#a0cb38f795f4096a6bc2f40d5c192df6e">action_id</a>)</td></tr>
<tr class="memdesc:ad4833abec80f83682b20b8aa4b37ae06"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create ActivationQueryBase.  More...<br /></td></tr>
<tr class="separator:ad4833abec80f83682b20b8aa4b37ae06"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af9b8e83ac6716db51aba942aca9cc6be"><td class="memItemLeft" align="right" valign="top">
virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af9b8e83ac6716db51aba942aca9cc6be">cancelled</a> () override</td></tr>
<tr class="memdesc:af9b8e83ac6716db51aba942aca9cc6be"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called when the originator of the activation request cancelled it. <br /></td></tr>
<tr class="separator:af9b8e83ac6716db51aba942aca9cc6be"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a61ed49d8bc56e677ff2eb1f30e6a6b6b"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.ActivationResponse.md">ActivationResponse</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a61ed49d8bc56e677ff2eb1f30e6a6b6b">activate</a> ()</td></tr>
<tr class="memdesc:a61ed49d8bc56e677ff2eb1f30e6a6b6b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return response to the activation request.  More...<br /></td></tr>
<tr class="separator:a61ed49d8bc56e677ff2eb1f30e6a6b6b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac23d5b45f73f8ed38139996ef8c27195"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac23d5b45f73f8ed38139996ef8c27195">result</a> () const </td></tr>
<tr class="memdesc:ac23d5b45f73f8ed38139996ef8c27195"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the result for this activation request handler.  More...<br /></td></tr>
<tr class="separator:ac23d5b45f73f8ed38139996ef8c27195"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae215e7780c87d835893eb0df70f09d3b"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae215e7780c87d835893eb0df70f09d3b">action_metadata</a> () const </td></tr>
<tr class="memdesc:ae215e7780c87d835893eb0df70f09d3b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the metadata for this activation request handler.  More...<br /></td></tr>
<tr class="separator:ae215e7780c87d835893eb0df70f09d3b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a95aa7e96b4b0f7b1bc10e2342de02db8"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a95aa7e96b4b0f7b1bc10e2342de02db8">widget_id</a> () const </td></tr>
<tr class="memdesc:a95aa7e96b4b0f7b1bc10e2342de02db8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the widget identifier for this activation request handler.  More...<br /></td></tr>
<tr class="separator:a95aa7e96b4b0f7b1bc10e2342de02db8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0cb38f795f4096a6bc2f40d5c192df6e"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0cb38f795f4096a6bc2f40d5c192df6e">action_id</a> () const </td></tr>
<tr class="memdesc:a0cb38f795f4096a6bc2f40d5c192df6e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the action identifier for this activation request handler.  More...<br /></td></tr>
<tr class="separator:a0cb38f795f4096a6bc2f40d5c192df6e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_query_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_query_base')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/c7980c55-0ca5-4fa5-8506-4bdc628af04e-../unity.scopes.ActivationQueryBase/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.QueryBase.md">unity::scopes::QueryBase</a></td></tr>
<tr class="memitem:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryBase.md#a095e61eabe2042eeea5c4df1a444d7d4">valid</a> () const </td></tr>
<tr class="memdesc:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether this query is still valid.  More...<br /></td></tr>
<tr class="separator:a095e61eabe2042eeea5c4df1a444d7d4 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryBase.md#ab6a25ba587387a7f490b8b5a081e9ed6">settings</a> () const </td></tr>
<tr class="memdesc:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a dictionary with the scope's current settings.  More...<br /></td></tr>
<tr class="separator:ab6a25ba587387a7f490b8b5a081e9ed6 inherit pub_methods_classunity_1_1scopes_1_1_query_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Base class for an activation request that is executed inside a scope. </p>
<p>The default implementation responds with ActivationResponse(ActivationResponse::Status::NotHandled). Reimplement this class and return an instance from <a class="el" href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate</a> method for custom activation handling. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::ActivationQueryBase::ActivationQueryBase </td>
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
<p>Create <a class="el" href="index.html" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result received by <a class="el" href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate()</a>. </td></tr>
<tr><td class="paramname">metadata</td><td>The metadata received by <a class="el" href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate()</a>. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">unity::scopes::ActivationQueryBase::ActivationQueryBase </td>
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
<td class="paramname"><em>action_id</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create <a class="el" href="index.html" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result received by <a class="el" href="unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>. </td></tr>
<tr><td class="paramname">metadata</td><td>The metadata received by <a class="el" href="unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>. </td></tr>
<tr><td class="paramname">widget_id</td><td>The widget identifier receiver of <a class="el" href="unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>. </td></tr>
<tr><td class="paramname">action_id</td><td>The action identifier receiver of <a class="el" href="unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">unity::scopes::ActivationQueryBase::ActivationQueryBase </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Result.md">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>update_result</em>, </td>
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
<td class="paramname"><em>action_id</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create <a class="el" href="index.html" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">update_result</td><td>The result received by <a class="el" href="unity.scopes.ScopeBase.md#a7ac39ca44f4790dd36900657692d0565" title="Invoked when a scope is requested to handle a result in-card action. ">ScopeBase::activate_result_action()</a>. </td></tr>
<tr><td class="paramname">metadata</td><td>The metadata received by <a class="el" href="unity.scopes.ScopeBase.md#a7ac39ca44f4790dd36900657692d0565" title="Invoked when a scope is requested to handle a result in-card action. ">ScopeBase::activate_result_action()</a>. </td></tr>
<tr><td class="paramname">action_id</td><td>The action identifier received by <a class="el" href="unity.scopes.ScopeBase.md#a7ac39ca44f4790dd36900657692d0565" title="Invoked when a scope is requested to handle a result in-card action. ">ScopeBase::activate_result_action()</a>. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ActivationQueryBase::action_id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the action identifier for this activation request handler. </p>
<p>Action identifier is empty when using the <a class="el" href="index.html" title="Base class for an activation request that is executed inside a scope. ">unity::scopes::ActivationQueryBase(Result const&amp; result, ActionMetadata const&amp; metadata)</a> constructor.</p>
<dl class="section return"><dt>Returns</dt><dd>The action identifier passed to the constructor of this object. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> unity::scopes::ActivationQueryBase::action_metadata </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the metadata for this activation request handler. </p>
<dl class="section return"><dt>Returns</dt><dd>The metadata passed to the constructor of this object. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.ActivationResponse.md">ActivationResponse</a> unity::scopes::ActivationQueryBase::activate </td>
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
<p>Return response to the activation request. </p>
<p>The response is received by the originator of the request. Default implementation returns <a class="el" href="unity.scopes.ActivationResponse.md" title="Response to a result activation. ">ActivationResponse</a>(ActivationResponse::Status::NotHandled. </p><dl class="section return"><dt>Returns</dt><dd>The response to the activation request. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Result.md">Result</a> unity::scopes::ActivationQueryBase::result </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the result for this activation request handler. </p>
<dl class="section return"><dt>Returns</dt><dd>The result passed to the constructor of this object. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ActivationQueryBase::widget_id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the widget identifier for this activation request handler. </p>
<p>Widget identifier is empty when using the <a class="el" href="index.html" title="Base class for an activation request that is executed inside a scope. ">unity::scopes::ActivationQueryBase(Result const&amp; result, ActionMetadata const&amp; metadata)</a> constructor.</p>
<dl class="section return"><dt>Returns</dt><dd>The widget identifier passed to the constructor of this object. </dd></dl>
