---
Title: unity.scopes.qt.HttpAsyncReader
---
        
HttpAsyncReader
===============

Class that downloads http files asynchronously. [More...](#details)

`#include <unity/scopes/qt/HttpAsyncReader.h>`

pub-methods
------------------------------------------------------

template&lt;typename BASE , typename TYPE , typename PARSER &gt;
ResultsFuture&lt; BASE &gt; 
<a href="#aaf1d8c3889f748e3ddd7d96c5f2350fd">async_get</a> (std::string const &uri, std::string const &object\_name, FactoryFunc&lt; PARSER &gt; const &create, ParseFunc&lt; BASE, PARSER &gt; const &parse) const
 
Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data. More...
 
template&lt;typename TYPE , typename PARSER &gt;
ResultsFuture&lt; TYPE &gt; 
<a href="#ae46599f9b8490c17d6ed5780111ffbcd">async_get</a> (std::string const &uri, std::string const &object\_name, FactoryFunc&lt; PARSER &gt; const &create, ParseFunc&lt; TYPE, PARSER &gt; const &parse) const
 
Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data. More...
 
template&lt;typename PARSER &gt;
ParserFuture&lt; PARSER &gt; 
<a href="#a9edea62503249b74b41689c2b524a740">async_get_parser</a> (std::string const &uri, FactoryFunc&lt; PARSER &gt; const &create) const
 
Downloads a HTTP remote file asynchronously and returns a future to a valid parser containing the data. More...
 
std::string 
<a href="#a47ca526cf459e30e0d5191f1b97c4491">get_uri</a> (std::string const &host, std::vector&lt; std::pair&lt; std::string, std::string &gt;&gt; const &parameters) const
 
Constructs a URI with the given host and parameters. This is a convenience method that constructs a uri with a given host and parameterss.
 
pub-static-methods
--------------------------------------------------------------------

template&lt;typename T &gt;
static T 
<a href="#ae2ce7cab02f7dba9b5326246802a65f3">get_or_throw</a> (std::future&lt; T &gt; &f, int64\_t seconds=20)
 
Gets the data of the given future in the gived timeout. If the time given expires and the data in the future is not ready throws a unity::scopes::TimeoutException exception. More...
 
<span id="details"></span>
Detailed Description
--------------------

Class that downloads http files asynchronously.

Executes a remote HTTP query asynchronously to return different futures about results or a parser. The user should define which parser wants to use, and offer a method that given a char\* containing the data downloaded by this class contructs the parser.

Member Function Documentation
-----------------------------

<span id="aaf1d8c3889f748e3ddd7d96c5f2350fd" class="anchor"></span>
template&lt;typename BASE , typename TYPE , typename PARSER &gt;

|                                                                                             |     |                                          |                 |
|---------------------------------------------------------------------------------------------|-----|------------------------------------------|-----------------|
| HttpAsyncReader::ResultsFuture&lt; BASE &gt; unity::scopes::qt::HttpAsyncReader::async\_get | (   | std::string const &                      | *uri*,          |
|                                                                                             |     | std::string const &                      | *object\_name*, |
|                                                                                             |     | FactoryFunc&lt; PARSER &gt; const &      | *create*,       |
|                                                                                             |     | ParseFunc&lt; BASE, PARSER &gt; const &  | *parse*         |
|                                                                                             | )   |                                          | const           |

Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data.

The method has 3 template parameters: the type of results returned, the type of objects when intantiating and the parser type. The type of instantiation has to be a derived class of the return type. This is offered for convenience to return more generic types and get advantage of polymorphism.

The method checks at compile time that the instantiation type is effectively a derived class of the type returned.

Parameters  
|              |                                                                                          |
|--------------|------------------------------------------------------------------------------------------|
| uri          | URI to download                                                                          |
| object\_name | name of the kind of object we are looking for in the http document                       |
| create       | Function that returns a valid parser filled with the data contained in the http document |
| parse        | Function that parses the data downloaded                                                 |

<!-- -->

Returns  
Future of list of results

<span id="ae46599f9b8490c17d6ed5780111ffbcd" class="anchor"></span>
template&lt;typename TYPE , typename PARSER &gt;

|                                                                                             |     |                                          |                 |
|---------------------------------------------------------------------------------------------|-----|------------------------------------------|-----------------|
| HttpAsyncReader::ResultsFuture&lt; TYPE &gt; unity::scopes::qt::HttpAsyncReader::async\_get | (   | std::string const &                      | *uri*,          |
|                                                                                             |     | std::string const &                      | *object\_name*, |
|                                                                                             |     | FactoryFunc&lt; PARSER &gt; const &      | *create*,       |
|                                                                                             |     | ParseFunc&lt; TYPE, PARSER &gt; const &  | *parse*         |
|                                                                                             | )   |                                          | const           |

Downloads a HTTP remote file asynchronously and returns a future to a list of results This method downloads in a separated thread a http document identified by the given URI. It returns a future of list of results based on a given object name. If, for example, the document contains a list of objects identified by the tag "ITEM" it parses the document and returns a list of those objects. The user must provide a function to create the parser for the downloaded data and a parse function that retrieves the data.

The method has 2 template parameters: the type of objects returned and the parser type.

Parameters  
|              |                                                                                          |
|--------------|------------------------------------------------------------------------------------------|
| uri          | URI to download                                                                          |
| object\_name | name of the kind of object we are looking for in the http document                       |
| create       | Function that returns a valid parser filled with the data contained in the http document |
| parse        | Function that parses the data downloaded                                                 |

<!-- -->

Returns  
Future of list of results

<span id="a9edea62503249b74b41689c2b524a740" class="anchor"></span>
template&lt;typename PARSER &gt;

|                                                                                                      |     |                                      |           |
|------------------------------------------------------------------------------------------------------|-----|--------------------------------------|-----------|
| HttpAsyncReader::ParserFuture&lt; PARSER &gt; unity::scopes::qt::HttpAsyncReader::async\_get\_parser | (   | std::string const &                  | *uri*,    |
|                                                                                                      |     | FactoryFunc&lt; PARSER &gt; const &  | *create*  |
|                                                                                                      | )   |                                      | const     |

Downloads a HTTP remote file asynchronously and returns a future to a valid parser containing the data.

This method downloads a remote http document, fills a valid parser with the downloaded data and returns a future to the parser.

Parameters  
|        |                                                                                          |
|--------|------------------------------------------------------------------------------------------|
| uri    | URI to download                                                                          |
| create | Function that returns a valid parser filled with the data contained in the http document |

<!-- -->

Returns  
Future of valid parser filled with the data downloaded

<span id="ae2ce7cab02f7dba9b5326246802a65f3" class="anchor"></span>
template&lt;typename T &gt;

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>T unity::scopes::qt::HttpAsyncReader::get_or_throw</td>
<td>(</td>
<td>std::future&lt; T &gt; &amp; </td>
<td><em>f</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>int64_t </td>
<td><em>seconds</em> = <code>20</code> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Gets the data of the given future in the gived timeout. If the time given expires and the data in the future is not ready throws a <a href="unity.scopes.TimeoutException.md" title="Exception to indicate that a twoway request timed out. ">unity::scopes::TimeoutException</a> exception.

Parameters  
|         |                                     |
|---------|-------------------------------------|
| f       | Future                              |
| seconds | Maximum time to wait for the result |

<!-- -->

Returns  
<a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> of the given future.

