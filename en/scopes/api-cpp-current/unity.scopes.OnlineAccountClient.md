---
Title: unity.scopes.OnlineAccountClient
---

# unity.scopes.OnlineAccountClient

<p>A simple interface for integrating online accounts access and monitoring into scopes.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/OnlineAccountClient.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Classes</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.OnlineAccountClient.ServiceStatus.md">ServiceStatus</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">A container for details about a service's status and authorization parameters.  <a href="unity.scopes.OnlineAccountClient.ServiceStatus.md#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:af9407bf4186d20e8445379e000e57f20"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af9407bf4186d20e8445379e000e57f20">MainLoopSelect</a> { <a class="el" href="#af9407bf4186d20e8445379e000e57f20a541835f51d0a5ec79aaddada2e91ebf1">RunInExternalMainLoop</a>, 
<a class="el" href="#af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470">CreateInternalMainLoop</a>
}</td></tr>
<tr class="memdesc:af9407bf4186d20e8445379e000e57f20"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates whether an external main loop already exists, or one should be created internally.  <a href="#af9407bf4186d20e8445379e000e57f20">More...</a><br /></td></tr>
<tr class="separator:af9407bf4186d20e8445379e000e57f20"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4505ad39c78dcc9fbb78a594c33b9a22"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a> { <br />
&#160;&#160;<a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22ab365a1534cce6d36e42e0be03169ffb6">Unknown</a>, 
<a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22a20868ed64ce21f859aae50ec76aa738d">DoNothing</a>, 
<a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22a4096156be602a8dd697c5a2f1d834cec">InvalidateResults</a>, 
<a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22ac4055329b8e4dbec09736d1f7025d66b">ContinueActivation</a>, 
<br />
&#160;&#160;<a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22a2b115d76d434e3db48f278562e585b0c">LastActionCode_</a> = ContinueActivation
<br />
}</td></tr>
<tr class="memdesc:a4505ad39c78dcc9fbb78a594c33b9a22"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates what action to take when the login process completes.  <a href="#a4505ad39c78dcc9fbb78a594c33b9a22">More...</a><br /></td></tr>
<tr class="separator:a4505ad39c78dcc9fbb78a594c33b9a22"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0c327d92e4684b5849928fa18ebfc204"><td class="memItemLeft" align="right" valign="top">typedef std::function&lt; void(<a class="el" href="unity.scopes.OnlineAccountClient.ServiceStatus.md">ServiceStatus</a> const &amp;)&gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0c327d92e4684b5849928fa18ebfc204">ServiceUpdateCallback</a></td></tr>
<tr class="memdesc:a0c327d92e4684b5849928fa18ebfc204"><td class="mdescLeft">&#160;</td><td class="mdescRight">Function signature for the service update callback.  More...<br /></td></tr>
<tr class="separator:a0c327d92e4684b5849928fa18ebfc204"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:af1139a1b81d9d95c0c84ea52d51dc07c"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af1139a1b81d9d95c0c84ea52d51dc07c">OnlineAccountClient</a> (std::string const &amp;service_name, std::string const &amp;service_type, std::string const &amp;provider_name, <a class="el" href="#af9407bf4186d20e8445379e000e57f20">MainLoopSelect</a> main_loop_select=<a class="el" href="#af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470">CreateInternalMainLoop</a>)</td></tr>
<tr class="memdesc:af1139a1b81d9d95c0c84ea52d51dc07c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create OnlineAccountClient for the specified account service.  More...<br /></td></tr>
<tr class="separator:af1139a1b81d9d95c0c84ea52d51dc07c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9ca9980de9adedb524a3143936400be0"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9ca9980de9adedb524a3143936400be0">set_service_update_callback</a> (<a class="el" href="#a0c327d92e4684b5849928fa18ebfc204">ServiceUpdateCallback</a> callback)</td></tr>
<tr class="memdesc:a9ca9980de9adedb524a3143936400be0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the callback function to be invoked when a service status changes.  More...<br /></td></tr>
<tr class="separator:a9ca9980de9adedb524a3143936400be0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adaa0dacf9d31bc23fc35e082d3b7a7ee"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adaa0dacf9d31bc23fc35e082d3b7a7ee">refresh_service_statuses</a> ()</td></tr>
<tr class="memdesc:adaa0dacf9d31bc23fc35e082d3b7a7ee"><td class="mdescLeft">&#160;</td><td class="mdescRight">Refresh all service statuses.  More...<br /></td></tr>
<tr class="separator:adaa0dacf9d31bc23fc35e082d3b7a7ee"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abe613053f2292f595247aa67c8f78351"><td class="memItemLeft" align="right" valign="top">std::vector&lt; <a class="el" href="unity.scopes.OnlineAccountClient.ServiceStatus.md">ServiceStatus</a> &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#abe613053f2292f595247aa67c8f78351">get_service_statuses</a> ()</td></tr>
<tr class="memdesc:abe613053f2292f595247aa67c8f78351"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get statuses for all services matching the name, type and provider specified on construction.  More...<br /></td></tr>
<tr class="separator:abe613053f2292f595247aa67c8f78351"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a78b3e267ff30c23cc3a3644f29724e9b"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a78b3e267ff30c23cc3a3644f29724e9b">register_account_login_item</a> (<a class="el" href="unity.scopes.Result.md">Result</a> &amp;result, <a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;query, <a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a> login_passed_action, <a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a> login_failed_action)</td></tr>
<tr class="memdesc:a78b3e267ff30c23cc3a3644f29724e9b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Register a result item that requires the user to be logged in.  More...<br /></td></tr>
<tr class="separator:a78b3e267ff30c23cc3a3644f29724e9b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2fcd08f9c9b4fb625ba733e895e60f6c"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2fcd08f9c9b4fb625ba733e895e60f6c">register_account_login_item</a> (<a class="el" href="unity.scopes.PreviewWidget.md">PreviewWidget</a> &amp;widget, <a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a> login_passed_action, <a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a> login_failed_action)</td></tr>
<tr class="memdesc:a2fcd08f9c9b4fb625ba733e895e60f6c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Register a widget item that requires the user to be logged in.  More...<br /></td></tr>
<tr class="separator:a2fcd08f9c9b4fb625ba733e895e60f6c"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A simple interface for integrating online accounts access and monitoring into scopes. </p>
<p>Each instantiation of this class targets a particular account service as specified on construction. </p>
<h2 class="groupheader">Member Typedef Documentation</h2>
<table class="memname">
<tr>
<td class="memname">typedef std::function&lt;void(<a class="el" href="unity.scopes.OnlineAccountClient.ServiceStatus.md">ServiceStatus</a> const&amp;)&gt; <a class="el" href="#a0c327d92e4684b5849928fa18ebfc204">unity::scopes::OnlineAccountClient::ServiceUpdateCallback</a></td>
</tr>
</table>
<p>Function signature for the service update callback. </p>
<dl class="section see"><dt>See also</dt><dd><a class="el" href="#a9ca9980de9adedb524a3143936400be0" title="Set the callback function to be invoked when a service status changes. ">set_service_update_callback</a> </dd></dl>
<h2 class="groupheader">Member Enumeration Documentation</h2>
<table class="memname">
<tr>
<td class="memname">enum <a class="el" href="#af9407bf4186d20e8445379e000e57f20">unity::scopes::OnlineAccountClient::MainLoopSelect</a></td>
</tr>
</table>
<p>Indicates whether an external main loop already exists, or one should be created internally. </p>
<p>A running main loop is essential in order to receive service updates from the online accounts backend. When in doubt, set to CreateInternalMainLoop. </p>
<table class="fieldtable">
<tr><th colspan="2">Enumerator</th></tr><tr><td class="fieldname">RunInExternalMainLoop&#160;</td><td class="fielddoc">
<p>An external main loop already exists and is running. </p>
</td></tr>
<tr><td class="fieldname">CreateInternalMainLoop&#160;</td><td class="fielddoc">
<p>An external main loop does not exist. </p>
</td></tr>
</table>
<table class="memname">
<tr>
<td class="memname">enum <a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22">unity::scopes::OnlineAccountClient::PostLoginAction</a></td>
</tr>
</table>
<p>Indicates what action to take when the login process completes. </p>
<table class="fieldtable">
<tr><th colspan="2">Enumerator</th></tr><tr><td class="fieldname">Unknown&#160;</td><td class="fielddoc">
<p>An action unknown to the run-time was used. </p>
</td></tr>
<tr><td class="fieldname">DoNothing&#160;</td><td class="fielddoc">
<p>Simply return to the scope with no further action. </p>
</td></tr>
<tr><td class="fieldname">InvalidateResults&#160;</td><td class="fielddoc">
<p>Invalidate the scope results. </p>
</td></tr>
<tr><td class="fieldname">ContinueActivation&#160;</td><td class="fielddoc">
<p>Continue with regular result / widget activation. </p>
</td></tr>
<tr><td class="fieldname">LastActionCode_&#160;</td><td class="fielddoc">
<p>Dummy end marker. </p>
</td></tr>
</table>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::OnlineAccountClient::OnlineAccountClient </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>service_name</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>service_type</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>provider_name</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="#af9407bf4186d20e8445379e000e57f20">MainLoopSelect</a>&#160;</td>
<td class="paramname"><em>main_loop_select</em> = <code><a class="el" href="#af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470">CreateInternalMainLoop</a></code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create <a class="el" href="index.html" title="A simple interface for integrating online accounts access and monitoring into scopes. ">OnlineAccountClient</a> for the specified account service. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">service_name</td><td>The name of the service (E.g. "com.ubuntu.scopes.youtube_youtube"). </td></tr>
<tr><td class="paramname">service_type</td><td>The type of service (E.g. "sharing"). </td></tr>
<tr><td class="paramname">provider_name</td><td>The name of the service provider (E.g. "google"). </td></tr>
<tr><td class="paramname">main_loop_select</td><td>Indicates whether or not an external main loop exists (see <a class="el" href="#af9407bf4186d20e8445379e000e57f20" title="Indicates whether an external main loop already exists, or one should be created internally. ">OnlineAccountClient::MainLoopSelect</a>). </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::vector&lt; <a class="el" href="unity.scopes.OnlineAccountClient.ServiceStatus.md">OnlineAccountClient::ServiceStatus</a> &gt; unity::scopes::OnlineAccountClient::get_service_statuses </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Get statuses for all services matching the name, type and provider specified on construction. </p>
<dl class="section return"><dt>Returns</dt><dd>A list of service statuses. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::OnlineAccountClient::refresh_service_statuses </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Refresh all service statuses. </p>
<p><b>WARNING</b>: If a service update callback is set, this method will invoke that callback for each service monitored. Therefore, DO NOT call this method from within your callback function! </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::OnlineAccountClient::register_account_login_item </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Result.md">Result</a> &amp;&#160;</td>
<td class="paramname"><em>result</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;&#160;</td>
<td class="paramname"><em>query</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a>&#160;</td>
<td class="paramname"><em>login_passed_action</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a>&#160;</td>
<td class="paramname"><em>login_failed_action</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Register a result item that requires the user to be logged in. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result item that needs account access. </td></tr>
<tr><td class="paramname">query</td><td>The scope's current query. </td></tr>
<tr><td class="paramname">login_passed_action</td><td>The action to take upon successful login. </td></tr>
<tr><td class="paramname">login_failed_action</td><td>The action to take upon unsuccessful login. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::OnlineAccountClient::register_account_login_item </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.PreviewWidget.md">PreviewWidget</a> &amp;&#160;</td>
<td class="paramname"><em>widget</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a>&#160;</td>
<td class="paramname"><em>login_passed_action</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a>&#160;</td>
<td class="paramname"><em>login_failed_action</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Register a widget item that requires the user to be logged in. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">widget</td><td>The widget item that needs account access. </td></tr>
<tr><td class="paramname">login_passed_action</td><td>The action to take upon successful login. </td></tr>
<tr><td class="paramname">login_failed_action</td><td>The action to take upon unsuccessful login. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::OnlineAccountClient::set_service_update_callback </td>
<td>(</td>
<td class="paramtype"><a class="el" href="#a0c327d92e4684b5849928fa18ebfc204">ServiceUpdateCallback</a>&#160;</td>
<td class="paramname"><em>callback</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the callback function to be invoked when a service status changes. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">callback</td><td>The external callback function. </td></tr>
</table>
</dd>
</dl>
