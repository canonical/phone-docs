---
Title: unity.scopes.ActivationQueryBase
---
        
ActivationQueryBase
===================

Base class for an activation request that is executed inside a scope. [More...](#details)

`#include <unity/scopes/ActivationQueryBase.h>`

Inheritance diagram for unity::scopes::ActivationQueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/505edda9-7e63-4566-9c0a-b8f043a082b8-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActivationQueryBase/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#ae853aab10c2fd7411208a1764b59c439">ActivationQueryBase</a> (<a href="unity.scopes.Result.md">Result</a> const &<a href="#ac23d5b45f73f8ed38139996ef8c27195">result</a>, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata)
 
Create ActivationQueryBase. More...
 
 
<a href="#a2f4b19b45dac666ab59454abdea73ea1">ActivationQueryBase</a> (<a href="unity.scopes.Result.md">Result</a> const &<a href="#ac23d5b45f73f8ed38139996ef8c27195">result</a>, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata, std::string const &<a href="#a95aa7e96b4b0f7b1bc10e2342de02db8">widget_id</a>, std::string const &<a href="#a0cb38f795f4096a6bc2f40d5c192df6e">action_id</a>)
 
Create ActivationQueryBase. More...
 
 
<a href="#ad4833abec80f83682b20b8aa4b37ae06">ActivationQueryBase</a> (<a href="unity.scopes.Result.md">Result</a> const &update\_result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata, std::string const &<a href="#a0cb38f795f4096a6bc2f40d5c192df6e">action_id</a>)
 
Create ActivationQueryBase. More...
 
virtual void 
<a href="#af9b8e83ac6716db51aba942aca9cc6be">cancelled</a> () override
 
Called when the originator of the activation request cancelled it.
 
virtual <a href="unity.scopes.ActivationResponse.md">ActivationResponse</a> 
<a href="#a61ed49d8bc56e677ff2eb1f30e6a6b6b">activate</a> ()
 
Return response to the activation request. More...
 
<a href="unity.scopes.Result.md">Result</a> 
<a href="#ac23d5b45f73f8ed38139996ef8c27195">result</a> () const
 
Get the result for this activation request handler. More...
 
<a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> 
<a href="#ae215e7780c87d835893eb0df70f09d3b">action_metadata</a> () const
 
Get the metadata for this activation request handler. More...
 
std::string 
<a href="#a95aa7e96b4b0f7b1bc10e2342de02db8">widget_id</a> () const
 
Get the widget identifier for this activation request handler. More...
 
std::string 
<a href="#a0cb38f795f4096a6bc2f40d5c192df6e">action_id</a> () const
 
Get the action identifier for this activation request handler. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/abcd9bd9-0944-41ae-99b6-a27ede5c0221-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActivationQueryBase/closed.png) Public Member Functions inherited from <a href="unity.scopes.QueryBase.md">unity::scopes::QueryBase</a>
bool 
<a href="../unity.scopes.QueryBase.md#a095e61eabe2042eeea5c4df1a444d7d4">valid</a> () const
 
Check whether this query is still valid. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a> 
<a href="../unity.scopes.QueryBase.md#ab6a25ba587387a7f490b8b5a081e9ed6">settings</a> () const
 
Returns a dictionary with the scope's current settings. More...
 
<span id="details"></span>
Detailed Description
--------------------

Base class for an activation request that is executed inside a scope.

The default implementation responds with ActivationResponse(ActivationResponse::Status::NotHandled). Reimplement this class and return an instance from <a href="../unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate</a> method for custom activation handling.

Constructor & Destructor Documentation
--------------------------------------

<span id="ae853aab10c2fd7411208a1764b59c439" class="anchor"></span>
|                                                         |     |                                                                                            |             |
|---------------------------------------------------------|-----|--------------------------------------------------------------------------------------------|-------------|
| unity::scopes::ActivationQueryBase::ActivationQueryBase | (   | <a href="unity.scopes.Result.md">Result</a> const &                  | *result*,   |
|                                                         |     | <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &  | *metadata*  |
|                                                         | )   |                                                                                            |             |

Create <a href="index.html" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a>.

Parameters  
|          |                                                                                                                                                                                                                                                      |
|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| result   | The result received by <a href="../unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate()</a>.   |
| metadata | The metadata received by <a href="../unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate()</a>. |

