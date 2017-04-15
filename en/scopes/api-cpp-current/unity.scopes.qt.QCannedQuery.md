---
Title: unity.scopes.qt.QCannedQuery
---
        
QCannedQuery
============

Parameters of a search query. [More...](#details)

`#include <unity/scopes/qt/QCannedQuery.h>`

pub-methods
------------------------------------------------------

 
<a href="#adb7856712be37746fdc0038b4602b111">QCannedQuery</a> (QString const &<a href="#adf35e301629964cea60a0933e6d52110">scope_id</a>)
 
Creates a query for given scope with empty query string.
 
 
<a href="#a80403c0f728ed7af60a04c0debb06d6d">QCannedQuery</a> (QString const &<a href="#adf35e301629964cea60a0933e6d52110">scope_id</a>, QString const &query\_str, QString const &<a href="#aa8de764af79922d974e1bef6186be9ed">department_id</a>)
 
Creates a query for given scope with specific query string and in given department.
 
void 
<a href="#a848d48689bffc6f96cb70848201b8696">set_department_id</a> (QString const &dep\_id)
 
Sets or updates the department.
 
void 
<a href="#aecb3afcf45e6a7e1a17d81786b665bda">set_query_string</a> (QString const &query\_str)
 
Sets or updates the query string.
 
void 
<a href="#adab1469e1be84e02b0d2d2170b095673">set_filter_state</a> (<a href="unity.scopes.FilterState.md">FilterState</a> const &<a href="#a4d9c022cf212f83907fc9cac6c314586">filter_state</a>)
 
Sets filter state.
 
QString 
<a href="#adf35e301629964cea60a0933e6d52110">scope_id</a> () const
 
Returns the scope identifier of this CannedQuery. More...
 
QString 
<a href="#aa8de764af79922d974e1bef6186be9ed">department_id</a> () const
 
Returns the department id of this CannedQuery. More...
 
QString 
<a href="#ad819a186fa6ad212959cd5c93b6fbf7e">query_string</a> () const
 
Returns the query string of this CannedQuery. More...
 
QString 
<a href="#a1ff2ee31add772d96a954a61b0d1d6f6">to_uri</a> () const
 
Returns a string representation of this CannedQuery object as a URI using scope:// schema. More...
 
<a href="unity.scopes.FilterState.md">FilterState</a> 
<a href="#a4d9c022cf212f83907fc9cac6c314586">filter_state</a> () const
 
Get state of the filters for this CannedQuery. More...
 
bool 
<a href="#acc27503e32e26b584c831435c485763c">has_user_data</a> () const
 
Checks if user data has been attached to this query. More...
 
QVariant 
<a href="#acac6151094bc731f152490b468a03471">user_data</a> () const
 
Get user data attached to this query. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**QCannedQuery** (<a href="index.html">QCannedQuery</a> const &other)
 
 
**QCannedQuery** (<a href="index.html">QCannedQuery</a> &&)
 
<a href="index.html">QCannedQuery</a> & 
**operator=** (<a href="index.html">QCannedQuery</a> const &other)
 
<a href="index.html">QCannedQuery</a> & 
**operator=** (<a href="index.html">QCannedQuery</a> &&)
 
pub-static-methods
--------------------------------------------------------------------

static <a href="index.html">QCannedQuery</a> 
<a href="#a7b049394639516f3895da0bc17b19bfc">from_uri</a> (QString const &uri)
 
Recreates a CannedQuery object from a scope:// URI. More...
 
<span id="details"></span>
Detailed Description
--------------------

Parameters of a search query.

Holds all parameters of a search query: the target scope id, query string, department id, and state of the filters. Can be converted to/from scope:// uri schema string.

Member Function Documentation
-----------------------------

<span id="aa8de764af79922d974e1bef6186be9ed" class="anchor"></span>
|                                      |     |     |     |       |
|--------------------------------------|-----|-----|-----|-------|
| QString QCannedQuery::department\_id | (   |     | )   | const |

Returns the department id of this <a href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The department id.

<span id="a4d9c022cf212f83907fc9cac6c314586" class="anchor"></span>
|                                                                                                         |     |     |     |       |
|---------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.FilterState.md">FilterState</a> QCannedQuery::filter\_state | (   |     | )   | const |

Get state of the filters for this <a href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a>.

Pass this state to methods of specific filter instances (such as <a href="../unity.scopes.OptionSelectorFilter.md#a3015abeb0439ccd29bd61afa9b7059df" title="Get the active options from a FilterState instance for this filter. ">unity::scopes::OptionSelectorFilter::active_options()</a>)to examine filter state.

Returns  
The state of the filters.

<span id="a7b049394639516f3895da0bc17b19bfc" class="anchor"></span>
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
<td><a href="index.html">QCannedQuery</a> QCannedQuery::from_uri</td>
<td>(</td>
<td>QString const &amp; </td>
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

Recreates a <a href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a> object from a scope:// URI.

Returns  
a <a href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a> instance

<!-- -->

Exceptions  
|                          |                              |
|--------------------------|------------------------------|
| InvalidArgumentException | if the URI cannot be parsed. |

<span id="acc27503e32e26b584c831435c485763c" class="anchor"></span>
|                                    |     |     |     |       |
|------------------------------------|-----|-----|-----|-------|
| bool QCannedQuery::has\_user\_data | (   |     | )   | const |

Checks if user data has been attached to this query.

Returns  
true if data is available.

<span id="ad819a186fa6ad212959cd5c93b6fbf7e" class="anchor"></span>
|                                     |     |     |     |       |
|-------------------------------------|-----|-----|-----|-------|
| QString QCannedQuery::query\_string | (   |     | )   | const |

Returns the query string of this <a href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The query string.

<span id="adf35e301629964cea60a0933e6d52110" class="anchor"></span>
|                                 |     |     |     |       |
|---------------------------------|-----|-----|-----|-------|
| QString QCannedQuery::scope\_id | (   |     | )   | const |

Returns the scope identifier of this <a href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a>.

Returns  
The scope identifier.

<span id="a1ff2ee31add772d96a954a61b0d1d6f6" class="anchor"></span>
|                               |     |     |     |       |
|-------------------------------|-----|-----|-----|-------|
| QString QCannedQuery::to\_uri | (   |     | )   | const |

Returns a string representation of this <a href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a> object as a URI using scope:// schema.

Returns  
The URI for the query.

<span id="acac6151094bc731f152490b468a03471" class="anchor"></span>
|                                   |     |     |     |       |
|-----------------------------------|-----|-----|-----|-------|
| QVariant QCannedQuery::user\_data | (   |     | )   | const |

Get user data attached to this query.

Returns  
Data variant

<!-- -->

Exceptions  
|                       |                           |
|-----------------------|---------------------------|
| unity::LogicException | if data is not available. |

