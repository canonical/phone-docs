---
Title: unity.scopes.Registry
---

# unity.scopes.Registry

<p>White pages service for available scopes.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/Registry.h&gt;</code></p>
Inheritance diagram for unity::scopes::Registry:
<img src="../../../../media/classunity_1_1scopes_1_1_registry__inherit__graph.png" border="0" alt="Inheritance graph"/>

<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a63778ac090804a1fb85dc48fccbc2822"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a63778ac090804a1fb85dc48fccbc2822">get_metadata</a> (std::string const &amp;scope_id)=0</td></tr>
<tr class="memdesc:a63778ac090804a1fb85dc48fccbc2822"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the metadata for the scope with the given ID.  More...<br /></td></tr>
<tr class="separator:a63778ac090804a1fb85dc48fccbc2822"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a23e078986524fe11bd363c29401fbb31"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a9f6e8e62689e49cdabadacf39b697816">MetadataMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a23e078986524fe11bd363c29401fbb31">list</a> ()=0</td></tr>
<tr class="memdesc:a23e078986524fe11bd363c29401fbb31"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a map containing the metadata for all scopes.  More...<br /></td></tr>
<tr class="separator:a23e078986524fe11bd363c29401fbb31"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa15baf0154c4b58decf27f2e5815d680"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a9f6e8e62689e49cdabadacf39b697816">MetadataMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa15baf0154c4b58decf27f2e5815d680">list_if</a> (std::function&lt; bool(<a class="el" href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> const &amp;item)&gt; predicate)=0</td></tr>
<tr class="memdesc:aa15baf0154c4b58decf27f2e5815d680"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a map containing only those scopes for which <code>predicate</code> returns true.  More...<br /></td></tr>
<tr class="separator:aa15baf0154c4b58decf27f2e5815d680"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a06ef35ed8677a0b20774528343bff9f1"><td class="memItemLeft" align="right" valign="top">virtual bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a06ef35ed8677a0b20774528343bff9f1">is_scope_running</a> (std::string const &amp;scope_id)=0</td></tr>
<tr class="memdesc:a06ef35ed8677a0b20774528343bff9f1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns whether a scope is currently running or not.  More...<br /></td></tr>
<tr class="separator:a06ef35ed8677a0b20774528343bff9f1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a86ac67a881dec9eddabd069153fc62b1"><td class="memItemLeft" align="right" valign="top">virtual core::ScopedConnection&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a86ac67a881dec9eddabd069153fc62b1">set_scope_state_callback</a> (std::string const &amp;scope_id, std::function&lt; void(bool is_running)&gt; callback)=0</td></tr>
<tr class="memdesc:a86ac67a881dec9eddabd069153fc62b1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Assigns a callback method to be executed when a scope's running state (started / stopped) changes.  More...<br /></td></tr>
<tr class="separator:a86ac67a881dec9eddabd069153fc62b1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f540dc612ce4a5e50a21ec66fec75fd"><td class="memItemLeft" align="right" valign="top">virtual core::ScopedConnection&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1f540dc612ce4a5e50a21ec66fec75fd">set_list_update_callback</a> (std::function&lt; void()&gt; callback)=0</td></tr>
<tr class="memdesc:a1f540dc612ce4a5e50a21ec66fec75fd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Assigns a callback method to be executed when the registry's scope list changes.  More...<br /></td></tr>
<tr class="separator:a1f540dc612ce4a5e50a21ec66fec75fd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_object"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_object')"><img src="../../../../media/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.Object.md">unity::scopes::Object</a></td></tr>
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
<p>White pages service for available scopes. </p>
<p>You can obtain a proxy to the registry by calling <a class="el" href="unity.scopes.Runtime.md#afc312448a4537b110bf1701bfb964501" title="Returns a proxy to the Registry object. ">Runtime::registry()</a>. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> unity::scopes::Registry::get_metadata </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>scope_id</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Returns the metadata for the scope with the given ID. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">scope_id</td><td>The ID of the scope from which we wish to retrieve metadata. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The metadata for the scope. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">NotFoundException</a></td><td>if no scope with the given ID exists. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual bool unity::scopes::Registry::is_scope_running </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>scope_id</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Returns whether a scope is currently running or not. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">scope_id</td><td>The ID of the scope from which we wish to retrieve state. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>True if the scope is running, and False if it is not running. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">NotFoundException</a></td><td>if no scope with the given ID exists. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.md#a9f6e8e62689e49cdabadacf39b697816">MetadataMap</a> unity::scopes::Registry::list </td>
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
<p>Returns a map containing the metadata for all scopes. </p>
<dl class="section return"><dt>Returns</dt><dd>The metadata for all scopes. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="unity.scopes.md#a9f6e8e62689e49cdabadacf39b697816">MetadataMap</a> unity::scopes::Registry::list_if </td>
<td>(</td>
<td class="paramtype">std::function&lt; bool(<a class="el" href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> const &amp;item)&gt;&#160;</td>
<td class="paramname"><em>predicate</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Returns a map containing only those scopes for which <code>predicate</code> returns true. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">predicate</td><td>a function object that must return true for each metadata item to be included in the map. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The metadata items for which the predicate returned true. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual core::ScopedConnection unity::scopes::Registry::set_list_update_callback </td>
<td>(</td>
<td class="paramtype">std::function&lt; void()&gt;&#160;</td>
<td class="paramname"><em>callback</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Assigns a callback method to be executed when the registry's scope list changes. </p>
<p>Note: Upon receiving this callback, you should retrieve the updated scopes list via the <a class="el" href="#a23e078986524fe11bd363c29401fbb31" title="Returns a map containing the metadata for all scopes. ">list()</a> method if you wish to retain synchronisation between client and server. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">callback</td><td>The function object that is invoked when an update occurs. </td></tr>
</table>
</dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.MiddlewareException.md" title="Exception to indicate that something went wrong with the middleware layer. ">MiddlewareException</a></td><td>if the registry subscriber failed to initialize. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual core::ScopedConnection unity::scopes::Registry::set_scope_state_callback </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>scope_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::function&lt; void(bool is_running)&gt;&#160;</td>
<td class="paramname"><em>callback</em>&#160;</td>
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
<p>Assigns a callback method to be executed when a scope's running state (started / stopped) changes. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">scope_id</td><td>The ID of the scope from which we wish to retrieve state changes. </td></tr>
<tr><td class="paramname">callback</td><td>The function object that is invoked when a scope changes running state. </td></tr>
</table>
</dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.MiddlewareException.md" title="Exception to indicate that something went wrong with the middleware layer. ">MiddlewareException</a></td><td>if the registry subscriber failed to initialize. </td></tr>
</table>
</dd>
</dl>
