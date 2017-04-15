---
Title: unity.scopes.QueryBase
---
        
QueryBase
=========

Abstract server-side base interface for a query that is executed inside a scope. [More...](#details)

`#include <unity/scopes/QueryBase.h>`

Inheritance diagram for unity::scopes::QueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/6cfc08b0-5716-42c1-aae3-cb495b01dc07-api/scopes/cpp/sdk-15.04.4/unity.scopes.QueryBase/classunity_1_1scopes_1_1_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#a596b19dbfd6efe96b834be75a9b64c68">cancelled</a> ()=0
 
Called by the scopes runtime when the query originator cancels a query. More...
 
bool 
<a href="#a095e61eabe2042eeea5c4df1a444d7d4">valid</a> () const
 
Check whether this query is still valid. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a> 
<a href="#ab6a25ba587387a7f490b8b5a081e9ed6">settings</a> () const
 
Returns a dictionary with the scope's current settings. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract server-side base interface for a query that is executed inside a scope.

See also  
<a href="unity.scopes.SearchQueryBase.md" title="Abstract base class to represent a particular query. ">SearchQueryBase</a>, <a href="unity.scopes.PreviewQueryBase.md" title="Abstract base class to represent a particular preview. ">PreviewQueryBase</a>, <a href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a>

Member Function Documentation
-----------------------------

<span id="a596b19dbfd6efe96b834be75a9b64c68" class="anchor"></span>
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
<td>virtual void unity::scopes::QueryBase::cancelled</td>
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

Called by the scopes runtime when the query originator cancels a query.

Your implementation of this method should ensure that the scope stops processing the current query as soon as possible. Any calls to a `push()` method once a query is cancelled are ignored, so continuing to push after cancellation only wastes CPU cycles. (`push()` returns `false` once a query is cancelled or exceeds its cardinality limit.)

Implemented in <a href="../unity.scopes.qt.QPreviewQueryBaseAPI.md#ac68c5e63e55f818a31a358c8f87ccdeb">unity::scopes::qt::QPreviewQueryBaseAPI</a>, <a href="../unity.scopes.qt.QSearchQueryBaseAPI.md#a81a9ed98e8b092e4cd48aed63bb49f1a">unity::scopes::qt::QSearchQueryBaseAPI</a>, and <a href="../unity.scopes.ActivationQueryBase.md#af9b8e83ac6716db51aba942aca9cc6be">unity::scopes::ActivationQueryBase</a>.

<span id="ab6a25ba587387a7f490b8b5a081e9ed6" class="anchor"></span>
|                                                                                                                                     |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::QueryBase::settings | (   |     | )   | const |

Returns a dictionary with the scope's current settings.

Instead of storing the return value, it is preferable to call <a href="#ab6a25ba587387a7f490b8b5a081e9ed6" title="Returns a dictionary with the scope&#39;s current settings. ">settings()</a> each time your implementation requires a settings value. This ensures that, if a user changes settings while the scope is running, the new settings take effect with the next query, preview, and so on.

Note  
The settings are available only after this <a href="index.html" title="Abstract server-side base interface for a query that is executed inside a scope. ">QueryBase</a> is instantiated; do not call this method from the constructor!

<!-- -->

Returns  
The scope's current settings.

<span id="a095e61eabe2042eeea5c4df1a444d7d4" class="anchor"></span>
|                                      |     |     |     |       |
|--------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::QueryBase::valid | (   |     | )   | const |

Check whether this query is still valid.

<a href="#a095e61eabe2042eeea5c4df1a444d7d4" title="Check whether this query is still valid. ">valid()</a> returns false if this query is finished or was cancelled earlier. Note that it is possible that the runtime may call <a href="../unity.scopes.SearchQueryBase.md#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">SearchQueryBase::run()</a>, <a href="../unity.scopes.ActivationQueryBase.md#a61ed49d8bc56e677ff2eb1f30e6a6b6b" title="Return response to the activation request. ">ActivationQueryBase::activate()</a>, or <a href="../unity.scopes.PreviewQueryBase.md#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">PreviewQueryBase::run()</a> *after* <a href="#a596b19dbfd6efe96b834be75a9b64c68" title="Called by the scopes runtime when the query originator cancels a query. ">cancelled()</a> was called. Your implementation of these methods should check whether the query is still valid and, if not, do nothing.

This method is provided mainly for convenience: it can be used in your s `run()` or `activate()` implementation to avoid doing a lot of work setting up a query that was cancelled earlier. Note that, because cancellation can happen at any time during query execution, your implementation should always test the return value of `push()`. If `push()` returns `false`, the query was either cancelled or exceeded its cardinality limit. Either way, there is no point in continuing to push more results because, once `push()` returns `false`, the scopes runtime discards all subsequent results for the query.

