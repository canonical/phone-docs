---
Title: unity.scopes.ListenerBase
---
        
ListenerBase
============

Abstract base class to be notified of request completion (such as a query or activation request). [More...](#details)

`#include <unity/scopes/ListenerBase.h>`

Inheritance diagram for unity::scopes::ListenerBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/6d7beb15-cdca-4199-8d65-248c474cc2ad-api/scopes/cpp/sdk-15.04.5/unity.scopes.ListenerBase/classunity_1_1scopes_1_1_listener_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#afb44937749b61c9e3ebfa20ec6e4634b">finished</a> (<a href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &details)=0
 
Called once by the scopes runtime after the final result for a request was sent. More...
 
virtual void 
<a href="#a3b38fa642754142f40968f3ff8d1bdc8">info</a> (<a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &op\_info)
 
Called by the scopes runtime each time a scope reports additional information about the reply to a query. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class to be notified of request completion (such as a query or activation request).

See also  
<a href="unity.scopes.ActivationListenerBase.md" title="Base class to receive a response to a result activation request. ">ActivationListenerBase</a>

<a href="unity.scopes.PreviewQueryBase.md" title="Abstract base class to represent a particular preview. ">PreviewQueryBase</a>

<a href="unity.scopes.SearchListenerBase.md" title="Abstract base interface for a client to receive the results of a query. ">SearchListenerBase</a>

Member Function Documentation
-----------------------------

<span id="afb44937749b61c9e3ebfa20ec6e4634b" class="anchor"></span>
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
<td>virtual void unity::scopes::ListenerBase::finished</td>
<td>(</td>
<td><a href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &amp; </td>
<td><em>details</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scopes runtime after the final result for a request was sent.

Calls to <a href="#afb44937749b61c9e3ebfa20ec6e4634b" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are made by an arbitrary thread.

Exceptions thrown from <a href="#afb44937749b61c9e3ebfa20ec6e4634b" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are ignored.

Parameters  
|         |                                                                                                                                       |
|---------|---------------------------------------------------------------------------------------------------------------------------------------|
| details | Contains details about the completion status of a query as well as any additional information regarding the operation of the request. |

Implemented in <a href="../unity.scopes.utility.BufferedResultForwarder.md#a9bd57e76c08a01560a700d665cc40e96">unity::scopes::utility::BufferedResultForwarder</a>, and <a href="../unity.scopes.ActivationListenerBase.md#a89f1e3697d62b098c73704368d3bc4c8">unity::scopes::ActivationListenerBase</a>.

<span id="a3b38fa642754142f40968f3ff8d1bdc8" class="anchor"></span>
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
<td>virtual void unity::scopes::ListenerBase::info</td>
<td>(</td>
<td><a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp; </td>
<td><em>op_info</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes runtime each time a scope reports additional information about the reply to a query.

More than one <a href="#a3b38fa642754142f40968f3ff8d1bdc8" title="Called by the scopes runtime each time a scope reports additional information about the reply to a qu...">info()</a> call can arrive during processing of a single query.

Calls to <a href="#a3b38fa642754142f40968f3ff8d1bdc8" title="Called by the scopes runtime each time a scope reports additional information about the reply to a qu...">info()</a> are made by an arbitrary thread.

Exceptions thrown from <a href="#a3b38fa642754142f40968f3ff8d1bdc8" title="Called by the scopes runtime each time a scope reports additional information about the reply to a qu...">info()</a> are ignored.

Parameters  
|          |                                                         |
|----------|---------------------------------------------------------|
| op\_info | Contains all details of the information being reported. |

