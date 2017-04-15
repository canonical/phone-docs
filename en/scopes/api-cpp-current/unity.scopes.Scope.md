---
Title: unity.scopes.Scope
---
        
Scope
=====

Allows queries, preview requests, and activation requests to be sent to a scope. [More...](#details)

`#include <unity/scopes/Scope.h>`

Inheritance diagram for unity::scopes::Scope:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/67396ef0-5393-4d41-b02b-0f8b9a521f3a-api/scopes/cpp/sdk-15.04.4/unity.scopes.Scope/classunity_1_1scopes_1_1_scope__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
<a href="#a09976690ca801ecada50687df6046a29">search</a> (std::string const &query\_string, <a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &metadata, SearchListenerBase::SPtr const &reply)=0
 
Initiates a search query. More...
 
virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
<a href="#ab1a19b76666ac9d900122261ea209c62">search</a> (std::string const &query\_string, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, <a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &metadata, SearchListenerBase::SPtr const &reply)=0
 
Initiates a search query (overloaded method). More...
 
virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
<a href="#a4aa5feb40055fd7edaa45e7d059438c7">search</a> (std::string const &query\_string, std::string const &department\_id, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, <a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &metadata, SearchListenerBase::SPtr const &reply)=0
 
Initiates a search query (overloaded method). More...
 
virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
<a href="#a0af40d8e0032ea8b0344e380360dae18">activate</a> (<a href="unity.scopes.Result.md">Result</a> const &result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata, ActivationListenerBase::SPtr const &reply)=0
 
Initiates activation of a search result. More...
 
virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
<a href="#a61f749e46b8fbf1a687d1c055d349f4f">perform_action</a> (<a href="unity.scopes.Result.md">Result</a> const &result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata, std::string const &widget\_id, std::string const &action\_id, ActivationListenerBase::SPtr const &reply)=0
 
Initiates activation of a preview action. More...
 
virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
<a href="#a82b24083994e676524b10c407f281aa4">preview</a> (<a href="unity.scopes.Result.md">Result</a> const &result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata, PreviewListenerBase::SPtr const &reply)=0
 
Initiates preview request. More...
 
virtual 
<a href="#a8d717a89a470cfa65080f132ea2ff4ab">~Scope</a> ()
 
Destroys a Scope. More...
 
virtual <a href="../unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> 
<a href="#a1b9676ae625ffff0ee992da1f4bd8a5c">child_scopes</a> ()=0
 
Returns a list of child scopes aggregated by this scope. More...
 
virtual bool 
<a href="#a7dcef44d071e0b0bcff34bf588408297">set_child_scopes</a> (<a href="../unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> const &<a href="#a1b9676ae625ffff0ee992da1f4bd8a5c">child_scopes</a>)=0
 
Sets the list of child scopes aggregated by this scope. More...
 
virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
<a href="#a27d05e99cc572508bcfe620d20158c91">search</a> (std::string const &query\_string, std::string const &department\_id, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state, <a href="unity.scopes.Variant.md">Variant</a> const &user\_data, <a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &metadata, SearchListenerBase::SPtr const &reply)=0
 
Initiates a search query (overloaded method). More...
 
virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> 
<a href="#aa53e54f6d9b505913dafda9ffca24d58">activate_result_action</a> (<a href="unity.scopes.Result.md">Result</a> const &result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata, std::string const &action\_id, ActivationListenerBase::SPtr const &reply)=0
 
Initiates activation of a result (in-card) action. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/cb9aa353-b926-4138-8dcd-2973c900ea1b-api/scopes/cpp/sdk-15.04.4/unity.scopes.Scope/closed.png) Public Member Functions inherited from <a href="unity.scopes.Object.md">unity::scopes::Object</a>
virtual std::string 
<a href="../unity.scopes.Object.md#ad7618cc9d878c40b389361d4acd473ae">endpoint</a> ()=0
 
Returns the endpoint this proxy connects to. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a1b55aea886f0a68cb8a578f7ee0b1cfd">identity</a> ()=0
 
Returns the identity of the target object of this proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a40a997516629df3dacca9742dbddd6cb">target_category</a> ()=0
 
Returns the category of the target object of this proxy. More...
 
virtual int64\_t 
<a href="../unity.scopes.Object.md#a41d9839f1e3cbcd6d8baee0736feccab">timeout</a> ()=0
 
Returns the timeout in milliseconds if this proxy is a twoway proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a9ae27e1f30dc755abcd796a1e8a25150">to_string</a> ()=0
 
Converts a proxy into its string representation. More...
 
<span id="details"></span>
Detailed Description
--------------------

Allows queries, preview requests, and activation requests to be sent to a scope.

Constructor & Destructor Documentation
--------------------------------------

<span id="a8d717a89a470cfa65080f132ea2ff4ab" class="anchor"></span>
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
<td>virtual unity::scopes::Scope::~Scope</td>
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

Destroys a <a href="index.html" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>.

Destroying a <a href="index.html" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a> has no effect on any query that might still be in progress.

Member Function Documentation
-----------------------------

<span id="a0af40d8e0032ea8b0344e380360dae18" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::activate</td>
<td>(</td>
<td><a href="unity.scopes.Result.md">Result</a> const &amp; </td>
<td><em>result</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>ActivationListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
</tr>
<tr class="even">
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

Initiates activation of a search result.

Parameters  
|          |                                        |
|----------|----------------------------------------|
| result   | The result that was activated.         |
| metadata | Additional data to pass to the scope.  |
| reply    | The callback object to receive replies |

<!-- -->

Returns  
A proxy that permits cancellation of this request.

<span id="aa53e54f6d9b505913dafda9ffca24d58" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::activate_result_action</td>
<td>(</td>
<td><a href="unity.scopes.Result.md">Result</a> const &amp; </td>
<td><em>result</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>action_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>ActivationListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
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

Initiates activation of a result (in-card) action.

Parameters  
|            |                                        |
|------------|----------------------------------------|
| result     | The result that was was activated.     |
| metadata   | Additional data to pass to the scope.  |
| action\_id | The identifier of the action.          |
| reply      | The callback object to receive replies |

<!-- -->

Returns  
A proxy that permits cancellation of this request.

<span id="a1b9676ae625ffff0ee992da1f4bd8a5c" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> unity::scopes::Scope::child_scopes</td>
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

Returns a list of child scopes aggregated by this scope.

Returns  
The list of child scopes aggregated by this scope.

<span id="a61f749e46b8fbf1a687d1c055d349f4f" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::perform_action</td>
<td>(</td>
<td><a href="unity.scopes.Result.md">Result</a> const &amp; </td>
<td><em>result</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>widget_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>action_id</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>ActivationListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
</tr>
<tr class="even">
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

Initiates activation of a preview action.

Parameters  
|            |                                                                 |
|------------|-----------------------------------------------------------------|
| result     | The result that was previewed.                                  |
| metadata   | Additional data to pass to the scope.                           |
| widget\_id | The identifier of the 'actions' widget of the activated action. |
| action\_id | The identifier of an action to activate.                        |
| reply      | The callback object to receive replies                          |

<!-- -->

Returns  
A proxy that permits cancellation of this request.

<span id="a82b24083994e676524b10c407f281aa4" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::preview</td>
<td>(</td>
<td><a href="unity.scopes.Result.md">Result</a> const &amp; </td>
<td><em>result</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>PreviewListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
</tr>
<tr class="even">
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

Initiates preview request.

Parameters  
|          |                                         |
|----------|-----------------------------------------|
| result   | The result to be previewed.             |
| metadata | Additional data to pass to the scope.   |
| reply    | The callback object to receive replies. |

<!-- -->

Returns  
A proxy that permits cancellation of this request.

<span id="a09976690ca801ecada50687df6046a29" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::search</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>query_string</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>SearchListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
</tr>
<tr class="even">
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

Initiates a search query.

The <a href="#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">search()</a> method expects a <a href="unity.scopes.SearchListenerBase.md" title="Abstract base interface for a client to receive the results of a query. ">SearchListenerBase</a>, which it uses to return the results for the query. <a href="#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">search()</a> may block for some time, for example, if the target scope is not running and needs to be started first. Results for the query may begin to arrive only after <a href="#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">search()</a> completes (but may also arrive while <a href="#a09976690ca801ecada50687df6046a29" title="Initiates a search query. ">search()</a> is still running).

Parameters  
|               |                                         |
|---------------|-----------------------------------------|
| query\_string | The search string.                      |
| metadata      | Additional data to pass to the scope.   |
| reply         | The callback object to receive replies. |

<!-- -->

Returns  
A proxy that permits cancellation of this request.

<span id="ab1a19b76666ac9d900122261ea209c62" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::search</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>query_string</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.FilterState.md">FilterState</a> const &amp; </td>
<td><em>filter_state</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>SearchListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
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

Initiates a search query (overloaded method).

This method has same synopsis as previous method, but it takes additional <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">unity::scopes::FilterState</a> argument.

Parameters  
|               |                                         |
|---------------|-----------------------------------------|
| query\_string | The search string.                      |
| filter\_state | The state of filters.                   |
| metadata      | Additional data to pass to the scope.   |
| reply         | The callback object to receive replies. |

<!-- -->

Returns  
A proxy that permits cancellation of this request.

<span id="a4aa5feb40055fd7edaa45e7d059438c7" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::search</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>query_string</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>department_id</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="unity.scopes.FilterState.md">FilterState</a> const &amp; </td>
<td><em>filter_state</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>SearchListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
</tr>
<tr class="even">
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

Initiates a search query (overloaded method).

This method has same synopsis as previous method, but it takes additional department identifier argument.

Parameters  
|                |                                           |
|----------------|-------------------------------------------|
| query\_string  | The search string.                        |
| department\_id | The identifier of a department to search. |
| filter\_state  | The state of filters.                     |
| metadata       | Additional data to pass to the scope.     |
| reply          | The callback object to receive replies.   |

<!-- -->

Returns  
A proxy that permits cancellation of this request.

<span id="a27d05e99cc572508bcfe620d20158c91" class="anchor"></span>
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
<td>virtual <a href="../unity.scopes.md#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a> unity::scopes::Scope::search</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>query_string</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>department_id</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="unity.scopes.FilterState.md">FilterState</a> const &amp; </td>
<td><em>filter_state</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.Variant.md">Variant</a> const &amp; </td>
<td><em>user_data</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>SearchListenerBase::SPtr const &amp; </td>
<td><em>reply</em> </td>
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

Initiates a search query (overloaded method).

This method has same synopsis as previous search method, but it takes additional user\_data argument.

Parameters  
|                |                                           |
|----------------|-------------------------------------------|
| query\_string  | The search string.                        |
| department\_id | The identifier of a department to search. |
| filter\_state  | The state of filters.                     |
| user\_data     | Arbitrary data.                           |
| metadata       | Additional data to pass to the scope.     |
| reply          | The callback object to receive replies    |

<!-- -->

Returns  
A proxy that permits cancellation of this request.

<span id="a7dcef44d071e0b0bcff34bf588408297" class="anchor"></span>
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
<td>virtual bool unity::scopes::Scope::set_child_scopes</td>
<td>(</td>
<td><a href="../unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> const &amp; </td>
<td><em>child_scopes</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Sets the list of child scopes aggregated by this scope.

Note  
The only time this call will return false is if the scope cannot write to its config directory. This should not happen in real-world usage, but if it does, check the log for more detail.

<!-- -->

Parameters  
|               |                                                    |
|---------------|----------------------------------------------------|
| child\_scopes | The list of child scopes aggregated by this scope. |

<!-- -->

Returns  
True if the list was successfully set.

