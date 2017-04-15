---
Title: unity.scopes.QueryMetadata
---
        
QueryMetadata
=============

Base class for extra metadata passed to scopes as a part of a request. [More...](#details)

`#include <unity/scopes/QueryMetadata.h>`

Inheritance diagram for unity::scopes::QueryMetadata:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/a0fff6ec-1a97-4e76-a815-a9f4c0fdccc2-api/scopes/cpp/sdk-15.04.5/unity.scopes.QueryMetadata/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-types
-----------------------------------------

enum  
<a href="#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> { **Unknown**, **Connected**, **Disconnected** }
 
Indicates the internet connectivity status. [More...](#a20eb916661728a7d9c00485e28f88701)
 
pub-methods
------------------------------------------------------

std::string 
<a href="#a3ca25150669d96171aec6ab56ef6bb0e">locale</a> () const
 
Get the locale string. More...
 
std::string 
<a href="#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a> () const
 
Get the form factor string. More...
 
void 
<a href="#a5b2395aff97cbe1009759de03f270bf3">set_internet_connectivity</a> (<a href="#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> connectivity\_status)
 
Set internet connectivity status. More...
 
<a href="#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> 
<a href="#a3da06f370e53b5e381ec8cf33d8ee191">internet_connectivity</a> () const
 
Get internet connectivity status. More...
 
<span id="details"></span>
Detailed Description
--------------------

Base class for extra metadata passed to scopes as a part of a request.

Member Enumeration Documentation
--------------------------------

<span id="a20eb916661728a7d9c00485e28f88701" class="anchor"></span>
|                                                                                                                             |
|-----------------------------------------------------------------------------------------------------------------------------|
| enum <a href="#a20eb916661728a7d9c00485e28f88701">unity::scopes::QueryMetadata::ConnectivityStatus</a> |

Indicates the internet connectivity status.

The `Unknown` enumerator indicates that <a href="#a5b2395aff97cbe1009759de03f270bf3" title="Set internet connectivity status. ">set_internet_connectivity()</a> has not yet been called, hence the connectivity status is currently unknown.

The `Connected` enumerator simply indicates that we are currently connected to the internet. This does not necessarily mean that a particular host on the internet will be reachable.

The `Disconnected` enumerator indicates that we are currently not connected to the internet. In this state, a scope need not waste any time attempting remote calls, as they will almost certainly fail.

Member Function Documentation
-----------------------------

<span id="a494f592f3055fba4da6554a6d8fb7c42" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::QueryMetadata::form\_factor | (   |     | )   | const |

Get the form factor string.

Returns  
The form factor string

<span id="a3da06f370e53b5e381ec8cf33d8ee191" class="anchor"></span>
|                                                                                                                                                              |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="#a20eb916661728a7d9c00485e28f88701">QueryMetadata::ConnectivityStatus</a> unity::scopes::QueryMetadata::internet\_connectivity | (   |     | )   | const |

Get internet connectivity status.

Returns  
Enum indicating the internet connectivity status.

<span id="a3ca25150669d96171aec6ab56ef6bb0e" class="anchor"></span>
|                                                  |     |     |     |       |
|--------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::QueryMetadata::locale | (   |     | )   | const |

Get the locale string.

Returns  
The locale string

<span id="a5b2395aff97cbe1009759de03f270bf3" class="anchor"></span>
|                                                                |     |                                                                                           |                        |     |     |
|----------------------------------------------------------------|-----|-------------------------------------------------------------------------------------------|------------------------|-----|-----|
| void unity::scopes::QueryMetadata::set\_internet\_connectivity | (   | <a href="#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a>  | *connectivity\_status* | )   |     |

Set internet connectivity status.

Parameters  
|                      |                                                   |
|----------------------|---------------------------------------------------|
| connectivity\_status | Enum indicating the internet connectivity status. |

