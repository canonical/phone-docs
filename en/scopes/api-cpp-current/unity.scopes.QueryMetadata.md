---
Title: unity.scopes.QueryMetadata
---

# unity.scopes.QueryMetadata

<p>Base class for extra metadata passed to scopes as a part of a request.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/QueryMetadata.h&gt;</code></p>
Inheritance diagram for unity::scopes::QueryMetadata:
<img src="../../../../media/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png" border="0" alt="Inheritance graph"/>


<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:a20eb916661728a7d9c00485e28f88701"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> { <b>Unknown</b>,
<b>Connected</b>,
<b>Disconnected</b>
}</td></tr>
<tr class="memdesc:a20eb916661728a7d9c00485e28f88701"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates the internet connectivity status.  <a href="#a20eb916661728a7d9c00485e28f88701">More...</a><br /></td></tr>
<tr class="separator:a20eb916661728a7d9c00485e28f88701"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a3ca25150669d96171aec6ab56ef6bb0e"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3ca25150669d96171aec6ab56ef6bb0e">locale</a> () const </td></tr>
<tr class="memdesc:a3ca25150669d96171aec6ab56ef6bb0e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the locale string.  More...<br /></td></tr>
<tr class="separator:a3ca25150669d96171aec6ab56ef6bb0e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a494f592f3055fba4da6554a6d8fb7c42"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a> () const </td></tr>
<tr class="memdesc:a494f592f3055fba4da6554a6d8fb7c42"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the form factor string.  More...<br /></td></tr>
<tr class="separator:a494f592f3055fba4da6554a6d8fb7c42"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5b2395aff97cbe1009759de03f270bf3"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5b2395aff97cbe1009759de03f270bf3">set_internet_connectivity</a> (<a class="el" href="#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> connectivity_status)</td></tr>
<tr class="memdesc:a5b2395aff97cbe1009759de03f270bf3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set internet connectivity status.  More...<br /></td></tr>
<tr class="separator:a5b2395aff97cbe1009759de03f270bf3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3da06f370e53b5e381ec8cf33d8ee191"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3da06f370e53b5e381ec8cf33d8ee191">internet_connectivity</a> () const </td></tr>
<tr class="memdesc:a3da06f370e53b5e381ec8cf33d8ee191"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get internet connectivity status.  More...<br /></td></tr>
<tr class="separator:a3da06f370e53b5e381ec8cf33d8ee191"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Base class for extra metadata passed to scopes as a part of a request. </p>
<h2 class="groupheader">Member Enumeration Documentation</h2>
<table class="memname">
<tr>
<td class="memname">enum <a class="el" href="#a20eb916661728a7d9c00485e28f88701">unity::scopes::QueryMetadata::ConnectivityStatus</a></td>
</tr>
</table>
<p>Indicates the internet connectivity status. </p>
<p>The <code>Unknown</code> enumerator indicates that <a class="el" href="#a5b2395aff97cbe1009759de03f270bf3" title="Set internet connectivity status. ">set_internet_connectivity()</a> has not yet been called, hence the connectivity status is currently unknown.</p>
<p>The <code>Connected</code> enumerator simply indicates that we are currently connected to the internet. This does not necessarily mean that a particular host on the internet will be reachable.</p>
<p>The <code>Disconnected</code> enumerator indicates that we are currently not connected to the internet. In this state, a scope need not waste any time attempting remote calls, as they will almost certainly fail. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::QueryMetadata::form_factor </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the form factor string. </p>
<dl class="section return"><dt>Returns</dt><dd>The form factor string </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#a20eb916661728a7d9c00485e28f88701">QueryMetadata::ConnectivityStatus</a> unity::scopes::QueryMetadata::internet_connectivity </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get internet connectivity status. </p>
<dl class="section return"><dt>Returns</dt><dd>Enum indicating the internet connectivity status. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::QueryMetadata::locale </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the locale string. </p>
<dl class="section return"><dt>Returns</dt><dd>The locale string </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::QueryMetadata::set_internet_connectivity </td>
<td>(</td>
<td class="paramtype"><a class="el" href="#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a>&#160;</td>
<td class="paramname"><em>connectivity_status</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set internet connectivity status. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">connectivity_status</td><td>Enum indicating the internet connectivity status. </td></tr>
</table>
</dd>
</dl>
