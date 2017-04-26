---
Title: unity.scopes.Reply
---

# unity.scopes.Reply

<p>Allows query termination to be sent to the source of a query.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/Reply.h&gt;</code></p>
Inheritance diagram for unity::scopes::Reply:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/6791ff0a-f885-455e-8b6b-3e8ddee4f845-../unity.scopes.Reply/classunity_1_1scopes_1_1_reply__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a9ca653d5d7f7c97a781bc362f2af7749"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9ca653d5d7f7c97a781bc362f2af7749">finished</a> ()=0</td></tr>
<tr class="memdesc:a9ca653d5d7f7c97a781bc362f2af7749"><td class="mdescLeft">&#160;</td><td class="mdescRight">Informs the source of a query that the query results are complete.  More...<br /></td></tr>
<tr class="separator:a9ca653d5d7f7c97a781bc362f2af7749"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a526c9cbb11f896210835fb3420324ba8"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a526c9cbb11f896210835fb3420324ba8">error</a> (std::exception_ptr ex)=0</td></tr>
<tr class="memdesc:a526c9cbb11f896210835fb3420324ba8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Informs the source of a query that the query was terminated due to an error.  More...<br /></td></tr>
<tr class="separator:a526c9cbb11f896210835fb3420324ba8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af35cbaba152e4919306f32b06bd81029"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af35cbaba152e4919306f32b06bd81029">info</a> (<a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;op_info)=0</td></tr>
<tr class="memdesc:af35cbaba152e4919306f32b06bd81029"><td class="mdescLeft">&#160;</td><td class="mdescRight">Informs the source of a query that additional information regarding the reply is available.  More...<br /></td></tr>
<tr class="separator:af35cbaba152e4919306f32b06bd81029"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9f0cfeeee75a27e111ebd955523e1bb0"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9f0cfeeee75a27e111ebd955523e1bb0">~Reply</a> ()</td></tr>
<tr class="memdesc:a9f0cfeeee75a27e111ebd955523e1bb0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destroys a Reply.  More...<br /></td></tr>
<tr class="separator:a9f0cfeeee75a27e111ebd955523e1bb0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_object"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_object')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/d9309aca-5067-421e-ae8c-a30e87b0d6d1-../unity.scopes.Reply/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.Object.md">unity::scopes::Object</a></td></tr>
<tr class="memitem:ad7618cc9d878c40b389361d4acd473ae inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#ad7618cc9d878c40b389361d4acd473ae">endpoint</a> ()=0</td></tr>
<tr class="memdesc:ad7618cc9d878c40b389361d4acd473ae inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the endpoint this proxy connects to.  More...<br /></td></tr>
<tr class="separator:ad7618cc9d878c40b389361d4acd473ae inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1b55aea886f0a68cb8a578f7ee0b1cfd inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a1b55aea886f0a68cb8a578f7ee0b1cfd">identity</a> ()=0</td></tr>
<tr class="memdesc:a1b55aea886f0a68cb8a578f7ee0b1cfd inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the identity of the target object of this proxy.  More...<br /></td></tr>
<tr class="separator:a1b55aea886f0a68cb8a578f7ee0b1cfd inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a40a997516629df3dacca9742dbddd6cb inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a40a997516629df3dacca9742dbddd6cb">target_category</a> ()=0</td></tr>
<tr class="memdesc:a40a997516629df3dacca9742dbddd6cb inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the category of the target object of this proxy.  More...<br /></td></tr>
<tr class="separator:a40a997516629df3dacca9742dbddd6cb inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a41d9839f1e3cbcd6d8baee0736feccab inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual int64_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a41d9839f1e3cbcd6d8baee0736feccab">timeout</a> ()=0</td></tr>
<tr class="memdesc:a41d9839f1e3cbcd6d8baee0736feccab inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the timeout in milliseconds if this proxy is a twoway proxy.  More...<br /></td></tr>
<tr class="separator:a41d9839f1e3cbcd6d8baee0736feccab inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9ae27e1f30dc755abcd796a1e8a25150 inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a9ae27e1f30dc755abcd796a1e8a25150">to_string</a> ()=0</td></tr>
<tr class="memdesc:a9ae27e1f30dc755abcd796a1e8a25150 inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Converts a proxy into its string representation.  More...<br /></td></tr>
<tr class="separator:a9ae27e1f30dc755abcd796a1e8a25150 inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Allows query termination to be sent to the source of a query. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual unity::scopes::Reply::~Reply </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Destroys a <a class="el" href="index.html" title="Allows query termination to be sent to the source of a query. ">Reply</a>. </p>
<p>If a <a class="el" href="index.html" title="Allows query termination to be sent to the source of a query. ">Reply</a> goes out of scope without a prior call to <a class="el" href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>, the destructor implicitly calls <a class="el" href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>, provided QueryBase::run() has returned. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::Reply::error </td>
<td>(</td>
<td class="paramtype">std::exception_ptr&#160;</td>
<td class="paramname"><em>ex</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Informs the source of a query that the query was terminated due to an error. </p>
<p>Multiple calls to <a class="el" href="#a526c9cbb11f896210835fb3420324ba8" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> and calls to <a class="el" href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> after <a class="el" href="#a526c9cbb11f896210835fb3420324ba8" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> was called are ignored. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">ex</td><td>An exception_ptr indicating the cause of the error. If ex is a <code>std::exception</code>, the return value of <code>what()</code> is made available to the query source. Otherwise, the query source receives <code>"unknown exception"</code>. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::Reply::finished </td>
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
<p>Informs the source of a query that the query results are complete. </p>
<p>Calling <a class="el" href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> informs the source of a query that the final result for the query was sent, that is, that the query is complete. Multiple calls to <a class="el" href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> and calls to <a class="el" href="#a526c9cbb11f896210835fb3420324ba8" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> after <a class="el" href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> was called are ignored. The destructor implicitly calls <a class="el" href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> if a <a class="el" href="index.html" title="Allows query termination to be sent to the source of a query. ">Reply</a> goes out of scope without a prior call to <a class="el" href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>. Similarly, QueryBase::run() implicitly calls <a class="el" href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> when it returns, provided there are no more reply proxies in scope. In other words, calling <a class="el" href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> is optional. The scopes runtime ensures that the call happens automatically, either when the last reply proxy goes out of scope, or when QueryBase::run() returns (whichever happens last). </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::Reply::info </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;&#160;</td>
<td class="paramname"><em>op_info</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Informs the source of a query that additional information regarding the reply is available. </p>
<p>Calling <a class="el" href="#af35cbaba152e4919306f32b06bd81029" title="Informs the source of a query that additional information regarding the reply is available. ">info()</a> does not terminate the query, it simply informs the source that something interesting occured during execution of the query (usually affecting the results returned in some way).</p>
<p>Multiple calls to <a class="el" href="#af35cbaba152e4919306f32b06bd81029" title="Informs the source of a query that additional information regarding the reply is available. ">info()</a> for each condition are legal. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">op_info</td><td>Contains all details of the information being reported. </td></tr>
</table>
</dd>
</dl>
