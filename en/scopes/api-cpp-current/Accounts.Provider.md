---
Title: Accounts.Provider
---
        
Provider
========

Representation of an account provider. [More...](../../sdk-15.04.1/Accounts.Provider.md#details)

`#include <Accounts/Provider>`

pub-methods
------------------------------------------------------

 
<a href="../../sdk-15.04.1/Accounts.Provider.md#a0a281cda2c25f17e851f76142d4527a0">Provider</a> ()
 
Construct an invalid provider.
 
 
<a href="../../sdk-15.04.1/Accounts.Provider.md#abff16d2acc53f89d7f633e85a4b90634">Provider</a> (const <a href="../../sdk-15.04.1/Accounts.Provider.md">Provider</a> &other)
 
Copy constructor. More...
 
<a href="../../sdk-15.04.1/Accounts.Provider.md">Provider</a> & 
**operator=** (const <a href="../../sdk-15.04.1/Accounts.Provider.md">Provider</a> &other)
 
bool 
<a href="../../sdk-15.04.1/Accounts.Provider.md#aac1b70a2ed67ead038c4d3f5ac4d8a81">isValid</a> () const
 
Check whether this object represents a Provider. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider.md#a2b0a198f837184bf6fff555cee3ce770">name</a> () const
 
Get the name of the provider. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider.md#a9def71dea12661002bb3a63b3b91d08d">displayName</a> () const
 
Get the display name of the provider, untranslated. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider.md#aeaebc63d2181b1a4506603f4e03f1275">description</a> () const
 
Get the description of the provider, untranslated. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider.md#ac7fe5a9dd669a037edfa2930803311a5">pluginName</a> () const
 
Get the name of the account plugin associated with the provider. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider.md#a6c73afd4753195ea4eee794c95a770dd">trCatalog</a> () const
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider.md#a038b22680aca535f9972908fe2f1f6a1">iconName</a> () const
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider.md#ab0c2fc656cae3b09e456ec0747315ecc">domainsRegExp</a> () const
 
bool 
<a href="../../sdk-15.04.1/Accounts.Provider.md#aa785668bfd84285ad40299410c02367d">isSingleAccount</a> () const
 
const QDomDocument 
<a href="../../sdk-15.04.1/Accounts.Provider.md#a305fe3a04c76c8069c3465621a7967cc">domDocument</a> () const
 
friends
----------------------------------

bool 
**operator==** (const <a href="../../sdk-15.04.1/Accounts.Provider.md">Accounts::Provider</a> &p1, const <a href="../../sdk-15.04.1/Accounts.Provider.md">Accounts::Provider</a> &p2)
 
<span id="details"></span>
Detailed Description
--------------------

Representation of an account provider.

The <a href="../../sdk-15.04.1/Accounts.Provider.md" title="Representation of an account provider. ">Provider</a> object represents an account provider. It can be used to retrieve some basic properties of the provider (such as the name) and to get access to the contents of the XML file which defines it.

Definition at line 48 of file provider.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="abff16d2acc53f89d7f633e85a4b90634" class="anchor"></span>
|                                                                                  |     |                                                                                           |         |     |     |
|----------------------------------------------------------------------------------|-----|-------------------------------------------------------------------------------------------|---------|-----|-----|
| <a href="../../sdk-15.04.1/Accounts.Provider.md">Provider</a> | (   | const <a href="../../sdk-15.04.1/Accounts.Provider.md">Provider</a> &  | *other* | )   |     |

Copy constructor.

Copying a <a href="../../sdk-15.04.1/Accounts.Provider.md" title="Representation of an account provider. ">Provider</a> object is very cheap, because the data is shared among copies.

Definition at line 65 of file provider.cpp.

Member Function Documentation
-----------------------------

<span id="aeaebc63d2181b1a4506603f4e03f1275" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString description | (   |     | )   | const |

Get the description of the provider, untranslated.

Returns  
The description of the provider.

Definition at line 124 of file provider.cpp.

<span id="a9def71dea12661002bb3a63b3b91d08d" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString displayName | (   |     | )   | const |

Get the display name of the provider, untranslated.

Returns  
The display name of the provider.

Definition at line 115 of file provider.cpp.

<span id="ab0c2fc656cae3b09e456ec0747315ecc" class="anchor"></span>
|                       |     |     |     |       |
|-----------------------|-----|-----|-----|-------|
| QString domainsRegExp | (   |     | )   | const |

Returns  
A regular expression pattern which matches all the internet domains in which this type of account can be used.

Definition at line 161 of file provider.cpp.

<span id="a305fe3a04c76c8069c3465621a7967cc" class="anchor"></span>
|                                |     |     |     |       |
|--------------------------------|-----|-----|-----|-------|
| const QDomDocument domDocument | (   |     | )   | const |

Returns  
The DOM of the whole XML provider file.

Definition at line 177 of file provider.cpp.

<span id="a038b22680aca535f9972908fe2f1f6a1" class="anchor"></span>
|                  |     |     |     |       |
|------------------|-----|-----|-----|-------|
| QString iconName | (   |     | )   | const |

Returns  
The provider icon name.

Definition at line 152 of file provider.cpp.

<span id="aa785668bfd84285ad40299410c02367d" class="anchor"></span>
|                      |     |     |     |       |
|----------------------|-----|-----|-----|-------|
| bool isSingleAccount | (   |     | )   | const |

Returns  
Whether the provider supports creating one account at most.

Definition at line 169 of file provider.cpp.

<span id="aac1b70a2ed67ead038c4d3f5ac4d8a81" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| bool isValid | (   |     | )   | const |

Check whether this object represents a <a href="../../sdk-15.04.1/Accounts.Provider.md" title="Representation of an account provider. ">Provider</a>.

Returns  
true if the <a href="../../sdk-15.04.1/Accounts.Provider.md" title="Representation of an account provider. ">Provider</a> is a valid one.

Definition at line 95 of file provider.cpp.

Referenced by Provider::name().

<span id="a2b0a198f837184bf6fff555cee3ce770" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| QString name | (   |     | )   | const |

Get the name of the provider.

This can be used as a unique identifier for this provider.

Returns  
The unique name of the provider.

Definition at line 105 of file provider.cpp.

References Provider::isValid().

<span id="ac7fe5a9dd669a037edfa2930803311a5" class="anchor"></span>
|                    |     |     |     |       |
|--------------------|-----|-----|-----|-------|
| QString pluginName | (   |     | )   | const |

Get the name of the account plugin associated with the provider.

Some platforms might find it useful to store plugin names in the provider XML files, especially when the same plugin can work for different providers.

Returns  
The plugin name.

Definition at line 135 of file provider.cpp.

<span id="a6c73afd4753195ea4eee794c95a770dd" class="anchor"></span>
|                   |     |     |     |       |
|-------------------|-----|-----|-----|-------|
| QString trCatalog | (   |     | )   | const |

Returns  
The name of the translation catalog, which can be used to translate the <a href="../../sdk-15.04.1/Accounts.Provider.md#a9def71dea12661002bb3a63b3b91d08d" title="Get the display name of the provider, untranslated. ">displayName()</a>.

Definition at line 144 of file provider.cpp.

