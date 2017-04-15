---
Title: Accounts.ServiceType
---
        
ServiceType
===========

Representation of an account service type. [More...](../../sdk-15.04.1/Accounts.ServiceType.md#details)

`#include <Accounts/ServiceType>`

pub-methods
------------------------------------------------------

 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md#a27a10810bcc047da5031725f77b398eb">ServiceType</a> ()
 
Construct an invalid serviceType.
 
 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md#aae690d056ba06a78378f8adc8f95cddd">ServiceType</a> (const <a href="../../sdk-15.04.1/Accounts.ServiceType.md">ServiceType</a> &other)
 
Copy constructor. More...
 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md">ServiceType</a> & 
**operator=** (const <a href="../../sdk-15.04.1/Accounts.ServiceType.md">ServiceType</a> &other)
 
bool 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md#aac1b70a2ed67ead038c4d3f5ac4d8a81">isValid</a> () const
 
Check whether this object represents a ServiceType. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md#a2b0a198f837184bf6fff555cee3ce770">name</a> () const
 
Returns the name (ID) of the service type.
 
QString 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md#a9def71dea12661002bb3a63b3b91d08d">displayName</a> () const
 
QString 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md#a6c73afd4753195ea4eee794c95a770dd">trCatalog</a> () const
 
QString 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md#a038b22680aca535f9972908fe2f1f6a1">iconName</a> () const
 
bool 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md#ab9544628f8c8af163b13eb6b47a3aead">hasTag</a> (const QString &tag) const
 
Check if this service type has a tag. More...
 
QSet&lt; QString &gt; 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md#a4bfac5a5814d94c97ae61695f09e95ee">tags</a> () const
 
Return all tags of the service type as a set. More...
 
const QDomDocument 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md#a305fe3a04c76c8069c3465621a7967cc">domDocument</a> () const
 
friends
----------------------------------

bool 
**operator==** (const <a href="../../sdk-15.04.1/Accounts.ServiceType.md">Accounts::ServiceType</a> &s1, const <a href="../../sdk-15.04.1/Accounts.ServiceType.md">Accounts::ServiceType</a> &s2)
 
<span id="details"></span>
Detailed Description
--------------------

Representation of an account service type.

The <a href="../../sdk-15.04.1/Accounts.ServiceType.md" title="Representation of an account service type. ">ServiceType</a> object represents an account service type. It can be used to retrieve some basic properties of the service type (such as name and icon) and to get access to the contents of the XML file which defines it.

Definition at line 49 of file service-type.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="aae690d056ba06a78378f8adc8f95cddd" class="anchor"></span>
|                                                                                        |     |                                                                                                 |         |     |     |
|----------------------------------------------------------------------------------------|-----|-------------------------------------------------------------------------------------------------|---------|-----|-----|
| <a href="../../sdk-15.04.1/Accounts.ServiceType.md">ServiceType</a> | (   | const <a href="../../sdk-15.04.1/Accounts.ServiceType.md">ServiceType</a> &  | *other* | )   |     |

Copy constructor.

Copying a <a href="../../sdk-15.04.1/Accounts.ServiceType.md" title="Representation of an account service type. ">ServiceType</a> object is very cheap, because the data is shared among copies.

Definition at line 69 of file service-type.cpp.

Member Function Documentation
-----------------------------

<span id="a9def71dea12661002bb3a63b3b91d08d" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString displayName | (   |     | )   | const |

Returns  
The display name of the service type; this is a string that could be shown in the UI to describe the service type to the user.

The library attempts to translate this string by passing it to the qtTrId() function; in order for this to work you must make sure that the translation catalogue has been loaded before, if needed.

Definition at line 126 of file service-type.cpp.

<span id="a305fe3a04c76c8069c3465621a7967cc" class="anchor"></span>
|                                |     |     |     |       |
|--------------------------------|-----|-----|-----|-------|
| const QDomDocument domDocument | (   |     | )   | const |

Returns  
The DOM of the whole XML service file

Definition at line 192 of file service-type.cpp.

<span id="ab9544628f8c8af163b13eb6b47a3aead" class="anchor"></span>
|             |     |                  |       |     |       |
|-------------|-----|------------------|-------|-----|-------|
| bool hasTag | (   | const QString &  | *tag* | )   | const |

Check if this service type has a tag.

Parameters  
|     |                 |
|-----|-----------------|
| tag | Tag to look for |

<!-- -->

Returns  
<a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a> type has the tag?

Definition at line 163 of file service-type.cpp.

<span id="a038b22680aca535f9972908fe2f1f6a1" class="anchor"></span>
|                  |     |     |     |       |
|------------------|-----|-----|-----|-------|
| QString iconName | (   |     | )   | const |

Returns  
The icon name

Definition at line 151 of file service-type.cpp.

<span id="aac1b70a2ed67ead038c4d3f5ac4d8a81" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| bool isValid | (   |     | )   | const |

Check whether this object represents a <a href="../../sdk-15.04.1/Accounts.ServiceType.md" title="Representation of an account service type. ">ServiceType</a>.

Returns  
true if the <a href="../../sdk-15.04.1/Accounts.ServiceType.md" title="Representation of an account service type. ">ServiceType</a> is a valid one.

Definition at line 104 of file service-type.cpp.

Referenced by ServiceType::name().

<span id="a4bfac5a5814d94c97ae61695f09e95ee" class="anchor"></span>
|                            |     |     |     |       |
|----------------------------|-----|-----|-----|-------|
| QSet&lt; QString &gt; tags | (   |     | )   | const |

Return all tags of the service type as a set.

Returns  
Set of tags

Definition at line 173 of file service-type.cpp.

<span id="a6c73afd4753195ea4eee794c95a770dd" class="anchor"></span>
|                   |     |     |     |       |
|-------------------|-----|-----|-----|-------|
| QString trCatalog | (   |     | )   | const |

Returns  
The name of the translation catalog, which can be used to translate the <a href="../../sdk-15.04.1/Accounts.ServiceType.md#a9def71dea12661002bb3a63b3b91d08d">displayName()</a>

Definition at line 143 of file service-type.cpp.

