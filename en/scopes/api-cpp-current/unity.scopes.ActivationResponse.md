---
Title: unity.scopes.ActivationResponse
---
        
ActivationResponse
==================

Response to a result activation. [More...](#details)

`#include <unity/scopes/ActivationResponse.h>`

pub-types
-----------------------------------------

enum  
<a href="#a726cf6ec58d4e035e2cdc14cda152d02">Status</a> {
  <a href="#a726cf6ec58d4e035e2cdc14cda152d02aa3c4b9a3c5fcb54e5cce7d473cecfde3">NotHandled</a>, <a href="#a726cf6ec58d4e035e2cdc14cda152d02aa1a5253f6bf4d7a39ebb4e990c05508f">ShowDash</a>, <a href="#a726cf6ec58d4e035e2cdc14cda152d02af5f1369ea32773936a8339e0811be045">HideDash</a>, <a href="#a726cf6ec58d4e035e2cdc14cda152d02a8fd3954d3410ba938ee9faf58bda7912">ShowPreview</a>,
  <a href="#a726cf6ec58d4e035e2cdc14cda152d02a91ca5a8fc7bc1e5895336fbca9bc0ac2">PerformQuery</a>, <a href="#a726cf6ec58d4e035e2cdc14cda152d02a80e4269cf8263509c6a99914d40a1c00">UpdateResult</a>, <a href="#a726cf6ec58d4e035e2cdc14cda152d02ac0d0d3b809d0f7a051ca474b15a69660">UpdatePreview</a>
}
 
Status of a <a href="../unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a>, <a href="../unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a>, or <a href="../unity.scopes.ScopeBase.md#a7ac39ca44f4790dd36900657692d0565" title="Invoked when a scope is requested to handle a result in-card action. ">unity::scopes::ScopeBase::activate_result_action</a> request. [More...](#a726cf6ec58d4e035e2cdc14cda152d02)
 
pub-methods
------------------------------------------------------

 
<a href="#ac3b7700c436ec2413c1d6a3ca785cc92">ActivationResponse</a> (<a href="#a726cf6ec58d4e035e2cdc14cda152d02">Status</a> <a href="#a7caef418f9e400017d5c62c9cf25c9b8">status</a>)
 
Creates ActivationResponse with given status. More...
 
 
<a href="#ac2c2769688b650df4e6333c052076b71">ActivationResponse</a> (<a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &<a href="#af945b59acaaa90931743ec6ea5b0eac6">query</a>)
 
Creates an ActivationResponse with status Status::PerformQuery and a search query to be executed. More...
 
 
<a href="#a2221da7ee9e35bbf1cf0a62812120e6b">ActivationResponse</a> (<a href="unity.scopes.Result.md">Result</a> const &<a href="#a342e63bf810daa6ccd7a69520e63fb90">updated_result</a>)
 
Creates an ActivationResponse with status Status::UpdateResult and an updated result that replaces the original result of the action. More...
 
 
<a href="#aedfc9aceac4127af885311788201a09f">ActivationResponse</a> (<a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> const &<a href="#a640e02cda7bff66aed9af88ff872b2ed">updated_widgets</a>)
 
Creates ActivationResponse with status Status::UpdatePreview and an updated list of preview widgets that replace the original widgets in the preview. Widgets not included in this list stay intact and are still displayed in the preview. Responding with this type of ActivationResponse outside of a preview context will not have any effect. More...
 
<a href="#a726cf6ec58d4e035e2cdc14cda152d02">ActivationResponse::Status</a> 
<a href="#a7caef418f9e400017d5c62c9cf25c9b8">status</a> () const
 
Get activation status. More...
 
void 
<a href="#abedc7eb1923e89385ee5244a9824524c">set_scope_data</a> (<a href="unity.scopes.Variant.md">Variant</a> const &data)
 
Attach arbitrary data to this response. More...
 
<a href="unity.scopes.Variant.md">Variant</a> 
<a href="#a25b12fabb64c492a777dfd4dffc277f3">scope_data</a> () const
 
Get data attached to this response object. More...
 
<a href="unity.scopes.CannedQuery.md">CannedQuery</a> 
<a href="#af945b59acaaa90931743ec6ea5b0eac6">query</a> () const
 
A query to be executed if status is Status::PerformQuery. More...
 
<a href="unity.scopes.Result.md">Result</a> 
<a href="#a342e63bf810daa6ccd7a69520e63fb90">updated_result</a> () const
 
The updated result if status is Status::UpdateResult. More...
 
<a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> 
<a href="#a640e02cda7bff66aed9af88ff872b2ed">updated_widgets</a> () const
 
The updated widgets if status is Status::UpdatePreview. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**ActivationResponse** (<a href="index.html">ActivationResponse</a> const &other)
 
 
**ActivationResponse** (<a href="index.html">ActivationResponse</a> &&other)
 
<a href="index.html">ActivationResponse</a> & 
**operator=** (<a href="index.html">ActivationResponse</a> const &other)
 
<a href="index.html">ActivationResponse</a> & 
**operator=** (<a href="index.html">ActivationResponse</a> &&other)
 
<span id="details"></span>
Detailed Description
--------------------

Response to a result activation.

Member Enumeration Documentation
--------------------------------

<span id="a726cf6ec58d4e035e2cdc14cda152d02" class="anchor"></span>
|                                                                                                                      |
|----------------------------------------------------------------------------------------------------------------------|
| enum <a href="#a726cf6ec58d4e035e2cdc14cda152d02">unity::scopes::ActivationResponse::Status</a> |

Status of a <a href="../unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a>, <a href="../unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a>, or <a href="../unity.scopes.ScopeBase.md#a7ac39ca44f4790dd36900657692d0565" title="Invoked when a scope is requested to handle a result in-card action. ">unity::scopes::ScopeBase::activate_result_action</a> request.

Enumerator
<span id="a726cf6ec58d4e035e2cdc14cda152d02aa3c4b9a3c5fcb54e5cce7d473cecfde3" class="anchor"></span>NotHandled 
Activation of this result wasn't handled by the scope

<span id="a726cf6ec58d4e035e2cdc14cda152d02aa1a5253f6bf4d7a39ebb4e990c05508f" class="anchor"></span>ShowDash 
Activation of this result was handled, show the Dash

<span id="a726cf6ec58d4e035e2cdc14cda152d02af5f1369ea32773936a8339e0811be045" class="anchor"></span>HideDash 
Activation of this result was handled, hide the Dash

<span id="a726cf6ec58d4e035e2cdc14cda152d02a8fd3954d3410ba938ee9faf58bda7912" class="anchor"></span>ShowPreview 
Preview should be requested for this result

<span id="a726cf6ec58d4e035e2cdc14cda152d02a91ca5a8fc7bc1e5895336fbca9bc0ac2" class="anchor"></span>PerformQuery 
Perform new search. This state is implied if creating <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> with <a href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a> object and is invalid otherwise

<span id="a726cf6ec58d4e035e2cdc14cda152d02a80e4269cf8263509c6a99914d40a1c00" class="anchor"></span>UpdateResult 
Update the result. This state is implied if creating <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> with <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> object and is invalid otherwise

<span id="a726cf6ec58d4e035e2cdc14cda152d02ac0d0d3b809d0f7a051ca474b15a69660" class="anchor"></span>UpdatePreview 
Update the preview. This state is implied if creating <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> with PreviewWidgetList and is invalid otherwise

Constructor & Destructor Documentation
--------------------------------------

<span id="ac3b7700c436ec2413c1d6a3ca785cc92" class="anchor"></span>
|                                                       |     |                                                                               |          |     |     |
|-------------------------------------------------------|-----|-------------------------------------------------------------------------------|----------|-----|-----|
| unity::scopes::ActivationResponse::ActivationResponse | (   | <a href="#a726cf6ec58d4e035e2cdc14cda152d02">Status</a>  | *status* | )   |     |

Creates <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> with given status.

Parameters  
|        |                        |
|--------|------------------------|
| status | The activation status. |

<!-- -->

Exceptions  
|                                 |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|---------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::InvalidArgumentException | if status is Status::PerformQuery or Status::Update. To create an <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> for one of these types, use the <a href="#ac2c2769688b650df4e6333c052076b71" title="Creates an ActivationResponse with status Status::PerformQuery and a search query to be executed...">ActivationResponse(CannedQuery const&amp;)</a> or <a href="#a2221da7ee9e35bbf1cf0a62812120e6b" title="Creates an ActivationResponse with status Status::UpdateResult and an updated result that replaces th...">ActivationResponse(Result const&amp;)</a> constructors. |

<span id="ac2c2769688b650df4e6333c052076b71" class="anchor"></span>
|                                                       |     |                                                                                      |         |     |     |
|-------------------------------------------------------|-----|--------------------------------------------------------------------------------------|---------|-----|-----|
| unity::scopes::ActivationResponse::ActivationResponse | (   | <a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &  | *query* | )   |     |

Creates an <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> with status Status::PerformQuery and a search query to be executed.

Parameters  
|       |                                                |
|-------|------------------------------------------------|
| query | The search query to be executed by the client. |

<span id="a2221da7ee9e35bbf1cf0a62812120e6b" class="anchor"></span>
|                                                       |     |                                                                            |                   |     |     |
|-------------------------------------------------------|-----|----------------------------------------------------------------------------|-------------------|-----|-----|
| unity::scopes::ActivationResponse::ActivationResponse | (   | <a href="unity.scopes.Result.md">Result</a> const &  | *updated\_result* | )   |     |

Creates an <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> with status Status::UpdateResult and an updated result that replaces the original result of the action.

Parameters  
|                 |                                                                  |
|-----------------|------------------------------------------------------------------|
| updated\_result | The updated result to replace the original result of the action. |

<span id="aedfc9aceac4127af885311788201a09f" class="anchor"></span>
|                                                       |     |                                                                                                                  |                    |     |     |
|-------------------------------------------------------|-----|------------------------------------------------------------------------------------------------------------------|--------------------|-----|-----|
| unity::scopes::ActivationResponse::ActivationResponse | (   | <a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> const &  | *updated\_widgets* | )   |     |

Creates <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> with status Status::UpdatePreview and an updated list of preview widgets that replace the original widgets in the preview. Widgets not included in this list stay intact and are still displayed in the preview. Responding with this type of <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> outside of a preview context will not have any effect.

Parameters  
|                  |                                                                     |
|------------------|---------------------------------------------------------------------|
| updated\_widgets | The updated widgets to replace the original widgets in the preview. |

<!-- -->

Exceptions  
|                                 |                                    |
|---------------------------------|------------------------------------|
| unity::InvalidArgumentException | if updated\_widgets list is empty. |

Member Function Documentation
-----------------------------

<span id="af945b59acaaa90931743ec6ea5b0eac6" class="anchor"></span>
|                                                                                                                      |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.CannedQuery.md">CannedQuery</a> unity::scopes::ActivationResponse::query | (   |     | )   | const |

A query to be executed if status is Status::PerformQuery.

Exceptions  
|                       |                                                                                                                                                                     |
|-----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if the status of this <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> is anything other than Status::PerformQuery. |

<!-- -->

Returns  
The query to be executed by the client.

<span id="a25b12fabb64c492a777dfd4dffc277f3" class="anchor"></span>
|                                                                                                                    |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.Variant.md">Variant</a> unity::scopes::ActivationResponse::scope\_data | (   |     | )   | const |

Get data attached to this response object.

Returns  
The data attached to the response.

<span id="abedc7eb1923e89385ee5244a9824524c" class="anchor"></span>
|                                                          |     |                                                                              |        |     |     |
|----------------------------------------------------------|-----|------------------------------------------------------------------------------|--------|-----|-----|
| void unity::scopes::ActivationResponse::set\_scope\_data | (   | <a href="unity.scopes.Variant.md">Variant</a> const &  | *data* | )   |     |

Attach arbitrary data to this response.

The attached data is sent back to the scope if the status of this response is Status::ShowPreview.

Parameters  
|      |                                              |
|------|----------------------------------------------|
| data | An arbitrary value attached to the response. |

<span id="a7caef418f9e400017d5c62c9cf25c9b8" class="anchor"></span>
|                                                                                                                                            |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="#a726cf6ec58d4e035e2cdc14cda152d02">ActivationResponse::Status</a> unity::scopes::ActivationResponse::status | (   |     | )   | const |

Get activation status.

Returns  
The activation status.

<span id="a342e63bf810daa6ccd7a69520e63fb90" class="anchor"></span>
|                                                                                                                      |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.Result.md">Result</a> unity::scopes::ActivationResponse::updated\_result | (   |     | )   | const |

The updated result if status is Status::UpdateResult.

Exceptions  
|                       |                                                                                                                                                                     |
|-----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if the status of this <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> is anything other than Status::UpdateResult. |

<!-- -->

Returns  
The result to be displayed instead of the original result.

<span id="a640e02cda7bff66aed9af88ff872b2ed" class="anchor"></span>
|                                                                                                                                                             |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> unity::scopes::ActivationResponse::updated\_widgets | (   |     | )   | const |

The updated widgets if status is Status::UpdatePreview.

Exceptions  
|                       |                                                                                                                                                                      |
|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if the status of this <a href="index.html" title="Response to a result activation. ">ActivationResponse</a> is anything other than Status::UpdatePreview. |

<!-- -->

Returns  
The widgets to be displayed instead of the original widgets with same IDs.

