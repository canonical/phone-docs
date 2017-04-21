---
Title: unity.scopes.Object
---

# unity.scopes.Object

<p>The root base class for all proxies.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/Object.h&gt;</code></p>
Inheritance diagram for unity::scopes::Object:
<img src="../../../../media/classunity_1_1scopes_1_1_object__inherit__graph.png" border="0" alt="Inheritance graph"/>

<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ad7618cc9d878c40b389361d4acd473ae"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad7618cc9d878c40b389361d4acd473ae">endpoint</a> ()=0</td></tr>
<tr class="memdesc:ad7618cc9d878c40b389361d4acd473ae"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the endpoint this proxy connects to.  More...<br /></td></tr>
<tr class="separator:ad7618cc9d878c40b389361d4acd473ae"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1b55aea886f0a68cb8a578f7ee0b1cfd"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1b55aea886f0a68cb8a578f7ee0b1cfd">identity</a> ()=0</td></tr>
<tr class="memdesc:a1b55aea886f0a68cb8a578f7ee0b1cfd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the identity of the target object of this proxy.  More...<br /></td></tr>
<tr class="separator:a1b55aea886f0a68cb8a578f7ee0b1cfd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a40a997516629df3dacca9742dbddd6cb"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a40a997516629df3dacca9742dbddd6cb">target_category</a> ()=0</td></tr>
<tr class="memdesc:a40a997516629df3dacca9742dbddd6cb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the category of the target object of this proxy.  More...<br /></td></tr>
<tr class="separator:a40a997516629df3dacca9742dbddd6cb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a41d9839f1e3cbcd6d8baee0736feccab"><td class="memItemLeft" align="right" valign="top">virtual int64_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a41d9839f1e3cbcd6d8baee0736feccab">timeout</a> ()=0</td></tr>
<tr class="memdesc:a41d9839f1e3cbcd6d8baee0736feccab"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the timeout in milliseconds if this proxy is a twoway proxy.  More...<br /></td></tr>
<tr class="separator:a41d9839f1e3cbcd6d8baee0736feccab"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9ae27e1f30dc755abcd796a1e8a25150"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9ae27e1f30dc755abcd796a1e8a25150">to_string</a> ()=0</td></tr>
<tr class="memdesc:a9ae27e1f30dc755abcd796a1e8a25150"><td class="mdescLeft">&#160;</td><td class="mdescRight">Converts a proxy into its string representation.  More...<br /></td></tr>
<tr class="separator:a9ae27e1f30dc755abcd796a1e8a25150"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The root base class for all proxies. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual std::string unity::scopes::Object::endpoint </td>
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
<p>Returns the endpoint this proxy connects to. </p>
<dl class="section return"><dt>Returns</dt><dd>The endpoint of the proxy. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual std::string unity::scopes::Object::identity </td>
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
<p>Returns the identity of the target object of this proxy. </p>
<dl class="section return"><dt>Returns</dt><dd>The identity of the target of the proxy. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual std::string unity::scopes::Object::target_category </td>
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
<p>Returns the category of the target object of this proxy. </p>
<dl class="section return"><dt>Returns</dt><dd>The category of the target of the proxy. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual int64_t unity::scopes::Object::timeout </td>
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
<p>Returns the timeout in milliseconds if this proxy is a twoway proxy. </p>
<p>For oneway proxies and twoway proxies without a timeout, the return value is -1. </p><dl class="section return"><dt>Returns</dt><dd>The timeout value in milliseconds (-1 if none or timeout does not apply). </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual std::string unity::scopes::Object::to_string </td>
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
<p>Converts a proxy into its string representation. </p>
<p>A proxy string can be converted back into a proxy by calling <a class="el" href="unity.scopes.Runtime.md#a24eec46bc15975c219642fcfe8e5357f" title="Convert a string to a proxy. ">Runtime::string_to_proxy()</a>. </p><dl class="section return"><dt>Returns</dt><dd>The string representation of the proxy. </dd></dl>
