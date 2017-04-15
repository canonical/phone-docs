---
Title: unity.scopes.OnlineAccountClient.ServiceStatus
---
        
ServiceStatus
=============

A container for details about a service's status and authorization parameters. [More...](#details)

`#include <unity/scopes/OnlineAccountClient.h>`

pub-attribs
------------------------------------------------

unsigned int 
<a href="#a3fff11d6960ba38de9eab3be2028352a">account_id</a>
 
A unique ID of the online account parenting this service.
 
bool 
<a href="#af38877a3d603f348af2af6d411aef1e2">service_enabled</a>
 
True if this service is enabled.
 
bool 
<a href="#ad9e794cbd45b76b73efdc8915685609a">service_authenticated</a>
 
True if this service is authenticated.
 
std::string 
<a href="#a8bac7d6bcec29cc8d4c45309a6dce350">client_id</a>
 
"ConsumerKey" / "ClientId" OAuth (1 / 2) parameter.
 
std::string 
<a href="#a3025d89ff5f55e267e95c17d9af89d83">client_secret</a>
 
"ClientSecret" / "ConsumerSecret" OAuth (1 / 2) parameter.
 
std::string 
<a href="#a0f0f2471eaeb130f65cdbebd8c6cd40e">access_token</a>
 
"AccessToken" OAuth parameter.
 
std::string 
<a href="#abfb75786e9d517da4dce71e65c3f5bec">token_secret</a>
 
"TokenSecret" OAuth parameter.
 
std::string 
<a href="#a73fac8ec582336993a476026d80c250b">error</a>
 
Error message (empty if no error occurred).
 
<span id="details"></span>
Detailed Description
--------------------

