---
Title: unity.scopes.Registry
---
        
Registry
========

White pages service for available scopes. [More...](#details)

`#include <unity/scopes/Registry.h>`

Inheritance diagram for unity::scopes::Registry:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/951c4b57-d6e2-43ca-b704-f49a5fe39247-api/scopes/cpp/sdk-15.04.5/unity.scopes.Registry/classunity_1_1scopes_1_1_registry__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual <a href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> 
<a href="#a63778ac090804a1fb85dc48fccbc2822">get_metadata</a> (std::string const &scope\_id)=0
 
Returns the metadata for the scope with the given ID. More...
 
virtual <a href="../unity.scopes.md#a9f6e8e62689e49cdabadacf39b697816">MetadataMap</a> 
<a href="#a23e078986524fe11bd363c29401fbb31">list</a> ()=0
 
Returns a map containing the metadata for all scopes. More...
 
virtual <a href="../unity.scopes.md#a9f6e8e62689e49cdabadacf39b697816">MetadataMap</a> 
<a href="#aa15baf0154c4b58decf27f2e5815d680">list_if</a> (std::function&lt; bool(<a href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> const &item)&gt; predicate)=0
 
Returns a map containing only those scopes for which `predicate` returns true. More...
 
virtual bool 
<a href="#a06ef35ed8677a0b20774528343bff9f1">is_scope_running</a> (std::string const &scope\_id)=0
 
Returns whether a scope is currently running or not. More...
 
virtual core::ScopedConnection 
<a href="#a86ac67a881dec9eddabd069153fc62b1">set_scope_state_callback</a> (std::string const &scope\_id, std::function&lt; void(bool is\_running)&gt; callback)=0
 
Assigns a callback method to be executed when a scope's running state (started / stopped) changes. More...
 
virtual core::ScopedConnection 
<a href="#a1f540dc612ce4a5e50a21ec66fec75fd">set_list_update_callback</a> (std::function&lt; void()&gt; callback)=0
 
Assigns a callback method to be executed when the registry's scope list changes. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/fd8e90cf-243b-4bce-82de-a07c27ccf990-api/scopes/cpp/sdk-15.04.5/unity.scopes.Registry/closed.png) Public Member Functions inherited from <a href="unity.scopes.Object.md">unity::scopes::Object</a>
virtual std::string 
<a href="../unity.scopes.Object.md#ad7618cc9d878c40b389361d4acd473ae">endpoint</a> ()=0
 
Returns the endpoint this proxy connects to. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a1b55aea886f0a68cb8a578f7ee0b1cfd">identity</a> ()=0
 
Returns the identity of the target object of this proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a40a997516629df3dacca9742dbddd6cb">target_category</a> ()=0
 
Returns the category of the target object of this proxy. More...
 
virtual int64\_t 
<a href="../unity.scopes.Object.md#a41d9839f1e3cbcd6d8baee0736feccab">timeout</a> ()=0
 
Returns the timeout in milliseconds if this proxy is a twoway proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a9ae27e1f30dc755abcd796a1e8a25150">to_string</a> ()=0
 
Converts a proxy into its string representation. More...
 
<span id="details"></span>
Detailed Description
--------------------

White pages service for available scopes.

You can obtain a proxy to the registry by calling <a href="../unity.scopes.Runtime.md#afc312448a4537b110bf1701bfb964501" title="Returns a proxy to the Registry object. ">Runtime::registry()</a>.

Member Function Documentation
-----------------------------

<span id="a63778ac090804a1fb85dc48fccbc2822" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual <a href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> unity::scopes::Registry::get_metadata</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>scope_id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Returns the metadata for the scope with the given ID.

Parameters  
|           |                                                              |
|-----------|--------------------------------------------------------------|
| scope\_id | The ID of the scope from which we wish to retrieve metadata. |

<!-- -->

Returns  
The metadata for the scope.

<!-- -->

Exceptions  
|                                                                                                                                                                              |                                       |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">NotFoundException</a> | if no scope with the given ID exists. |

<span id="a06ef35ed8677a0b20774528343bff9f1" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual bool unity::scopes::Registry::is_scope_running</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>scope_id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Returns whether a scope is currently running or not.

Parameters  
|           |                                                           |
|-----------|-----------------------------------------------------------|
| scope\_id | The ID of the scope from which we wish to retrieve state. |

<!-- -->

Returns  
True if the scope is running, and False if it is not running.

<!-- -->

Exceptions  
|                                                                                                                                                                              |                                       |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">NotFoundException</a> | if no scope with the given ID exists. |

<span id="a23e078986524fe11bd363c29401fbb31" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual <a href="../unity.scopes.md#a9f6e8e62689e49cdabadacf39b697816">MetadataMap</a> unity::scopes::Registry::list</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a map containing the metadata for all scopes.

Returns  
The metadata for all scopes.

<span id="aa15baf0154c4b58decf27f2e5815d680" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual <a href="../unity.scopes.md#a9f6e8e62689e49cdabadacf39b697816">MetadataMap</a> unity::scopes::Registry::list_if</td>
<td>(</td>
<td>std::function&lt; bool(<a href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> const &amp;item)&gt; </td>
<td><em>predicate</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a map containing only those scopes for which `predicate` returns true.

Parameters  
|           |                                                                                           |
|-----------|-------------------------------------------------------------------------------------------|
| predicate | a function object that must return true for each metadata item to be included in the map. |

<!-- -->

Returns  
The metadata items for which the predicate returned true.

<span id="a1f540dc612ce4a5e50a21ec66fec75fd" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual core::ScopedConnection unity::scopes::Registry::set_list_update_callback</td>
<td>(</td>
<td>std::function&lt; void()&gt; </td>
<td><em>callback</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Assigns a callback method to be executed when the registry's scope list changes.

Note: Upon receiving this callback, you should retrieve the updated scopes list via the <a href="#a23e078986524fe11bd363c29401fbb31" title="Returns a map containing the metadata for all scopes. ">list()</a> method if you wish to retain synchronisation between client and server.

Parameters  
|          |                                                            |
|----------|------------------------------------------------------------|
| callback | The function object that is invoked when an update occurs. |

<!-- -->

Exceptions  
|                                                                                                                                                                                 |                                                  |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------|
| <a href="unity.scopes.MiddlewareException.md" title="Exception to indicate that something went wrong with the middleware layer. ">MiddlewareException</a> | if the registry subscriber failed to initialize. |

<span id="a86ac67a881dec9eddabd069153fc62b1" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual core::ScopedConnection unity::scopes::Registry::set_scope_state_callback</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>scope_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::function&lt; void(bool is_running)&gt; </td>
<td><em>callback</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Assigns a callback method to be executed when a scope's running state (started / stopped) changes.

Parameters  
|           |                                                                         |
|-----------|-------------------------------------------------------------------------|
| scope\_id | The ID of the scope from which we wish to retrieve state changes.       |
| callback  | The function object that is invoked when a scope changes running state. |

<!-- -->

Exceptions  
|                                                                                                                                                                                 |                                                  |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------|
| <a href="unity.scopes.MiddlewareException.md" title="Exception to indicate that something went wrong with the middleware layer. ">MiddlewareException</a> | if the registry subscriber failed to initialize. |