<span id="a2f4b19b45dac666ab59454abdea73ea1" class="anchor"></span>
|                                                         |     |                                                                                            |               |
|---------------------------------------------------------|-----|--------------------------------------------------------------------------------------------|---------------|
| unity::scopes::ActivationQueryBase::ActivationQueryBase | (   | <a href="unity.scopes.Result.md">Result</a> const &                  | *result*,     |
|                                                         |     | <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &  | *metadata*,   |
|                                                         |     | std::string const &                                                                        | *widget\_id*, |
|                                                         |     | std::string const &                                                                        | *action\_id*  |
|                                                         | )   |                                                                                            |               |

Create <a href="index.html" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a>.

Parameters  
|            |                                                                                                                                                                                                                                       |
|------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| result     | The result received by <a href="../unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>.            |
| metadata   | The metadata received by <a href="../unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>.          |
| widget\_id | The widget identifier receiver of <a href="../unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>. |
| action\_id | The action identifier receiver of <a href="../unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">ScopeBase::perform_action()</a>. |

<span id="ad4833abec80f83682b20b8aa4b37ae06" class="anchor"></span>
|                                                         |     |                                                                                            |                   |
|---------------------------------------------------------|-----|--------------------------------------------------------------------------------------------|-------------------|
| unity::scopes::ActivationQueryBase::ActivationQueryBase | (   | <a href="unity.scopes.Result.md">Result</a> const &                  | *update\_result*, |
|                                                         |     | <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &  | *metadata*,       |
|                                                         |     | std::string const &                                                                        | *action\_id*      |
|                                                         | )   |                                                                                            |                   |

Create <a href="index.html" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a>.

Parameters  
|                |                                                                                                                                                                                                                                                      |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| update\_result | The result received by <a href="../unity.scopes.ScopeBase.md#a7ac39ca44f4790dd36900657692d0565" title="Invoked when a scope is requested to handle a result in-card action. ">ScopeBase::activate_result_action()</a>.            |
| metadata       | The metadata received by <a href="../unity.scopes.ScopeBase.md#a7ac39ca44f4790dd36900657692d0565" title="Invoked when a scope is requested to handle a result in-card action. ">ScopeBase::activate_result_action()</a>.          |
| action\_id     | The action identifier received by <a href="../unity.scopes.ScopeBase.md#a7ac39ca44f4790dd36900657692d0565" title="Invoked when a scope is requested to handle a result in-card action. ">ScopeBase::activate_result_action()</a>. |

Member Function Documentation
-----------------------------

<span id="a0cb38f795f4096a6bc2f40d5c192df6e" class="anchor"></span>
|                                                            |     |     |     |       |
|------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ActivationQueryBase::action\_id | (   |     | )   | const |

Get the action identifier for this activation request handler.

Action identifier is empty when using the <a href="index.html" title="Base class for an activation request that is executed inside a scope. ">unity::scopes::ActivationQueryBase(Result const&amp; result, ActionMetadata const&amp; metadata)</a> constructor.

Returns  
The action identifier passed to the constructor of this object.

<span id="ae215e7780c87d835893eb0df70f09d3b" class="anchor"></span>
|                                                                                                                                        |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> unity::scopes::ActivationQueryBase::action\_metadata | (   |     | )   | const |

Get the metadata for this activation request handler.

Returns  
The metadata passed to the constructor of this object.

<span id="a61ed49d8bc56e677ff2eb1f30e6a6b6b" class="anchor"></span>
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
<td><a href="unity.scopes.ActivationResponse.md">ActivationResponse</a> unity::scopes::ActivationQueryBase::activate</td>
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

Return response to the activation request.

The response is received by the originator of the request. Default implementation returns <a href="unity.scopes.ActivationResponse.md" title="Response to a result activation. ">ActivationResponse</a>(ActivationResponse::Status::NotHandled.

Returns  
The response to the activation request.

<span id="ac23d5b45f73f8ed38139996ef8c27195" class="anchor"></span>
|                                                                                                              |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.Result.md">Result</a> unity::scopes::ActivationQueryBase::result | (   |     | )   | const |

Get the result for this activation request handler.

Returns  
The result passed to the constructor of this object.

<span id="a95aa7e96b4b0f7b1bc10e2342de02db8" class="anchor"></span>
|                                                            |     |     |     |       |
|------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ActivationQueryBase::widget\_id | (   |     | )   | const |

Get the widget identifier for this activation request handler.

Widget identifier is empty when using the <a href="index.html" title="Base class for an activation request that is executed inside a scope. ">unity::scopes::ActivationQueryBase(Result const&amp; result, ActionMetadata const&amp; metadata)</a> constructor.

Returns  
The widget identifier passed to the constructor of this object.

