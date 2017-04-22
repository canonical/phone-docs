---
Title: unity.scopes.qt.QSearchMetadata
---

# unity.scopes.qt.QSearchMetadata

<p>Metadata passed with search requests.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QSearchMetadata.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a92db05ea573b0c55c5b73c5c1576e51e"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a92db05ea573b0c55c5b73c5c1576e51e">QSearchMetadata</a> (QString const &amp;locale, QString const &amp;form_factor)</td></tr>
<tr class="memdesc:a92db05ea573b0c55c5b73c5c1576e51e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create SearchMetadata with the given locale and form factor.  More...<br /></td></tr>
<tr class="separator:a92db05ea573b0c55c5b73c5c1576e51e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aac638e4b40c119cd9b6f43f693cda2af"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aac638e4b40c119cd9b6f43f693cda2af">QSearchMetadata</a> (int <a class="el" href="#ac560e26fbc8376625de16031c863afe8">cardinality</a>, QString const &amp;locale, QString const &amp;form_factor)</td></tr>
<tr class="memdesc:aac638e4b40c119cd9b6f43f693cda2af"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create SearchMetadata with the given cardinality, locale, and form factor.  More...<br /></td></tr>
<tr class="separator:aac638e4b40c119cd9b6f43f693cda2af"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab0dcad3fa29fb7553ede65ef20b0255d"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab0dcad3fa29fb7553ede65ef20b0255d">set_cardinality</a> (int <a class="el" href="#ac560e26fbc8376625de16031c863afe8">cardinality</a>)</td></tr>
<tr class="memdesc:ab0dcad3fa29fb7553ede65ef20b0255d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set cardinality.  More...<br /></td></tr>
<tr class="separator:ab0dcad3fa29fb7553ede65ef20b0255d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac560e26fbc8376625de16031c863afe8"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac560e26fbc8376625de16031c863afe8">cardinality</a> () const </td></tr>
<tr class="memdesc:ac560e26fbc8376625de16031c863afe8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get cardinality.  More...<br /></td></tr>
<tr class="separator:ac560e26fbc8376625de16031c863afe8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4479bd25415f2c9e0bdd4e80e9c8a9e2"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4479bd25415f2c9e0bdd4e80e9c8a9e2">set_location</a> (<a class="el" href="unity.scopes.Location.md">Location</a> const &amp;<a class="el" href="#a844f3a8b081df7482120acd39725a7f9">location</a>)</td></tr>
<tr class="memdesc:a4479bd25415f2c9e0bdd4e80e9c8a9e2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set location.  More...<br /></td></tr>
<tr class="separator:a4479bd25415f2c9e0bdd4e80e9c8a9e2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a844f3a8b081df7482120acd39725a7f9"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Location.md">Location</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a844f3a8b081df7482120acd39725a7f9">location</a> () const </td></tr>
<tr class="memdesc:a844f3a8b081df7482120acd39725a7f9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get location.  More...<br /></td></tr>
<tr class="separator:a844f3a8b081df7482120acd39725a7f9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab61ff7b56a2c6a2f5b951c2d317180a8"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab61ff7b56a2c6a2f5b951c2d317180a8">has_location</a> () const </td></tr>
<tr class="memdesc:ab61ff7b56a2c6a2f5b951c2d317180a8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Does the SearchMetadata have a location.  More...<br /></td></tr>
<tr class="separator:ab61ff7b56a2c6a2f5b951c2d317180a8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7268b98c17357bbcba30d2bd85a5f0b3"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7268b98c17357bbcba30d2bd85a5f0b3">remove_location</a> ()</td></tr>
<tr class="memdesc:a7268b98c17357bbcba30d2bd85a5f0b3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Remove location data entirely.  More...<br /></td></tr>
<tr class="separator:a7268b98c17357bbcba30d2bd85a5f0b3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adb6bfe57d0d7a421fa2b19c498728d50"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adb6bfe57d0d7a421fa2b19c498728d50">set_hint</a> (QString const &amp;key, QVariant const &amp;value)</td></tr>
<tr class="memdesc:adb6bfe57d0d7a421fa2b19c498728d50"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets a hint.  More...<br /></td></tr>
<tr class="separator:adb6bfe57d0d7a421fa2b19c498728d50"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a10ea65002ca32ec982be76758c5d951b"><td class="memItemLeft" align="right" valign="top">QVariantMap&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a10ea65002ca32ec982be76758c5d951b">hints</a> () const </td></tr>
<tr class="memdesc:a10ea65002ca32ec982be76758c5d951b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get all hints.  More...<br /></td></tr>
<tr class="separator:a10ea65002ca32ec982be76758c5d951b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acfdb14b65570a7d83a0c477dc7fb7d2c"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acfdb14b65570a7d83a0c477dc7fb7d2c">contains_hint</a> (QString const &amp;key) const </td></tr>
<tr class="memdesc:acfdb14b65570a7d83a0c477dc7fb7d2c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this SearchMetadata has a hint.  More...<br /></td></tr>
<tr class="separator:acfdb14b65570a7d83a0c477dc7fb7d2c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a10eac0fb5b37277479a6953f52314560"><td class="memItemLeft" align="right" valign="top">QVariant &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a10eac0fb5b37277479a6953f52314560">operator[]</a> (QString const &amp;key)</td></tr>
<tr class="memdesc:a10eac0fb5b37277479a6953f52314560"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a reference to a hint.  More...<br /></td></tr>
<tr class="separator:a10eac0fb5b37277479a6953f52314560"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a04baf06aa57a85811dae85093d688911"><td class="memItemLeft" align="right" valign="top">QVariant const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a04baf06aa57a85811dae85093d688911">operator[]</a> (QString const &amp;key) const </td></tr>
<tr class="memdesc:a04baf06aa57a85811dae85093d688911"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a const reference to a hint.  More...<br /></td></tr>
<tr class="separator:a04baf06aa57a85811dae85093d688911"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a09f91d1ab17be053866d25dfb06642c2"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QSearchMetadata</b> (<a class="el" href="index.html">QSearchMetadata</a> const &amp;other)</td></tr>
<tr class="separator:a09f91d1ab17be053866d25dfb06642c2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:addd79d46fbb9875f4e7a71892d89b719"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QSearchMetadata</b> (<a class="el" href="index.html">QSearchMetadata</a> &amp;&amp;)</td></tr>
<tr class="separator:addd79d46fbb9875f4e7a71892d89b719"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a25bd995a07fcd6a18c8c798d59a792d1"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QSearchMetadata</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QSearchMetadata</a> const &amp;other)</td></tr>
<tr class="separator:a25bd995a07fcd6a18c8c798d59a792d1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0515708db6c259f94c057c352d8de77d"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QSearchMetadata</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QSearchMetadata</a> &amp;&amp;)</td></tr>
<tr class="separator:a0515708db6c259f94c057c352d8de77d"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Metadata passed with search requests. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::qt::QSearchMetadata::QSearchMetadata </td>
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
<p>Create <a class="el" href="unity.scopes.SearchMetadata.md" title="Metadata passed with search requests. ">SearchMetadata</a> with the given locale and form factor. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">locale</td><td>locale string, eg. en_EN </td></tr>
<tr><td class="paramname">form_factor</td><td>form factor name, e.g. phone, desktop, phone-version etc. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">unity::scopes::qt::QSearchMetadata::QSearchMetadata </td>
<td>(</td>
<td class="paramtype">int&#160;</td>
<td class="paramname"><em>cardinality</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
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
<p>Create <a class="el" href="unity.scopes.SearchMetadata.md" title="Metadata passed with search requests. ">SearchMetadata</a> with the given cardinality, locale, and form factor. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">cardinality</td><td>maximum number of search results </td></tr>
<tr><td class="paramname">locale</td><td>locale string, eg. en_EN </td></tr>
<tr><td class="paramname">form_factor</td><td>form factor name, e.g. phone, desktop, phone-version etc. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">int unity::scopes::qt::QSearchMetadata::cardinality </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get cardinality. </p>
<dl class="section return"><dt>Returns</dt><dd>The maxmium number of search results, or 0 for no limit. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::qt::QSearchMetadata::contains_hint </td>
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
<td class="memname">bool unity::scopes::qt::QSearchMetadata::has_location </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Does the <a class="el" href="unity.scopes.SearchMetadata.md" title="Metadata passed with search requests. ">SearchMetadata</a> have a location. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a location property. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QVariantMap unity::scopes::qt::QSearchMetadata::hints </td>
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
<td class="memname"><a class="el" href="unity.scopes.Location.md">Location</a> unity::scopes::qt::QSearchMetadata::location </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get location. </p>
<dl class="section return"><dt>Returns</dt><dd><a class="el" href="unity.scopes.Location.md" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data representing the current location, including attributes such as city and country. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::NotFoundException</td><td>if no location data is available. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">QVariant&amp; unity::scopes::qt::QSearchMetadata::operator[] </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Returns a reference to a hint. </p>
<p>This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of Variant::Type::Null. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the hint. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A reference to the hint. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QVariant const&amp; unity::scopes::qt::QSearchMetadata::operator[] </td>
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
<td class="memname">void unity::scopes::qt::QSearchMetadata::remove_location </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Remove location data entirely. </p>
<p>This method does nothing if no location data is present. </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::qt::QSearchMetadata::set_cardinality </td>
<td>(</td>
<td class="paramtype">int&#160;</td>
<td class="paramname"><em>cardinality</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set cardinality. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">cardinality</td><td>The maximum number of search results. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::qt::QSearchMetadata::set_hint </td>
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
<td class="memname">void unity::scopes::qt::QSearchMetadata::set_location </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Location.md">Location</a> const &amp;&#160;</td>
<td class="paramname"><em>location</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set location. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">location</td><td><a class="el" href="unity.scopes.Location.md" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data. </td></tr>
</table>
</dd>
</dl>
