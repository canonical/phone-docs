---
Title: unity.scopes.qt.QResult
---

# unity.scopes.qt.QResult

<p>The attributes of a result returned by a <a class="el" href="unity.scopes.Scope.md" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QResult.h&gt;</code></p>
Inheritance diagram for unity::scopes::qt::QResult:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/a3a063db-564a-42c6-8f53-23ffb5b2fb12-../unity.scopes.qt.QResult/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ad1bc050f67237c601821cc5836c76b94"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad1bc050f67237c601821cc5836c76b94">~QResult</a> ()</td></tr>
<tr class="separator:ad1bc050f67237c601821cc5836c76b94"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a56592ac2bbf7a752f9aa99ea26226cee"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a56592ac2bbf7a752f9aa99ea26226cee">store</a> (<a class="el" href="index.html">QResult</a> const &amp;other, bool intercept_activation=false)</td></tr>
<tr class="memdesc:a56592ac2bbf7a752f9aa99ea26226cee"><td class="mdescLeft">&#160;</td><td class="mdescRight">Stores a Result inside this Result instance.  More...<br /></td></tr>
<tr class="separator:a56592ac2bbf7a752f9aa99ea26226cee"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:affcb80d29930b57d8dc6aa268820d451"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#affcb80d29930b57d8dc6aa268820d451">has_stored_result</a> () const </td></tr>
<tr class="memdesc:affcb80d29930b57d8dc6aa268820d451"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this Result instance has a stored result.  More...<br /></td></tr>
<tr class="separator:affcb80d29930b57d8dc6aa268820d451"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3827c6b06d202ca6079f08b666f2c0ea"><td class="memItemLeft" align="right" valign="top"><a class="el" href="index.html">QResult</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3827c6b06d202ca6079f08b666f2c0ea">retrieve</a> () const </td></tr>
<tr class="memdesc:a3827c6b06d202ca6079f08b666f2c0ea"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get a stored result.  More...<br /></td></tr>
<tr class="separator:a3827c6b06d202ca6079f08b666f2c0ea"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1aa2ae9082f1e6507d18dc650f4d6d9d"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1aa2ae9082f1e6507d18dc650f4d6d9d">set_uri</a> (QString const &amp;<a class="el" href="#a253c1f08aae4338a3f89e192538e99f8">uri</a>)</td></tr>
<tr class="memdesc:a1aa2ae9082f1e6507d18dc650f4d6d9d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "uri" attribute of this result. <br /></td></tr>
<tr class="separator:a1aa2ae9082f1e6507d18dc650f4d6d9d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f3defe1265de15c763a591b0da87cf0"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1f3defe1265de15c763a591b0da87cf0">set_title</a> (QString const &amp;<a class="el" href="#aafcb8c20516636cadb4be0e285ab20f6">title</a>)</td></tr>
<tr class="memdesc:a1f3defe1265de15c763a591b0da87cf0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "title" attribute of this result.  More...<br /></td></tr>
<tr class="separator:a1f3defe1265de15c763a591b0da87cf0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f4f912a02b84f077bc85879a72a90be"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1f4f912a02b84f077bc85879a72a90be">set_art</a> (QString const &amp;image)</td></tr>
<tr class="memdesc:a1f4f912a02b84f077bc85879a72a90be"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "art" attribute of this result.  More...<br /></td></tr>
<tr class="separator:a1f4f912a02b84f077bc85879a72a90be"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa091842db377921d6b0dd388f823a245"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa091842db377921d6b0dd388f823a245">set_dnd_uri</a> (QString const &amp;<a class="el" href="#a3da993e25ee4a714fc5feedb29892d05">dnd_uri</a>)</td></tr>
<tr class="memdesc:aa091842db377921d6b0dd388f823a245"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "dnd_uri" attribute of this result.  More...<br /></td></tr>
<tr class="separator:aa091842db377921d6b0dd388f823a245"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a92fcf6ff2271c442c5190dab63ec4042"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a92fcf6ff2271c442c5190dab63ec4042">set_intercept_activation</a> ()</td></tr>
<tr class="memdesc:a92fcf6ff2271c442c5190dab63ec4042"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates to the receiver that this scope should intercept activation requests for this result.  More...<br /></td></tr>
<tr class="separator:a92fcf6ff2271c442c5190dab63ec4042"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa905c2b7854efd8d8031cb80044ccb9f"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa905c2b7854efd8d8031cb80044ccb9f">direct_activation</a> () const </td></tr>
<tr class="memdesc:aa905c2b7854efd8d8031cb80044ccb9f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result.  More...<br /></td></tr>
<tr class="separator:aa905c2b7854efd8d8031cb80044ccb9f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a273100ac7b782044294250f939e3dba0"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a273100ac7b782044294250f939e3dba0">target_scope_proxy</a> () const </td></tr>
<tr class="memdesc:a273100ac7b782044294250f939e3dba0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the proxy of a scope that handles activation and preview of this result.  More...<br /></td></tr>
<tr class="separator:a273100ac7b782044294250f939e3dba0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3b939c0d073ad78286e3cb8b8525ba2a"><td class="memItemLeft" align="right" valign="top">QVariant &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3b939c0d073ad78286e3cb8b8525ba2a">operator[]</a> (QString const &amp;key)</td></tr>
<tr class="memdesc:a3b939c0d073ad78286e3cb8b8525ba2a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns reference of a Result attribute.  More...<br /></td></tr>
<tr class="separator:a3b939c0d073ad78286e3cb8b8525ba2a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a205f7595cf44c96b610cc7813b126db2"><td class="memItemLeft" align="right" valign="top">QVariant const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a205f7595cf44c96b610cc7813b126db2">operator[]</a> (QString const &amp;key) const </td></tr>
<tr class="memdesc:a205f7595cf44c96b610cc7813b126db2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a const reference to a Result attribute.  More...<br /></td></tr>
<tr class="separator:a205f7595cf44c96b610cc7813b126db2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a253c1f08aae4338a3f89e192538e99f8"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a253c1f08aae4338a3f89e192538e99f8">uri</a> () const noexcept</td></tr>
<tr class="memdesc:a253c1f08aae4338a3f89e192538e99f8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "uri" property of this Result.  More...<br /></td></tr>
<tr class="separator:a253c1f08aae4338a3f89e192538e99f8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aafcb8c20516636cadb4be0e285ab20f6"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aafcb8c20516636cadb4be0e285ab20f6">title</a> () const noexcept</td></tr>
<tr class="memdesc:aafcb8c20516636cadb4be0e285ab20f6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "title" property of this Result.  More...<br /></td></tr>
<tr class="separator:aafcb8c20516636cadb4be0e285ab20f6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ada4ef189c8a95ceb96bcf777dc312b24"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ada4ef189c8a95ceb96bcf777dc312b24">art</a> () const noexcept</td></tr>
<tr class="memdesc:ada4ef189c8a95ceb96bcf777dc312b24"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "art" property of this Result.  More...<br /></td></tr>
<tr class="separator:ada4ef189c8a95ceb96bcf777dc312b24"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3da993e25ee4a714fc5feedb29892d05"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3da993e25ee4a714fc5feedb29892d05">dnd_uri</a> () const noexcept</td></tr>
<tr class="memdesc:a3da993e25ee4a714fc5feedb29892d05"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "dnd_uri" property of this Result.  More...<br /></td></tr>
<tr class="separator:a3da993e25ee4a714fc5feedb29892d05"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adde088969220153fde8dca7a4c4d117a"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adde088969220153fde8dca7a4c4d117a">contains</a> (QString const &amp;key) const </td></tr>
<tr class="memdesc:adde088969220153fde8dca7a4c4d117a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this Result has an attribute.  More...<br /></td></tr>
<tr class="separator:adde088969220153fde8dca7a4c4d117a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7ed3240ad58f23d88e9de63e15062598"><td class="memItemLeft" align="right" valign="top">QVariant const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7ed3240ad58f23d88e9de63e15062598">value</a> (QString const &amp;key) const </td></tr>
<tr class="memdesc:a7ed3240ad58f23d88e9de63e15062598"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the value of an attribute.  More...<br /></td></tr>
<tr class="separator:a7ed3240ad58f23d88e9de63e15062598"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9188d2a2e431c71d85b142539f654e44"><td class="memItemLeft" align="right" valign="top">QVariantMap&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9188d2a2e431c71d85b142539f654e44">serialize</a> () const </td></tr>
<tr class="memdesc:a9188d2a2e431c71d85b142539f654e44"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a dictionary of all attributes of this Result instance.  More...<br /></td></tr>
<tr class="separator:a9188d2a2e431c71d85b142539f654e44"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a3842831df719702fef51c9d82c010f5d"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QResult</b> (<a class="el" href="index.html">QResult</a> const &amp;other)</td></tr>
<tr class="separator:a3842831df719702fef51c9d82c010f5d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad7bc9ad81a8c518970e7b5a6534b408a"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QResult</b> (<a class="el" href="index.html">QResult</a> &amp;&amp;)</td></tr>
<tr class="separator:ad7bc9ad81a8c518970e7b5a6534b408a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9a2a982ce76d99dbc2b45ec82f6c399c"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QResult</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QResult</a> const &amp;other)</td></tr>
<tr class="separator:a9a2a982ce76d99dbc2b45ec82f6c399c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3dc063c82c63669214a207ac3411fc07"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QResult</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QResult</a> &amp;&amp;)</td></tr>
<tr class="separator:a3dc063c82c63669214a207ac3411fc07"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The attributes of a result returned by a <a class="el" href="unity.scopes.Scope.md" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>. </p>
<p>The <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> API provides convenience methods for some typical attributes (title, art), but scopes are free to add and use any custom attributes with <code>operator[]</code>. The only required attribute is 'uri' and it must not be empty before calling Reply::push(). </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual unity::scopes::qt::QResult::~QResult </td>
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
<p>Destructor. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">QString unity::scopes::qt::QResult::art </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the "art" property of this <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a>. </p>
<p>This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator[]). </p><dl class="section return"><dt>Returns</dt><dd>The value of "art" or the empty string. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::qt::QResult::contains </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> has an attribute. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The attribute name. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>True if the attribute is set. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::qt::QResult::direct_activation </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result. </p>
<dl class="section return"><dt>Returns</dt><dd>True if this result needs to be activated directly. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">QString unity::scopes::qt::QResult::dnd_uri </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the "dnd_uri" property of this <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a>. </p>
<p>This method returns an empty string if this attribute is not of type Variant::Type::String type (e.g. it was set with operator[]). </p><dl class="section return"><dt>Returns</dt><dd>The value of "dnd_uri" or the empty string. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::qt::QResult::has_stored_result </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> instance has a stored result. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a stored result </dd></dl>
<table class="memname">
<tr>
<td class="memname">QVariant&amp; unity::scopes::qt::QResult::operator[] </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Returns reference of a <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> attribute. </p>
<p>This method can be used to read or initialize both standard ("uri", "title", "art", "dnd_uri") and custom metadata attributes. Referencing a non-existing attribute automatically creates it with a default value of Variant::Type::Null. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the attribute. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A reference to the attribute. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::Invalidargument</td><td>if no attribute with the given name exists. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">QVariant const&amp; unity::scopes::qt::QResult::operator[] </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns a const reference to a <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> attribute. </p>
<p>This method can be used for read-only access to both standard ("uri", "title", "art", "dnd_uri") and custom metadata attributes. Referencing a non-existing attribute throws unity::InvalidArgumentException. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the attribute. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A const reference to the attribute. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::Invalidargument</td><td>if no attribute with the given name exists. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="index.html">QResult</a> unity::scopes::qt::QResult::retrieve </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get a stored result. </p>
<dl class="section return"><dt>Returns</dt><dd>stored result </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>if no result was stored in this <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> instance. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">QVariantMap unity::scopes::qt::QResult::serialize </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns a dictionary of all attributes of this <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> instance. </p>
<dl class="section return"><dt>Returns</dt><dd>All base attributes and custom attributes set with add_metadata(). </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::qt::QResult::set_art </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>image</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the "art" attribute of this result. </p>
<p>Equivalent to calling <code>result["art"] = image;</code> </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::qt::QResult::set_dnd_uri </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>dnd_uri</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the "dnd_uri" attribute of this result. </p>
<p>Equivalent to calling <code>result["dnd_uri"] = dnd_uri;</code> </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::qt::QResult::set_intercept_activation </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Indicates to the receiver that this scope should intercept activation requests for this result. </p>
<p>By default, a scope receives preview requests for the results it creates, but does not receive activation requests (they are handled directly by the shell). Intercepting activation implies intercepting preview requests as well; this is important for scopes that forward results from other scopes and call <a class="el" href="#a92fcf6ff2271c442c5190dab63ec4042" title="Indicates to the receiver that this scope should intercept activation requests for this result...">set_intercept_activation()</a> on these scopes. A scope that sets intercept activation flag for a result should re-implement <a class="el" href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate()</a> and provide an implementation of <a class="el" href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> that handles the actual activation. If not called, the result will be activated directly by the Unity shell whithout involving the scope, assuming an appropriate URI schema handler is present on the system. </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::qt::QResult::set_title </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>title</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the "title" attribute of this result. </p>
<p>Equivalent to calling <code>result["title"] = title;</code> </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::qt::QResult::store </td>
<td>(</td>
<td class="paramtype"><a class="el" href="index.html">QResult</a> const &amp;&#160;</td>
<td class="paramname"><em>other</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">bool&#160;</td>
<td class="paramname"><em>intercept_activation</em> = <code>false</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Stores a <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> inside this <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> instance. </p>
<p>This method is meant to be used by aggregator scopes which want to modify results they receive, but want to keep a copy of the original result so that they can be correctly handled by the original scopes who created them when it comes to activation or previews. Scopes middleware will automatically pass the correct inner stored result to the activation or preview request handler of a scope which created it. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">other</td><td>The original result to store within this result. </td></tr>
<tr><td class="paramname">intercept_activation</td><td>True if this scope should receive activation and preview requests. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> unity::scopes::qt::QResult::target_scope_proxy </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the proxy of a scope that handles activation and preview of this result. </p>
<p>The proxy is available only when receiving this result from a scope, otherwise this method throws LogicException. Activation requests should be sent to a scope returned by this method only if <a class="el" href="#aa905c2b7854efd8d8031cb80044ccb9f" title="Check if this result should be activated directly by the shell because the scope doesn&#39;t handle activ...">direct_activation()</a> is false. </p><dl class="section return"><dt>Returns</dt><dd>The scope proxy. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">QString unity::scopes::qt::QResult::title </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the "title" property of this <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a>. </p>
<p>This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator[]). </p><dl class="section return"><dt>Returns</dt><dd>The value of "title" or the empty string. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">QString unity::scopes::qt::QResult::uri </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the "uri" property of this <a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a>. </p>
<p>This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator[]). </p><dl class="section return"><dt>Returns</dt><dd>The value of "uri" or the empty string. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QVariant const&amp; unity::scopes::qt::QResult::value </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the value of an attribute. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The attribute name. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The attribute value. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>if given attribute hasn't been set. </td></tr>
</table>
</dd>
</dl>
