---
Title: unity.scopes.ConfigException
---

# unity.scopes.ConfigException

<p>Exception to indicate that something went wrong with the contents of configuration files.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ScopeExceptions.h&gt;</code></p>
Inheritance diagram for unity::scopes::ConfigException:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/dcaaf72a-b36a-426d-8b73-0b6e40a41ff3-../unity.scopes.ConfigException/classunity_1_1scopes_1_1_config_exception__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a5478ebe647b1aa386d17fa079f573cb3"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5478ebe647b1aa386d17fa079f573cb3">ConfigException</a> (std::string const &amp;reason)</td></tr>
<tr class="memdesc:a5478ebe647b1aa386d17fa079f573cb3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructs the exception.  More...<br /></td></tr>
<tr class="separator:a5478ebe647b1aa386d17fa079f573cb3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a413ff3265dff664dabae83f73a58c58b"><td class="memItemLeft" align="right" valign="top">virtual std::exception_ptr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a413ff3265dff664dabae83f73a58c58b">self</a> () const override</td></tr>
<tr class="memdesc:a413ff3265dff664dabae83f73a58c58b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a <code>std::exception_ptr</code> to <code>this</code>.  More...<br /></td></tr>
<tr class="separator:a413ff3265dff664dabae83f73a58c58b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy constructor and assignment operator have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a6b91c1ef63d544c7a87a16dc188ef979"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ConfigException</b> (<a class="el" href="index.html">ConfigException</a> const &amp;)</td></tr>
<tr class="separator:a6b91c1ef63d544c7a87a16dc188ef979"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2b836a2189e973a4cb517f4da3f97a7e"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ConfigException</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ConfigException</a> const &amp;)</td></tr>
<tr class="separator:a2b836a2189e973a4cb517f4da3f97a7e"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Exception to indicate that something went wrong with the contents of configuration files. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">unity::scopes::ConfigException::ConfigException </td>
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
<td class="memname">exception_ptr unity::scopes::ConfigException::self </td>
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
