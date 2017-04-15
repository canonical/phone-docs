---
Title: unity.scopes.qt.QSearchQueryBaseAPI
---
        
QSearchQueryBaseAPI
===================

Abstract base class to represent a particular query. [More...](#details)

`#include <unity/scopes/qt/QSearchQueryBaseAPI.h>`

Inheritance diagram for unity::scopes::qt::QSearchQueryBaseAPI:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/63f6b6c2-b6fc-483e-8179-3d60a42c3c4e-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QSearchQueryBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#ade9ee7a415d8fcfc4f2391dae8bb37fb">run</a> (<a href="../unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">SearchReplyProxy</a> const &reply) final
 
Called by scopes run time to start the query. More...
 
virtual void 
<a href="#a81a9ed98e8b092e4cd48aed63bb49f1a">cancelled</a> () final
 
Called by the scopes run time when the query originator cancels a query. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/0c784e4b-bc3b-47b6-a570-f1312d4441fa-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QSearchQueryBaseAPI/closed.png) Public Member Functions inherited from <a href="unity.scopes.SearchQueryBase.md">unity::scopes::SearchQueryBase</a>
<a href="unity.scopes.CannedQuery.md">CannedQuery</a> 
<a href="../unity.scopes.SearchQueryBase.md#a40d6b29a54d2fbd68870ffe38cab740f">query</a> () const
 
Get a canned query for this search request. More...
 
<a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> 
<a href="../unity.scopes.SearchQueryBase.md#a5ede5797f5ea09eaf1cf6a14d03bfe1f">search_metadata</a> () const
 
Get metadata for this search request. More...
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &scope, std::string const &query\_string, SearchListenerBase::SPtr const &reply)
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="unity.scopes.ChildScope.md">ChildScope</a> const &scope, std::string const &query\_string, SearchListenerBase::SPtr const &reply)
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &scope, std::string const &query\_string, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, SearchListenerBase::SPtr const &reply)
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, SearchListenerBase::SPtr const &reply)
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="unity.scopes.ChildScope.md">ChildScope</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, SearchListenerBase::SPtr const &reply)
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, <a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &hints, SearchListenerBase::SPtr const &reply)
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="unity.scopes.ChildScope.md">ChildScope</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, <a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &hints, SearchListenerBase::SPtr const &reply)
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="unity.scopes.ChildScope.md">ChildScope</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, <a href="unity.scopes.Variant.md">Variant</a> const &user\_data, <a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &hints, SearchListenerBase::SPtr const &reply)
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, <a href="unity.scopes.Variant.md">Variant</a> const &user\_data, <a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &hints, SearchListenerBase::SPtr const &reply)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/48f91953-2db0-40b8-b707-877c1a4f662e-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QSearchQueryBaseAPI/closed.png) Public Member Functions inherited from <a href="unity.scopes.QueryBase.md">unity::scopes::QueryBase</a>
bool 
<a href="../unity.scopes.QueryBase.md#a095e61eabe2042eeea5c4df1a444d7d4">valid</a> () const
 
Check whether this query is still valid. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a> 
<a href="../unity.scopes.QueryBase.md#ab6a25ba587387a7f490b8b5a081e9ed6">settings</a> () const
 
Returns a dictionary with the scope's current settings. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class to represent a particular query.

A scope must return an instance of this class from its implementation of <a href="../unity.scopes.ScopeBase.md#a0e4969ff26dc1d396d74c56d896fd564" title="Called by the scopes runtime when a scope needs to instantiate a query. ">ScopeBase::search()</a>.

This is the class that links scope API calls with the main QThread. The instance of this class is moved to the main QThread and pushes events to the Qt event loop.

Note  
The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

<span id="a81a9ed98e8b092e4cd48aed63bb49f1a" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QSearchQueryBaseAPI::cancelled</td>
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

<span id="ade9ee7a415d8fcfc4f2391dae8bb37fb" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QSearchQueryBaseAPI::run</td>
<td>(</td>
<td><a href="../unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">SearchReplyProxy</a> const &amp; </td>
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

Your implementation of <a href="#ade9ee7a415d8fcfc4f2391dae8bb37fb" title="Called by scopes run time to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a href="#ade9ee7a415d8fcfc4f2391dae8bb37fb" title="Called by scopes run time to start the query. ">run()</a>, in which case the query implicitly completes when <a href="#ade9ee7a415d8fcfc4f2391dae8bb37fb" title="Called by scopes run time to start the query. ">run()</a> returns. Alternatively, <a href="#ade9ee7a415d8fcfc4f2391dae8bb37fb" title="Called by scopes run time to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call `push()` from multiple threads without synchronization.

The query completes either when <a href="#ade9ee7a415d8fcfc4f2391dae8bb37fb" title="Called by scopes run time to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).

Parameters  
|       |                                                   |
|-------|---------------------------------------------------|
| reply | The proxy on which to push results for the query. |

Implements <a href="../unity.scopes.SearchQueryBase.md#afc4f15b2266838d7da75b05ea37d504b">unity::scopes::SearchQueryBase</a>.

