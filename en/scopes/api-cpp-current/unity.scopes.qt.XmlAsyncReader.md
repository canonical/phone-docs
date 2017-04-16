---
Title: unity.scopes.qt.XmlAsyncReader
---

# unity.scopes.qt.XmlAsyncReader

<p>Class that downloads http XML files asynchronously.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/XmlAsyncReader.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a17d5b0a22026ab8d5979b39cedaa2952"><td class="memTemplParams" colspan="2">template&lt;typename BASE , typename TYPE &gt; </td></tr>
<tr class="memitem:a17d5b0a22026ab8d5979b39cedaa2952"><td class="memTemplItemLeft" align="right" valign="top">ResultsFuture&lt; BASE &gt;&#160;</td><td class="memTemplItemRight" valign="bottom"><a class="el" href="#a17d5b0a22026ab8d5979b39cedaa2952">async_get</a> (std::string const &amp;uri, std::string const &amp;object_name, ParserFunc&lt; BASE &gt; const &amp;parse=get_results&lt; BASE, TYPE &gt;) const </td></tr>
<tr class="memdesc:a17d5b0a22026ab8d5979b39cedaa2952"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects.  More...<br /></td></tr>
<tr class="separator:a17d5b0a22026ab8d5979b39cedaa2952"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3fbd67b5f96245f1ea4bbe8ff2d0e849"><td class="memTemplParams" colspan="2">template&lt;typename T &gt; </td></tr>
<tr class="memitem:a3fbd67b5f96245f1ea4bbe8ff2d0e849"><td class="memTemplItemLeft" align="right" valign="top">ResultsFuture&lt; T &gt;&#160;</td><td class="memTemplItemRight" valign="bottom"><a class="el" href="#a3fbd67b5f96245f1ea4bbe8ff2d0e849">async_get</a> (std::string const &amp;uri, std::string const &amp;object_name, ParserFunc&lt; T &gt; const &amp;parse=get_results&lt; T, T &gt;) const </td></tr>
<tr class="memdesc:a3fbd67b5f96245f1ea4bbe8ff2d0e849"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a XML HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data.  More...<br /></td></tr>
<tr class="separator:a3fbd67b5f96245f1ea4bbe8ff2d0e849"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa7f613d801a32f69d3a3d09fa775749c"><td class="memTemplParams" colspan="2">template&lt;typename BASE , typename TYPE &gt; </td></tr>
<tr class="memitem:aa7f613d801a32f69d3a3d09fa775749c"><td class="memTemplItemLeft" align="right" valign="top">ResultsFuture&lt; BASE &gt;&#160;</td><td class="memTemplItemRight" valign="bottom"><a class="el" href="#aa7f613d801a32f69d3a3d09fa775749c">async_get</a> (std::string const &amp;host, QXmlStreamReaderParams const &amp;params, std::string const &amp;object_name, ParserFunc&lt; BASE &gt; const &amp;parse=get_results&lt; BASE, TYPE &gt;) const </td></tr>
<tr class="memdesc:aa7f613d801a32f69d3a3d09fa775749c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects.  More...<br /></td></tr>
<tr class="separator:aa7f613d801a32f69d3a3d09fa775749c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a98a01776b95509671adec9ff6321c8f8"><td class="memTemplParams" colspan="2">template&lt;typename T &gt; </td></tr>
<tr class="memitem:a98a01776b95509671adec9ff6321c8f8"><td class="memTemplItemLeft" align="right" valign="top">ResultsFuture&lt; T &gt;&#160;</td><td class="memTemplItemRight" valign="bottom"><a class="el" href="#a98a01776b95509671adec9ff6321c8f8">async_get</a> (std::string const &amp;host, QXmlStreamReaderParams const &amp;params, std::string const &amp;object_name, ParserFunc&lt; T &gt; const &amp;parse=get_results&lt; T, T &gt;) const </td></tr>
<tr class="memdesc:a98a01776b95509671adec9ff6321c8f8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects.  More...<br /></td></tr>
<tr class="separator:a98a01776b95509671adec9ff6321c8f8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1d1abb81853d575a1fdb9ee63350711e"><td class="memItemLeft" align="right" valign="top">QXmlStreamReaderFuture&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1d1abb81853d575a1fdb9ee63350711e">async_get_parser</a> (std::string const &amp;uri) const </td></tr>
<tr class="memdesc:a1d1abb81853d575a1fdb9ee63350711e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a HTTP remote file asynchronously and returns a future to a valid XML parser containing the data.  More...<br /></td></tr>
<tr class="separator:a1d1abb81853d575a1fdb9ee63350711e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8d8aa17b33a021b9faed3a3ddd1c67d0"><td class="memItemLeft" align="right" valign="top">QXmlStreamReaderFuture&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8d8aa17b33a021b9faed3a3ddd1c67d0">async_get_parser</a> (std::string const &amp;host, QXmlStreamReaderParams const &amp;params) const </td></tr>
<tr class="memdesc:a8d8aa17b33a021b9faed3a3ddd1c67d0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a HTTP remote file asynchronously and returns a future to a valid XML parser containing the data.  More...<br /></td></tr>
<tr class="separator:a8d8aa17b33a021b9faed3a3ddd1c67d0"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Static Protected Member Functions</h2></td></tr>
<tr class="memitem:acf558138e801362a2a012771ad590e27"><td class="memItemLeft" align="right" valign="top">static QXmlStreamReaderSptr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acf558138e801362a2a012771ad590e27">create_parser_with_data</a> (std::string const &amp;data, std::string &amp;error)</td></tr>
<tr class="memdesc:acf558138e801362a2a012771ad590e27"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a QXmlStreamReader filled with the given data.  More...<br /></td></tr>
<tr class="separator:acf558138e801362a2a012771ad590e27"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Class that downloads http XML files asynchronously. </p>
<p>Executes a remote HTTP query asynchronously to return different futures about XML results or a XML parser. The class implements and defines a function that returns a XML parser filled with the data downloaded. The class also offers a default function to obtain all objects of a given name in the results. The user may define his own parsing function to parse data at he desires. </p>
<h2 class="groupheader">Member Function Documentation</h2>
template&lt;typename BASE , typename TYPE &gt; 
<table class="memname">
<tr>
<td class="memname">XmlAsyncReader::ResultsFuture&lt; BASE &gt; unity::scopes::qt::XmlAsyncReader::async_get </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>uri</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>object_name</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">ParserFunc&lt; BASE &gt; const &amp;&#160;</td>
<td class="paramname"><em>parse</em> = <code>get_results&lt;BASE,&#160;TYPE&gt;</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. </p>
<p>The user may provide his own function to parse the downloaded data.</p>
<p>The method has 2 template parameters: the type of results returned and the type of objects when instantiating. The type of instantiation has to be a derived class of the return type. This is offered for convenience to return more generic types and get advantage of polymorphism.</p>
<p>The method checks at compile time that the instantiation type is effectively a derived class of the type returned.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">uri</td><td>URI to download </td></tr>
<tr><td class="paramname">object_name</td><td>name of the kind of object we are looking for in the http document </td></tr>
<tr><td class="paramname">parse</td><td>Function that parses the data downloaded</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Future of list of results </dd></dl>
template&lt;typename T &gt; 
<table class="memname">
<tr>
<td class="memname">XmlAsyncReader::ResultsFuture&lt; T &gt; unity::scopes::qt::XmlAsyncReader::async_get </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>uri</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>object_name</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">ParserFunc&lt; T &gt; const &amp;&#160;</td>
<td class="paramname"><em>parse</em> = <code>get_results&lt;T,&#160;T&gt;</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Downloads a XML HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data. </p>
<p>The method has 1 template parameter: the type of objects returned and the parser type.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">uri</td><td>URI to download </td></tr>
<tr><td class="paramname">object_name</td><td>name of the kind of object we are looking for in the http document </td></tr>
<tr><td class="paramname">parse</td><td>Function that parses the data downloaded</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Future of list of results </dd></dl>
template&lt;typename BASE , typename TYPE &gt; 
<table class="memname">
<tr>
<td class="memname">XmlAsyncReader::ResultsFuture&lt; BASE &gt; unity::scopes::qt::XmlAsyncReader::async_get </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>host</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QXmlStreamReaderParams const &amp;&#160;</td>
<td class="paramname"><em>params</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>object_name</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">ParserFunc&lt; BASE &gt; const &amp;&#160;</td>
<td class="paramname"><em>parse</em> = <code>get_results&lt;BASE,&#160;TYPE&gt;</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. </p>
<p>The user may provide his own function to parse the downloaded data.</p>
<p>The method has 2 template parameters: the type of results returned and the type of objects when intantiating. The type of instantiation has to be a derived class of the return type. This is offered for convenience to return more generic types and get advantage of polymorphism.</p>
<p>The method checks at compile time that the instantiation type is effectively a derived class of the type returned.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">host</td><td>the remote host name </td></tr>
<tr><td class="paramname">params</td><td>The parameters that will build the final query, defined by a list of pairs of key and value </td></tr>
<tr><td class="paramname">object_name</td><td>name of the kind of object we are looking for in the http document </td></tr>
<tr><td class="paramname">parse</td><td>Function that parses the data downloaded</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Future of list of results </dd></dl>
template&lt;typename T &gt; 
<table class="memname">
<tr>
<td class="memname">XmlAsyncReader::ResultsFuture&lt; T &gt; unity::scopes::qt::XmlAsyncReader::async_get </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>host</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QXmlStreamReaderParams const &amp;&#160;</td>
<td class="paramname"><em>params</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>object_name</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">ParserFunc&lt; T &gt; const &amp;&#160;</td>
<td class="paramname"><em>parse</em> = <code>get_results&lt;T,&#160;T&gt;</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Downloads a HTTP XML remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. </p>
<p>The user may provide his own function to parse the downloaded data.</p>
<p>The method has 1 template parameters: the type of results returned.</p>
<p>The method checks at compile time that the instantiation type is effectively a derived class of the type returned.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">host</td><td>the remote host name </td></tr>
<tr><td class="paramname">params</td><td>The parameters that wlll build the final query, defined by a list of pairs of key and value </td></tr>
<tr><td class="paramname">object_name</td><td>name of the kind of object we are looking for in the http document </td></tr>
<tr><td class="paramname">parse</td><td>Function that parses the data downloaded</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Future of list of results </dd></dl>
<table class="memname">
<tr>
<td class="memname">QXmlStreamReaderFuture unity::scopes::qt::XmlAsyncReader::async_get_parser </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>uri</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Downloads a HTTP remote file asynchronously and returns a future to a valid XML parser containing the data. </p>
<p>This method downloads a remote http document, fills a valid QXmlStreamReader parser with the downloaded data and returns a future to the parser. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">uri</td><td>URI to download</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Future of valid parser filled with the data downloaded </dd></dl>
<table class="memname">
<tr>
<td class="memname">QXmlStreamReaderFuture unity::scopes::qt::XmlAsyncReader::async_get_parser </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>host</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QXmlStreamReaderParams const &amp;&#160;</td>
<td class="paramname"><em>params</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Downloads a HTTP remote file asynchronously and returns a future to a valid XML parser containing the data. </p>
<p>This method downloads a remote http document, fills a valid QXmlStreamReader parser with the downloaded data and returns a future to the parser. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">host</td><td>host name </td></tr>
<tr><td class="paramname">params</td><td>The parameters that will build the final query, defined by a list of pairs of key and value</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Future of valid parser filled with the data downloaded </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">static QXmlStreamReaderSptr unity::scopes::qt::XmlAsyncReader::create_parser_with_data </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>data</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string &amp;&#160;</td>
<td class="paramname"><em>error</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">static</span><span class="mlabel">protected</span></span>  </td>
</tr>
</table>
<p>Creates a QXmlStreamReader filled with the given data. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">data</td><td>The data that contains the XML document </td></tr>
<tr><td class="paramname">error</td><td>Returned by the method, contains any possible error string obtained during the creation of the parser.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>shared pointer to the QXmlStreamReader created </dd></dl>
