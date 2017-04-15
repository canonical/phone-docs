---
Title: Accounts.Service
---
        
Service
=======

Representation of an account service. [More...](../../sdk-15.04.1/Accounts.Service.md#details)

`#include <Accounts/Service>`

pub-methods
------------------------------------------------------

 
<a href="../../sdk-15.04.1/Accounts.Service.md#a37865e4e61715c6d6f81181f7323ae62">Service</a> ()
 
Construct an invalid service.
 
 
<a href="../../sdk-15.04.1/Accounts.Service.md#a491f7a1e2b9dfedb805d55c06ca006df">Service</a> (const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &other)
 
Copy constructor. More...
 
<a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> & 
**operator=** (const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &other)
 
bool 
<a href="../../sdk-15.04.1/Accounts.Service.md#aac1b70a2ed67ead038c4d3f5ac4d8a81">isValid</a> () const
 
Check whether this object represents a Service. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Service.md#a2b0a198f837184bf6fff555cee3ce770">name</a> () const
 
Get the name of the service. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Service.md#a9def71dea12661002bb3a63b3b91d08d">displayName</a> () const
 
Get the display name of the service, untranslated. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Service.md#a6c73afd4753195ea4eee794c95a770dd">trCatalog</a> () const
 
QString 
<a href="../../sdk-15.04.1/Accounts.Service.md#aa090de65c448278a23851f45f38fa9ce">serviceType</a> () const
 
Get the service type ID of the service. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Service.md#a4da62eb704e693e71b73d101f5304a7e">provider</a> () const
 
Get the provider ID of the service. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Service.md#a038b22680aca535f9972908fe2f1f6a1">iconName</a> () const
 
Get the icon name for this service. More...
 
bool 
<a href="../../sdk-15.04.1/Accounts.Service.md#ab9544628f8c8af163b13eb6b47a3aead">hasTag</a> (const QString &tag) const
 
Check if this service has a tag. More...
 
QSet&lt; QString &gt; 
<a href="../../sdk-15.04.1/Accounts.Service.md#a4bfac5a5814d94c97ae61695f09e95ee">tags</a> () const
 
Return all tags of the service as a set. More...
 
const QDomDocument 
<a href="../../sdk-15.04.1/Accounts.Service.md#a305fe3a04c76c8069c3465621a7967cc">domDocument</a> () const
 
Get the contents of the service XML file. More...
 
friends
----------------------------------

bool 
**operator==** (const <a href="../../sdk-15.04.1/Accounts.Service.md">Accounts::Service</a> &s1, const <a href="../../sdk-15.04.1/Accounts.Service.md">Accounts::Service</a> &s2)
 
<span id="details"></span>
Detailed Description
--------------------

Representation of an account service.

The <a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a> object represents an account service. It can be used to retrieve some basic properties of the service (such as name, type and provider) and to get access to the contents of the XML file which defines it.

Definition at line 48 of file service.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="a491f7a1e2b9dfedb805d55c06ca006df" class="anchor"></span>
|                                                                                |     |                                                                                         |         |     |     |
|--------------------------------------------------------------------------------|-----|-----------------------------------------------------------------------------------------|---------|-----|-----|
| <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> | (   | const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &  | *other* | )   |     |

Copy constructor.

Copying a <a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a> object is very cheap, because the data is shared among copies.

Definition at line 69 of file service.cpp.

Member Function Documentation
-----------------------------

<span id="a9def71dea12661002bb3a63b3b91d08d" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString displayName | (   |     | )   | const |

Get the display name of the service, untranslated.

Returns  
The display name of the service.

Definition at line 124 of file service.cpp.

<span id="a305fe3a04c76c8069c3465621a7967cc" class="anchor"></span>
|                                |     |     |     |       |
|--------------------------------|-----|-----|-----|-------|
| const QDomDocument domDocument | (   |     | )   | const |

Get the contents of the service XML file.

Returns  
The DOM of the whole XML service file

Definition at line 201 of file service.cpp.

<span id="ab9544628f8c8af163b13eb6b47a3aead" class="anchor"></span>
|             |     |                  |       |     |       |
|-------------|-----|------------------|-------|-----|-------|
| bool hasTag | (   | const QString &  | *tag* | )   | const |

Check if this service has a tag.

Parameters  
|     |                 |
|-----|-----------------|
| tag | Tag to look for |

<!-- -->

Returns  
<a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a> has the tag?

Definition at line 171 of file service.cpp.

<span id="a038b22680aca535f9972908fe2f1f6a1" class="anchor"></span>
|                  |     |     |     |       |
|------------------|-----|-----|-----|-------|
| QString iconName | (   |     | )   | const |

Get the icon name for this service.

Returns  
The icon name.

Definition at line 159 of file service.cpp.

<span id="aac1b70a2ed67ead038c4d3f5ac4d8a81" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| bool isValid | (   |     | )   | const |

Check whether this object represents a <a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a>.

Returns  
true if the <a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a> is a valid one.

Definition at line 104 of file service.cpp.

Referenced by Service::name().

<span id="a2b0a198f837184bf6fff555cee3ce770" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| QString name | (   |     | )   | const |

Get the name of the service.

This can be used as a unique identifier for this service.

Returns  
The unique name of the service.

Definition at line 114 of file service.cpp.

References Service::isValid().

<span id="a4da62eb704e693e71b73d101f5304a7e" class="anchor"></span>
|                  |     |     |     |       |
|------------------|-----|-----|-----|-------|
| QString provider | (   |     | )   | const |

Get the provider ID of the service.

Returns  
The provider of the service.

Definition at line 150 of file service.cpp.

<span id="aa090de65c448278a23851f45f38fa9ce" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString serviceType | (   |     | )   | const |

Get the service type ID of the service.

Returns  
The service type of the service.

Definition at line 133 of file service.cpp.

<span id="a4bfac5a5814d94c97ae61695f09e95ee" class="anchor"></span>
|                            |     |     |     |       |
|----------------------------|-----|-----|-----|-------|
| QSet&lt; QString &gt; tags | (   |     | )   | const |

Return all tags of the service as a set.

Returns  
Set of tags

Definition at line 181 of file service.cpp.

<span id="a6c73afd4753195ea4eee794c95a770dd" class="anchor"></span>
|                   |     |     |     |       |
|-------------------|-----|-----|-----|-------|
| QString trCatalog | (   |     | )   | const |

Returns  
The translation catalog of the service.

Definition at line 141 of file service.cpp.

