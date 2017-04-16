---
Title: Accounts.Service
---

# Accounts.Service

<p>Representation of an account service.  
<a href="..//Accounts.Service.md#details">More...</a></p>
<p><code>#include &lt;Accounts/Service&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a37865e4e61715c6d6f81181f7323ae62"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#a37865e4e61715c6d6f81181f7323ae62">Service</a> ()</td></tr>
<tr class="memdesc:a37865e4e61715c6d6f81181f7323ae62"><td class="mdescLeft">&#160;</td><td class="mdescRight">Construct an invalid service. <br /></td></tr>
<tr class="separator:a37865e4e61715c6d6f81181f7323ae62"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a491f7a1e2b9dfedb805d55c06ca006df"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#a491f7a1e2b9dfedb805d55c06ca006df">Service</a> (const <a class="el" href="..//Accounts.Service.md">Service</a> &amp;other)</td></tr>
<tr class="memdesc:a491f7a1e2b9dfedb805d55c06ca006df"><td class="mdescLeft">&#160;</td><td class="mdescRight">Copy constructor.  More...<br /></td></tr>
<tr class="separator:a491f7a1e2b9dfedb805d55c06ca006df"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acc48a1d85689d512416f5a8cc982b0b4"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="..//Accounts.Service.md">Service</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (const <a class="el" href="..//Accounts.Service.md">Service</a> &amp;other)</td></tr>
<tr class="separator:acc48a1d85689d512416f5a8cc982b0b4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#aac1b70a2ed67ead038c4d3f5ac4d8a81">isValid</a> () const </td></tr>
<tr class="memdesc:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether this object represents a Service.  More...<br /></td></tr>
<tr class="separator:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2b0a198f837184bf6fff555cee3ce770"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#a2b0a198f837184bf6fff555cee3ce770">name</a> () const </td></tr>
<tr class="memdesc:a2b0a198f837184bf6fff555cee3ce770"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the name of the service.  More...<br /></td></tr>
<tr class="separator:a2b0a198f837184bf6fff555cee3ce770"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9def71dea12661002bb3a63b3b91d08d"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#a9def71dea12661002bb3a63b3b91d08d">displayName</a> () const </td></tr>
<tr class="memdesc:a9def71dea12661002bb3a63b3b91d08d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the display name of the service, untranslated.  More...<br /></td></tr>
<tr class="separator:a9def71dea12661002bb3a63b3b91d08d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6c73afd4753195ea4eee794c95a770dd"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#a6c73afd4753195ea4eee794c95a770dd">trCatalog</a> () const </td></tr>
<tr class="separator:a6c73afd4753195ea4eee794c95a770dd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa090de65c448278a23851f45f38fa9ce"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#aa090de65c448278a23851f45f38fa9ce">serviceType</a> () const </td></tr>
<tr class="memdesc:aa090de65c448278a23851f45f38fa9ce"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the service type ID of the service.  More...<br /></td></tr>
<tr class="separator:aa090de65c448278a23851f45f38fa9ce"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4da62eb704e693e71b73d101f5304a7e"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#a4da62eb704e693e71b73d101f5304a7e">provider</a> () const </td></tr>
<tr class="memdesc:a4da62eb704e693e71b73d101f5304a7e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the provider ID of the service.  More...<br /></td></tr>
<tr class="separator:a4da62eb704e693e71b73d101f5304a7e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a038b22680aca535f9972908fe2f1f6a1"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#a038b22680aca535f9972908fe2f1f6a1">iconName</a> () const </td></tr>
<tr class="memdesc:a038b22680aca535f9972908fe2f1f6a1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the icon name for this service.  More...<br /></td></tr>
<tr class="separator:a038b22680aca535f9972908fe2f1f6a1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab9544628f8c8af163b13eb6b47a3aead"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#ab9544628f8c8af163b13eb6b47a3aead">hasTag</a> (const QString &amp;tag) const </td></tr>
<tr class="memdesc:ab9544628f8c8af163b13eb6b47a3aead"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this service has a tag.  More...<br /></td></tr>
<tr class="separator:ab9544628f8c8af163b13eb6b47a3aead"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4bfac5a5814d94c97ae61695f09e95ee"><td class="memItemLeft" align="right" valign="top">QSet&lt; QString &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#a4bfac5a5814d94c97ae61695f09e95ee">tags</a> () const </td></tr>
<tr class="memdesc:a4bfac5a5814d94c97ae61695f09e95ee"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return all tags of the service as a set.  More...<br /></td></tr>
<tr class="separator:a4bfac5a5814d94c97ae61695f09e95ee"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a305fe3a04c76c8069c3465621a7967cc"><td class="memItemLeft" align="right" valign="top">const QDomDocument&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.Service.md#a305fe3a04c76c8069c3465621a7967cc">domDocument</a> () const </td></tr>
<tr class="memdesc:a305fe3a04c76c8069c3465621a7967cc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the contents of the service XML file.  More...<br /></td></tr>
<tr class="separator:a305fe3a04c76c8069c3465621a7967cc"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Friends</h2></td></tr>
<tr class="memitem:adfa1934bd3a7945ac2a26125481ed12f"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>operator==</b> (const <a class="el" href="..//Accounts.Service.md">Accounts::Service</a> &amp;s1, const <a class="el" href="..//Accounts.Service.md">Accounts::Service</a> &amp;s2)</td></tr>
<tr class="separator:adfa1934bd3a7945ac2a26125481ed12f"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Representation of an account service. </p>
<p>The <a class="el" href="..//Accounts.Service.md" title="Representation of an account service. ">Service</a> object represents an account service. It can be used to retrieve some basic properties of the service (such as name, type and provider) and to get access to the contents of the XML file which defines it. </p>
<p>Definition at line 48 of file service.h.</p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="..//Accounts.Service.md">Service</a> </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="..//Accounts.Service.md">Service</a> &amp;&#160;</td>
<td class="paramname"><em>other</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Copy constructor. </p>
<p>Copying a <a class="el" href="..//Accounts.Service.md" title="Representation of an account service. ">Service</a> object is very cheap, because the data is shared among copies. </p>
<p>Definition at line 69 of file service.cpp.</p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">QString displayName </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the display name of the service, untranslated. </p>
<dl class="section return"><dt>Returns</dt><dd>The display name of the service. </dd></dl>
<p>Definition at line 124 of file service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">const QDomDocument domDocument </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the contents of the service XML file. </p>
<dl class="section return"><dt>Returns</dt><dd>The DOM of the whole XML service file </dd></dl>
<p>Definition at line 201 of file service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">bool hasTag </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>tag</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this service has a tag. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">tag</td><td>Tag to look for</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd><a class="el" href="..//Accounts.Service.md" title="Representation of an account service. ">Service</a> has the tag? </dd></dl>
<p>Definition at line 171 of file service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString iconName </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the icon name for this service. </p>
<dl class="section return"><dt>Returns</dt><dd>The icon name. </dd></dl>
<p>Definition at line 159 of file service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">bool isValid </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check whether this object represents a <a class="el" href="..//Accounts.Service.md" title="Representation of an account service. ">Service</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>true if the <a class="el" href="..//Accounts.Service.md" title="Representation of an account service. ">Service</a> is a valid one. </dd></dl>
<p>Definition at line 104 of file service.cpp.</p>
<p>Referenced by Service::name().</p>
<table class="memname">
<tr>
<td class="memname">QString name </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the name of the service. </p>
<p>This can be used as a unique identifier for this service. </p><dl class="section return"><dt>Returns</dt><dd>The unique name of the service. </dd></dl>
<p>Definition at line 114 of file service.cpp.</p>
<p>References Service::isValid().</p>
<table class="memname">
<tr>
<td class="memname">QString provider </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the provider ID of the service. </p>
<dl class="section return"><dt>Returns</dt><dd>The provider of the service. </dd></dl>
<p>Definition at line 150 of file service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString serviceType </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the service type ID of the service. </p>
<dl class="section return"><dt>Returns</dt><dd>The service type of the service. </dd></dl>
<p>Definition at line 133 of file service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QSet&lt; QString &gt; tags </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return all tags of the service as a set. </p>
<dl class="section return"><dt>Returns</dt><dd>Set of tags </dd></dl>
<p>Definition at line 181 of file service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString trCatalog </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>The translation catalog of the service. </dd></dl>
<p>Definition at line 141 of file service.cpp.</p>
