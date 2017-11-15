---
Title: unity.scopes.qt.HttpAsyncReader
---

# unity.scopes.qt.HttpAsyncReader

<p>Class that downloads http files asynchronously.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/HttpAsyncReader.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:aaf1d8c3889f748e3ddd7d96c5f2350fd"><td class="memTemplParams" colspan="2">template&lt;typename BASE , typename TYPE , typename PARSER &gt; </td></tr>
<tr class="memitem:aaf1d8c3889f748e3ddd7d96c5f2350fd"><td class="memTemplItemLeft" align="right" valign="top">ResultsFuture&lt; BASE &gt;&#160;</td><td class="memTemplItemRight" valign="bottom"><a class="el" href="#aaf1d8c3889f748e3ddd7d96c5f2350fd">async_get</a> (std::string const &amp;uri, std::string const &amp;object_name, FactoryFunc&lt; PARSER &gt; const &amp;create, ParseFunc&lt; BASE, PARSER &gt; const &amp;parse) const </td></tr>
<tr class="memdesc:aaf1d8c3889f748e3ddd7d96c5f2350fd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data.  More...<br /></td></tr>
<tr class="separator:aaf1d8c3889f748e3ddd7d96c5f2350fd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae46599f9b8490c17d6ed5780111ffbcd"><td class="memTemplParams" colspan="2">template&lt;typename TYPE , typename PARSER &gt; </td></tr>
<tr class="memitem:ae46599f9b8490c17d6ed5780111ffbcd"><td class="memTemplItemLeft" align="right" valign="top">ResultsFuture&lt; TYPE &gt;&#160;</td><td class="memTemplItemRight" valign="bottom"><a class="el" href="#ae46599f9b8490c17d6ed5780111ffbcd">async_get</a> (std::string const &amp;uri, std::string const &amp;object_name, FactoryFunc&lt; PARSER &gt; const &amp;create, ParseFunc&lt; TYPE, PARSER &gt; const &amp;parse) const </td></tr>
<tr class="memdesc:ae46599f9b8490c17d6ed5780111ffbcd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data.  More...<br /></td></tr>
<tr class="separator:ae46599f9b8490c17d6ed5780111ffbcd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9edea62503249b74b41689c2b524a740"><td class="memTemplParams" colspan="2">template&lt;typename PARSER &gt; </td></tr>
<tr class="memitem:a9edea62503249b74b41689c2b524a740"><td class="memTemplItemLeft" align="right" valign="top">ParserFuture&lt; PARSER &gt;&#160;</td><td class="memTemplItemRight" valign="bottom"><a class="el" href="#a9edea62503249b74b41689c2b524a740">async_get_parser</a> (std::string const &amp;uri, FactoryFunc&lt; PARSER &gt; const &amp;create) const </td></tr>
<tr class="memdesc:a9edea62503249b74b41689c2b524a740"><td class="mdescLeft">&#160;</td><td class="mdescRight">Downloads a HTTP remote file asynchronously and returns a future to a valid parser containing the data.  More...<br /></td></tr>
<tr class="separator:a9edea62503249b74b41689c2b524a740"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a47ca526cf459e30e0d5191f1b97c4491"><td class="memItemLeft" align="right" valign="top">
std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a47ca526cf459e30e0d5191f1b97c4491">get_uri</a> (std::string const &amp;host, std::vector&lt; std::pair&lt; std::string, std::string &gt;&gt; const &amp;parameters) const </td></tr>
<tr class="memdesc:a47ca526cf459e30e0d5191f1b97c4491"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructs a URI with the given host and parameters. This is a convenience method that constructs a uri with a given host and parameterss. <br /></td></tr>
<tr class="separator:a47ca526cf459e30e0d5191f1b97c4491"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Static Public Member Functions</h2></td></tr>
<tr class="memitem:ae2ce7cab02f7dba9b5326246802a65f3"><td class="memTemplParams" colspan="2">template&lt;typename T &gt; </td></tr>
<tr class="memitem:ae2ce7cab02f7dba9b5326246802a65f3"><td class="memTemplItemLeft" align="right" valign="top">static T&#160;</td><td class="memTemplItemRight" valign="bottom"><a class="el" href="#ae2ce7cab02f7dba9b5326246802a65f3">get_or_throw</a> (std::future&lt; T &gt; &amp;f, int64_t seconds=20)</td></tr>
<tr class="memdesc:ae2ce7cab02f7dba9b5326246802a65f3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Gets the data of the given future in the gived timeout. If the time given expires and the data in the future is not ready throws a unity::scopes::TimeoutException exception.  More...<br /></td></tr>
<tr class="separator:ae2ce7cab02f7dba9b5326246802a65f3"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Class that downloads http files asynchronously. </p>
<p>Executes a remote HTTP query asynchronously to return different futures about results or a parser. The user should define which parser wants to use, and offer a method that given a char* containing the data downloaded by this class contructs the parser. </p>
<h2 class="groupheader">Member Function Documentation</h2>
template&lt;typename BASE , typename TYPE , typename PARSER &gt; 
<table class="memname">
<tr>
<td class="memname">HttpAsyncReader::ResultsFuture&lt; BASE &gt; unity::scopes::qt::HttpAsyncReader::async_get </td>
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
<td class="paramtype">FactoryFunc&lt; PARSER &gt; const &amp;&#160;</td>
<td class="paramname"><em>create</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">ParseFunc&lt; BASE, PARSER &gt; const &amp;&#160;</td>
<td class="paramname"><em>parse</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data. </p>
<p>The method has 3 template parameters: the type of results returned, the type of objects when intantiating and the parser type. The type of instantiation has to be a derived class of the return type. This is offered for convenience to return more generic types and get advantage of polymorphism.</p>
<p>The method checks at compile time that the instantiation type is effectively a derived class of the type returned.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">uri</td><td>URI to download </td></tr>
<tr><td class="paramname">object_name</td><td>name of the kind of object we are looking for in the http document </td></tr>
<tr><td class="paramname">create</td><td>Function that returns a valid parser filled with the data contained in the http document </td></tr>
<tr><td class="paramname">parse</td><td>Function that parses the data downloaded</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Future of list of results </dd></dl>
template&lt;typename TYPE , typename PARSER &gt; 
<table class="memname">
<tr>
<td class="memname">HttpAsyncReader::ResultsFuture&lt; TYPE &gt; unity::scopes::qt::HttpAsyncReader::async_get </td>
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
<td class="paramtype">FactoryFunc&lt; PARSER &gt; const &amp;&#160;</td>
<td class="paramname"><em>create</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">ParseFunc&lt; TYPE, PARSER &gt; const &amp;&#160;</td>
<td class="paramname"><em>parse</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data. </p>
<p>The method has 2 template parameters: the type of objects returned and the parser type.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">uri</td><td>URI to download </td></tr>
<tr><td class="paramname">object_name</td><td>name of the kind of object we are looking for in the http document </td></tr>
<tr><td class="paramname">create</td><td>Function that returns a valid parser filled with the data contained in the http document </td></tr>
<tr><td class="paramname">parse</td><td>Function that parses the data downloaded</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Future of list of results </dd></dl>
template&lt;typename PARSER &gt; 
<table class="memname">
<tr>
<td class="memname">HttpAsyncReader::ParserFuture&lt; PARSER &gt; unity::scopes::qt::HttpAsyncReader::async_get_parser </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>uri</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">FactoryFunc&lt; PARSER &gt; const &amp;&#160;</td>
<td class="paramname"><em>create</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Downloads a HTTP remote file asynchronously and returns a future to a valid parser containing the data. </p>
<p>This method downloads a remote http document, fills a valid parser with the downloaded data and returns a future to the parser. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">uri</td><td>URI to download </td></tr>
<tr><td class="paramname">create</td><td>Function that returns a valid parser filled with the data contained in the http document</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Future of valid parser filled with the data downloaded </dd></dl>
template&lt;typename T &gt; 
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">T unity::scopes::qt::HttpAsyncReader::get_or_throw </td>
<td>(</td>
<td class="paramtype">std::future&lt; T &gt; &amp;&#160;</td>
<td class="paramname"><em>f</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">int64_t&#160;</td>
<td class="paramname"><em>seconds</em> = <code>20</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">static</span></span>  </td>
</tr>
</table>
<p>Gets the data of the given future in the gived timeout. If the time given expires and the data in the future is not ready throws a <a class="el" href="unity.scopes.TimeoutException.md" title="Exception to indicate that a twoway request timed out. ">unity::scopes::TimeoutException</a> exception. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">f</td><td>Future </td></tr>
<tr><td class="paramname">seconds</td><td>Maximum time to wait for the result</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd><a class="el" href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> of the given future. </dd></dl>
