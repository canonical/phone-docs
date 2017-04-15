---
Title: unity.scopes.qt.QPreviewQueryBaseAPI
---
        
QPreviewQueryBaseAPI
====================

Abstract base class to represent a particular preview. [More...](#details)

`#include <unity/scopes/qt/QPreviewQueryBaseAPI.h>`

Inheritance diagram for unity::scopes::qt::QPreviewQueryBaseAPI:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/0e5dd160-8a8d-4147-8c3c-f088bfc5e978-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QPreviewQueryBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#ab9aea9df41977a7d999967e525b3b3cf">run</a> (<a href="../unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754">unity::scopes::PreviewReplyProxy</a> const &reply) final
 
Called by scopes run time to start the query. More...
 
virtual void 
<a href="#ac68c5e63e55f818a31a358c8f87ccdeb">cancelled</a> () final
 
Called by the scopes run time when the query originator cancels a query. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/b33e8eff-636a-4a1e-ba0b-9b08bbee5724-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QPreviewQueryBaseAPI/closed.png) Public Member Functions inherited from <a href="unity.scopes.PreviewQueryBase.md">unity::scopes::PreviewQueryBase</a>
<a href="unity.scopes.Result.md">Result</a> 
<a href="../unity.scopes.PreviewQueryBase.md#af6887f9d12ffb69c94b2ddab8c1f99ba">result</a> () const
 
Get result for this preview request. More...
 
<a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> 
<a href="../unity.scopes.PreviewQueryBase.md#a40f82d521b7c31a3b29f4c1143242d62">action_metadata</a> () const
 
Get metadata for this preview request. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/4f910fb8-f06c-4545-aa34-79cfc331adff-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QPreviewQueryBaseAPI/closed.png) Public Member Functions inherited from <a href="unity.scopes.QueryBase.md">unity::scopes::QueryBase</a>
bool 
<a href="../unity.scopes.QueryBase.md#a095e61eabe2042eeea5c4df1a444d7d4">valid</a> () const
 
Check whether this query is still valid. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a> 
<a href="../unity.scopes.QueryBase.md#ab6a25ba587387a7f490b8b5a081e9ed6">settings</a> () const
 
Returns a dictionary with the scope's current settings. More...
 
inherited
---------------------------------------------------------

![-](https://developer.ubuntu.com/static/devportal_uploaded/f350b8e3-7bc4-48a5-82fe-01fe90d3473b-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QPreviewQueryBaseAPI/closed.png) Protected Member Functions inherited from <a href="unity.scopes.PreviewQueryBase.md">unity::scopes::PreviewQueryBase</a>
 
<a href="../unity.scopes.PreviewQueryBase.md#acb87c2d6c81760696d75e9f0a378d6e7">PreviewQueryBase</a> (<a href="unity.scopes.Result.md">Result</a> const &<a href="../unity.scopes.PreviewQueryBase.md#af6887f9d12ffb69c94b2ddab8c1f99ba">result</a>, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata)
 
Instantiates a PreviewQueryBase. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class to represent a particular preview.

A scope must return an instance of this class from its implementation of <a href="../unity.scopes.ScopeBase.md#a154b9b4cfc0f40572cfec60dd819396f" title="Invoked when a scope is requested to create a preview for a particular result. ">ScopeBase::preview()</a>.

This is the class that links scope API calls with the main QThread. The instance of this class is moved to the main QThread and pushes events to the Qt event loop.

Note  
The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

<span id="ac68c5e63e55f818a31a358c8f87ccdeb" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QPreviewQueryBaseAPI::cancelled</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes run time when the query originator cancels a query.

Your implementation of this method should ensure that the scope stops processing the current query as soon as possible. Any calls to a `push()` method once a query is cancelled are ignored, so continuing to push after cancellation only wastes CPU cycles. (`push()` returns `false` once a query is cancelled or exceeds its cardinality limit.)

Implements <a href="../unity.scopes.QueryBase.md#a596b19dbfd6efe96b834be75a9b64c68">unity::scopes::QueryBase</a>.

<span id="ab9aea9df41977a7d999967e525b3b3cf" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QPreviewQueryBaseAPI::run</td>
<td>(</td>
<td><a href="../unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754">unity::scopes::PreviewReplyProxy</a> const &amp; </td>
<td><em>reply</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called by scopes run time to start the query.

Your implementation of <a href="#ab9aea9df41977a7d999967e525b3b3cf" title="Called by scopes run time to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a href="#ab9aea9df41977a7d999967e525b3b3cf" title="Called by scopes run time to start the query. ">run()</a>, in which case the query implicitly completes when <a href="#ab9aea9df41977a7d999967e525b3b3cf" title="Called by scopes run time to start the query. ">run()</a> returns. Alternatively, <a href="#ab9aea9df41977a7d999967e525b3b3cf" title="Called by scopes run time to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call `push()` from multiple threads without synchronization.

The query completes either when <a href="#ab9aea9df41977a7d999967e525b3b3cf" title="Called by scopes run time to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).

Parameters  
|       |                                                   |
|-------|---------------------------------------------------|
| reply | The proxy on which to push results for the query. |

Implements <a href="../unity.scopes.PreviewQueryBase.md#a81b89daf29cd1ada55286f2a3a871347">unity::scopes::PreviewQueryBase</a>.

