---
Title: unity.scopes.qt.JsonReader
---

# unity.scopes.qt.JsonReader

<p>Class that downloads http JSON files synchronously.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/JsonReader.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ac57a289d5d336c5a998f848dff6959cc"><td class="memItemLeft" align="right" valign="top">QJsonDocumentSptr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac57a289d5d336c5a998f848dff6959cc">read</a> (QUrl const &amp;uri) const </td></tr>
<tr class="memdesc:ac57a289d5d336c5a998f848dff6959cc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a remote JSON document and returns a parser containing the data.  More...<br /></td></tr>
<tr class="separator:ac57a289d5d336c5a998f848dff6959cc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4593b2f084cdf97635b67a2d71e090cd"><td class="memItemLeft" align="right" valign="top">QJsonDocumentSptr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4593b2f084cdf97635b67a2d71e090cd">read</a> (QString const &amp;host, QJsonParameters const &amp;parameters) const </td></tr>
<tr class="memdesc:a4593b2f084cdf97635b67a2d71e090cd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a remote JSON document and returns a parser containing the data.  More...<br /></td></tr>
<tr class="separator:a4593b2f084cdf97635b67a2d71e090cd"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Class that downloads http JSON files synchronously. </p>
<p>Executes a remote HTTP query synchronously to return a JSON parser filled with the downloaded data. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">QJsonDocumentSptr unity::scopes::qt::JsonReader::read </td>
<td>(</td>
<td class="paramtype">QUrl const &amp;&#160;</td>
<td class="paramname"><em>uri</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Downloads a remote JSON document and returns a parser containing the data. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">uri</td><td>URI to download</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>shared pointer of a QJsonDocument containing the downloaded data. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QJsonDocumentSptr unity::scopes::qt::JsonReader::read </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>host</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QJsonParameters const &amp;&#160;</td>
<td class="paramname"><em>parameters</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Downloads a remote JSON document and returns a parser containing the data. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">host</td><td>the remote host name </td></tr>
<tr><td class="paramname">parameters</td><td>The parameters that will build the final query, defined by a list of pairs of key and value</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>shared pointer of a QJsonDocument containing the downloaded data. </dd></dl>
