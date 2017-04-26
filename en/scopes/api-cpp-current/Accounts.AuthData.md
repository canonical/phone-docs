---
Title: Accounts.AuthData
---

# Accounts.AuthData

<p>Information for account authentication.  
<a href="..//Accounts.AuthData.md#details">More...</a></p>
<p><code>#include &lt;Accounts/AuthData&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:aeba8fdc4a52c97afb61f49b9a4d6b9c4"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.AuthData.md#aeba8fdc4a52c97afb61f49b9a4d6b9c4">AuthData</a> (const <a class="el" href="..//Accounts.AuthData.md">AuthData</a> &amp;other)</td></tr>
<tr class="memdesc:aeba8fdc4a52c97afb61f49b9a4d6b9c4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Copy constructor.  More...<br /></td></tr>
<tr class="separator:aeba8fdc4a52c97afb61f49b9a4d6b9c4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5bbaeb60e91e492e40be40271b3f4194"><td class="memItemLeft" align="right" valign="top">
virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.AuthData.md#a5bbaeb60e91e492e40be40271b3f4194">~AuthData</a> ()</td></tr>
<tr class="memdesc:a5bbaeb60e91e492e40be40271b3f4194"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destructor. <br /></td></tr>
<tr class="separator:a5bbaeb60e91e492e40be40271b3f4194"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9fe8b6778698b1949275326717f35b02"><td class="memItemLeft" align="right" valign="top">uint&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.AuthData.md#a9fe8b6778698b1949275326717f35b02">credentialsId</a> () const </td></tr>
<tr class="separator:a9fe8b6778698b1949275326717f35b02"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a47b45cea7d4fbacc4d751adaeb1e8d79"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.AuthData.md#a47b45cea7d4fbacc4d751adaeb1e8d79">method</a> () const </td></tr>
<tr class="memdesc:a47b45cea7d4fbacc4d751adaeb1e8d79"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the authentication method which must be used when logging in with this account.  More...<br /></td></tr>
<tr class="separator:a47b45cea7d4fbacc4d751adaeb1e8d79"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aaff7a936205f9c8044c0093f6497c514"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.AuthData.md#aaff7a936205f9c8044c0093f6497c514">mechanism</a> () const </td></tr>
<tr class="memdesc:aaff7a936205f9c8044c0093f6497c514"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the authentication mechanism which must be used when logging in with this account.  More...<br /></td></tr>
<tr class="separator:aaff7a936205f9c8044c0093f6497c514"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a149775212ebd051147314d4a3bfff30d"><td class="memItemLeft" align="right" valign="top">QVariantMap&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.AuthData.md#a149775212ebd051147314d4a3bfff30d">parameters</a> () const </td></tr>
<tr class="memdesc:a149775212ebd051147314d4a3bfff30d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the dictionary of authentication parameters which must be used when logging in with this account.  More...<br /></td></tr>
<tr class="separator:a149775212ebd051147314d4a3bfff30d"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Information for account authentication. </p>
<p>The <a class="el" href="..//Accounts.AuthData.md" title="Information for account authentication. ">AuthData</a> class holds information on the authentication parameters used by an account. It is an implicitly shared object which can be created with the <a class="el" href="..//Accounts.AccountService.md#a49a9f7deccedeebacadc37ae01ac83ab" title="Read the authentication data stored in the account (merging the service-specific settings with the gl...">AccountService::authData</a> method. </p>
<p>Definition at line 49 of file auth-data.h.</p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="..//Accounts.AuthData.md">AuthData</a> </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="..//Accounts.AuthData.md">AuthData</a> &amp;&#160;</td>
<td class="paramname"><em>other</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Copy constructor. </p>
<p>Copying an <a class="el" href="..//Accounts.AuthData.md" title="Information for account authentication. ">AuthData</a> object is very cheap, because the data is shared among copies. </p>
<p>Definition at line 48 of file auth-data.cpp.</p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">uint credentialsId </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>The ID of the credentials associated with this account. </dd></dl>
<p>Definition at line 74 of file auth-data.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString mechanism </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the authentication mechanism which must be used when logging in with this account. </p>
<dl class="section return"><dt>Returns</dt><dd>The authentication mechanism. </dd></dl>
<p>Definition at line 94 of file auth-data.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString method </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the authentication method which must be used when logging in with this account. </p>
<dl class="section return"><dt>Returns</dt><dd>The authentication method. </dd></dl>
<p>Definition at line 84 of file auth-data.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QVariantMap parameters </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the dictionary of authentication parameters which must be used when logging in with this account. </p>
<dl class="section return"><dt>Returns</dt><dd>The authentication parameters. </dd></dl>
<p>Definition at line 104 of file auth-data.cpp.</p>
