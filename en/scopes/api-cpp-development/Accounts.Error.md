---
Title: Accounts.Error
---

# Accounts.Error

<p>Base object definition for accounts error handling.  
<a href="..//Accounts.Error.md#details">More...</a></p>
<p><code>#include &lt;Accounts/Error&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:ab0df38968e4f03a3f1f6d6df0f31f45a"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a> { <br />
&#160;&#160;<b>NoError</b> = 0, 
<b>Unknown</b>, 
<a class="el" href="..//Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45aa31884bb2cfbd4d8e2d428904eb1c3f98">Database</a>, 
<a class="el" href="..//Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45aa04ba35ff69a05b2a16733a01fc003d88">Deleted</a>, 
<br />
&#160;&#160;<a class="el" href="..//Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45aa155f5bb6520a1d872efe0563428315bf">DatabaseLocked</a>, 
<a class="el" href="..//Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45aab49b276755b64c7a63a391e03aebbf49">AccountNotFound</a>
<br />
}</td></tr>
<tr class="memdesc:ab0df38968e4f03a3f1f6d6df0f31f45a"><td class="mdescLeft">&#160;</td><td class="mdescRight"><a class="el" href="..//Accounts.Error.md" title="Base object definition for accounts error handling. ">Error</a> codes for all the accounts errors.  <a href="..//Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">More...</a><br /></td></tr>
<tr class="separator:ab0df38968e4f03a3f1f6d6df0f31f45a"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a17be1abe802fb9ab3acebe900748cf79"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Error.md#a17be1abe802fb9ab3acebe900748cf79">Error</a> ()</td></tr>
<tr class="memdesc:a17be1abe802fb9ab3acebe900748cf79"><td class="mdescLeft">&#160;</td><td class="mdescRight">Basic constructor. <br /></td></tr>
<tr class="separator:a17be1abe802fb9ab3acebe900748cf79"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abc095ef325fbb7c22399270e62f400ca"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Error.md#abc095ef325fbb7c22399270e62f400ca">Error</a> (const <a class="el" href="..//Accounts.Error.md">Error</a> &amp;src)</td></tr>
<tr class="memdesc:abc095ef325fbb7c22399270e62f400ca"><td class="mdescLeft">&#160;</td><td class="mdescRight">Copy constructor.  More...<br /></td></tr>
<tr class="separator:abc095ef325fbb7c22399270e62f400ca"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a43fd5cb964997186acb7f0297cefd666"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Error.md#a43fd5cb964997186acb7f0297cefd666">Error</a> (<a class="el" href="..//Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a> <a class="el" href="..//Accounts.Error.md#ac3b58ce6dc3ba4cbfbabd9d7d7774567">type</a>, const QString &amp;<a class="el" href="..//Accounts.Error.md#aba2e3009745c37baeaf086e1bc6a3b8d">message</a>=QString())</td></tr>
<tr class="memdesc:a43fd5cb964997186acb7f0297cefd666"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructor.  More...<br /></td></tr>
<tr class="separator:a43fd5cb964997186acb7f0297cefd666"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a25f9ffea919d1d0c265a93df49ee3b32"><td class="memItemLeft" align="right" valign="top"><a class="el" href="..//Accounts.Error.md">Error</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Error.md#a25f9ffea919d1d0c265a93df49ee3b32">operator=</a> (const <a class="el" href="..//Accounts.Error.md">Error</a> &amp;src)</td></tr>
<tr class="memdesc:a25f9ffea919d1d0c265a93df49ee3b32"><td class="mdescLeft">&#160;</td><td class="mdescRight">Assignment operator.  More...<br /></td></tr>
<tr class="separator:a25f9ffea919d1d0c265a93df49ee3b32"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a810251c55fc575f642cf343c4413c2b1"><td class="memItemLeft" align="right" valign="top">
virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Error.md#a810251c55fc575f642cf343c4413c2b1">~Error</a> ()</td></tr>
<tr class="memdesc:a810251c55fc575f642cf343c4413c2b1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destructor. <br /></td></tr>
<tr class="separator:a810251c55fc575f642cf343c4413c2b1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac3b58ce6dc3ba4cbfbabd9d7d7774567"><td class="memItemLeft" align="right" valign="top"><a class="el" href="..//Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Error.md#ac3b58ce6dc3ba4cbfbabd9d7d7774567">type</a> () const </td></tr>
<tr class="separator:ac3b58ce6dc3ba4cbfbabd9d7d7774567"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aba2e3009745c37baeaf086e1bc6a3b8d"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Error.md#aba2e3009745c37baeaf086e1bc6a3b8d">message</a> () const </td></tr>
<tr class="separator:aba2e3009745c37baeaf086e1bc6a3b8d"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Base object definition for accounts error handling. </p>
<p>Definition at line 42 of file error.h.</p>
<h2 class="groupheader">Member Enumeration Documentation</h2>
<table class="memname">
<tr>
<td class="memname">enum <a class="el" href="..//Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a></td>
</tr>
</table>
<p><a class="el" href="..//Accounts.Error.md" title="Base object definition for accounts error handling. ">Error</a> codes for all the accounts errors. </p>
<table class="fieldtable">
<tr><th colspan="2">Enumerator</th></tr><tr><td class="fieldname">Database&#160;</td><td class="fielddoc">
<p>Generic database error </p>
</td></tr>
<tr><td class="fieldname">Deleted&#160;</td><td class="fielddoc">
<p>The account object refers to an account which has been deleted </p>
</td></tr>
<tr><td class="fieldname">DatabaseLocked&#160;</td><td class="fielddoc">
<p>The database is locked </p>
</td></tr>
<tr><td class="fieldname">AccountNotFound&#160;</td><td class="fielddoc">
<p>The account couldn't be found </p>
</td></tr>
</table>
<p>Definition at line 48 of file error.h.</p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="..//Accounts.Error.md">Error</a> </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="..//Accounts.Error.md">Error</a> &amp;&#160;</td>
<td class="paramname"><em>src</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">inline</span></span>  </td>
</tr>
</table>
<p>Copy constructor. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">src</td><td><a class="el" href="..//Accounts.Error.md" title="Base object definition for accounts error handling. ">Error</a> object to be copied. </td></tr>
</table>
</dd>
</dl>
<p>Definition at line 67 of file error.h.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="..//Accounts.Error.md">Error</a> </td>
<td>(</td>
<td class="paramtype"><a class="el" href="..//Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a>&#160;</td>
<td class="paramname"><em>type</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>message</em> = <code>QString()</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">inline</span></span>  </td>
</tr>
</table>
<p>Constructor. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">type</td><td>The error's type. </td></tr>
<tr><td class="paramname">message</td><td>The error's message. </td></tr>
</table>
</dd>
</dl>
<p>Definition at line 75 of file error.h.</p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">QString message </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">inline</span></span>  </td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>The error's message. </dd></dl>
<p>Definition at line 99 of file error.h.</p>
<p>Referenced by Error::operator=().</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="..//Accounts.Error.md">Error</a>&amp; operator= </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="..//Accounts.Error.md">Error</a> &amp;&#160;</td>
<td class="paramname"><em>src</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">inline</span></span>  </td>
</tr>
</table>
<p>Assignment operator. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">src</td><td>The error object to be assigned to this instance. </td></tr>
</table>
</dd>
</dl>
<p>Definition at line 83 of file error.h.</p>
<p>References Error::message(), and Error::type().</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="..//Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a> type </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">inline</span></span>  </td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>The error's type. </dd></dl>
<p>Definition at line 94 of file error.h.</p>
<p>Referenced by Error::operator=().</p>
