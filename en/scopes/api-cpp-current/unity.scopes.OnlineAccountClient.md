---
Title: unity.scopes.OnlineAccountClient
---
        
OnlineAccountClient
===================

A simple interface for integrating online accounts access and monitoring into scopes. [More...](#details)

`#include <unity/scopes/OnlineAccountClient.h>`

nested-classes
-----------------------------------------

struct  
<a href="unity.scopes.OnlineAccountClient.ServiceStatus.md">ServiceStatus</a>
 
A container for details about a service's status and authorization parameters. [More...](../unity.scopes.OnlineAccountClient.ServiceStatus.md#details)
 
pub-types
-----------------------------------------

enum  
<a href="#af9407bf4186d20e8445379e000e57f20">MainLoopSelect</a> { <a href="#af9407bf4186d20e8445379e000e57f20a541835f51d0a5ec79aaddada2e91ebf1">RunInExternalMainLoop</a>, <a href="#af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470">CreateInternalMainLoop</a> }
 
Indicates whether an external main loop already exists, or one should be created internally. [More...](#af9407bf4186d20e8445379e000e57f20)
 
enum  
<a href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a> {
  <a href="#a4505ad39c78dcc9fbb78a594c33b9a22ab365a1534cce6d36e42e0be03169ffb6">Unknown</a>, <a href="#a4505ad39c78dcc9fbb78a594c33b9a22a20868ed64ce21f859aae50ec76aa738d">DoNothing</a>, <a href="#a4505ad39c78dcc9fbb78a594c33b9a22a4096156be602a8dd697c5a2f1d834cec">InvalidateResults</a>, <a href="#a4505ad39c78dcc9fbb78a594c33b9a22ac4055329b8e4dbec09736d1f7025d66b">ContinueActivation</a>,
  <a href="#a4505ad39c78dcc9fbb78a594c33b9a22a2b115d76d434e3db48f278562e585b0c">LastActionCode_</a> = ContinueActivation
}
 
Indicates what action to take when the login process completes. [More...](#a4505ad39c78dcc9fbb78a594c33b9a22)
 
typedef std::function&lt; void(<a href="unity.scopes.OnlineAccountClient.ServiceStatus.md">ServiceStatus</a> const &)&gt; 
<a href="#a0c327d92e4684b5849928fa18ebfc204">ServiceUpdateCallback</a>
 
Function signature for the service update callback. More...
 
pub-methods
------------------------------------------------------

 
<a href="#af1139a1b81d9d95c0c84ea52d51dc07c">OnlineAccountClient</a> (std::string const &service\_name, std::string const &service\_type, std::string const &provider\_name, <a href="#af9407bf4186d20e8445379e000e57f20">MainLoopSelect</a> main\_loop\_select=<a href="#af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470">CreateInternalMainLoop</a>)
 
Create OnlineAccountClient for the specified account service. More...
 
void 
<a href="#a9ca9980de9adedb524a3143936400be0">set_service_update_callback</a> (<a href="#a0c327d92e4684b5849928fa18ebfc204">ServiceUpdateCallback</a> callback)
 
Set the callback function to be invoked when a service status changes. More...
 
void 
<a href="#adaa0dacf9d31bc23fc35e082d3b7a7ee">refresh_service_statuses</a> ()
 
Refresh all service statuses. More...
 
std::vector&lt; <a href="unity.scopes.OnlineAccountClient.ServiceStatus.md">ServiceStatus</a> &gt; 
<a href="#abe613053f2292f595247aa67c8f78351">get_service_statuses</a> ()
 
Get statuses for all services matching the name, type and provider specified on construction. More...
 
void 
<a href="#a78b3e267ff30c23cc3a3644f29724e9b">register_account_login_item</a> (<a href="unity.scopes.Result.md">Result</a> &result, <a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &query, <a href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a> login\_passed\_action, <a href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a> login\_failed\_action)
 
Register a result item that requires the user to be logged in. More...
 
void 
<a href="#a2fcd08f9c9b4fb625ba733e895e60f6c">register_account_login_item</a> (<a href="unity.scopes.PreviewWidget.md">PreviewWidget</a> &widget, <a href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a> login\_passed\_action, <a href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a> login\_failed\_action)
 
Register a widget item that requires the user to be logged in. More...
 
<span id="details"></span>
Detailed Description
--------------------

A simple interface for integrating online accounts access and monitoring into scopes.

Each instantiation of this class targets a particular account service as specified on construction.

Member Typedef Documentation
----------------------------

<span id="a0c327d92e4684b5849928fa18ebfc204" class="anchor"></span>
|                                                                                                                                                                                                                                                                               |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| typedef std::function&lt;void(<a href="unity.scopes.OnlineAccountClient.ServiceStatus.md">ServiceStatus</a> const&)&gt; <a href="#a0c327d92e4684b5849928fa18ebfc204">unity::scopes::OnlineAccountClient::ServiceUpdateCallback</a> |

Function signature for the service update callback.

See also  
<a href="#a9ca9980de9adedb524a3143936400be0" title="Set the callback function to be invoked when a service status changes. ">set_service_update_callback</a>

Member Enumeration Documentation
--------------------------------

<span id="af9407bf4186d20e8445379e000e57f20" class="anchor"></span>
|                                                                                                                               |
|-------------------------------------------------------------------------------------------------------------------------------|
| enum <a href="#af9407bf4186d20e8445379e000e57f20">unity::scopes::OnlineAccountClient::MainLoopSelect</a> |

Indicates whether an external main loop already exists, or one should be created internally.

A running main loop is essential in order to receive service updates from the online accounts backend. When in doubt, set to CreateInternalMainLoop.

Enumerator
<span id="af9407bf4186d20e8445379e000e57f20a541835f51d0a5ec79aaddada2e91ebf1" class="anchor"></span>RunInExternalMainLoop 
An external main loop already exists and is running.

<span id="af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470" class="anchor"></span>CreateInternalMainLoop 
An external main loop does not exist.

<span id="a4505ad39c78dcc9fbb78a594c33b9a22" class="anchor"></span>
|                                                                                                                                |
|--------------------------------------------------------------------------------------------------------------------------------|
| enum <a href="#a4505ad39c78dcc9fbb78a594c33b9a22">unity::scopes::OnlineAccountClient::PostLoginAction</a> |

Indicates what action to take when the login process completes.

Enumerator
<span id="a4505ad39c78dcc9fbb78a594c33b9a22ab365a1534cce6d36e42e0be03169ffb6" class="anchor"></span>Unknown 
An action unknown to the run-time was used.

<span id="a4505ad39c78dcc9fbb78a594c33b9a22a20868ed64ce21f859aae50ec76aa738d" class="anchor"></span>DoNothing 
Simply return to the scope with no further action.

<span id="a4505ad39c78dcc9fbb78a594c33b9a22a4096156be602a8dd697c5a2f1d834cec" class="anchor"></span>InvalidateResults 
Invalidate the scope results.

<span id="a4505ad39c78dcc9fbb78a594c33b9a22ac4055329b8e4dbec09736d1f7025d66b" class="anchor"></span>ContinueActivation 
Continue with regular result / widget activation.

<span id="a4505ad39c78dcc9fbb78a594c33b9a22a2b115d76d434e3db48f278562e585b0c" class="anchor"></span>LastActionCode\_ 
Dummy end marker.

Constructor & Destructor Documentation
--------------------------------------

<span id="af1139a1b81d9d95c0c84ea52d51dc07c" class="anchor"></span>
|                                                         |     |                                                                                       |                                                  |
|---------------------------------------------------------|-----|---------------------------------------------------------------------------------------|--------------------------------------------------|
| unity::scopes::OnlineAccountClient::OnlineAccountClient | (   | std::string const &                                                                   | *service\_name*,                                 |
|                                                         |     | std::string const &                                                                   | *service\_type*,                                 |
|                                                         |     | std::string const &                                                                   | *provider\_name*,                                |
|                                                         |     | <a href="#af9407bf4186d20e8445379e000e57f20">MainLoopSelect</a>  | *main\_loop\_select* = `CreateInternalMainLoop`  |
|                                                         | )   |                                                                                       |                                                  |

Create <a href="index.html" title="A simple interface for integrating online accounts access and monitoring into scopes. ">OnlineAccountClient</a> for the specified account service.

Parameters  
|                    |                                                                                                                                                                                                                                                                              |
|--------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| service\_name      | The name of the service (E.g. "com.ubuntu.scopes.youtube\_youtube").                                                                                                                                                                                                         |
| service\_type      | The type of service (E.g. "sharing").                                                                                                                                                                                                                                        |
| provider\_name     | The name of the service provider (E.g. "google").                                                                                                                                                                                                                            |
| main\_loop\_select | Indicates whether or not an external main loop exists (see <a href="#af9407bf4186d20e8445379e000e57f20" title="Indicates whether an external main loop already exists, or one should be created internally. ">OnlineAccountClient::MainLoopSelect</a>). |

Member Function Documentation
-----------------------------

<span id="abe613053f2292f595247aa67c8f78351" class="anchor"></span>
|                                                                                                                                                                                                          |     |     |     |     |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-----|
| std::vector&lt; <a href="unity.scopes.OnlineAccountClient.ServiceStatus.md">OnlineAccountClient::ServiceStatus</a> &gt; unity::scopes::OnlineAccountClient::get\_service\_statuses | (   |     | )   |     |

Get statuses for all services matching the name, type and provider specified on construction.

Returns  
A list of service statuses.

<span id="adaa0dacf9d31bc23fc35e082d3b7a7ee" class="anchor"></span>
|                                                                     |     |     |     |     |
|---------------------------------------------------------------------|-----|-----|-----|-----|
| void unity::scopes::OnlineAccountClient::refresh\_service\_statuses | (   |     | )   |     |

Refresh all service statuses.

**WARNING**: If a service update callback is set, this method will invoke that callback for each service monitored. Therefore, DO NOT call this method from within your callback function!

<span id="a78b3e267ff30c23cc3a3644f29724e9b" class="anchor"></span>
|                                                                         |     |                                                                                        |                          |
|-------------------------------------------------------------------------|-----|----------------------------------------------------------------------------------------|--------------------------|
| void unity::scopes::OnlineAccountClient::register\_account\_login\_item | (   | <a href="unity.scopes.Result.md">Result</a> &                    | *result*,                |
|                                                                         |     | <a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &    | *query*,                 |
|                                                                         |     | <a href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a>  | *login\_passed\_action*, |
|                                                                         |     | <a href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a>  | *login\_failed\_action*  |
|                                                                         | )   |                                                                                        |                          |

Register a result item that requires the user to be logged in.

Parameters  
|                       |                                             |
|-----------------------|---------------------------------------------|
| result                | The result item that needs account access.  |
| query                 | The scope's current query.                  |
| login\_passed\_action | The action to take upon successful login.   |
| login\_failed\_action | The action to take upon unsuccessful login. |

<span id="a2fcd08f9c9b4fb625ba733e895e60f6c" class="anchor"></span>
|                                                                         |     |                                                                                        |                          |
|-------------------------------------------------------------------------|-----|----------------------------------------------------------------------------------------|--------------------------|
| void unity::scopes::OnlineAccountClient::register\_account\_login\_item | (   | <a href="unity.scopes.PreviewWidget.md">PreviewWidget</a> &      | *widget*,                |
|                                                                         |     | <a href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a>  | *login\_passed\_action*, |
|                                                                         |     | <a href="#a4505ad39c78dcc9fbb78a594c33b9a22">PostLoginAction</a>  | *login\_failed\_action*  |
|                                                                         | )   |                                                                                        |                          |

Register a widget item that requires the user to be logged in.

Parameters  
|                       |                                             |
|-----------------------|---------------------------------------------|
| widget                | The widget item that needs account access.  |
| login\_passed\_action | The action to take upon successful login.   |
| login\_failed\_action | The action to take upon unsuccessful login. |

<span id="a9ca9980de9adedb524a3143936400be0" class="anchor"></span>
|                                                                         |     |                                                                                              |            |     |     |
|-------------------------------------------------------------------------|-----|----------------------------------------------------------------------------------------------|------------|-----|-----|
| void unity::scopes::OnlineAccountClient::set\_service\_update\_callback | (   | <a href="#a0c327d92e4684b5849928fa18ebfc204">ServiceUpdateCallback</a>  | *callback* | )   |     |

Set the callback function to be invoked when a service status changes.

Parameters  
|          |                                 |
|----------|---------------------------------|
| callback | The external callback function. |

