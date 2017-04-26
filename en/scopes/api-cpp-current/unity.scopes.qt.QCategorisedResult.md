---
Title: unity.scopes.qt.QCategorisedResult
---

# unity.scopes.qt.QCategorisedResult

<p>A result, including the category it belongs to.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QCategorisedResult.h&gt;</code></p>
Inheritance diagram for unity::scopes::qt::QCategorisedResult:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/bf5ffbe2-46cd-43ec-a8fc-cda23add73f4-../unity.scopes.qt.QCategorisedResult/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:aaa0d31b18c65dff255c13ff014d11b7d"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aaa0d31b18c65dff255c13ff014d11b7d">QCategorisedResult</a> (QCategory::SCPtr <a class="el" href="#a8516116413e83bdedb978c71f803f118">category</a>)</td></tr>
<tr class="memdesc:aaa0d31b18c65dff255c13ff014d11b7d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a CategorisedResult with given category, with all base attributes initially empty.  More...<br /></td></tr>
<tr class="separator:aaa0d31b18c65dff255c13ff014d11b7d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab24057bbd0ee446a40cb0b9d38ef696d"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab24057bbd0ee446a40cb0b9d38ef696d">set_category</a> (QCategory::SCPtr <a class="el" href="#a8516116413e83bdedb978c71f803f118">category</a>)</td></tr>
<tr class="memdesc:ab24057bbd0ee446a40cb0b9d38ef696d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Updates the category of this result.  More...<br /></td></tr>
<tr class="separator:ab24057bbd0ee446a40cb0b9d38ef696d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8516116413e83bdedb978c71f803f118"><td class="memItemLeft" align="right" valign="top">QCategory::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8516116413e83bdedb978c71f803f118">category</a> () const </td></tr>
<tr class="memdesc:a8516116413e83bdedb978c71f803f118"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return category of this result. Get the category instance this result belongs to.  More...<br /></td></tr>
<tr class="separator:a8516116413e83bdedb978c71f803f118"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:ac8c504146075ca58456a764c44148030"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QCategorisedResult</b> (<a class="el" href="index.html">QCategorisedResult</a> const &amp;other)</td></tr>
<tr class="separator:ac8c504146075ca58456a764c44148030"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a019bd977edc3d4637bc96c0a9c3f9a2e"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QCategorisedResult</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QCategorisedResult</a> const &amp;other)</td></tr>
<tr class="separator:a019bd977edc3d4637bc96c0a9c3f9a2e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a79ea25955a6054a8516b08ada5a93160"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QCategorisedResult</b> (<a class="el" href="index.html">QCategorisedResult</a> &amp;&amp;)</td></tr>
<tr class="separator:a79ea25955a6054a8516b08ada5a93160"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a27a508103a641b362cd7738cebcf230e"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QCategorisedResult</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QCategorisedResult</a> &amp;&amp;)</td></tr>
<tr class="separator:a27a508103a641b362cd7738cebcf230e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/c6c349ee-6e85-44be-855b-9062eb932f9f-../unity.scopes.qt.QCategorisedResult/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.qt.QResult.md">unity::scopes::qt::QResult</a></td></tr>
<tr class="memitem:ad1bc050f67237c601821cc5836c76b94 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#ad1bc050f67237c601821cc5836c76b94">~QResult</a> ()</td></tr>
<tr class="separator:ad1bc050f67237c601821cc5836c76b94 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a56592ac2bbf7a752f9aa99ea26226cee inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a56592ac2bbf7a752f9aa99ea26226cee">store</a> (<a class="el" href="unity.scopes.qt.QResult.md">QResult</a> const &amp;other, bool intercept_activation=false)</td></tr>
<tr class="memdesc:a56592ac2bbf7a752f9aa99ea26226cee inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Stores a Result inside this Result instance.  More...<br /></td></tr>
<tr class="separator:a56592ac2bbf7a752f9aa99ea26226cee inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:affcb80d29930b57d8dc6aa268820d451 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#affcb80d29930b57d8dc6aa268820d451">has_stored_result</a> () const </td></tr>
<tr class="memdesc:affcb80d29930b57d8dc6aa268820d451 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this Result instance has a stored result.  More...<br /></td></tr>
<tr class="separator:affcb80d29930b57d8dc6aa268820d451 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3827c6b06d202ca6079f08b666f2c0ea inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.qt.QResult.md">QResult</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a3827c6b06d202ca6079f08b666f2c0ea">retrieve</a> () const </td></tr>
<tr class="memdesc:a3827c6b06d202ca6079f08b666f2c0ea inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get a stored result.  More...<br /></td></tr>
<tr class="separator:a3827c6b06d202ca6079f08b666f2c0ea inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1aa2ae9082f1e6507d18dc650f4d6d9d inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a1aa2ae9082f1e6507d18dc650f4d6d9d">set_uri</a> (QString const &amp;<a class="el" href="unity.scopes.qt.QResult.md#a253c1f08aae4338a3f89e192538e99f8">uri</a>)</td></tr>
<tr class="memdesc:a1aa2ae9082f1e6507d18dc650f4d6d9d inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "uri" attribute of this result. <br /></td></tr>
<tr class="separator:a1aa2ae9082f1e6507d18dc650f4d6d9d inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f3defe1265de15c763a591b0da87cf0 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a1f3defe1265de15c763a591b0da87cf0">set_title</a> (QString const &amp;<a class="el" href="unity.scopes.qt.QResult.md#aafcb8c20516636cadb4be0e285ab20f6">title</a>)</td></tr>
<tr class="memdesc:a1f3defe1265de15c763a591b0da87cf0 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "title" attribute of this result.  More...<br /></td></tr>
<tr class="separator:a1f3defe1265de15c763a591b0da87cf0 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f4f912a02b84f077bc85879a72a90be inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a1f4f912a02b84f077bc85879a72a90be">set_art</a> (QString const &amp;image)</td></tr>
<tr class="memdesc:a1f4f912a02b84f077bc85879a72a90be inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "art" attribute of this result.  More...<br /></td></tr>
<tr class="separator:a1f4f912a02b84f077bc85879a72a90be inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa091842db377921d6b0dd388f823a245 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#aa091842db377921d6b0dd388f823a245">set_dnd_uri</a> (QString const &amp;<a class="el" href="unity.scopes.qt.QResult.md#a3da993e25ee4a714fc5feedb29892d05">dnd_uri</a>)</td></tr>
<tr class="memdesc:aa091842db377921d6b0dd388f823a245 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "dnd_uri" attribute of this result.  More...<br /></td></tr>
<tr class="separator:aa091842db377921d6b0dd388f823a245 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a92fcf6ff2271c442c5190dab63ec4042 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a92fcf6ff2271c442c5190dab63ec4042">set_intercept_activation</a> ()</td></tr>
<tr class="memdesc:a92fcf6ff2271c442c5190dab63ec4042 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates to the receiver that this scope should intercept activation requests for this result.  More...<br /></td></tr>
<tr class="separator:a92fcf6ff2271c442c5190dab63ec4042 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa905c2b7854efd8d8031cb80044ccb9f inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#aa905c2b7854efd8d8031cb80044ccb9f">direct_activation</a> () const </td></tr>
<tr class="memdesc:aa905c2b7854efd8d8031cb80044ccb9f inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result.  More...<br /></td></tr>
<tr class="separator:aa905c2b7854efd8d8031cb80044ccb9f inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a273100ac7b782044294250f939e3dba0 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a273100ac7b782044294250f939e3dba0">target_scope_proxy</a> () const </td></tr>
<tr class="memdesc:a273100ac7b782044294250f939e3dba0 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the proxy of a scope that handles activation and preview of this result.  More...<br /></td></tr>
<tr class="separator:a273100ac7b782044294250f939e3dba0 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3b939c0d073ad78286e3cb8b8525ba2a inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">QVariant &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a3b939c0d073ad78286e3cb8b8525ba2a">operator[]</a> (QString const &amp;key)</td></tr>
<tr class="memdesc:a3b939c0d073ad78286e3cb8b8525ba2a inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns reference of a Result attribute.  More...<br /></td></tr>
<tr class="separator:a3b939c0d073ad78286e3cb8b8525ba2a inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a205f7595cf44c96b610cc7813b126db2 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">QVariant const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a205f7595cf44c96b610cc7813b126db2">operator[]</a> (QString const &amp;key) const </td></tr>
<tr class="memdesc:a205f7595cf44c96b610cc7813b126db2 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a const reference to a Result attribute.  More...<br /></td></tr>
<tr class="separator:a205f7595cf44c96b610cc7813b126db2 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a253c1f08aae4338a3f89e192538e99f8 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a253c1f08aae4338a3f89e192538e99f8">uri</a> () const noexcept</td></tr>
<tr class="memdesc:a253c1f08aae4338a3f89e192538e99f8 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "uri" property of this Result.  More...<br /></td></tr>
<tr class="separator:a253c1f08aae4338a3f89e192538e99f8 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aafcb8c20516636cadb4be0e285ab20f6 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#aafcb8c20516636cadb4be0e285ab20f6">title</a> () const noexcept</td></tr>
<tr class="memdesc:aafcb8c20516636cadb4be0e285ab20f6 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "title" property of this Result.  More...<br /></td></tr>
<tr class="separator:aafcb8c20516636cadb4be0e285ab20f6 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ada4ef189c8a95ceb96bcf777dc312b24 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#ada4ef189c8a95ceb96bcf777dc312b24">art</a> () const noexcept</td></tr>
<tr class="memdesc:ada4ef189c8a95ceb96bcf777dc312b24 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "art" property of this Result.  More...<br /></td></tr>
<tr class="separator:ada4ef189c8a95ceb96bcf777dc312b24 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3da993e25ee4a714fc5feedb29892d05 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a3da993e25ee4a714fc5feedb29892d05">dnd_uri</a> () const noexcept</td></tr>
<tr class="memdesc:a3da993e25ee4a714fc5feedb29892d05 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "dnd_uri" property of this Result.  More...<br /></td></tr>
<tr class="separator:a3da993e25ee4a714fc5feedb29892d05 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adde088969220153fde8dca7a4c4d117a inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#adde088969220153fde8dca7a4c4d117a">contains</a> (QString const &amp;key) const </td></tr>
<tr class="memdesc:adde088969220153fde8dca7a4c4d117a inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this Result has an attribute.  More...<br /></td></tr>
<tr class="separator:adde088969220153fde8dca7a4c4d117a inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7ed3240ad58f23d88e9de63e15062598 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">QVariant const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a7ed3240ad58f23d88e9de63e15062598">value</a> (QString const &amp;key) const </td></tr>
<tr class="memdesc:a7ed3240ad58f23d88e9de63e15062598 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the value of an attribute.  More...<br /></td></tr>
<tr class="separator:a7ed3240ad58f23d88e9de63e15062598 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9188d2a2e431c71d85b142539f654e44 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">QVariantMap&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.qt.QResult.md#a9188d2a2e431c71d85b142539f654e44">serialize</a> () const </td></tr>
<tr class="memdesc:a9188d2a2e431c71d85b142539f654e44 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a dictionary of all attributes of this Result instance.  More...<br /></td></tr>
<tr class="separator:a9188d2a2e431c71d85b142539f654e44 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3842831df719702fef51c9d82c010f5d inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QResult</b> (<a class="el" href="unity.scopes.qt.QResult.md">QResult</a> const &amp;other)</td></tr>
<tr class="separator:a3842831df719702fef51c9d82c010f5d inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad7bc9ad81a8c518970e7b5a6534b408a inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QResult</b> (<a class="el" href="unity.scopes.qt.QResult.md">QResult</a> &amp;&amp;)</td></tr>
<tr class="separator:ad7bc9ad81a8c518970e7b5a6534b408a inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9a2a982ce76d99dbc2b45ec82f6c399c inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.qt.QResult.md">QResult</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="unity.scopes.qt.QResult.md">QResult</a> const &amp;other)</td></tr>
<tr class="separator:a9a2a982ce76d99dbc2b45ec82f6c399c inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3dc063c82c63669214a207ac3411fc07 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.qt.QResult.md">QResult</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="unity.scopes.qt.QResult.md">QResult</a> &amp;&amp;)</td></tr>
<tr class="separator:a3dc063c82c63669214a207ac3411fc07 inherit pub_methods_classunity_1_1scopes_1_1qt_1_1_q_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A result, including the category it belongs to. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">unity::scopes::qt::QCategorisedResult::QCategorisedResult </td>
<td>(</td>
<td class="paramtype">QCategory::SCPtr&#160;</td>
<td class="paramname"><em>category</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">explicit</span></span>  </td>
</tr>
</table>
<p>Creates a <a class="el" href="unity.scopes.CategorisedResult.md" title="A result, including the category it belongs to. ">CategorisedResult</a> with given category, with all base attributes initially empty. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">category</td><td>The category for the result. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">QCategory::SCPtr unity::scopes::qt::QCategorisedResult::category </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return category of this result. Get the category instance this result belongs to. </p>
<dl class="section return"><dt>Returns</dt><dd>The category instance. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::qt::QCategorisedResult::set_category </td>
<td>(</td>
<td class="paramtype">QCategory::SCPtr&#160;</td>
<td class="paramname"><em>category</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Updates the category of this result. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">category</td><td>The category for the result. </td></tr>
</table>
</dd>
</dl>
