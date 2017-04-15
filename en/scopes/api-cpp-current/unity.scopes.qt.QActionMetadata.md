---
Title: unity.scopes.qt.QActionMetadata
---
        
QActionMetadata
===============

Metadata passed to scopes for preview and activation. [More...](#details)

`#include <unity/scopes/qt/QActionMetadata.h>`

pub-methods
------------------------------------------------------

 
<a href="#acc36c52fac186af3571cb29745d3981c">QActionMetadata</a> (QString const &locale, QString const &form\_factor)
 
Create ActionMetadata with the given locale and form factor. More...
 
void 
<a href="#a5913d97d109db7b2e4596bc1b3f53ed1">set_scope_data</a> (QVariant const &data)
 
Attach arbitrary data to this ActionMetadata. More...
 
QVariant 
<a href="#ae1103e2a369e300f05f8fd3dea8020f7">scope_data</a> () const
 
Get data attached to this ActionMetadata. More...
 
void 
<a href="#ab2b595bf273926b0bc5a00df98ff38e1">set_hint</a> (QString const &key, QVariant const &value)
 
Sets a hint. More...
 
QVariantMap 
<a href="#a62be4635a002af1c69cb9a105009a6c2">hints</a> () const
 
Get all hints. More...
 
bool 
<a href="#a9016175d5f8ffe9725d95a68b1939553">contains_hint</a> (QString const &key) const
 
Check if this SearchMetadata has a hint. More...
 
QVariant & 
<a href="#a666efb6091fba93a007736ffe1487c82">operator[]</a> (QString const &key)
 
Returns a reference to a hint. More...
 
QVariant const & 
<a href="#a607f33913139706424e925dac02a1a3d">operator[]</a> (QString const &key) const
 
Returns a const reference to a hint. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**QActionMetadata** (<a href="index.html">QActionMetadata</a> const &other)
 
 
**QActionMetadata** (<a href="index.html">QActionMetadata</a> &&)
 
<a href="index.html">QActionMetadata</a> & 
**operator=** (<a href="index.html">QActionMetadata</a> const &other)
 
<a href="index.html">QActionMetadata</a> & 
**operator=** (<a href="index.html">QActionMetadata</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Metadata passed to scopes for preview and activation.

See also  
<a href="../unity.scopes.qt.QScopeBase.md#afdedf1ba41623c1ac060ecc4b014f67f">unity::scopes::qt::QScopeBase::preview</a>, <a href="../unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a>, <a href="../unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a>

Constructor & Destructor Documentation
--------------------------------------

<span id="acc36c52fac186af3571cb29745d3981c" class="anchor"></span>
|                                                     |     |                  |                 |
|-----------------------------------------------------|-----|------------------|-----------------|
| unity::scopes::qt::QActionMetadata::QActionMetadata | (   | QString const &  | *locale*,       |
|                                                     |     | QString const &  | *form\_factor*  |
|                                                     | )   |                  |                 |

Create <a href="unity.scopes.ActionMetadata.md" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a> with the given locale and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

Member Function Documentation
-----------------------------

<span id="a9016175d5f8ffe9725d95a68b1939553" class="anchor"></span>
|                                                         |     |                  |       |     |       |
|---------------------------------------------------------|-----|------------------|-------|-----|-------|
| bool unity::scopes::qt::QActionMetadata::contains\_hint | (   | QString const &  | *key* | )   | const |

Check if this <a href="unity.scopes.SearchMetadata.md" title="Metadata passed with search requests. ">SearchMetadata</a> has a hint.

Parameters  
|     |                |
|-----|----------------|
| key | The hint name. |

<!-- -->

Returns  
True if the hint is set.

<span id="a62be4635a002af1c69cb9a105009a6c2" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| QVariantMap unity::scopes::qt::QActionMetadata::hints | (   |     | )   | const |

Get all hints.

Returns  
Hints dictionary.

<!-- -->

Exceptions  
|                          |                            |
|--------------------------|----------------------------|
| unity::NotFoundException | if no hints are available. |

<span id="a666efb6091fba93a007736ffe1487c82" class="anchor"></span>
|                                                            |     |                  |       |     |     |
|------------------------------------------------------------|-----|------------------|-------|-----|-----|
| QVariant& unity::scopes::qt::QActionMetadata::operator\[\] | (   | QString const &  | *key* | )   |     |

Returns a reference to a hint.

This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of QVariant::Type::Null.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A reference to the hint.

<span id="a607f33913139706424e925dac02a1a3d" class="anchor"></span>
|                                                                  |     |                  |       |     |       |
|------------------------------------------------------------------|-----|------------------|-------|-----|-------|
| QVariant const& unity::scopes::qt::QActionMetadata::operator\[\] | (   | QString const &  | *key* | )   | const |

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

<span id="ae1103e2a369e300f05f8fd3dea8020f7" class="anchor"></span>
|                                                          |     |     |     |       |
|----------------------------------------------------------|-----|-----|-----|-------|
| QVariant unity::scopes::qt::QActionMetadata::scope\_data | (   |     | )   | const |

Get data attached to this <a href="unity.scopes.ActionMetadata.md" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>.

Returns  
The attached data, or QVariant::null.

<span id="ab2b595bf273926b0bc5a00df98ff38e1" class="anchor"></span>
|                                                    |     |                   |          |
|----------------------------------------------------|-----|-------------------|----------|
| void unity::scopes::qt::QActionMetadata::set\_hint | (   | QString const &   | *key*,   |
|                                                    |     | QVariant const &  | *value*  |
|                                                    | )   |                   |          |

Sets a hint.

Parameters  
|       |                       |
|-------|-----------------------|
| key   | The name of the hint. |
| value | Hint value            |

<span id="a5913d97d109db7b2e4596bc1b3f53ed1" class="anchor"></span>
|                                                           |     |                   |        |     |     |
|-----------------------------------------------------------|-----|-------------------|--------|-----|-----|
| void unity::scopes::qt::QActionMetadata::set\_scope\_data | (   | QVariant const &  | *data* | )   |     |

Attach arbitrary data to this <a href="unity.scopes.ActionMetadata.md" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>.

Parameters  
|      |                           |
|------|---------------------------|
| data | The data value to attach. |

