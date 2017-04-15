---
Title: unity.scopes.ActivationListenerBase
---
        
ActivationListenerBase
======================

Base class to receive a response to a result activation request. [More...](#details)

`#include <unity/scopes/ActivationListenerBase.h>`

Inheritance diagram for unity::scopes::ActivationListenerBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/cbcd8661-1881-49e9-bce9-b0c230e33bcf-api/scopes/cpp/sdk-15.04.4/unity.scopes.ActivationListenerBase/classunity_1_1scopes_1_1_activation_listener_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#a52106ae2856a2dc7fd6035707bd0bee2">activated</a> (<a href="unity.scopes.ActivationResponse.md">ActivationResponse</a> const &response)
 
Called once by the scopes runtime with the activation response. More...
 
virtual void 
<a href="#a89f1e3697d62b098c73704368d3bc4c8">finished</a> (<a href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &details) override
 
Called once by the scopes runtime after the final result for a request was sent. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/d42c1b69-11db-4a8b-853d-0d212109f55c-api/scopes/cpp/sdk-15.04.4/unity.scopes.ActivationListenerBase/closed.png) Public Member Functions inherited from <a href="unity.scopes.ListenerBase.md">unity::scopes::ListenerBase</a>
virtual void 
<a href="../unity.scopes.ListenerBase.md#a3b38fa642754142f40968f3ff8d1bdc8">info</a> (<a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &op\_info)
 
Called by the scopes runtime each time a scope reports additional information about the reply to a query. More...
 
<span id="details"></span>
Detailed Description
--------------------

Base class to receive a response to a result activation request.

Member Function Documentation
-----------------------------

<span id="a52106ae2856a2dc7fd6035707bd0bee2" class="anchor"></span>
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
<td>void unity::scopes::ActivationListenerBase::activated</td>
<td>(</td>
<td><a href="unity.scopes.ActivationResponse.md">ActivationResponse</a> const &amp; </td>
<td><em>response</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scopes runtime with the activation response.

The default implementation does nothing.

Parameters  
|          |                                                                                                                                                                                                                                                                 |
|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| response | The response to the activation request, returned by a scope from <a href="../unity.scopes.ActivationQueryBase.md#a61ed49d8bc56e677ff2eb1f30e6a6b6b" title="Return response to the activation request. ">ActivationQueryBase::activate()</a>. |

<span id="a89f1e3697d62b098c73704368d3bc4c8" class="anchor"></span>
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
<td>void unity::scopes::ActivationListenerBase::finished</td>
<td>(</td>
<td><a href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &amp; </td>
<td><em>details</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scopes runtime after the final result for a request was sent.

Calls to <a href="#a89f1e3697d62b098c73704368d3bc4c8" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are made by an arbitrary thread.

Exceptions thrown from <a href="#a89f1e3697d62b098c73704368d3bc4c8" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are ignored.

Parameters  
|         |                                                                                                                                       |
|---------|---------------------------------------------------------------------------------------------------------------------------------------|
| details | Contains details about the completion status of a query as well as any additional information regarding the operation of the request. |

Implements <a href="../unity.scopes.ListenerBase.md#afb44937749b61c9e3ebfa20ec6e4634b">unity::scopes::ListenerBase</a>.

