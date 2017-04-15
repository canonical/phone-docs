---
Title: unity.scopes.ActionMetadata
---
        
ActionMetadata
==============

Metadata passed to scopes for preview and activation. [More...](#details)

`#include <unity/scopes/ActionMetadata.h>`

Inheritance diagram for unity::scopes::ActionMetadata:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/ca208972-f5df-46ab-8c7c-b785931e84a8-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActionMetadata/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#a23b266a9ee4a78a26754a6affd6447d6">ActionMetadata</a> (std::string const &<a href="../unity.scopes.QueryMetadata.md#a3ca25150669d96171aec6ab56ef6bb0e">locale</a>, std::string const &<a href="../unity.scopes.QueryMetadata.md#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a>)
 
Create ActionMetadata with the given locale and form factor. More...
 
void 
<a href="#a562159a400cba00176ecb0be479775b5">set_scope_data</a> (<a href="unity.scopes.Variant.md">Variant</a> const &data)
 
Attach arbitrary data to this ActionMetadata. More...
 
<a href="unity.scopes.Variant.md">Variant</a> 
<a href="#a34777e687ce700a7b6313f3dad6d3340">scope_data</a> () const
 
Get data attached to this ActionMetadata. More...
 
void 
<a href="#a12b6cf0c4aa1fd80da3b75c23e5f12d5">set_hint</a> (std::string const &key, <a href="unity.scopes.Variant.md">Variant</a> const &value)
 
Sets a hint. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> 
<a href="#a46d85a19a5eb20d4ee63e201e68cc6c4">hints</a> () const
 
Get all hints. More...
 
bool 
<a href="#a845e60ef8aca1fd25c950edddb031f69">contains_hint</a> (std::string const &key) const
 
Check if this SearchMetadata has a hint. More...
 
<a href="unity.scopes.Variant.md">Variant</a> & 
<a href="#a41854841528dc1934ba73aec6e34b38e">operator[]</a> (std::string const &key)
 
Returns a reference to a hint. More...
 
<a href="unity.scopes.Variant.md">Variant</a> const & 
<a href="#a0662d6922a822b36b5eb20df3796a03e">operator[]</a> (std::string const &key) const
 
Returns a const reference to a hint. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**ActionMetadata** (<a href="index.html">ActionMetadata</a> const &other)
 
 
**ActionMetadata** (<a href="index.html">ActionMetadata</a> &&)
 
<a href="index.html">ActionMetadata</a> & 
**operator=** (<a href="index.html">ActionMetadata</a> const &other)
 
<a href="index.html">ActionMetadata</a> & 
**operator=** (<a href="index.html">ActionMetadata</a> &&)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/8bdb4add-1f36-431a-93bf-4a1c249a86f4-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActionMetadata/closed.png) Public Member Functions inherited from <a href="unity.scopes.QueryMetadata.md">unity::scopes::QueryMetadata</a>
std::string 
<a href="../unity.scopes.QueryMetadata.md#a3ca25150669d96171aec6ab56ef6bb0e">locale</a> () const
 
Get the locale string. More...
 
std::string 
<a href="../unity.scopes.QueryMetadata.md#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a> () const
 
Get the form factor string. More...
 
