---
Title: unity.scopes.NotFoundException
---

# unity.scopes.NotFoundException

<p>Exception to indicate that an object wasn't found by a lookup function.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ScopeExceptions.h&gt;</code></p>
Inheritance diagram for unity::scopes::NotFoundException:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/e2b0c844-5254-4e35-b112-488de1628428-../unity.scopes.NotFoundException/classunity_1_1scopes_1_1_not_found_exception__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:adcda23015482c9a3fd7d7890ab152b9f"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adcda23015482c9a3fd7d7890ab152b9f">NotFoundException</a> (std::string const &amp;reason, std::string const &amp;<a class="el" href="#a7a27983f2cfa8034f2dccb67a996730b">name</a>)</td></tr>
<tr class="memdesc:adcda23015482c9a3fd7d7890ab152b9f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructs the exception.  More...<br /></td></tr>
<tr class="separator:adcda23015482c9a3fd7d7890ab152b9f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a649bfe3375d8e276394a73c07908411d"><td class="memItemLeft" align="right" valign="top">virtual std::exception_ptr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a649bfe3375d8e276394a73c07908411d">self</a> () const override</td></tr>
<tr class="memdesc:a649bfe3375d8e276394a73c07908411d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a <code>std::exception_ptr</code> to <code>this</code>.  More...<br /></td></tr>
<tr class="separator:a649bfe3375d8e276394a73c07908411d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7a27983f2cfa8034f2dccb67a996730b"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7a27983f2cfa8034f2dccb67a996730b">name</a> () const </td></tr>
<tr class="memdesc:a7a27983f2cfa8034f2dccb67a996730b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the name that was passed to the constructor.  More...<br /></td></tr>
<tr class="separator:a7a27983f2cfa8034f2dccb67a996730b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy constructor and assignment operator have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a4d2e1c742216f117a0fb1cccf1f3c888"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>NotFoundException</b> (<a class="el" href="index.html">NotFoundException</a> const &amp;)</td></tr>
<tr class="separator:a4d2e1c742216f117a0fb1cccf1f3c888"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a72645a19ae6ac64dfecba4bcb0a9dcbe"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">NotFoundException</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">NotFoundException</a> const &amp;)</td></tr>
<tr class="separator:a72645a19ae6ac64dfecba4bcb0a9dcbe"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Exception to indicate that an object wasn't found by a lookup function. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">unity::scopes::NotFoundException::NotFoundException </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>reason</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>name</em>&#160;</td>
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
<tr><td class="paramname">name</td><td>The name of the object that was not found. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">string unity::scopes::NotFoundException::name </td>
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
<p>Returns the name that was passed to the constructor. </p>
<dl class="section return"><dt>Returns</dt><dd>The name that was passed to the constructor. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">exception_ptr unity::scopes::NotFoundException::self </td>
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
