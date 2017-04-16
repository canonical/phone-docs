---
Title: unity.scopes.TimeoutException
---

# unity.scopes.TimeoutException

<p>Exception to indicate that a twoway request timed out.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ScopeExceptions.h&gt;</code></p>
Inheritance diagram for unity::scopes::TimeoutException:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/64e496d8-9f9c-476f-a82d-98f03ab7f60c-../unity.scopes.TimeoutException/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1_timeout_exception_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1_timeout_exception_inherit__map" id="unity_1_1scopes_1_1_timeout_exception_inherit__map">
<area shape="rect" id="node2" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_middleware_exception.html" title="Exception to indicate that something went wrong with the middleware layer. " alt="" coords="27,80,211,121"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a76573760d4c9c8b019675302000d4f1a"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a76573760d4c9c8b019675302000d4f1a">TimeoutException</a> (std::string const &amp;reason)</td></tr>
<tr class="memdesc:a76573760d4c9c8b019675302000d4f1a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructs the exception.  More...<br /></td></tr>
<tr class="separator:a76573760d4c9c8b019675302000d4f1a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5b6ef04ea037bacfe594028306482720"><td class="memItemLeft" align="right" valign="top">virtual std::exception_ptr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5b6ef04ea037bacfe594028306482720">self</a> () const override</td></tr>
<tr class="memdesc:a5b6ef04ea037bacfe594028306482720"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a <code>std::exception_ptr</code> to <code>this</code>.  More...<br /></td></tr>
<tr class="separator:a5b6ef04ea037bacfe594028306482720"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy constructor and assignment operator have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a7a0851c85f7a733d439e535e8e1e12f4"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>TimeoutException</b> (<a class="el" href="index.html">TimeoutException</a> const &amp;)</td></tr>
<tr class="separator:a7a0851c85f7a733d439e535e8e1e12f4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2a7114cebfffd39c5c362f6e9043ac14"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">TimeoutException</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">TimeoutException</a> const &amp;)</td></tr>
<tr class="separator:a2a7114cebfffd39c5c362f6e9043ac14"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_middleware_exception"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_middleware_exception')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/94243ee6-f7eb-4dd5-bb15-3d52ffe8faf5-../unity.scopes.TimeoutException/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.MiddlewareException.md">unity::scopes::MiddlewareException</a></td></tr>
<tr class="memitem:af6250d2e529d103d30d3ebf06689c146 inherit pub_methods_classunity_1_1scopes_1_1_middleware_exception"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.MiddlewareException.md#af6250d2e529d103d30d3ebf06689c146">MiddlewareException</a> (std::string const &amp;reason)</td></tr>
<tr class="memdesc:af6250d2e529d103d30d3ebf06689c146 inherit pub_methods_classunity_1_1scopes_1_1_middleware_exception"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructs the exception.  More...<br /></td></tr>
<tr class="separator:af6250d2e529d103d30d3ebf06689c146 inherit pub_methods_classunity_1_1scopes_1_1_middleware_exception"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9c78308b3ff5b4e814ce13be2a693644 inherit pub_methods_classunity_1_1scopes_1_1_middleware_exception"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>MiddlewareException</b> (<a class="el" href="unity.scopes.MiddlewareException.md">MiddlewareException</a> const &amp;)</td></tr>
<tr class="separator:a9c78308b3ff5b4e814ce13be2a693644 inherit pub_methods_classunity_1_1scopes_1_1_middleware_exception"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9d8dd9a32e0c45d36ec2d9513475f425 inherit pub_methods_classunity_1_1scopes_1_1_middleware_exception"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.MiddlewareException.md">MiddlewareException</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="unity.scopes.MiddlewareException.md">MiddlewareException</a> const &amp;)</td></tr>
<tr class="separator:a9d8dd9a32e0c45d36ec2d9513475f425 inherit pub_methods_classunity_1_1scopes_1_1_middleware_exception"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Exception to indicate that a twoway request timed out. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">unity::scopes::TimeoutException::TimeoutException </td>
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
<td class="memname">exception_ptr unity::scopes::TimeoutException::self </td>
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
<p>Reimplemented from <a class="el" href="unity.scopes.MiddlewareException.md#a5317c0215a98eb896d1d706450d2919e">unity::scopes::MiddlewareException</a>.</p>
