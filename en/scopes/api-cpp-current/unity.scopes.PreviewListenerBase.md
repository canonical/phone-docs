---
Title: unity.scopes.PreviewListenerBase
---

# unity.scopes.PreviewListenerBase

<p>Abstract base class for a scope to respond to preview requests.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/PreviewListenerBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::PreviewListenerBase:
<img src="../../../media/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a5e9fe1fa664cbb65a0389e5a39caf78b"><td class="memItemLeft" align="right" valign="top">
virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5e9fe1fa664cbb65a0389e5a39caf78b">push</a> (<a class="el" href="unity.scopes.md#a5b970e3c73bf25548398b32e79b2224d">ColumnLayoutList</a> const &amp;layouts)=0</td></tr>
<tr class="memdesc:a5e9fe1fa664cbb65a0389e5a39caf78b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime for each column layout definition returned by preview(). <br /></td></tr>
<tr class="separator:a5e9fe1fa664cbb65a0389e5a39caf78b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1b4c366abea27471dc9ee31873c9c37a"><td class="memItemLeft" align="right" valign="top">
virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1b4c366abea27471dc9ee31873c9c37a">push</a> (<a class="el" href="unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> const &amp;)=0</td></tr>
<tr class="memdesc:a1b4c366abea27471dc9ee31873c9c37a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime for each preview chunk that is returned by preview(). <br /></td></tr>
<tr class="separator:a1b4c366abea27471dc9ee31873c9c37a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2c11160354d49672100522d3e476b7e3"><td class="memItemLeft" align="right" valign="top">
virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2c11160354d49672100522d3e476b7e3">push</a> (std::string const &amp;key, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;value)=0</td></tr>
<tr class="memdesc:a2c11160354d49672100522d3e476b7e3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime for each data field that is returned by preview(). <br /></td></tr>
<tr class="separator:a2c11160354d49672100522d3e476b7e3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_listener_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_listener_base')"><img src="../../../media/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.ListenerBase.md">unity::scopes::ListenerBase</a></td></tr>
<tr class="memitem:afb44937749b61c9e3ebfa20ec6e4634b inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ListenerBase.md#afb44937749b61c9e3ebfa20ec6e4634b">finished</a> (<a class="el" href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &amp;details)=0</td></tr>
<tr class="memdesc:afb44937749b61c9e3ebfa20ec6e4634b inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called once by the scopes runtime after the final result for a request was sent.  More...<br /></td></tr>
<tr class="separator:afb44937749b61c9e3ebfa20ec6e4634b inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ListenerBase.md#a3b38fa642754142f40968f3ff8d1bdc8">info</a> (<a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;op_info)</td></tr>
<tr class="memdesc:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime each time a scope reports additional information about the reply to a query.  More...<br /></td></tr>
<tr class="separator:a3b38fa642754142f40968f3ff8d1bdc8 inherit pub_methods_classunity_1_1scopes_1_1_listener_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Abstract base class for a scope to respond to preview requests. </p>
<p>An instance of this class must be returned from <a class="el" href="unity.scopes.Scope.md#a82b24083994e676524b10c407f281aa4" title="Initiates preview request. ">Scope::preview()</a>.</p>
