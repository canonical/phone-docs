---
Title: unity.scopes.ChildScope
---

# unity.scopes.ChildScope

<p>A container for details about an aggregator's child scope.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ChildScope.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a53d12d33536c16052f7a086e7d71e0de"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a53d12d33536c16052f7a086e7d71e0de">ChildScope</a> (std::string const &amp;<a class="el" href="#a38d1886c0459736186d6b9be548c75f5">id</a>, <a class="el" href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> const &amp;<a class="el" href="#aade25bfd5f842dacbfc068d2ede3818e">metadata</a>, bool <a class="el" href="#aec9331d1f603d0a8eb77fafa59e1e829">enabled</a>=true, std::set&lt; std::string &gt; const &amp;<a class="el" href="#a728e308053d201dfb321f2ba49e4cdc8">keywords</a>={})</td></tr>
<tr class="memdesc:a53d12d33536c16052f7a086e7d71e0de"><td class="mdescLeft">&#160;</td><td class="mdescRight">Construct a new ChildScope with the specified id, metadata, enabled state and keywords list.  More...<br /></td></tr>
<tr class="separator:a53d12d33536c16052f7a086e7d71e0de"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Attributes</h2></td></tr>
<tr class="memitem:a38d1886c0459736186d6b9be548c75f5"><td class="memItemLeft" align="right" valign="top">
std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a38d1886c0459736186d6b9be548c75f5">id</a></td></tr>
<tr class="memdesc:a38d1886c0459736186d6b9be548c75f5"><td class="mdescLeft">&#160;</td><td class="mdescRight">The scope id of this child scope. <br /></td></tr>
<tr class="separator:a38d1886c0459736186d6b9be548c75f5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aade25bfd5f842dacbfc068d2ede3818e"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aade25bfd5f842dacbfc068d2ede3818e">metadata</a></td></tr>
<tr class="memdesc:aade25bfd5f842dacbfc068d2ede3818e"><td class="mdescLeft">&#160;</td><td class="mdescRight">The scope metadata of this child scope. <br /></td></tr>
<tr class="separator:aade25bfd5f842dacbfc068d2ede3818e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aec9331d1f603d0a8eb77fafa59e1e829"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aec9331d1f603d0a8eb77fafa59e1e829">enabled</a></td></tr>
<tr class="memdesc:aec9331d1f603d0a8eb77fafa59e1e829"><td class="mdescLeft">&#160;</td><td class="mdescRight">Whether this child scope should be aggregated. <br /></td></tr>
<tr class="separator:aec9331d1f603d0a8eb77fafa59e1e829"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a728e308053d201dfb321f2ba49e4cdc8"><td class="memItemLeft" align="right" valign="top">
std::set&lt; std::string &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a728e308053d201dfb321f2ba49e4cdc8">keywords</a></td></tr>
<tr class="memdesc:a728e308053d201dfb321f2ba49e4cdc8"><td class="mdescLeft">&#160;</td><td class="mdescRight">The list of keywords used to aggregate this scope (if any). <br /></td></tr>
<tr class="separator:a728e308053d201dfb321f2ba49e4cdc8"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A container for details about an aggregator's child scope. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::ChildScope::ChildScope </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">bool&#160;</td>
<td class="paramname"><em>enabled</em> = <code>true</code>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::set&lt; std::string &gt; const &amp;&#160;</td>
<td class="paramname"><em>keywords</em> = <code>{}</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Construct a new <a class="el" href="index.html" title="A container for details about an aggregator&#39;s child scope. ">ChildScope</a> with the specified id, metadata, enabled state and keywords list. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>The scope id of this child scope. </td></tr>
<tr><td class="paramname">metadata</td><td>The scope metadata of this child scope. </td></tr>
<tr><td class="paramname">enabled</td><td>Whether this child scope should be aggregated. </td></tr>
<tr><td class="paramname">keywords</td><td>The list of keywords used to aggregate this scope (if any). </td></tr>
</table>
</dd>
</dl>