void 
<a href="../unity.scopes.QueryMetadata.md#a5b2395aff97cbe1009759de03f270bf3">set_internet_connectivity</a> (<a href="../unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> connectivity\_status)
 
Set internet connectivity status. More...
 
<a href="../unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> 
<a href="../unity.scopes.QueryMetadata.md#a3da06f370e53b5e381ec8cf33d8ee191">internet_connectivity</a> () const
 
Get internet connectivity status. More...
 
inherited
---------------------------------------------------------

![-](https://developer.ubuntu.com/static/devportal_uploaded/fb04d9f5-f47f-4286-80b9-18963cbb2c9e-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActionMetadata/closed.png) Public Types inherited from <a href="unity.scopes.QueryMetadata.md">unity::scopes::QueryMetadata</a>
enum  
<a href="../unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> { **Unknown**, **Connected**, **Disconnected** }
 
Indicates the internet connectivity status. [More...](../unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701)
 
<span id="details"></span>
Detailed Description
--------------------

Metadata passed to scopes for preview and activation.

See also  
<a href="../unity.scopes.ScopeBase.md#a154b9b4cfc0f40572cfec60dd819396f" title="Invoked when a scope is requested to create a preview for a particular result. ">unity::scopes::ScopeBase::preview</a>, <a href="../unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a>, <a href="../unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a>

Constructor & Destructor Documentation
--------------------------------------

<span id="a23b266a9ee4a78a26754a6affd6447d6" class="anchor"></span>
|                                               |     |                      |                 |
|-----------------------------------------------|-----|----------------------|-----------------|
| unity::scopes::ActionMetadata::ActionMetadata | (   | std::string const &  | *locale*,       |
|                                               |     | std::string const &  | *form\_factor*  |
|                                               | )   |                      |                 |

Create <a href="index.html" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a> with the given locale and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

Member Function Documentation
-----------------------------

<span id="a845e60ef8aca1fd25c950edddb031f69" class="anchor"></span>
|                                                    |     |                      |       |     |       |
|----------------------------------------------------|-----|----------------------|-------|-----|-------|
| bool unity::scopes::ActionMetadata::contains\_hint | (   | std::string const &  | *key* | )   | const |

Check if this <a href="unity.scopes.SearchMetadata.md" title="Metadata passed with search requests. ">SearchMetadata</a> has a hint.

Parameters  
|     |                |
|-----|----------------|
| key | The hint name. |

<!-- -->

Returns  
True if the hint is set.

<span id="a46d85a19a5eb20d4ee63e201e68cc6c4" class="anchor"></span>
|                                                                                                                                       |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::ActionMetadata::hints | (   |     | )   | const |

Get all hints.

Returns  
Hints dictionary.

<!-- -->

Exceptions  
|                          |                            |
|--------------------------|----------------------------|
| unity::NotFoundException | if no hints are available. |

<span id="a41854841528dc1934ba73aec6e34b38e" class="anchor"></span>
|                                                                                                                   |     |                      |       |     |     |
|-------------------------------------------------------------------------------------------------------------------|-----|----------------------|-------|-----|-----|
| <a href="unity.scopes.Variant.md">Variant</a> & unity::scopes::ActionMetadata::operator\[\] | (   | std::string const &  | *key* | )   |     |

Returns a reference to a hint.

This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of Variant::Type::Null.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A reference to the hint.

<span id="a0662d6922a822b36b5eb20df3796a03e" class="anchor"></span>
|                                                                                                                         |     |                      |       |     |       |
|-------------------------------------------------------------------------------------------------------------------------|-----|----------------------|-------|-----|-------|
| <a href="unity.scopes.Variant.md">Variant</a> const & unity::scopes::ActionMetadata::operator\[\] | (   | std::string const &  | *key* | )   | const |

Returns a const reference to a hint.

This method can be used for read-only access to hints. Referencing a non-existing hint throws unity::InvalidArgumentException.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A const reference to the hint.

<!-- -->

Exceptions  
|                          |                                        |
|--------------------------|----------------------------------------|
| unity::NotFoundException | if no hint with the given name exists. |

<span id="a34777e687ce700a7b6313f3dad6d3340" class="anchor"></span>
|                                                                                                                |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.Variant.md">Variant</a> unity::scopes::ActionMetadata::scope\_data | (   |     | )   | const |

Get data attached to this <a href="index.html" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>.

Returns  
The attached data, or <a href="../unity.scopes.Variant.md#a2bd2d5425fdec9af9340c22e3b47ac1c" title="Construct a null variant. ">Variant::null</a>.

<span id="a12b6cf0c4aa1fd80da3b75c23e5f12d5" class="anchor"></span>
|                                               |     |                                                                              |          |
|-----------------------------------------------|-----|------------------------------------------------------------------------------|----------|
| void unity::scopes::ActionMetadata::set\_hint | (   | std::string const &                                                          | *key*,   |
|                                               |     | <a href="unity.scopes.Variant.md">Variant</a> const &  | *value*  |
|                                               | )   |                                                                              |          |

Sets a hint.

Parameters  
|       |                       |
|-------|-----------------------|
| key   | The name of the hint. |
| value | Hint value            |

<span id="a562159a400cba00176ecb0be479775b5" class="anchor"></span>
|                                                      |     |                                                                              |        |     |     |
|------------------------------------------------------|-----|------------------------------------------------------------------------------|--------|-----|-----|
| void unity::scopes::ActionMetadata::set\_scope\_data | (   | <a href="unity.scopes.Variant.md">Variant</a> const &  | *data* | )   |     |

Attach arbitrary data to this <a href="index.html" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>.

Parameters  
|      |                           |
|------|---------------------------|
| data | The data value to attach. |

