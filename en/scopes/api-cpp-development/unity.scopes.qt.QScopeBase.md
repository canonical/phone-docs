---
Title: unity.scopes.qt.QScopeBase
---
        
QScopeBase
==========

Base class for a scope implementation. [More...](#details)

`#include <unity/scopes/qt/QScopeBase.h>`

Inheritance diagram for unity::scopes::qt::QScopeBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/b01acb15-5744-4f19-8ac5-5f1642b36da0-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QScopeBase/classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#a948bd6ed6f465292db9ffb0eff11f1de">start</a> (QString const &)
 
virtual void 
<a href="#a4cd139ca1b5cb8a1943b39d0729d8ca5">stop</a> ()
 
virtual QPreviewQueryBase::UPtr 
<a href="#afdedf1ba41623c1ac060ecc4b014f67f">preview</a> (const <a href="unity.scopes.qt.QResult.md">QResult</a> &, const <a href="unity.scopes.qt.QActionMetadata.md">QActionMetadata</a> &)=0
 
virtual QSearchQueryBase::UPtr 
<a href="#a5132deae23a3916170dcfe6fa41810f4">search</a> (<a href="unity.scopes.CannedQuery.md">unity::scopes::CannedQuery</a> const &q, <a href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> const &)=0
 
<span id="details"></span>
Detailed Description
--------------------

Base class for a scope implementation.

Scopes are accessed by the scopes run time as a shared library (one library per scope). Each scope must implement a class that derives from <a href="index.html" title="Base class for a scope implementation. ">QScopeBase</a>, for example:

<span class="preprocessor">\#include &lt;unity/scopes/qt/QScopeBase.h&gt;</span>

<span class="keyword">class </span>MyScope : <span class="keyword">public</span> <a href="index.html" class="code">unity::scopes::qt::QScopeBase</a>

{

<span class="keyword">public</span>:

MyScope();

<span class="keyword">virtual</span> ~MyScope();

<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a href="#a948bd6ed6f465292db9ffb0eff11f1de" class="code">start</a>(QString <span class="keyword">const</span>& scope\_id); <span class="comment">// Optional</span>

<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a href="#a4cd139ca1b5cb8a1943b39d0729d8ca5" class="code">stop</a>(); <span class="comment">// Optional</span>

<span class="comment">// ...</span>

};

In addition, the library must provide two functions with "C" linkage:

-   a create function that must return a pointer to the derived instance
-   a destroy function that is passed the pointer returned by the create function

If the create function throws an exception, the destroy function will not be called. If the create function returns NULL, the destroy function *will* be called with NULL as its argument.

Rather than hard-coding the names of the functions, use the UNITY\_SCOPE\_CREATE\_FUNCTION and UNITY\_SCOPE\_DESTROY\_FUNCTION macros, for example:

<span class="comment">// You must provide a function that creates your scope on the heap and</span>

<span class="comment">// pass this function to the QScopeBaseAPI constructor.</span>

<a href="index.html" class="code">unity::scopes::qt::QScopeBase</a> \*create\_my\_scope()

{

<span class="keywordflow">return</span> <span class="keyword">new</span> MyScope();

}

<a href="unity.scopes.ScopeBase.md" class="code">unity::scopes::ScopeBase</a>\*

UNITY\_SCOPE\_CREATE\_FUNCTION()

{

<span class="comment">// You must return a dynamically allocated QScopeBaseAPI instance here.</span>

<span class="comment">// In turn, that instance calls your creation function to instantiate</span>

<span class="comment">// your scope in the correct Qt thread.</span>

<span class="keywordflow">return</span> <span class="keyword">new</span> QScopeBaseAPI(create\_my\_scope);

}

<span class="comment">// The runtime, once it has stopped your scope, calls the destroy function.</span>

<span class="keywordtype">void</span>

UNITY\_SCOPE\_DESTROY\_FUNCTION(unity::scopes::ScopeBase\* scope)

{

<span class="keyword">delete</span> scope;

}

After the scopes run time has obtained a pointer to the class instance from the create function, it calls <a href="#a948bd6ed6f465292db9ffb0eff11f1de">start()</a>, which allows the scope to initialize itself.

Member Function Documentation
-----------------------------

<span id="afdedf1ba41623c1ac060ecc4b014f67f" class="anchor"></span>
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
<td>virtual QPreviewQueryBase::UPtr unity::scopes::qt::QScopeBase::preview</td>
<td>(</td>
<td>const <a href="unity.scopes.qt.QResult.md">QResult</a> &amp; </td>
<td>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>const <a href="unity.scopes.qt.QActionMetadata.md">QActionMetadata</a> &amp; </td>
<td> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Called each time a new preview is requested

<span id="a5132deae23a3916170dcfe6fa41810f4" class="anchor"></span>
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
<td>virtual QSearchQueryBase::UPtr unity::scopes::qt::QScopeBase::search</td>
<td>(</td>
<td><a href="unity.scopes.CannedQuery.md">unity::scopes::CannedQuery</a> const &amp; </td>
<td><em>q</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> const &amp; </td>
<td> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Called each time a new query is requested

<span id="a948bd6ed6f465292db9ffb0eff11f1de" class="anchor"></span>
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
<td>void QScopeBase::start</td>
<td>(</td>
<td>QString const &amp; </td>
<td><em>start_string</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once at startup

<span id="a4cd139ca1b5cb8a1943b39d0729d8ca5" class="anchor"></span>
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
<td>void QScopeBase::stop</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called at shutdown

