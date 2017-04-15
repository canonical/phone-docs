---
Title: unity.scopes.qt.QPreviewQueryBase
---
        
QPreviewQueryBase
=================

Abstract base class to represent a particular preview. [More...](#details)

`#include <unity/scopes/qt/QPreviewQueryBase.h>`

Inheritance diagram for unity::scopes::qt::QPreviewQueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/e46d78c5-7fdc-4f30-99ca-336274e09b15-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QPreviewQueryBase/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#ad78a0506cb7e2522fc351bfb70ba45dc">run</a> (unity::scopes::qt::QPreviewReplyProxy const &reply)=0
 
Called by scopes run time to start the query. More...
 
virtual void 
<a href="#a9940e957abbea418e3e5975da60afda7">cancelled</a> ()=0
 
Called by the scopes run time when the query originator cancels a query. More...
 
<a href="unity.scopes.qt.QResult.md">QResult</a> 
<a href="#ac2085be111dbd8e624af95d0205efc75">result</a> () const
 
Get result for this preview request. More...
 
<a href="unity.scopes.qt.QActionMetadata.md">QActionMetadata</a> 
<a href="#a6fe3ece7ffc9258e9c9fc17ac3bb8f5e">action_metadata</a> () const
 
Get metadata for this preview request. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class to represent a particular preview.

A scope must return an instance of this class from its implementation of <a href="../unity.scopes.ScopeBase.md#a154b9b4cfc0f40572cfec60dd819396f" title="Invoked when a scope is requested to create a preview for a particular result. ">ScopeBase::preview()</a>.

Note  
The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

<span id="a6fe3ece7ffc9258e9c9fc17ac3bb8f5e" class="anchor"></span>
|                                                                                                                                               |     |     |     |       |
|-----------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.qt.QActionMetadata.md">QActionMetadata</a> unity::scopes::qt::QPreviewQueryBase::action\_metadata | (   |     | )   | const |

Get metadata for this preview request.

Returns  
search metadata

<!-- -->

Exceptions  
|                       |                                                                      |
|-----------------------|----------------------------------------------------------------------|
| unity::LogicException | if preview metadata was not initialized (the default ctor was used). |

<span id="a9940e957abbea418e3e5975da60afda7" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QPreviewQueryBase::cancelled</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes run time when the query originator cancels a query.

Your implementation of this method should ensure that the scope stops processing the current query as soon as possible. Any calls to a `push()` method once a query is cancelled are ignored, so continuing to push after cancellation only wastes CPU cycles. (`push()` returns `false` once a query is cancelled or exceeds its cardinality limit.)

<span id="ac2085be111dbd8e624af95d0205efc75" class="anchor"></span>
|                                                                                                                     |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.qt.QResult.md">QResult</a> unity::scopes::qt::QPreviewQueryBase::result | (   |     | )   | const |

Get result for this preview request.

Exceptions  
|                       |                                                            |
|-----------------------|------------------------------------------------------------|
| unity::LogicException | if result was not initialized (the default ctor was used). |

<!-- -->

Returns  
result

<span id="ad78a0506cb7e2522fc351bfb70ba45dc" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QPreviewQueryBase::run</td>
<td>(</td>
<td>unity::scopes::qt::QPreviewReplyProxy const &amp; </td>
<td><em>reply</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Called by scopes run time to start the query.

Your implementation of <a href="#ad78a0506cb7e2522fc351bfb70ba45dc" title="Called by scopes run time to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a href="#ad78a0506cb7e2522fc351bfb70ba45dc" title="Called by scopes run time to start the query. ">run()</a>, in which case the query implicitly completes when <a href="#ad78a0506cb7e2522fc351bfb70ba45dc" title="Called by scopes run time to start the query. ">run()</a> returns. Alternatively, <a href="#ad78a0506cb7e2522fc351bfb70ba45dc" title="Called by scopes run time to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call `push()` from multiple threads without synchronization.

The query completes either when <a href="#ad78a0506cb7e2522fc351bfb70ba45dc" title="Called by scopes run time to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).

Parameters  
|       |                                                   |
|-------|---------------------------------------------------|
| reply | The proxy on which to push results for the query. |

