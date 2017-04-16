---
Title: unity.scopes.qt.XmlReader
---

# unity.scopes.qt.XmlReader

<p>Class that downloads http XML files synchronously.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/XmlReader.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a9a5eebad22c444bf8be96f1536dd1261"><td class="memItemLeft" align="right" valign="top">QXmlStreamReaderSptr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9a5eebad22c444bf8be96f1536dd1261">read</a> (QUrl const &amp;uri) const </td></tr>
<tr class="memdesc:a9a5eebad22c444bf8be96f1536dd1261"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a remote XML document and returns a parser containing the data.  More...<br /></td></tr>
<tr class="separator:a9a5eebad22c444bf8be96f1536dd1261"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a63c00ae978813fc9d9a71e754d8e905f"><td class="memItemLeft" align="right" valign="top">QXmlStreamReaderSptr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a63c00ae978813fc9d9a71e754d8e905f">read</a> (QString const &amp;host, QXmlStreamReaderParameters const &amp;parameters) const </td></tr>
<tr class="memdesc:a63c00ae978813fc9d9a71e754d8e905f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a remote XML document and returns a parser containing the data.  More...<br /></td></tr>
<tr class="separator:a63c00ae978813fc9d9a71e754d8e905f"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Class that downloads http XML files synchronously. </p>
<p>Executes a remote HTTP query synchronously to return a XML parser filled with the downloaded data. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">QXmlStreamReaderSptr unity::scopes::qt::XmlReader::read </td>
<td>(</td>
<td class="paramtype">QUrl const &amp;&#160;</td>
<td class="paramname"><em>uri</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Downloads a remote XML document and returns a parser containing the data. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">uri</td><td>URI to download</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>shared pointer of a QXmlStreamReader containing the downloaded data. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QXmlStreamReaderSptr unity::scopes::qt::XmlReader::read </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>host</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QXmlStreamReaderParameters const &amp;&#160;</td>
<td class="paramname"><em>parameters</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Downloads a remote XML document and returns a parser containing the data. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">host</td><td>the remote host name </td></tr>
<tr><td class="paramname">parameters</td><td>The parameters that will build the final query, defined by a list of pairs of key and value</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>shared pointer of a QXmlStreamReader containing the downloaded data. </dd></dl>
