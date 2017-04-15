---
Title: unity.scopes.SearchListenerBase
---
        
SearchListenerBase
==================

Abstract base interface for a client to receive the results of a query. [More...](#details)

`#include <unity/scopes/SearchListenerBase.h>`

Inheritance diagram for unity::scopes::SearchListenerBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/21935c2e-a46d-41d8-b94c-b1472664ce3f-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchListenerBase/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#a93ba33c6e1a0064ac9756134ccb11705">push</a> (Department::SCPtr const &parent)
 
Called at most once by the scopes runtime for a tree of departments returned by a query. More...
 
virtual void 
<a href="#a3ebd3e8be67824c7a34068da6075bd99">push</a> (<a href="unity.scopes.CategorisedResult.md">CategorisedResult</a> result)=0
 
Called once by the scopes runtime for each result that is returned by a query().
 
virtual void 
<a href="#ab96864e4b3d6718e4b87b81aa14657e3">push</a> (experimental::Annotation annotation)
 
Called once by the scopes runtime for each annotation that is returned by a query(). More...
 
virtual void 
<a href="#af246bd38c8ba9cec36dfae3d0607dbfc">push</a> (Category::SCPtr const &category)
 
Called once by the scopes runtime for each category that is returned by a query(). More...
 
virtual void 
<a href="#ac7904ac1f83fe60cddc8f08c6e7d971b">push</a> (<a href="../unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &filters, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state)
 
Called once by the scopes to send all the filters and their state. More...
 
virtual void 
<a href="#aaf1af46d5d7b1219558f15c22ef85b10">push</a> (<a href="../unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &filters)
 
Called once by the scope to send all filters and their states. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/91ce68eb-e00b-4851-97f5-ba72041a571a-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchListenerBase/closed.png) Public Member Functions inherited from <a href="unity.scopes.ListenerBase.md">unity::scopes::ListenerBase</a>
virtual void 
<a href="../unity.scopes.ListenerBase.md#afb44937749b61c9e3ebfa20ec6e4634b">finished</a> (<a href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &details)=0
 
Called once by the scopes runtime after the final result for a request was sent. More...
 
virtual void 
<a href="../unity.scopes.ListenerBase.md#a3b38fa642754142f40968f3ff8d1bdc8">info</a> (<a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &op\_info)
 
Called by the scopes runtime each time a scope reports additional information about the reply to a query. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base interface for a client to receive the results of a query.

An instance of this interface must be passed to <a href="../unity.scopes.Scope.md#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">Scope::search()</a>. Results for the query are delivered to the client by the scopes run time by invoking the appropriate push method.

If the implementation of a push method throws an exception, the scopes runtime calls <a href="../unity.scopes.ListenerBase.md#afb44937749b61c9e3ebfa20ec6e4634b" title="Called once by the scopes runtime after the final result for a request was sent. ">ListenerBase::finished()</a> with an 'Error' status.

See also  
<a href="unity.scopes.ListenerBase.md" title="Abstract base class to be notified of request completion (such as a query or activation request)...">ListenerBase</a>

Member Function Documentation
-----------------------------

<span id="a93ba33c6e1a0064ac9756134ccb11705" class="anchor"></span>
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
<td>virtual void unity::scopes::SearchListenerBase::push</td>
<td>(</td>
<td>Department::SCPtr const &amp; </td>
<td><em>parent</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called at most once by the scopes runtime for a tree of departments returned by a query.

The default implementation does nothing.

<span id="ab96864e4b3d6718e4b87b81aa14657e3" class="anchor"></span>
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
<td>virtual void unity::scopes::SearchListenerBase::push</td>
<td>(</td>
<td>experimental::Annotation </td>
<td><em>annotation</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scopes runtime for each annotation that is returned by a query().

The default implementation does nothing.

<span id="af246bd38c8ba9cec36dfae3d0607dbfc" class="anchor"></span>
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
<td>virtual void unity::scopes::SearchListenerBase::push</td>
<td>(</td>
<td>Category::SCPtr const &amp; </td>
<td><em>category</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scopes runtime for each category that is returned by a query().

Receipt of categories may be interleaved with the receipt of results, that is, there is no guarantee that the complete set of categories will be provided before the first query result.

The default implementation does nothing.

<span id="ac7904ac1f83fe60cddc8f08c6e7d971b" class="anchor"></span>
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
<td>virtual void unity::scopes::SearchListenerBase::push</td>
<td>(</td>
<td><a href="../unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &amp; </td>
<td><em>filters</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.FilterState.md">FilterState</a> const &amp; </td>
<td><em>filter_state</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scopes to send all the filters and their state.

**<a href="../deprecated.md#_deprecated000001">Deprecated:</a>**  
Please override the push(Filters& const) method instead. This method will be removed from future releases.

The default implementation does nothing.

<span id="aaf1af46d5d7b1219558f15c22ef85b10" class="anchor"></span>
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
<td>virtual void unity::scopes::SearchListenerBase::push</td>
<td>(</td>
<td><a href="../unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &amp; </td>
<td><em>filters</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scope to send all filters and their states.

The default implementation does nothing.

