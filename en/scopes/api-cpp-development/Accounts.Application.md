---
Title: Accounts.Application
---
        
Application
===========

Information on the client applications of libaccounts. [More...](../../sdk-15.04.1/Accounts.Application.md#details)

`#include <Accounts/Application>`

pub-methods
------------------------------------------------------

 
<a href="../../sdk-15.04.1/Accounts.Application.md#aec7d6461aa7be31d98eff24b9d69ae3d">Application</a> ()
 
Construct an invalid application.
 
 
<a href="../../sdk-15.04.1/Accounts.Application.md#af5e0a77dad01833eddabf0def1caa475">Application</a> (const <a href="../../sdk-15.04.1/Accounts.Application.md">Application</a> &other)
 
Copy constructor. More...
 
<a href="../../sdk-15.04.1/Accounts.Application.md">Application</a> & 
**operator=** (const <a href="../../sdk-15.04.1/Accounts.Application.md">Application</a> &other)
 
 
<a href="../../sdk-15.04.1/Accounts.Application.md#a713b51c450f3ae9db74cd857c2419173">~Application</a> ()
 
Destructor.
 
bool 
<a href="../../sdk-15.04.1/Accounts.Application.md#aac1b70a2ed67ead038c4d3f5ac4d8a81">isValid</a> () const
 
Check whether this object represents an Application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application.md#a2b0a198f837184bf6fff555cee3ce770">name</a> () const
 
Get the unique ID of the application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application.md#a9def71dea12661002bb3a63b3b91d08d">displayName</a> () const
 
Get the display name of the application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application.md#aeaebc63d2181b1a4506603f4e03f1275">description</a> () const
 
Get the description of the application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application.md#a038b22680aca535f9972908fe2f1f6a1">iconName</a> () const
 
Get the icon name of the application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application.md#a8e3558c6d34db1186be87e3483ff59f8">desktopFilePath</a> () const
 
Get the .desktop file associated with this application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application.md#a6c73afd4753195ea4eee794c95a770dd">trCatalog</a> () const
 
Get the translation catalog for the texts returned by the methods of this class. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application.md#a3e79b6f20785764a31a750544fde6f39">serviceUsage</a> (const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &service) const
 
Get the description from the application XML file, for the specified service; if not found, get the service-type description instead. More...
 
<span id="details"></span>
Detailed Description
--------------------

Information on the client applications of libaccounts.

The <a href="../../sdk-15.04.1/Accounts.Application.md" title="Information on the client applications of libaccounts. ">Application</a> structure holds information on the client applications registered with libaccounts. It is instantiated by <a href="../../sdk-15.04.1/Accounts.Manager.md#a28ff538d5abd52ff691e30ed75a6b41f" title="Get an object representing an application. ">Manager::application()</a> and <a href="../../sdk-15.04.1/Accounts.Manager.md#ae18f9f8c59a4e15e8849dd832c54b874" title="List the registered applications which support the given service. ">Manager::applicationList()</a>.

Definition at line 40 of file application.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="af5e0a77dad01833eddabf0def1caa475" class="anchor"></span>
|                                                                                        |     |                                                                                                 |         |     |     |
|----------------------------------------------------------------------------------------|-----|-------------------------------------------------------------------------------------------------|---------|-----|-----|
| <a href="../../sdk-15.04.1/Accounts.Application.md">Application</a> | (   | const <a href="../../sdk-15.04.1/Accounts.Application.md">Application</a> &  | *other* | )   |     |

Copy constructor.

Copying an <a href="../../sdk-15.04.1/Accounts.Application.md" title="Information on the client applications of libaccounts. ">Application</a> object is very cheap, because the data is shared among copies.

Definition at line 62 of file application.cpp.

Member Function Documentation
-----------------------------

<span id="aeaebc63d2181b1a4506603f4e03f1275" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString description | (   |     | )   | const |

Get the description of the application.

Returns  
The application description.

Definition at line 131 of file application.cpp.

<span id="a8e3558c6d34db1186be87e3483ff59f8" class="anchor"></span>
|                         |     |     |     |       |
|-------------------------|-----|-----|-----|-------|
| QString desktopFilePath | (   |     | )   | const |

Get the .desktop file associated with this application.

Returns  
The full path to the .desktop file.

Definition at line 160 of file application.cpp.

<span id="a9def71dea12661002bb3a63b3b91d08d" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString displayName | (   |     | )   | const |

Get the display name of the application.

Returns  
The application display name.

Definition at line 115 of file application.cpp.

References Application::name().

<span id="a038b22680aca535f9972908fe2f1f6a1" class="anchor"></span>
|                  |     |     |     |       |
|------------------|-----|-----|-----|-------|
| QString iconName | (   |     | )   | const |

Get the icon name of the application.

Returns  
The application icon name.

Definition at line 140 of file application.cpp.

<span id="aac1b70a2ed67ead038c4d3f5ac4d8a81" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| bool isValid | (   |     | )   | const |

Check whether this object represents an <a href="../../sdk-15.04.1/Accounts.Application.md" title="Information on the client applications of libaccounts. ">Application</a>.

Returns  
true if the <a href="../../sdk-15.04.1/Accounts.Application.md" title="Information on the client applications of libaccounts. ">Application</a> is a valid one.

Definition at line 95 of file application.cpp.

Referenced by Application::name().

<span id="a2b0a198f837184bf6fff555cee3ce770" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| QString name | (   |     | )   | const |

Get the unique ID of the application.

This is the name of the .application file minus the .application suffix.

Returns  
The application unique ID.

Definition at line 105 of file application.cpp.

References Application::isValid().

Referenced by Application::displayName().

<span id="a3e79b6f20785764a31a750544fde6f39" class="anchor"></span>
|                      |     |                                                                                         |           |     |       |
|----------------------|-----|-----------------------------------------------------------------------------------------|-----------|-----|-------|
| QString serviceUsage | (   | const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &  | *service* | )   | const |

Get the description from the application XML file, for the specified service; if not found, get the service-type description instead.

Returns  
Usage description of the service.

Definition at line 187 of file application.cpp.

<span id="a6c73afd4753195ea4eee794c95a770dd" class="anchor"></span>
|                   |     |     |     |       |
|-------------------|-----|-----|-----|-------|
| QString trCatalog | (   |     | )   | const |

Get the translation catalog for the texts returned by the methods of this class.

Returns  
The translation catalog name.

Definition at line 177 of file application.cpp.

