---
Title: unity.scopes.qt.QSearchMetadata
---
        
QSearchMetadata
===============

Metadata passed with search requests. [More...](#details)

`#include <unity/scopes/qt/QSearchMetadata.h>`

pub-methods
------------------------------------------------------

 
<a href="#a92db05ea573b0c55c5b73c5c1576e51e">QSearchMetadata</a> (QString const &locale, QString const &form\_factor)
 
Create SearchMetadata with the given locale and form factor. More...
 
 
<a href="#aac638e4b40c119cd9b6f43f693cda2af">QSearchMetadata</a> (int <a href="#ac560e26fbc8376625de16031c863afe8">cardinality</a>, QString const &locale, QString const &form\_factor)
 
Create SearchMetadata with the given cardinality, locale, and form factor. More...
 
void 
<a href="#ab0dcad3fa29fb7553ede65ef20b0255d">set_cardinality</a> (int <a href="#ac560e26fbc8376625de16031c863afe8">cardinality</a>)
 
Set cardinality. More...
 
int 
<a href="#ac560e26fbc8376625de16031c863afe8">cardinality</a> () const
 
Get cardinality. More...
 
void 
<a href="#a4479bd25415f2c9e0bdd4e80e9c8a9e2">set_location</a> (<a href="unity.scopes.Location.md">Location</a> const &<a href="#a844f3a8b081df7482120acd39725a7f9">location</a>)
 
Set location. More...
 
<a href="unity.scopes.Location.md">Location</a> 
<a href="#a844f3a8b081df7482120acd39725a7f9">location</a> () const
 
Get location. More...
 
bool 
<a href="#ab61ff7b56a2c6a2f5b951c2d317180a8">has_location</a> () const
 
Does the SearchMetadata have a location. More...
 
void 
<a href="#a7268b98c17357bbcba30d2bd85a5f0b3">remove_location</a> ()
 
Remove location data entirely. More...
 
void 
<a href="#adb6bfe57d0d7a421fa2b19c498728d50">set_hint</a> (QString const &key, QVariant const &value)
 
Sets a hint. More...
 
QVariantMap 
<a href="#a10ea65002ca32ec982be76758c5d951b">hints</a> () const
 
Get all hints. More...
 
bool 
<a href="#acfdb14b65570a7d83a0c477dc7fb7d2c">contains_hint</a> (QString const &key) const
 
Check if this SearchMetadata has a hint. More...
 
QVariant & 
<a href="#a10eac0fb5b37277479a6953f52314560">operator[]</a> (QString const &key)
 
Returns a reference to a hint. More...
 
QVariant const & 
<a href="#a04baf06aa57a85811dae85093d688911">operator[]</a> (QString const &key) const
 
Returns a const reference to a hint. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**QSearchMetadata** (<a href="index.html">QSearchMetadata</a> const &other)
 
 
**QSearchMetadata** (<a href="index.html">QSearchMetadata</a> &&)
 
<a href="index.html">QSearchMetadata</a> & 
**operator=** (<a href="index.html">QSearchMetadata</a> const &other)
 
<a href="index.html">QSearchMetadata</a> & 
**operator=** (<a href="index.html">QSearchMetadata</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Metadata passed with search requests.

Constructor & Destructor Documentation
--------------------------------------

<span id="a92db05ea573b0c55c5b73c5c1576e51e" class="anchor"></span>
|                                                     |     |                  |                 |
|-----------------------------------------------------|-----|------------------|-----------------|
| unity::scopes::qt::QSearchMetadata::QSearchMetadata | (   | QString const &  | *locale*,       |
|                                                     |     | QString const &  | *form\_factor*  |
|                                                     | )   |                  |                 |

Create <a href="unity.scopes.SearchMetadata.md" title="Metadata passed with search requests. ">SearchMetadata</a> with the given locale and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

<span id="aac638e4b40c119cd9b6f43f693cda2af" class="anchor"></span>
|                                                     |     |                  |                 |
|-----------------------------------------------------|-----|------------------|-----------------|
| unity::scopes::qt::QSearchMetadata::QSearchMetadata | (   | int              | *cardinality*,  |
|                                                     |     | QString const &  | *locale*,       |
|                                                     |     | QString const &  | *form\_factor*  |
|                                                     | )   |                  |                 |

Create <a href="unity.scopes.SearchMetadata.md" title="Metadata passed with search requests. ">SearchMetadata</a> with the given cardinality, locale, and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| cardinality  | maximum number of search results                          |
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

Member Function Documentation
-----------------------------

<span id="ac560e26fbc8376625de16031c863afe8" class="anchor"></span>
|                                                     |     |     |     |       |
|-----------------------------------------------------|-----|-----|-----|-------|
| int unity::scopes::qt::QSearchMetadata::cardinality | (   |     | )   | const |

Get cardinality.

Returns  
The maxmium number of search results, or 0 for no limit.

<span id="acfdb14b65570a7d83a0c477dc7fb7d2c" class="anchor"></span>
|                                                         |     |                  |       |     |       |
|---------------------------------------------------------|-----|------------------|-------|-----|-------|
| bool unity::scopes::qt::QSearchMetadata::contains\_hint | (   | QString const &  | *key* | )   | const |

Check if this <a href="unity.scopes.SearchMetadata.md" title="Metadata passed with search requests. ">SearchMetadata</a> has a hint.

Parameters  
|     |                |
|-----|----------------|
| key | The hint name. |

<!-- -->

Returns  
True if the hint is set.

<span id="ab61ff7b56a2c6a2f5b951c2d317180a8" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::qt::QSearchMetadata::has\_location | (   |     | )   | const |

Does the <a href="unity.scopes.SearchMetadata.md" title="Metadata passed with search requests. ">SearchMetadata</a> have a location.

Returns  
True if there is a location property.

<span id="a10ea65002ca32ec982be76758c5d951b" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| QVariantMap unity::scopes::qt::QSearchMetadata::hints | (   |     | )   | const |

Get all hints.

Returns  
Hints dictionary.

<!-- -->

Exceptions  
|                          |                            |
|--------------------------|----------------------------|
| unity::NotFoundException | if no hints are available. |

<span id="a844f3a8b081df7482120acd39725a7f9" class="anchor"></span>
|                                                                                                                    |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.Location.md">Location</a> unity::scopes::qt::QSearchMetadata::location | (   |     | )   | const |

Get location.

Returns  
<a href="unity.scopes.Location.md" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data representing the current location, including attributes such as city and country.

<!-- -->

Exceptions  
|                          |                                   |
|--------------------------|-----------------------------------|
| unity::NotFoundException | if no location data is available. |

<span id="a10eac0fb5b37277479a6953f52314560" class="anchor"></span>
|                                                            |     |                  |       |     |     |
|------------------------------------------------------------|-----|------------------|-------|-----|-----|
| QVariant& unity::scopes::qt::QSearchMetadata::operator\[\] | (   | QString const &  | *key* | )   |     |

Returns a reference to a hint.

This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of Variant::Type::Null.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A reference to the hint.

<span id="a04baf06aa57a85811dae85093d688911" class="anchor"></span>
|                                                                  |     |                  |       |     |       |
|------------------------------------------------------------------|-----|------------------|-------|-----|-------|
| QVariant const& unity::scopes::qt::QSearchMetadata::operator\[\] | (   | QString const &  | *key* | )   | const |

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

<span id="a7268b98c17357bbcba30d2bd85a5f0b3" class="anchor"></span>
|                                                           |     |     |     |     |
|-----------------------------------------------------------|-----|-----|-----|-----|
| void unity::scopes::qt::QSearchMetadata::remove\_location | (   |     | )   |     |

Remove location data entirely.

This method does nothing if no location data is present.

<span id="ab0dcad3fa29fb7553ede65ef20b0255d" class="anchor"></span>
|                                                           |     |      |               |     |     |
|-----------------------------------------------------------|-----|------|---------------|-----|-----|
| void unity::scopes::qt::QSearchMetadata::set\_cardinality | (   | int  | *cardinality* | )   |     |

Set cardinality.

Parameters  
|             |                                       |
|-------------|---------------------------------------|
| cardinality | The maximum number of search results. |

<span id="adb6bfe57d0d7a421fa2b19c498728d50" class="anchor"></span>
|                                                    |     |                   |          |
|----------------------------------------------------|-----|-------------------|----------|
| void unity::scopes::qt::QSearchMetadata::set\_hint | (   | QString const &   | *key*,   |
|                                                    |     | QVariant const &  | *value*  |
|                                                    | )   |                   |          |

Sets a hint.

Parameters  
|       |                       |
|-------|-----------------------|
| key   | The name of the hint. |
| value | Hint value            |

<span id="a4479bd25415f2c9e0bdd4e80e9c8a9e2" class="anchor"></span>
|                                                        |     |                                                                                |            |     |     |
|--------------------------------------------------------|-----|--------------------------------------------------------------------------------|------------|-----|-----|
| void unity::scopes::qt::QSearchMetadata::set\_location | (   | <a href="unity.scopes.Location.md">Location</a> const &  | *location* | )   |     |

Set location.

Parameters  
|          |                                                                                                                                                  |
|----------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| location | <a href="unity.scopes.Location.md" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data. |

