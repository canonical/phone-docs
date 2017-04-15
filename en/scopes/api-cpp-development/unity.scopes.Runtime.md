---
Title: unity.scopes.Runtime
---
        
Runtime
=======

The main object for query originators to access the scopes runtime. [More...](#details)

`#include <unity/scopes/Runtime.h>`

pub-methods
------------------------------------------------------

void 
<a href="#a37009c392ed3a7c6ebaf37cdfdaf6d01">destroy</a> ()
 
Shuts down the runtime, reclaiming all associated resources. More...
 
<a href="../unity.scopes.md#a45babc254d3548863d79ee54f266e84d">RegistryProxy</a> 
<a href="#afc312448a4537b110bf1701bfb964501">registry</a> () const
 
Returns a proxy to the Registry object. More...
 
void 
<a href="#a8924298a103d43313fe1974c040e7736">run_scope</a> (<a href="unity.scopes.ScopeBase.md">ScopeBase</a> \*const scope\_base, std::string const &scope\_ini\_file)
 
Run a scope without going through the scope runner. More...
 
<a href="../unity.scopes.md#aa68ce1769f7a888d0b4b2951741ca75a">ObjectProxy</a> 
<a href="#a24eec46bc15975c219642fcfe8e5357f">string_to_proxy</a> (std::string const &s) const
 
Convert a string to a proxy. More...
 
std::string 
<a href="#ac96e508aa3d37d24eaf2aa65bdbfb43e">proxy_to_string</a> (<a href="../unity.scopes.md#aa68ce1769f7a888d0b4b2951741ca75a">ObjectProxy</a> const &proxy) const
 
Converts a proxy to a string. More...
 
 
<a href="#a96f5965eec2dd22c54cca9d99cb04653">~Runtime</a> ()
 
Destroys a Runtime instance. More...
 
pub-static-methods
--------------------------------------------------------------------

static UPtr 
<a href="#a0c24bf97fe98f57c4fc7ad04456bd40c">create</a> (std::string const &configfile="")
 
Instantiates the scopes runtime for a client with the given (optional) configuration file. More...
 
static UPtr 
<a href="#aa729688b3c887476118c0ab5ad6a5a54">create_scope_runtime</a> (std::string const &scope\_id, std::string const &configfile="")
 
Create a runtime for a scope. More...
 
<span id="details"></span>
Detailed Description
--------------------

The main object for query originators to access the scopes runtime.

All interactions with the scopes runtime require a <a href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> object to be instantiated first. The <a href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance controls the overall life cycle; once a <a href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance goes out of scope, the application must not make further calls on any instance obtained via the destroyed <a href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a>.

The application must instantiate a <a href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> object only after `main()` is entered, and it must destroy the instance before leaving `main()`; failure to do so results in undefined behavior.

Note that scope implementations do not need to instantiate a <a href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance.

Constructor & Destructor Documentation
--------------------------------------

<span id="a96f5965eec2dd22c54cca9d99cb04653" class="anchor"></span>
|                                  |     |     |     |     |
|----------------------------------|-----|-----|-----|-----|
| unity::scopes::Runtime::~Runtime | (   |     | )   |     |

Destroys a <a href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance.

The destructor implicitly calls <a href="#a37009c392ed3a7c6ebaf37cdfdaf6d01" title="Shuts down the runtime, reclaiming all associated resources. ">destroy()</a> if the application code does not explicitly destroy the instance. You *must not* permit a <a href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance to persist beyond the end of `main()`; doing so has undefined behavior.

Member Function Documentation
-----------------------------

<span id="a0c24bf97fe98f57c4fc7ad04456bd40c" class="anchor"></span>
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
<td>Runtime::UPtr unity::scopes::Runtime::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>configfile</em> = <code>&quot;&quot;</code></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Instantiates the scopes runtime for a client with the given (optional) configuration file.

The life time of the runtime is under control of the caller. Letting the returned `unique_ptr` go out of scope shuts down the runtime.

You *must not* create a <a href="index.html" title="The main object for query originators to access the scopes runtime. ">Runtime</a> instance until after `main()` is entered, and you *must* destroy it before leaving `main()` (either by explicitly calling <a href="#a37009c392ed3a7c6ebaf37cdfdaf6d01" title="Shuts down the runtime, reclaiming all associated resources. ">destroy()</a>, or by letting the returned `unique_ptr` go out of scope). Failure to do so causes undefined behavior.

Parameters  
|            |                                                 |
|------------|-------------------------------------------------|
| configfile | The path name of the configuration file to use. |

If configfile is the empty string, a default configuration is used.

<span id="aa729688b3c887476118c0ab5ad6a5a54" class="anchor"></span>
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
<td>Runtime::UPtr unity::scopes::Runtime::create_scope_runtime</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>scope_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>configfile</em> = <code>&quot;&quot;</code> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Create a runtime for a scope.

This method is provided for custom scoperunner implementations, for example, for scopes written in Go.

Parameters  
|            |                                                                                                                                                                             |
|------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| scope\_id  | The unique ID of the scope. If scope\_id is empty, a unique ID is used. Calling `create_scope_runtime("", "Runtime.ini")` is equivalent to calling `create("Runtime.ini")`. |
| configfile | The path to the runtime .ini file. If empty, the default configuration is used.                                                                                             |

<!-- -->

Returns  
A `unique_ptr` to the runtime instance.

<span id="a37009c392ed3a7c6ebaf37cdfdaf6d01" class="anchor"></span>
|                                      |     |     |     |     |
|--------------------------------------|-----|-----|-----|-----|
| void unity::scopes::Runtime::destroy | (   |     | )   |     |

Shuts down the runtime, reclaiming all associated resources.

Calling <a href="#a37009c392ed3a7c6ebaf37cdfdaf6d01" title="Shuts down the runtime, reclaiming all associated resources. ">destroy()</a> is optional; the destructor implicitly calls <a href="#a37009c392ed3a7c6ebaf37cdfdaf6d01" title="Shuts down the runtime, reclaiming all associated resources. ">destroy()</a> if it was not called explicitly. However, no exceptions are thrown by the destructor. If you want to log or handle any exceptions during shutdown, call <a href="#a37009c392ed3a7c6ebaf37cdfdaf6d01" title="Shuts down the runtime, reclaiming all associated resources. ">destroy()</a> explicitly before letting the `unique_ptr` returned by <a href="#a0c24bf97fe98f57c4fc7ad04456bd40c" title="Instantiates the scopes runtime for a client with the given (optional) configuration file...">create()</a> go out of scope.

<span id="ac96e508aa3d37d24eaf2aa65bdbfb43e" class="anchor"></span>
|                                                  |     |                                                                                                            |         |     |       |
|--------------------------------------------------|-----|------------------------------------------------------------------------------------------------------------|---------|-----|-------|
| string unity::scopes::Runtime::proxy\_to\_string | (   | <a href="../unity.scopes.md#aa68ce1769f7a888d0b4b2951741ca75a">ObjectProxy</a> const &  | *proxy* | )   | const |

Converts a proxy to a string.

<a href="#ac96e508aa3d37d24eaf2aa65bdbfb43e" title="Converts a proxy to a string. ">proxy_to_string()</a> converts the passed proxy to a string. Note that it is typically easier to call the ObjectProxy::to\_string() method to achieve the same thing. However, <a href="#ac96e508aa3d37d24eaf2aa65bdbfb43e" title="Converts a proxy to a string. ">proxy_to_string()</a> is needed in order to obtain a string for a null proxy (because it is not possible to invoke a member function on a null proxy).

Parameters  
|       |                                   |
|-------|-----------------------------------|
| proxy | The proxy to convert to a string. |

<!-- -->

Returns  
The string representation of the proxy.

<span id="afc312448a4537b110bf1701bfb964501" class="anchor"></span>
|                                                                                                                                      |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#a45babc254d3548863d79ee54f266e84d">RegistryProxy</a> unity::scopes::Runtime::registry | (   |     | )   | const |

Returns a proxy to the <a href="unity.scopes.Registry.md" title="White pages service for available scopes. ">Registry</a> object.

The returned proxy allows application code to interact with the registry, which provides access to the available scopes.

<span id="a8924298a103d43313fe1974c040e7736" class="anchor"></span>
|                                         |     |                                                                                  |                     |
|-----------------------------------------|-----|----------------------------------------------------------------------------------|---------------------|
| void unity::scopes::Runtime::run\_scope | (   | <a href="unity.scopes.ScopeBase.md">ScopeBase</a> \*const  | *scope\_base*,      |
|                                         |     | std::string const &                                                              | *scope\_ini\_file*  |
|                                         | )   |                                                                                  |                     |

Run a scope without going through the scope runner.

This method is intended to run a scope that can not be loaded via the scope runner, such as those written in languages that cannot be dynamically loaded.

Parameters  
|                  |                                           |
|------------------|-------------------------------------------|
| scope\_base      | The scope implementation                  |
| scope\_ini\_file | The full path of scope configuration file |

<span id="a24eec46bc15975c219642fcfe8e5357f" class="anchor"></span>
|                                                                                                                                             |     |                      |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------------|-----|----------------------|-----|-----|-------|
| <a href="../unity.scopes.md#aa68ce1769f7a888d0b4b2951741ca75a">ObjectProxy</a> unity::scopes::Runtime::string\_to\_proxy | (   | std::string const &  | *s* | )   | const |

Convert a string to a proxy.

This method is intended for testing purposes. Do not use <a href="#a24eec46bc15975c219642fcfe8e5357f" title="Convert a string to a proxy. ">string_to_proxy()</a> in production code! <a href="#a24eec46bc15975c219642fcfe8e5357f" title="Convert a string to a proxy. ">string_to_proxy()</a> converts a string to a proxy. The returned proxy must be down-cast using `dynamic_pointer_cast` to the correct type before it can be used.

Parameters  
|     |                                     |
|-----|-------------------------------------|
| s   | The string to convert into a proxy. |

<!-- -->

Returns  
The converted proxy. It is possible for the return value to be `nullptr`, but only if the passed string represents a null proxy. Otherwise, the return value is a non-null proxy, or an exception (for example, if the proxy string did not parse correctly, or if the proxy could not be instantiated due to incorrect values inside the string).

