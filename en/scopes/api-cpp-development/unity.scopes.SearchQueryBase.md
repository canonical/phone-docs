---
Title: unity.scopes.SearchQueryBase
---
        
SearchQueryBase
===============

Abstract base class to represent a particular query. [More...](#details)

`#include <unity/scopes/SearchQueryBase.h>`

Inheritance diagram for unity::scopes::SearchQueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/9235ff9a-5459-4fc9-9346-06a6da95c7d9-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchQueryBase/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#afc4f15b2266838d7da75b05ea37d504b">run</a> (<a href="../unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">SearchReplyProxy</a> const &reply)=0
 
Called by scopes runtime to start the query. More...
 
<a href="unity.scopes.CannedQuery.md">CannedQuery</a> 
<a href="#a40d6b29a54d2fbd68870ffe38cab740f">query</a> () const
 
Get a canned query for this search request. More...
 
<a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> 
<a href="#a5ede5797f5ea09eaf1cf6a14d03bfe1f">search_metadata</a> () const
 
Get metadata for this search request. More...
 
Subquery methods

The subsearch() methods are for use by aggregating scopes. When an aggregator passes a query to its child scopes, it should use subsearch() instead of the normal <a href="../unity.scopes.Scope.md#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">Scope::search()</a> that would be called by a client. subsearch() takes care of automatically forwarding query cancellation to child scopes. This means that there is no need for an aggregating scope to explicitly forward cancellation to child scopes when its <a href="../unity.scopes.QueryBase.md#a596b19dbfd6efe96b834be75a9b64c68" title="Called by the scopes runtime when the query originator cancels a query. ">QueryBase::cancelled()</a> method is called by the scopes runtime.

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
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/fc1f9cd3-4a64-4245-aac9-4fb5b34a0c1f-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchQueryBase/closed.png) Public Member Functions inherited from <a href="unity.scopes.QueryBase.md">unity::scopes::QueryBase</a>
virtual void 
<a href="../unity.scopes.QueryBase.md#a596b19dbfd6efe96b834be75a9b64c68">cancelled</a> ()=0
 
Called by the scopes runtime when the query originator cancels a query. More...
 
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

Note  
The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

<span id="a40d6b29a54d2fbd68870ffe38cab740f" class="anchor"></span>
|                                                                                                                   |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.CannedQuery.md">CannedQuery</a> unity::scopes::SearchQueryBase::query | (   |     | )   | const |

Get a canned query for this search request.

Returns  
The canned query.

<!-- -->

Exceptions  
|                       |                                                                    |
|-----------------------|--------------------------------------------------------------------|
| unity::LogicException | if the canned query was not initialized (was default-constructed). |

<span id="afc4f15b2266838d7da75b05ea37d504b" class="anchor"></span>
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
<td>virtual void unity::scopes::SearchQueryBase::run</td>
<td>(</td>
<td><a href="../unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">SearchReplyProxy</a> const &amp; </td>
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

Called by scopes runtime to start the query.

Your implementation of <a href="#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a href="#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">run()</a>, in which case the query implicitly completes when <a href="#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">run()</a> returns. Alternatively, <a href="#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call `push()` from multiple threads without synchronization.

The query completes either when <a href="#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).

Parameters  
|       |                                                   |
|-------|---------------------------------------------------|
| reply | The proxy on which to push results for the query. |

Implemented in <a href="../unity.scopes.qt.QSearchQueryBaseAPI.md#ade9ee7a415d8fcfc4f2391dae8bb37fb">unity::scopes::qt::QSearchQueryBaseAPI</a>.

<span id="a5ede5797f5ea09eaf1cf6a14d03bfe1f" class="anchor"></span>
|                                                                                                                                    |     |     |     |       |
|------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> unity::scopes::SearchQueryBase::search\_metadata | (   |     | )   | const |

Get metadata for this search request.

Returns  
The search metadata.

<!-- -->

Exceptions  
|                       |                                                                   |
|-----------------------|-------------------------------------------------------------------|
| unity::LogicException | if search metadata was not initialized (was default-constructed). |

