---
Title: Accounts.Provider
---

# Accounts.Provider

<p>Representation of an account provider.  
<a href="#details">More...</a></p>
<p><code>#include &lt;Accounts/Provider&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a0a281cda2c25f17e851f76142d4527a0"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0a281cda2c25f17e851f76142d4527a0">Provider</a> ()</td></tr>
<tr class="memdesc:a0a281cda2c25f17e851f76142d4527a0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Construct an invalid provider. <br /></td></tr>
<tr class="separator:a0a281cda2c25f17e851f76142d4527a0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abff16d2acc53f89d7f633e85a4b90634"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#">Provider</a> &amp;other)</td></tr>
<tr class="memdesc:abff16d2acc53f89d7f633e85a4b90634"><td class="mdescLeft">&#160;</td><td class="mdescRight">Copy constructor.  More...<br /></td></tr>
<tr class="separator:abff16d2acc53f89d7f633e85a4b90634"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2ea3187c2cc7f9464d47da1aada7d78c"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="#">Provider</a> &amp;other)</td></tr>
<tr class="separator:a2ea3187c2cc7f9464d47da1aada7d78c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aac1b70a2ed67ead038c4d3f5ac4d8a81">isValid</a> () const </td></tr>
<tr class="memdesc:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether this object represents a Provider.  More...<br /></td></tr>
<tr class="separator:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2b0a198f837184bf6fff555cee3ce770"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2b0a198f837184bf6fff555cee3ce770">name</a> () const </td></tr>
<tr class="memdesc:a2b0a198f837184bf6fff555cee3ce770"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the name of the provider.  More...<br /></td></tr>
<tr class="separator:a2b0a198f837184bf6fff555cee3ce770"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9def71dea12661002bb3a63b3b91d08d"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9def71dea12661002bb3a63b3b91d08d">displayName</a> () const </td></tr>
<tr class="memdesc:a9def71dea12661002bb3a63b3b91d08d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the display name of the provider, untranslated.  More...<br /></td></tr>
<tr class="separator:a9def71dea12661002bb3a63b3b91d08d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aeaebc63d2181b1a4506603f4e03f1275"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aeaebc63d2181b1a4506603f4e03f1275">description</a> () const </td></tr>
<tr class="memdesc:aeaebc63d2181b1a4506603f4e03f1275"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the description of the provider, untranslated.  More...<br /></td></tr>
<tr class="separator:aeaebc63d2181b1a4506603f4e03f1275"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac7fe5a9dd669a037edfa2930803311a5"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac7fe5a9dd669a037edfa2930803311a5">pluginName</a> () const </td></tr>
<tr class="memdesc:ac7fe5a9dd669a037edfa2930803311a5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the name of the account plugin associated with the provider.  More...<br /></td></tr>
<tr class="separator:ac7fe5a9dd669a037edfa2930803311a5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6c73afd4753195ea4eee794c95a770dd"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6c73afd4753195ea4eee794c95a770dd">trCatalog</a> () const </td></tr>
<tr class="separator:a6c73afd4753195ea4eee794c95a770dd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a038b22680aca535f9972908fe2f1f6a1"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a038b22680aca535f9972908fe2f1f6a1">iconName</a> () const </td></tr>
<tr class="separator:a038b22680aca535f9972908fe2f1f6a1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab0c2fc656cae3b09e456ec0747315ecc"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab0c2fc656cae3b09e456ec0747315ecc">domainsRegExp</a> () const </td></tr>
<tr class="separator:ab0c2fc656cae3b09e456ec0747315ecc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa785668bfd84285ad40299410c02367d"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa785668bfd84285ad40299410c02367d">isSingleAccount</a> () const </td></tr>
<tr class="separator:aa785668bfd84285ad40299410c02367d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a305fe3a04c76c8069c3465621a7967cc"><td class="memItemLeft" align="right" valign="top">const QDomDocument&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a305fe3a04c76c8069c3465621a7967cc">domDocument</a> () const </td></tr>
<tr class="separator:a305fe3a04c76c8069c3465621a7967cc"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Friends</h2></td></tr>
<tr class="memitem:acad7a7994506519762f09b8a66c91c6a"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>operator==</b> (const <a class="el" href="#">Accounts::Provider</a> &amp;p2)</td></tr>
<tr class="separator:acad7a7994506519762f09b8a66c91c6a"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Representation of an account provider. </p>
<p>The <a class="el" href="#" title="Representation of an account provider. ">Provider</a> object represents an account provider. It can be used to retrieve some basic properties of the provider (such as the name) and to get access to the contents of the XML file which defines it. </p>
<p>Definition at line 48 of file provider.h.</p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#">Provider</a> </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="#">Provider</a> &amp;&#160;</td>
<td class="paramname"><em>other</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Copy constructor. </p>
<p>Copying a <a class="el" href="#" title="Representation of an account provider. ">Provider</a> object is very cheap, because the data is shared among copies. </p>
<p>Definition at line 65 of file provider.cpp.</p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">QString description </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the description of the provider, untranslated. </p>
<dl class="section return"><dt>Returns</dt><dd>The description of the provider. </dd></dl>
<p>Definition at line 124 of file provider.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString displayName </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the display name of the provider, untranslated. </p>
<dl class="section return"><dt>Returns</dt><dd>The display name of the provider. </dd></dl>
<p>Definition at line 115 of file provider.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString domainsRegExp </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>A regular expression pattern which matches all the internet domains in which this type of account can be used. </dd></dl>
<p>Definition at line 161 of file provider.cpp.</p>
<table class="memname">
<tr>
<td class="memname">const QDomDocument domDocument </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>The DOM of the whole XML provider file. </dd></dl>
<p>Definition at line 177 of file provider.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString iconName </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>The provider icon name. </dd></dl>
<p>Definition at line 152 of file provider.cpp.</p>
<table class="memname">
<tr>
<td class="memname">bool isSingleAccount </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>Whether the provider supports creating one account at most. </dd></dl>
<p>Definition at line 169 of file provider.cpp.</p>
<table class="memname">
<tr>
<td class="memname">bool isValid </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check whether this object represents a <a class="el" href="#" title="Representation of an account provider. ">Provider</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>true if the <a class="el" href="#" title="Representation of an account provider. ">Provider</a> is a valid one. </dd></dl>
<p>Definition at line 95 of file provider.cpp.</p>
<p>Referenced by Provider::name().</p>
<table class="memname">
<tr>
<td class="memname">QString name </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the name of the provider. </p>
<p>This can be used as a unique identifier for this provider. </p><dl class="section return"><dt>Returns</dt><dd>The unique name of the provider. </dd></dl>
<p>Definition at line 105 of file provider.cpp.</p>
<p>References Provider::isValid().</p>
<table class="memname">
<tr>
<td class="memname">QString pluginName </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the name of the account plugin associated with the provider. </p>
<p>Some platforms might find it useful to store plugin names in the provider XML files, especially when the same plugin can work for different providers. </p><dl class="section return"><dt>Returns</dt><dd>The plugin name. </dd></dl>
<p>Definition at line 135 of file provider.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString trCatalog </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>The name of the translation catalog, which can be used to translate the <a class="el" href="#a9def71dea12661002bb3a63b3b91d08d" title="Get the display name of the provider, untranslated. ">displayName()</a>. </dd></dl>
<p>Definition at line 144 of file provider.cpp.</p>
