---
Title: unity.scopes.qt.QSearchQueryBase
---
        
QSearchQueryBase
================

Abstract base class to represent a particular query. [More...](#details)

`#include <unity/scopes/qt/QSearchQueryBase.h>`

Inheritance diagram for unity::scopes::qt::QSearchQueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/7e61e600-c962-45fa-b6d0-7e29ec2a5647-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QSearchQueryBase/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

<a href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> 
<a href="#a1ad69c195d42ecaea4a7851f1dfc6023">query</a> () const
 
Get a canned query for this search request. More...
 
<a href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> 
<a href="#a222670a440c3712d1bf5cfe220d6f55a">search_metadata</a> () const
 
Get metadata for this search request. More...
 
member-group
------------------------------------------------

<span id="amgrp57d140a8b5aacb224d2be9c1320bc8e9" class="anchor"></span>The subsearch() methods are for use by aggregating scopes. When an aggregator passes a query to its child scopes, it should use subsearch() instead of the normal <a href="../unity.scopes.Scope.md#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">Scope::search()</a> that would be called by a client. subsearch() takes care of automatically forwarding query cancellation to child scopes. This means that there is no need for an aggregating scope to explicitly forward cancellation to child scopes when its <a href="../unity.scopes.QueryBase.md#a596b19dbfd6efe96b834be75a9b64c68" title="Called by the scopes runtime when the query originator cancels a query. ">QueryBase::cancelled()</a> method is called by the scopes run time.

<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &scope, std::string const &query\_string, SearchListenerBase::SPtr const &reply)
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &scope, std::string const &query\_string, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, SearchListenerBase::SPtr const &reply)
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, SearchListenerBase::SPtr const &reply)
 
<a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
**subsearch** (<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> const &scope, std::string const &query\_string, std::string const &department\_id, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, <a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &hints, SearchListenerBase::SPtr const &reply)
 
virtual void 
<a href="#ae12e4040935c2240f2f02482acd49e89">run</a> (QSearchReplyProxy const &reply)=0
 
Called by scopes run time to start the query. More...
 
virtual void 
<a href="#a811927afeb090c114fd8ad5b459ec4e7">cancelled</a> ()=0
 
Called by the scopes run time when the query originator cancels a query. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class to represent a particular query.

A scope must return an instance of this class from its implementation of <a href="../unity.scopes.ScopeBase.md#a0e4969ff26dc1d396d74c56d896fd564" title="Called by the scopes runtime when a scope needs to instantiate a query. ">ScopeBase::search()</a>.

Note  
The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block.

Member Function Documentation
-----------------------------

<span id="a811927afeb090c114fd8ad5b459ec4e7" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QSearchQueryBase::cancelled</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span><span class="mlabel">slot</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes run time when the query originator cancels a query.

Your implementation of this method should ensure that the scope stops processing the current query as soon as possible. Any calls to a `push()` method once a query is cancelled are ignored, so continuing to push after cancellation only wastes CPU cycles. (`push()` returns `false` once a query is cancelled or exceeds its cardinality limit.)

<span id="a1ad69c195d42ecaea4a7851f1dfc6023" class="anchor"></span>
|                                                                                                                             |     |     |     |       |
|-----------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> unity::scopes::qt::QSearchQueryBase::query | (   |     | )   | const |

Get a canned query for this search request.

Returns  
The canned query.

<!-- -->

Exceptions  
|                       |                                                                    |
|-----------------------|--------------------------------------------------------------------|
| unity::LogicException | if the canned query was not initialized (was default-constructed). |

<span id="ae12e4040935c2240f2f02482acd49e89" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QSearchQueryBase::run</td>
<td>(</td>
<td>QSearchReplyProxy const &amp; </td>
<td><em>reply</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span><span class="mlabel">slot</span></span></td>
</tr>
</tbody>
</table>

Called by scopes run time to start the query.

Your implementation of <a href="#ae12e4040935c2240f2f02482acd49e89" title="Called by scopes run time to start the query. ">run()</a> can use the reply proxy to push results for the query. You can push results from within <a href="#ae12e4040935c2240f2f02482acd49e89" title="Called by scopes run time to start the query. ">run()</a>, in which case the query implicitly completes when <a href="#ae12e4040935c2240f2f02482acd49e89" title="Called by scopes run time to start the query. ">run()</a> returns. Alternatively, <a href="#ae12e4040935c2240f2f02482acd49e89" title="Called by scopes run time to start the query. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call `push()` from multiple threads without synchronization.

The query completes either when <a href="#ae12e4040935c2240f2f02482acd49e89" title="Called by scopes run time to start the query. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).

Parameters  
|       |                                                   |
|-------|---------------------------------------------------|
| reply | The proxy on which to push results for the query. |

<span id="a222670a440c3712d1bf5cfe220d6f55a" class="anchor"></span>
|                                                                                                                                                        |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> unity::scopes::qt::QSearchQueryBase::search\_metadata | (   |     | )   | const |

Get metadata for this search request.

Returns  
The search metadata.

<!-- -->

Exceptions  
|                       |                                                                   |
|-----------------------|-------------------------------------------------------------------|
| unity::LogicException | if search metadata was not initialized (was default-constructed). |

