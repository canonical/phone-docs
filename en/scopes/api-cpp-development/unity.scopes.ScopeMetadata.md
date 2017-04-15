---
Title: unity.scopes.ScopeMetadata
---
        
ScopeMetadata
=============

Holds scope attributes such as name, description, icon etc. [More...](#details)

`#include <unity/scopes/ScopeMetadata.h>`

pub-types
-----------------------------------------

<span id="a6fb29deb86215b969a721b9c67328eeb" class="anchor"></span>enum  
<a href="#a6fb29deb86215b969a721b9c67328eeb">ResultsTtlType</a> { **None**, **Small**, **Medium**, **Large** }
 
Enum representing the expected valid lifetime of results from the scope.
 
pub-methods
------------------------------------------------------

std::string 
<a href="#abc13282db1a0d899e6a1daf2a40beba8">scope_id</a> () const
 
Get the scope identifier. More...
 
<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> 
<a href="#a2d3a7700ed04e0f4b6ccb054d869d8c2">proxy</a> () const
 
Get the proxy object for this scope. More...
 
std::string 
<a href="#a7aca280ea8e8b1a96ac24b8f7efabfe8">display_name</a> () const
 
Get the display name for this scope. More...
 
std::string 
<a href="#adc16d2c66411956f96a6ba3f0b33d811">description</a> () const
 
Get the description for this scope. More...
 
std::string 
<a href="#a67465b69a72c548c1c46919dff6809d7">author</a> () const
 
Get the author for this scope. More...
 
std::string 
<a href="#aabeec6ec7dad68309af95c5a1731673c">art</a> () const
 
Get the art for this scope. More...
 
std::string 
<a href="#af6d6753b013551a2d465a21f8f8bf131">icon</a> () const
 
Get the icon for this scope. More...
 
std::string 
<a href="#a5c8ae76986842475d4eaf4d2304f6143">search_hint</a> () const
 
Get the search hint for this scope. More...
 
std::string 
<a href="#abdeacf5f5dbdb8c75b5a2cbc32e80d82">hot_key</a> () const
 
Get the hot key for this scope. More...
 
bool 
<a href="#a24360dffb0183b75e064148d5952fdcb">invisible</a> () const
 
Check if this scope should be hidden in the Dash. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> 
<a href="#a5929e9ed85eabc03a1bd2324a1234fd6">appearance_attributes</a> () const
 
Get optional display attributes. More...
 
std::string 
<a href="#a6c4592204ef51a8a6eec2f6cc65ba8cb">scope_directory</a> () const
 
Get directory where scope config files and .so file lives. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> 
<a href="#af2aaf529613cd41a1a9a3895271eab32">serialize</a> () const
 
Return a dictionary of all metadata attributes. More...
 
<a href="#a6fb29deb86215b969a721b9c67328eeb">ResultsTtlType</a> 
<a href="#aab63ca25ab0e3ff312908e07d3334ae0">results_ttl_type</a> () const
 
Return the TTL for the results this scope produces. More...
 
<a href="../unity.scopes.md#aa3bf32d584efd902bca79698a07dd934">VariantArray</a> 
<a href="#a6351dda2c91889a06f0ec31e669ab385">settings_definitions</a> () const
 
Return the settings definitions for this scope. More...
 
bool 
<a href="#a688ff4dbec4f71d8b6bcd3b0879b737b">location_data_needed</a> () const
 
Check if this scope wants location data. More...
 
std::vector&lt; std::string &gt; 
<a href="#ae804c65fc5a6a3fdf85d6c2a0280c3af">child_scope_ids</a> () const
 
Return the list of scope identifiers aggregated by this scope. More...
 
int 
<a href="#ac7a2cf80883ad3de1d726728fc0b8e72">version</a> () const
 
Return the version of the scope. More...
 
std::set&lt; std::string &gt; 
<a href="#ad195fd0f83a5afb2aaaf738ee237b045">keywords</a> () const
 
Return the set of keywords specified by this scope. More...
 
bool 
<a href="#a80ba381c5b402b3c4cd57f0f52271cab">is_aggregator</a> () const
 
Check if this scope is an aggregator. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**ScopeMetadata** (<a href="index.html">ScopeMetadata</a> const &other)
 
 
**ScopeMetadata** (<a href="index.html">ScopeMetadata</a> &&)
 
<a href="index.html">ScopeMetadata</a> & 
**operator=** (<a href="index.html">ScopeMetadata</a> const &other)
 
<a href="index.html">ScopeMetadata</a> & 
**operator=** (<a href="index.html">ScopeMetadata</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Holds scope attributes such as name, description, icon etc.

The information stored by <a href="index.html" title="Holds scope attributes such as name, description, icon etc. ">ScopeMetadata</a> comes from the .ini file for the given scope (for local scopes) or is fetched from the remote server (for scopes running on Smart Scopes Server). Use <a href="unity.scopes.Registry.md" title="White pages service for available scopes. ">unity::scopes::Registry</a> to get the metadata for a specific scope or all scopes.

Member Function Documentation
-----------------------------

<span id="a5929e9ed85eabc03a1bd2324a1234fd6" class="anchor"></span>
|                                                                                                                                                       |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::ScopeMetadata::appearance\_attributes | (   |     | )   | const |

Get optional display attributes.

Appearance attributes define customized look of the scope in Scopes <a href="unity.scopes.Scope.md" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>.

Returns  
Map of attributes (may be empty)

<span id="aabeec6ec7dad68309af95c5a1731673c" class="anchor"></span>
|                                               |     |     |     |       |
|-----------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::art | (   |     | )   | const |

Get the art for this scope.

Returns  
The scope art.

<span id="a67465b69a72c548c1c46919dff6809d7" class="anchor"></span>
|                                                  |     |     |     |       |
|--------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::author | (   |     | )   | const |

Get the author for this scope.

Returns  
The scope author.

<span id="ae804c65fc5a6a3fdf85d6c2a0280c3af" class="anchor"></span>
|                                                                                |     |     |     |       |
|--------------------------------------------------------------------------------|-----|-----|-----|-------|
| std::vector&lt;std::string&gt; unity::scopes::ScopeMetadata::child\_scope\_ids | (   |     | )   | const |

Return the list of scope identifiers aggregated by this scope.

The list returned by this method comes from the .ini file. The scope author must ensure that it contains all scopes that an aggregator might collect results from. This list may contain scopes that are not currently installed and are optional for proper functioning of the aggregator scope.

Returns  
The list of scopes ids aggregated by this scope.

<span id="adc16d2c66411956f96a6ba3f0b33d811" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::description | (   |     | )   | const |

Get the description for this scope.

Returns  
The scope description.

<span id="a7aca280ea8e8b1a96ac24b8f7efabfe8" class="anchor"></span>
|                                                         |     |     |     |       |
|---------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::display\_name | (   |     | )   | const |

Get the display name for this scope.

Returns  
The scope display name.

<span id="abdeacf5f5dbdb8c75b5a2cbc32e80d82" class="anchor"></span>
|                                                    |     |     |     |       |
|----------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::hot\_key | (   |     | )   | const |

Get the hot key for this scope.

Returns  
The hot key.

<span id="af6d6753b013551a2d465a21f8f8bf131" class="anchor"></span>
|                                                |     |     |     |       |
|------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::icon | (   |     | )   | const |

Get the icon for this scope.

Returns  
The scope icon.

<span id="a24360dffb0183b75e064148d5952fdcb" class="anchor"></span>
|                                              |     |     |     |       |
|----------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::ScopeMetadata::invisible | (   |     | )   | const |

Check if this scope should be hidden in the Dash.

Returns  
True if this scope is invisible.

<span id="a80ba381c5b402b3c4cd57f0f52271cab" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::ScopeMetadata::is\_aggregator | (   |     | )   | const |

Check if this scope is an aggregator.

Returns  
True if this scope is an aggregator.

<span id="ad195fd0f83a5afb2aaaf738ee237b045" class="anchor"></span>
|                                                                    |     |     |     |       |
|--------------------------------------------------------------------|-----|-----|-----|-------|
| std::set&lt;std::string&gt; unity::scopes::ScopeMetadata::keywords | (   |     | )   | const |

Return the set of keywords specified by this scope.

The set returned by this method is formulated from the value specified under the "Keywords" key in the scope's .ini file.

Returns  
The set of keywords specified by this scope.

<span id="a688ff4dbec4f71d8b6bcd3b0879b737b" class="anchor"></span>
|                                                           |     |     |     |       |
|-----------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::ScopeMetadata::location\_data\_needed | (   |     | )   | const |

Check if this scope wants location data.

Returns  
True if this scope wants location data.

<span id="a2d3a7700ed04e0f4b6ccb054d869d8c2" class="anchor"></span>
|                                                                                                                                      |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> unity::scopes::ScopeMetadata::proxy | (   |     | )   | const |

Get the proxy object for this scope.

Returns  
The scope proxy.

<span id="aab63ca25ab0e3ff312908e07d3334ae0" class="anchor"></span>
|                                                                                                                                       |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="#a6fb29deb86215b969a721b9c67328eeb">ResultsTtlType</a> unity::scopes::ScopeMetadata::results\_ttl\_type | (   |     | )   | const |

Return the TTL for the results this scope produces.

Returns  
Enum of timeout type.

<span id="a6c4592204ef51a8a6eec2f6cc65ba8cb" class="anchor"></span>
|                                                            |     |     |     |       |
|------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::scope\_directory | (   |     | )   | const |

Get directory where scope config files and .so file lives.

Note that the directory is not set for remote scopes; in such case this method throws <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a>.

Exceptions  
|                                                                                                                                                                                             |                         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if directory is not set |

<!-- -->

Returns  
path string

<span id="abc13282db1a0d899e6a1daf2a40beba8" class="anchor"></span>
|                                                     |     |     |     |       |
|-----------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::scope\_id | (   |     | )   | const |

Get the scope identifier.

Returns  
The ID of the scope.

<span id="a5c8ae76986842475d4eaf4d2304f6143" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::search\_hint | (   |     | )   | const |

Get the search hint for this scope.

Returns  
The search hint.

<span id="af2aaf529613cd41a1a9a3895271eab32" class="anchor"></span>
|                                                                                                                                          |     |     |     |       |
|------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::ScopeMetadata::serialize | (   |     | )   | const |

Return a dictionary of all metadata attributes.

Returns  
Dictionary of all metadata attributes.

<span id="a6351dda2c91889a06f0ec31e669ab385" class="anchor"></span>
|                                                                                                                                                        |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#aa3bf32d584efd902bca79698a07dd934">VariantArray</a> unity::scopes::ScopeMetadata::settings\_definitions | (   |     | )   | const |

Return the settings definitions for this scope.

Returns  
The settings definition as a VariantArray. The array contains the definition of the settings in their original order.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                              |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if the scope has no settings |

<!-- -->

See also  
TBD TODO

<span id="ac7a2cf80883ad3de1d726728fc0b8e72" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| int unity::scopes::ScopeMetadata::version | (   |     | )   | const |

Return the version of the scope.

Returns  
The version or, if the scope does not define its version, the value `0`.

