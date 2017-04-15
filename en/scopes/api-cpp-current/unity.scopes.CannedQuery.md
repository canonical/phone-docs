---
Title: unity.scopes.CannedQuery
---
        
CannedQuery
===========

Parameters of a search query. [More...](#details)

`#include <unity/scopes/CannedQuery.h>`

pub-methods
------------------------------------------------------

 
<a href="#a590181347391bcd1115579187fb70995">CannedQuery</a> (std::string const &<a href="#a406aa5a8fb73a602664e254d8efe25c9">scope_id</a>)
 
Creates a query for given scope with empty query string.
 
 
<a href="#aeffdaa76040590f874c86d4bfd884afc">CannedQuery</a> (std::string const &<a href="#a406aa5a8fb73a602664e254d8efe25c9">scope_id</a>, std::string const &query\_str, std::string const &<a href="#a61351960149bb4c0840f020c4e645f66">department_id</a>)
 
Creates a query for given scope with specific query string and in given department.
 
void 
<a href="#a41981f398edaa4d7dc7623b323c952c3">set_department_id</a> (std::string const &dep\_id)
 
Sets or updates the department.
 
void 
<a href="#acc65fc4671dae0bccaba0aa811d05bc2">set_query_string</a> (std::string const &query\_str)
 
Sets or updates the query string.
 
void 
<a href="#aca9bbdc1ff14b20f3e7b04f2584b6a41">set_filter_state</a> (<a href="unity.scopes.FilterState.md">FilterState</a> const &<a href="#a94eab58b1e02501f49fba55418b043bf">filter_state</a>)
 
Sets filter state.
 
std::string 
<a href="#a406aa5a8fb73a602664e254d8efe25c9">scope_id</a> () const
 
Returns the scope identifier of this CannedQuery. More...
 
std::string 
<a href="#a61351960149bb4c0840f020c4e645f66">department_id</a> () const
 
Returns the department id of this CannedQuery. More...
 
std::string 
<a href="#a29d05795a3255655a5de3754e3dfa73f">query_string</a> () const
 
Returns the query string of this CannedQuery. More...
 
std::string 
<a href="#a993c2d80b4d3c15b22f58fe6951e8c3d">to_uri</a> () const
 
Returns a string representation of this CannedQuery object as a URI using scope:// schema. More...
 
<a href="unity.scopes.FilterState.md">FilterState</a> 
<a href="#a94eab58b1e02501f49fba55418b043bf">filter_state</a> () const
 
Get state of the filters for this CannedQuery. More...
 
void 
<a href="#a6799b92d42f8f19116604b0cdd81135f">set_user_data</a> (<a href="unity.scopes.Variant.md">Variant</a> const &value)
 
Attach arbitrary data. More...
 
bool 
<a href="#ac495aa13c8fa07b623baa7b7795fa214">has_user_data</a> () const
 
Checks if user data has been attached to this query. More...
 
<a href="unity.scopes.Variant.md">Variant</a> 
<a href="#aec4f31c9decc1ef1cb58e3ca924fa2f1">user_data</a> () const
 
Get user data attached to this query. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**CannedQuery** (<a href="index.html">CannedQuery</a> const &other)
 
 
**CannedQuery** (<a href="index.html">CannedQuery</a> &&)
 
<a href="index.html">CannedQuery</a> & 
**operator=** (<a href="index.html">CannedQuery</a> const &other)
 
<a href="index.html">CannedQuery</a> & 
**operator=** (<a href="index.html">CannedQuery</a> &&)
 
pub-static-methods
--------------------------------------------------------------------

static <a href="index.html">CannedQuery</a> 
<a href="#a30fbeb531d683f6d6c032c703b15a634">from_uri</a> (std::string const &uri)
 
Recreates a CannedQuery object from a scope:// URI. More...
 
<span id="details"></span>
Detailed Description
--------------------

Parameters of a search query.

Holds all parameters of a search query: the target scope id, query string, department id, and state of the filters. <a href="index.html" title="Parameters of a search query. ">CannedQuery</a> can also carry arbitrary data (set by calling <a href="#a6799b92d42f8f19116604b0cdd81135f" title="Attach arbitrary data. ">CannedQuery::set_user_data(Variant const&amp;)</a>) which can then be retrieved back with <a href="#aec4f31c9decc1ef1cb58e3ca924fa2f1" title="Get user data attached to this query. ">CannedQuery::user_data()</a> when <a href="index.html" title="Parameters of a search query. ">CannedQuery</a> object is received in <a href="../unity.scopes.ScopeBase.md#a0e4969ff26dc1d396d74c56d896fd564" title="Called by the scopes runtime when a scope needs to instantiate a query. ">ScopeBase::search</a>. This arbitrary data can be used to store any state-related information that may be useful for the scope when new search request is performed.

Can be converted to/from scope:// uri schema string.

Member Function Documentation
-----------------------------

<span id="a61351960149bb4c0840f020c4e645f66" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::CannedQuery::department\_id | (   |     | )   | const |

Returns the department id of this <a href="index.html" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The department id.

<span id="a94eab58b1e02501f49fba55418b043bf" class="anchor"></span>
|                                                                                                                       |     |     |     |       |
|-----------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.FilterState.md">FilterState</a> unity::scopes::CannedQuery::filter\_state | (   |     | )   | const |

Get state of the filters for this <a href="index.html" title="Parameters of a search query. ">CannedQuery</a>.

Pass this state to methods of specific filter instances (such as <a href="../unity.scopes.OptionSelectorFilter.md#a3015abeb0439ccd29bd61afa9b7059df" title="Get the active options from a FilterState instance for this filter. ">unity::scopes::OptionSelectorFilter::active_options()</a>)to examine filter state.

Returns  
The state of the filters.

<span id="a30fbeb531d683f6d6c032c703b15a634" class="anchor"></span>
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
<td><a href="index.html">CannedQuery</a> unity::scopes::CannedQuery::from_uri</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>uri</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Recreates a <a href="index.html" title="Parameters of a search query. ">CannedQuery</a> object from a scope:// URI.

Returns  
a <a href="index.html" title="Parameters of a search query. ">CannedQuery</a> instance

<!-- -->

Exceptions  
|                          |                              |
|--------------------------|------------------------------|
| InvalidArgumentException | if the URI cannot be parsed. |

<span id="ac495aa13c8fa07b623baa7b7795fa214" class="anchor"></span>
|                                                  |     |     |     |       |
|--------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::CannedQuery::has\_user\_data | (   |     | )   | const |

Checks if user data has been attached to this query.

Returns  
true if data is available.

<span id="a29d05795a3255655a5de3754e3dfa73f" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::CannedQuery::query\_string | (   |     | )   | const |

Returns the query string of this <a href="index.html" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The query string.

<span id="a406aa5a8fb73a602664e254d8efe25c9" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::CannedQuery::scope\_id | (   |     | )   | const |

Returns the scope identifier of this <a href="index.html" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The scope identifier.

<span id="a6799b92d42f8f19116604b0cdd81135f" class="anchor"></span>
|                                                  |     |                                                                              |         |     |     |
|--------------------------------------------------|-----|------------------------------------------------------------------------------|---------|-----|-----|
| void unity::scopes::CannedQuery::set\_user\_data | (   | <a href="unity.scopes.Variant.md">Variant</a> const &  | *value* | )   |     |

Attach arbitrary data.

Parameters  
|       |                                     |
|-------|-------------------------------------|
| value | Data to attach to this canned query |

<span id="a993c2d80b4d3c15b22f58fe6951e8c3d" class="anchor"></span>
|                                                 |     |     |     |       |
|-------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::CannedQuery::to\_uri | (   |     | )   | const |

Returns a string representation of this <a href="index.html" title="Parameters of a search query. ">CannedQuery</a> object as a URI using scope:// schema.

Returns  
The URI for the query.

<span id="aec4f31c9decc1ef1cb58e3ca924fa2f1" class="anchor"></span>
|                                                                                                            |     |     |     |       |
|------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.Variant.md">Variant</a> unity::scopes::CannedQuery::user\_data | (   |     | )   | const |

Get user data attached to this query.

Returns  
Data variant

<!-- -->

Exceptions  
|                       |                                |
|-----------------------|--------------------------------|
| unity::LogicException | if user data is not available. |

