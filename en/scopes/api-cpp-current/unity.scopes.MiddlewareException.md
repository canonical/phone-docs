---
Title: unity.scopes.MiddlewareException
---

# unity.scopes.MiddlewareException

<p>Exception to indicate that something went wrong with the middleware layer.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ScopeExceptions.h&gt;</code></p>
Inheritance diagram for unity::scopes::MiddlewareException:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/0a72fac7-d267-4a7e-867c-bdb8c0d8f92f-../unity.scopes.MiddlewareException/classunity_1_1scopes_1_1_middleware_exception__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1_middleware_exception_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1_middleware_exception_inherit__map" id="unity_1_1scopes_1_1_middleware_exception_inherit__map">
<area shape="rect" id="node3" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_object_not_exist_exception.html" title="Exception to indicate that a (twoway) request was sent to an object with an unknown identity..." alt="" coords="5,169,183,211"/><area shape="rect" id="node4" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_timeout_exception.html" title="Exception to indicate that a twoway request timed out. " alt="" coords="207,177,434,203"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:af6250d2e529d103d30d3ebf06689c146"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af6250d2e529d103d30d3ebf06689c146">MiddlewareException</a> (std::string const &amp;reason)</td></tr>
<tr class="memdesc:af6250d2e529d103d30d3ebf06689c146"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructs the exception.  More...<br /></td></tr>
<tr class="separator:af6250d2e529d103d30d3ebf06689c146"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5317c0215a98eb896d1d706450d2919e"><td class="memItemLeft" align="right" valign="top">virtual std::exception_ptr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5317c0215a98eb896d1d706450d2919e">self</a> () const override</td></tr>
<tr class="memdesc:a5317c0215a98eb896d1d706450d2919e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a <code>std::exception_ptr</code> to <code>this</code>.  More...<br /></td></tr>
<tr class="separator:a5317c0215a98eb896d1d706450d2919e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy constructor and assignment operator have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a9c78308b3ff5b4e814ce13be2a693644"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>MiddlewareException</b> (<a class="el" href="index.html">MiddlewareException</a> const &amp;)</td></tr>
<tr class="separator:a9c78308b3ff5b4e814ce13be2a693644"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9d8dd9a32e0c45d36ec2d9513475f425"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">MiddlewareException</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">MiddlewareException</a> const &amp;)</td></tr>
<tr class="separator:a9d8dd9a32e0c45d36ec2d9513475f425"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Exception to indicate that something went wrong with the middleware layer. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">unity::scopes::MiddlewareException::MiddlewareException </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>reason</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">explicit</span></span>  </td>
</tr>
</table>
<p>Constructs the exception. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">reason</td><td>Further details about the cause of the exception. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">exception_ptr unity::scopes::MiddlewareException::self </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Returns a <code>std::exception_ptr</code> to <code>this</code>. </p>
<dl class="section return"><dt>Returns</dt><dd><code>std::exception_ptr</code> to <code>this</code>. </dd></dl>
<p>Reimplemented in <a class="el" href="unity.scopes.TimeoutException.md#a5b6ef04ea037bacfe594028306482720">unity::scopes::TimeoutException</a>, and <a class="el" href="unity.scopes.ObjectNotExistException.md#af87f8d39791b7efb52cbba9dd0e4da25">unity::scopes::ObjectNotExistException</a>.</p>
