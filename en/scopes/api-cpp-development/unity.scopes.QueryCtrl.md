---
Title: unity.scopes.QueryCtrl
---
        
QueryCtrl
=========

<a href="index.html" title="QueryCtrl allows a query to be cancelled. ">QueryCtrl</a> allows a query to be cancelled. [More...](#details)

`#include <unity/scopes/QueryCtrl.h>`

Inheritance diagram for unity::scopes::QueryCtrl:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/e7f824be-ebfd-4aad-ae34-8ad1de899d3b-api/scopes/cpp/sdk-15.04.5/unity.scopes.QueryCtrl/classunity_1_1scopes_1_1_query_ctrl__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#a83e309fba452407f79365ba2645f4e4d">cancel</a> ()=0
 
Cancels an executing query. More...
 
virtual 
<a href="#a041d668bdde675b264baf6b0c0df716b">~QueryCtrl</a> ()
 
Destroys a QueryCtrl. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/1144f876-762f-49c1-8db9-24cb608c5fec-api/scopes/cpp/sdk-15.04.5/unity.scopes.QueryCtrl/closed.png) Public Member Functions inherited from <a href="unity.scopes.Object.md">unity::scopes::Object</a>
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

<a href="index.html" title="QueryCtrl allows a query to be cancelled. ">QueryCtrl</a> allows a query to be cancelled.

Constructor & Destructor Documentation
--------------------------------------

<span id="a041d668bdde675b264baf6b0c0df716b" class="anchor"></span>
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
<td>virtual unity::scopes::QueryCtrl::~QueryCtrl</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Destroys a <a href="index.html" title="QueryCtrl allows a query to be cancelled. ">QueryCtrl</a>.

Letting a <a href="index.html" title="QueryCtrl allows a query to be cancelled. ">QueryCtrl</a> go out of scope has no effect on the query, that is, the destructor does *not* implicitly call <a href="#a83e309fba452407f79365ba2645f4e4d" title="Cancels an executing query. ">cancel()</a>.

Member Function Documentation
-----------------------------

<span id="a83e309fba452407f79365ba2645f4e4d" class="anchor"></span>
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
<td>virtual void unity::scopes::QueryCtrl::cancel</td>
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

Cancels an executing query.

Calling <a href="#a83e309fba452407f79365ba2645f4e4d" title="Cancels an executing query. ">cancel()</a> informs the scope to which a query was sent that the query should be cancelled. Calling <a href="#a83e309fba452407f79365ba2645f4e4d" title="Cancels an executing query. ">cancel()</a> on a query that is complete has no effect. <a href="#a83e309fba452407f79365ba2645f4e4d" title="Cancels an executing query. ">cancel()</a> is guaranteed to not block the caller.

