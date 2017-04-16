---
Title: unity.scopes.qt.QActionMetadata
---

# unity.scopes.qt.QActionMetadata

<p>Metadata passed to scopes for preview and activation.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QActionMetadata.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:acc36c52fac186af3571cb29745d3981c"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acc36c52fac186af3571cb29745d3981c">QActionMetadata</a> (QString const &amp;locale, QString const &amp;form_factor)</td></tr>
<tr class="memdesc:acc36c52fac186af3571cb29745d3981c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create ActionMetadata with the given locale and form factor.  More...<br /></td></tr>
<tr class="separator:acc36c52fac186af3571cb29745d3981c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5913d97d109db7b2e4596bc1b3f53ed1"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5913d97d109db7b2e4596bc1b3f53ed1">set_scope_data</a> (QVariant const &amp;data)</td></tr>
<tr class="memdesc:a5913d97d109db7b2e4596bc1b3f53ed1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Attach arbitrary data to this ActionMetadata.  More...<br /></td></tr>
<tr class="separator:a5913d97d109db7b2e4596bc1b3f53ed1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae1103e2a369e300f05f8fd3dea8020f7"><td class="memItemLeft" align="right" valign="top">QVariant&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae1103e2a369e300f05f8fd3dea8020f7">scope_data</a> () const </td></tr>
<tr class="memdesc:ae1103e2a369e300f05f8fd3dea8020f7"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get data attached to this ActionMetadata.  More...<br /></td></tr>
<tr class="separator:ae1103e2a369e300f05f8fd3dea8020f7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab2b595bf273926b0bc5a00df98ff38e1"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab2b595bf273926b0bc5a00df98ff38e1">set_hint</a> (QString const &amp;key, QVariant const &amp;value)</td></tr>
<tr class="memdesc:ab2b595bf273926b0bc5a00df98ff38e1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets a hint.  More...<br /></td></tr>
<tr class="separator:ab2b595bf273926b0bc5a00df98ff38e1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a62be4635a002af1c69cb9a105009a6c2"><td class="memItemLeft" align="right" valign="top">QVariantMap&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a62be4635a002af1c69cb9a105009a6c2">hints</a> () const </td></tr>
<tr class="memdesc:a62be4635a002af1c69cb9a105009a6c2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get all hints.  More...<br /></td></tr>
<tr class="separator:a62be4635a002af1c69cb9a105009a6c2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9016175d5f8ffe9725d95a68b1939553"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9016175d5f8ffe9725d95a68b1939553">contains_hint</a> (QString const &amp;key) const </td></tr>
<tr class="memdesc:a9016175d5f8ffe9725d95a68b1939553"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this SearchMetadata has a hint.  More...<br /></td></tr>
<tr class="separator:a9016175d5f8ffe9725d95a68b1939553"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a666efb6091fba93a007736ffe1487c82"><td class="memItemLeft" align="right" valign="top">QVariant &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a666efb6091fba93a007736ffe1487c82">operator[]</a> (QString const &amp;key)</td></tr>
<tr class="memdesc:a666efb6091fba93a007736ffe1487c82"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a reference to a hint.  More...<br /></td></tr>
<tr class="separator:a666efb6091fba93a007736ffe1487c82"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a607f33913139706424e925dac02a1a3d"><td class="memItemLeft" align="right" valign="top">QVariant const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a607f33913139706424e925dac02a1a3d">operator[]</a> (QString const &amp;key) const </td></tr>
<tr class="memdesc:a607f33913139706424e925dac02a1a3d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a const reference to a hint.  More...<br /></td></tr>
<tr class="separator:a607f33913139706424e925dac02a1a3d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:adade9077f0b4e743c2e7957bd9cd0db9"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QActionMetadata</b> (<a class="el" href="index.html">QActionMetadata</a> const &amp;other)</td></tr>
<tr class="separator:adade9077f0b4e743c2e7957bd9cd0db9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aedce73cfd65302010d9c37e0c000bfb4"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QActionMetadata</b> (<a class="el" href="index.html">QActionMetadata</a> &amp;&amp;)</td></tr>
<tr class="separator:aedce73cfd65302010d9c37e0c000bfb4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa8404f8833727972865690847ab36a30"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QActionMetadata</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QActionMetadata</a> const &amp;other)</td></tr>
<tr class="separator:aa8404f8833727972865690847ab36a30"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aacb5234146595bcec30a5e42e2590baf"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QActionMetadata</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QActionMetadata</a> &amp;&amp;)</td></tr>
<tr class="separator:aacb5234146595bcec30a5e42e2590baf"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Metadata passed to scopes for preview and activation. </p>
<dl class="section see"><dt>See also</dt><dd><a class="el" href="unity.scopes.qt.QScopeBase.md#afdedf1ba41623c1ac060ecc4b014f67f">unity::scopes::qt::QScopeBase::preview</a>, <a class="el" href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a>, <a class="el" href="unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a> </dd></dl>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::qt::QActionMetadata::QActionMetadata </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>locale</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>form_factor</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create <a class="el" href="unity.scopes.ActionMetadata.md" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a> with the given locale and form factor. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">locale</td><td>locale string, eg. en_EN </td></tr>
<tr><td class="paramname">form_factor</td><td>form factor name, e.g. phone, desktop, phone-version etc. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::qt::QActionMetadata::contains_hint </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this <a class="el" href="unity.scopes.SearchMetadata.md" title="Metadata passed with search requests. ">SearchMetadata</a> has a hint. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The hint name. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>True if the hint is set. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QVariantMap unity::scopes::qt::QActionMetadata::hints </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get all hints. </p>
<dl class="section return"><dt>Returns</dt><dd>Hints dictionary. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::NotFoundException</td><td>if no hints are available. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">QVariant&amp; unity::scopes::qt::QActionMetadata::operator[] </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Returns a reference to a hint. </p>
<p>This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of QVariant::Type::Null. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the hint. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A reference to the hint. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QVariant const&amp; unity::scopes::qt::QActionMetadata::operator[] </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns a const reference to a hint. </p>
<p>This method can be used for read-only access to hints. Referencing a non-existing hint throws unity::InvalidArgumentException. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the hint. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A const reference to the hint. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::NotFoundException</td><td>if no hint with the given name exists. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">QVariant unity::scopes::qt::QActionMetadata::scope_data </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get data attached to this <a class="el" href="unity.scopes.ActionMetadata.md" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The attached data, or QVariant::null. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::qt::QActionMetadata::set_hint </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QVariant const &amp;&#160;</td>
<td class="paramname"><em>value</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Sets a hint. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the hint. </td></tr>
<tr><td class="paramname">value</td><td>Hint value </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::qt::QActionMetadata::set_scope_data </td>
<td>(</td>
<td class="paramtype">QVariant const &amp;&#160;</td>
<td class="paramname"><em>data</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Attach arbitrary data to this <a class="el" href="unity.scopes.ActionMetadata.md" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">data</td><td>The data value to attach. </td></tr>
</table>
</dd>
</dl>
