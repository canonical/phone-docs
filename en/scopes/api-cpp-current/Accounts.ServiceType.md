---
Title: Accounts.ServiceType
---

# Accounts.ServiceType

<p>Representation of an account service type.  
<a href="..//Accounts.ServiceType.md#details">More...</a></p>
<p><code>#include &lt;Accounts/ServiceType&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a27a10810bcc047da5031725f77b398eb"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.ServiceType.md#a27a10810bcc047da5031725f77b398eb">ServiceType</a> ()</td></tr>
<tr class="memdesc:a27a10810bcc047da5031725f77b398eb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Construct an invalid serviceType. <br /></td></tr>
<tr class="separator:a27a10810bcc047da5031725f77b398eb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aae690d056ba06a78378f8adc8f95cddd"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.ServiceType.md#aae690d056ba06a78378f8adc8f95cddd">ServiceType</a> (const <a class="el" href="..//Accounts.ServiceType.md">ServiceType</a> &amp;other)</td></tr>
<tr class="memdesc:aae690d056ba06a78378f8adc8f95cddd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Copy constructor.  More...<br /></td></tr>
<tr class="separator:aae690d056ba06a78378f8adc8f95cddd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a30dad6b9e5736036988f2918408878bf"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="..//Accounts.ServiceType.md">ServiceType</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (const <a class="el" href="..//Accounts.ServiceType.md">ServiceType</a> &amp;other)</td></tr>
<tr class="separator:a30dad6b9e5736036988f2918408878bf"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.ServiceType.md#aac1b70a2ed67ead038c4d3f5ac4d8a81">isValid</a> () const </td></tr>
<tr class="memdesc:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether this object represents a ServiceType.  More...<br /></td></tr>
<tr class="separator:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2b0a198f837184bf6fff555cee3ce770"><td class="memItemLeft" align="right" valign="top">
QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.ServiceType.md#a2b0a198f837184bf6fff555cee3ce770">name</a> () const </td></tr>
<tr class="memdesc:a2b0a198f837184bf6fff555cee3ce770"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the name (ID) of the service type. <br /></td></tr>
<tr class="separator:a2b0a198f837184bf6fff555cee3ce770"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9def71dea12661002bb3a63b3b91d08d"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.ServiceType.md#a9def71dea12661002bb3a63b3b91d08d">displayName</a> () const </td></tr>
<tr class="separator:a9def71dea12661002bb3a63b3b91d08d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6c73afd4753195ea4eee794c95a770dd"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.ServiceType.md#a6c73afd4753195ea4eee794c95a770dd">trCatalog</a> () const </td></tr>
<tr class="separator:a6c73afd4753195ea4eee794c95a770dd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a038b22680aca535f9972908fe2f1f6a1"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.ServiceType.md#a038b22680aca535f9972908fe2f1f6a1">iconName</a> () const </td></tr>
<tr class="separator:a038b22680aca535f9972908fe2f1f6a1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab9544628f8c8af163b13eb6b47a3aead"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.ServiceType.md#ab9544628f8c8af163b13eb6b47a3aead">hasTag</a> (const QString &amp;tag) const </td></tr>
<tr class="memdesc:ab9544628f8c8af163b13eb6b47a3aead"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this service type has a tag.  More...<br /></td></tr>
<tr class="separator:ab9544628f8c8af163b13eb6b47a3aead"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4bfac5a5814d94c97ae61695f09e95ee"><td class="memItemLeft" align="right" valign="top">QSet&lt; QString &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.ServiceType.md#a4bfac5a5814d94c97ae61695f09e95ee">tags</a> () const </td></tr>
<tr class="memdesc:a4bfac5a5814d94c97ae61695f09e95ee"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return all tags of the service type as a set.  More...<br /></td></tr>
<tr class="separator:a4bfac5a5814d94c97ae61695f09e95ee"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a305fe3a04c76c8069c3465621a7967cc"><td class="memItemLeft" align="right" valign="top">const QDomDocument&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="..//Accounts.ServiceType.md#a305fe3a04c76c8069c3465621a7967cc">domDocument</a> () const </td></tr>
<tr class="separator:a305fe3a04c76c8069c3465621a7967cc"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Friends</h2></td></tr>
<tr class="memitem:ac57edddf8f98ba20c3620becc8f8f6e5"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>operator==</b> (const <a class="el" href="..//Accounts.ServiceType.md">Accounts::ServiceType</a> &amp;s1, const <a class="el" href="..//Accounts.ServiceType.md">Accounts::ServiceType</a> &amp;s2)</td></tr>
<tr class="separator:ac57edddf8f98ba20c3620becc8f8f6e5"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Representation of an account service type. </p>
<p>The <a class="el" href="..//Accounts.ServiceType.md" title="Representation of an account service type. ">ServiceType</a> object represents an account service type. It can be used to retrieve some basic properties of the service type (such as name and icon) and to get access to the contents of the XML file which defines it. </p>
<p>Definition at line 49 of file service-type.h.</p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="..//Accounts.ServiceType.md">ServiceType</a> </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="..//Accounts.ServiceType.md">ServiceType</a> &amp;&#160;</td>
<td class="paramname"><em>other</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Copy constructor. </p>
<p>Copying a <a class="el" href="..//Accounts.ServiceType.md" title="Representation of an account service type. ">ServiceType</a> object is very cheap, because the data is shared among copies. </p>
<p>Definition at line 69 of file service-type.cpp.</p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">QString displayName </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>The display name of the service type; this is a string that could be shown in the UI to describe the service type to the user.</dd></dl>
<p>The library attempts to translate this string by passing it to the qtTrId() function; in order for this to work you must make sure that the translation catalogue has been loaded before, if needed. </p>
<p>Definition at line 126 of file service-type.cpp.</p>
<table class="memname">
<tr>
<td class="memname">const QDomDocument domDocument </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>The DOM of the whole XML service file </dd></dl>
<p>Definition at line 192 of file service-type.cpp.</p>
<table class="memname">
<tr>
<td class="memname">bool hasTag </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>tag</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this service type has a tag. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">tag</td><td>Tag to look for</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd><a class="el" href="..//Accounts.Service.md" title="Representation of an account service. ">Service</a> type has the tag? </dd></dl>
<p>Definition at line 163 of file service-type.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString iconName </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>The icon name </dd></dl>
<p>Definition at line 151 of file service-type.cpp.</p>
<table class="memname">
<tr>
<td class="memname">bool isValid </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check whether this object represents a <a class="el" href="..//Accounts.ServiceType.md" title="Representation of an account service type. ">ServiceType</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>true if the <a class="el" href="..//Accounts.ServiceType.md" title="Representation of an account service type. ">ServiceType</a> is a valid one. </dd></dl>
<p>Definition at line 104 of file service-type.cpp.</p>
<p>Referenced by ServiceType::name().</p>
<table class="memname">
<tr>
<td class="memname">QSet&lt; QString &gt; tags </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return all tags of the service type as a set. </p>
<dl class="section return"><dt>Returns</dt><dd>Set of tags </dd></dl>
<p>Definition at line 173 of file service-type.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString trCatalog </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>The name of the translation catalog, which can be used to translate the <a class="el" href="..//Accounts.ServiceType.md#a9def71dea12661002bb3a63b3b91d08d">displayName()</a> </dd></dl>
<p>Definition at line 143 of file service-type.cpp.</p>
