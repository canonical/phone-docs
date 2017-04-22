---
Title: unity.scopes.Runtime
---

# unity.scopes.Runtime

<p>The main object for query originators to access the scopes runtime.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/Runtime.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a37009c392ed3a7c6ebaf37cdfdaf6d01"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a37009c392ed3a7c6ebaf37cdfdaf6d01">destroy</a> ()</td></tr>
<tr class="memdesc:a37009c392ed3a7c6ebaf37cdfdaf6d01"><td class="mdescLeft">&#160;</td><td class="mdescRight">Shuts down the runtime, reclaiming all associated resources.  More...<br /></td></tr>
<tr class="separator:a37009c392ed3a7c6ebaf37cdfdaf6d01"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afc312448a4537b110bf1701bfb964501"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#a45babc254d3548863d79ee54f266e84d">RegistryProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afc312448a4537b110bf1701bfb964501">registry</a> () const </td></tr>
<tr class="memdesc:afc312448a4537b110bf1701bfb964501"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a proxy to the Registry object.  More...<br /></td></tr>
<tr class="separator:afc312448a4537b110bf1701bfb964501"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8924298a103d43313fe1974c040e7736"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8924298a103d43313fe1974c040e7736">run_scope</a> (<a class="el" href="unity.scopes.ScopeBase.md">ScopeBase</a> *const scope_base, std::string const &amp;scope_ini_file)</td></tr>
<tr class="memdesc:a8924298a103d43313fe1974c040e7736"><td class="mdescLeft">&#160;</td><td class="mdescRight">Run a scope without going through the scope runner.  More...<br /></td></tr>
<tr class="separator:a8924298a103d43313fe1974c040e7736"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a24eec46bc15975c219642fcfe8e5357f"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#aa68ce1769f7a888d0b4b2951741ca75a">ObjectProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a24eec46bc15975c219642fcfe8e5357f">string_to_proxy</a> (std::string const &amp;s) const </td></tr>
<tr class="memdesc:a24eec46bc15975c219642fcfe8e5357f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Convert a string to a proxy.  More...<br /></td></tr>
<tr class="separator:a24eec46bc15975c219642fcfe8e5357f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac96e508aa3d37d24eaf2aa65bdbfb43e"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac96e508aa3d37d24eaf2aa65bdbfb43e">proxy_to_string</a> (<a class="el" href="unity.scopes.md#aa68ce1769f7a888d0b4b2951741ca75a">ObjectProxy</a> const &amp;proxy) const </td></tr>
<tr class="memdesc:ac96e508aa3d37d24eaf2aa65bdbfb43e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Converts a proxy to a string.  More...<br /></td></tr>
<tr class="separator:ac96e508aa3d37d24eaf2aa65bdbfb43e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a96f5965eec2dd22c54cca9d99cb04653"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a96f5965eec2dd22c54cca9d99cb04653">~Runtime</a> ()</td></tr>
<tr class="memdesc:a96f5965eec2dd22c54cca9d99cb04653"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destroys a Runtime instance.  More...<br /></td></tr>
<tr class="separator:a96f5965eec2dd22c54cca9d99cb04653"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Static Public Member Functions</h2></td></tr>
<tr class="memitem:a0c24bf97fe98f57c4fc7ad04456bd40c"><td class="memItemLeft" align="right" valign="top">static UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0c24bf97fe98f57c4fc7ad04456bd40c">create</a> (std::string const &amp;configfile=&quot;&quot;)</td></tr>
<tr class="memdesc:a0c24bf97fe98f57c4fc7ad04456bd40c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Instantiates the scopes runtime for a client with the given (optional) configuration file.  More...<br /></td></tr>
<tr class="separator:a0c24bf97fe98f57c4fc7ad04456bd40c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa729688b3c887476118c0ab5ad6a5a54"><td class="memItemLeft" align="right" valign="top">static UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa729688b3c887476118c0ab5ad6a5a54">create_scope_runtime</a> (std::string const &amp;scope_id, std::string const &amp;configfile=&quot;&quot;)</td></tr>
<tr class="memdesc:aa729688b3c887476118c0ab5ad6a5a54"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create a runtime for a scope.  More...<br /></td></tr>
<tr class="separator:aa729688b3c887476118c0ab5ad6a5a54"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The main object for query originators to access the scopes runtime. </p>
<p>All interactions with the scopes runtime require a <a class="el" href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> object to be instantiated first. The <a class="el" href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance controls the overall life cycle; once a <a class="el" href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance goes out of scope, the application must not make further calls on any instance obtained via the destroyed <a class="el" href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a>.</p>
<p>The application must instantiate a <a class="el" href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> object only after <code>main()</code> is entered, and it must destroy the instance before leaving <code>main()</code>; failure to do so results in undefined behavior.</p>
<p>Note that scope implementations do not need to instantiate a <a class="el" href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::Runtime::~Runtime </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Destroys a <a class="el" href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance. </p>
<p>The destructor implicitly calls <a class="el" href="#a37009c392ed3a7c6ebaf37cdfdaf6d01" title="Shuts down the runtime, reclaiming all associated resources. ">destroy()</a> if the application code does not explicitly destroy the instance. You <em>must not</em> permit a <a class="el" href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance to persist beyond the end of <code>main()</code>; doing so has undefined behavior. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">Runtime::UPtr unity::scopes::Runtime::create </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>configfile</em> = <code>&quot;&quot;</code></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">static</span></span>  </td>
</tr>
</table>
<p>Instantiates the scopes runtime for a client with the given (optional) configuration file. </p>
<p>The life time of the runtime is under control of the caller. Letting the returned <code>unique_ptr</code> go out of scope shuts down the runtime.</p>
<p>You <em>must not</em> create a <a class="el" href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance until after <code>main()</code> is entered, and you <em>must</em> destroy it before leaving <code>main()</code> (either by explicitly calling <a class="el" href="#a37009c392ed3a7c6ebaf37cdfdaf6d01" title="Shuts down the runtime, reclaiming all associated resources. ">destroy()</a>, or by letting the returned <code>unique_ptr</code> go out of scope). Failure to do so causes undefined behavior.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">configfile</td><td>The path name of the configuration file to use.</td></tr>
</table>
</dd>
</dl>
<p>If configfile is the empty string, a default configuration is used. </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">Runtime::UPtr unity::scopes::Runtime::create_scope_runtime </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>scope_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>configfile</em> = <code>&quot;&quot;</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">static</span></span>  </td>
</tr>
</table>
<p>Create a runtime for a scope. </p>
<p>This method is provided for custom scoperunner implementations, for example, for scopes written in Go.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">scope_id</td><td>The unique ID of the scope. If scope_id is empty, a unique ID is used. Calling <code>create_scope_runtime("", "Runtime.ini")</code> is equivalent to calling <code>create("Runtime.ini")</code>. </td></tr>
<tr><td class="paramname">configfile</td><td>The path to the runtime .ini file. If empty, the default configuration is used. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A <code>unique_ptr</code> to the runtime instance. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Runtime::destroy </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Shuts down the runtime, reclaiming all associated resources. </p>
<p>Calling <a class="el" href="#a37009c392ed3a7c6ebaf37cdfdaf6d01" title="Shuts down the runtime, reclaiming all associated resources. ">destroy()</a> is optional; the destructor implicitly calls <a class="el" href="#a37009c392ed3a7c6ebaf37cdfdaf6d01" title="Shuts down the runtime, reclaiming all associated resources. ">destroy()</a> if it was not called explicitly. However, no exceptions are thrown by the destructor. If you want to log or handle any exceptions during shutdown, call <a class="el" href="#a37009c392ed3a7c6ebaf37cdfdaf6d01" title="Shuts down the runtime, reclaiming all associated resources. ">destroy()</a> explicitly before letting the <code>unique_ptr</code> returned by <a class="el" href="#a0c24bf97fe98f57c4fc7ad04456bd40c" title="Instantiates the scopes runtime for a client with the given (optional) configuration file...">create()</a> go out of scope. </p>
<table class="memname">
<tr>
<td class="memname">string unity::scopes::Runtime::proxy_to_string </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#aa68ce1769f7a888d0b4b2951741ca75a">ObjectProxy</a> const &amp;&#160;</td>
<td class="paramname"><em>proxy</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Converts a proxy to a string. </p>
<p><a class="el" href="#ac96e508aa3d37d24eaf2aa65bdbfb43e" title="Converts a proxy to a string. ">proxy_to_string()</a> converts the passed proxy to a string. Note that it is typically easier to call the ObjectProxy::to_string() method to achieve the same thing. However, <a class="el" href="#ac96e508aa3d37d24eaf2aa65bdbfb43e" title="Converts a proxy to a string. ">proxy_to_string()</a> is needed in order to obtain a string for a null proxy (because it is not possible to invoke a member function on a null proxy).</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">proxy</td><td>The proxy to convert to a string. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The string representation of the proxy. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#a45babc254d3548863d79ee54f266e84d">RegistryProxy</a> unity::scopes::Runtime::registry </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns a proxy to the <a class="el" href="unity.scopes.Registry.md" title="White pages service for available scopes. ">Registry</a> object. </p>
<p>The returned proxy allows application code to interact with the registry, which provides access to the available scopes. </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Runtime::run_scope </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.ScopeBase.md">ScopeBase</a> *const&#160;</td>
<td class="paramname"><em>scope_base</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>scope_ini_file</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Run a scope without going through the scope runner. </p>
<p>This method is intended to run a scope that can not be loaded via the scope runner, such as those written in languages that cannot be dynamically loaded.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">scope_base</td><td>The scope implementation </td></tr>
<tr><td class="paramname">scope_ini_file</td><td>The full path of scope configuration file </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#aa68ce1769f7a888d0b4b2951741ca75a">ObjectProxy</a> unity::scopes::Runtime::string_to_proxy </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>s</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Convert a string to a proxy. </p>
<p>This method is intended for testing purposes. Do not use <a class="el" href="#a24eec46bc15975c219642fcfe8e5357f" title="Convert a string to a proxy. ">string_to_proxy()</a> in production code! <a class="el" href="#a24eec46bc15975c219642fcfe8e5357f" title="Convert a string to a proxy. ">string_to_proxy()</a> converts a string to a proxy. The returned proxy must be down-cast using <code>dynamic_pointer_cast</code> to the correct type before it can be used.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">s</td><td>The string to convert into a proxy. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The converted proxy. It is possible for the return value to be <code>nullptr</code>, but only if the passed string represents a null proxy. Otherwise, the return value is a non-null proxy, or an exception (for example, if the proxy string did not parse correctly, or if the proxy could not be instantiated due to incorrect values inside the string). </dd></dl>
