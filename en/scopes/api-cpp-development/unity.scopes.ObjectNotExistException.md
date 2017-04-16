---
Title: unity.scopes.ObjectNotExistException
---

# unity.scopes.ObjectNotExistException

<p>Exception to indicate that a (twoway) request was sent to an object with an unknown identity.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ScopeExceptions.h&gt;</code></p>
Inheritance diagram for unity::scopes::ObjectNotExistException:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/0d95d266-eecd-459f-82dd-278db38bee46-../unity.scopes.ObjectNotExistException/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1_object_not_exist_exception_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1_object_not_exist_exception_inherit__map" id="unity_1_1scopes_1_1_object_not_exist_exception_inherit__map">
<area shape="rect" id="node2" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_middleware_exception.html" title="Exception to indicate that something went wrong with the middleware layer. " alt="" coords="5,80,189,121"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a31beda1f8f1a97154618e97f4ab8e34f"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a31beda1f8f1a97154618e97f4ab8e34f">ObjectNotExistException</a> (std::string const &amp;reason, std::string const &amp;<a class="el" href="#a63a7640944e3799f065379800715580e">id</a>)</td></tr>
<tr class="memdesc:a31beda1f8f1a97154618e97f4ab8e34f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructs the exception.  More...<br /></td></tr>
<tr class="separator:a31beda1f8f1a97154618e97f4ab8e34f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af87f8d39791b7efb52cbba9dd0e4da25"><td class="memItemLeft" align="right" valign="top">virtual std::exception_ptr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af87f8d39791b7efb52cbba9dd0e4da25">self</a> () const override</td></tr>
<tr class="memdesc:af87f8d39791b7efb52cbba9dd0e4da25"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a <code>std::exception_ptr</code> to <code>this</code>.  More...<br /></td></tr>
<tr class="separator:af87f8d39791b7efb52cbba9dd0e4da25"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a63a7640944e3799f065379800715580e"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a63a7640944e3799f065379800715580e">id</a> () const </td></tr>
<tr class="memdesc:a63a7640944e3799f065379800715580e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the identity of the non-existent object.  More...<br /></td></tr>
<tr class="separator:a63a7640944e3799f065379800715580e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy constructor and assignment operator have the usual value semantics. </p>
</td></tr>
<tr class="memitem:af0ca8654d511d068a4953b1fbcd620c5"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ObjectNotExistException</b> (<a class="el" href="index.html">ObjectNotExistException</a> const &amp;)</td></tr>
<tr class="separator:af0ca8654d511d068a4953b1fbcd620c5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6c15b6adc374c4c4e48116920dd3d571"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ObjectNotExistException</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ObjectNotExistException</a> const &amp;)</td></tr>
<tr class="separator:a6c15b6adc374c4c4e48116920dd3d571"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_middleware_exception"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_middleware_exception')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/ded1e895-1eb6-4a04-84ce-d02bab7fcc3c-../unity.scopes.ObjectNotExistException/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.MiddlewareException.md">unity::scopes::MiddlewareException</a></td></tr>
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
<p>Exception to indicate that a (twoway) request was sent to an object with an unknown identity. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">unity::scopes::ObjectNotExistException::ObjectNotExistException </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>reason</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
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
<tr><td class="paramname">id</td><td>The identity of the unknown object. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">string unity::scopes::ObjectNotExistException::id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Returns the identity of the non-existent object. </p>
<dl class="section return"><dt>Returns</dt><dd>The identity of the non-existent object. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">exception_ptr unity::scopes::ObjectNotExistException::self </td>
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
