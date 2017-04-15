---
Title: unity.scopes.qt.QScopeBaseAPI
---
        
QScopeBaseAPI
=============

`#include <unity/scopes/qt/QScopeBaseAPI.h>`

Inheritance diagram for unity::scopes::qt::QScopeBaseAPI:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/cf8b8813-12db-46d3-9e1f-7aa9bed01001-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QScopeBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#aefcd8d1262a89d1c9b6c63dbdc8bfcea">start</a> (std::string const &scope\_id) override
 
Called by the scopes run time after the create function completes. More...
 
virtual void 
<a href="#a7cfc17b94cc01761ac53acc1613ab8ce">stop</a> () override
 
Called by the scopes run time when the scope should shut down. More...
 
virtual unity::scopes::PreviewQueryBase::UPtr 
<a href="#a839ca01a0085c27edc5ee6fa060f7b75">preview</a> (const <a href="unity.scopes.Result.md">unity::scopes::Result</a> &, const <a href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a> &) override
 
virtual unity::scopes::SearchQueryBase::UPtr 
<a href="#ac5023d43f3169eb51283ebd6488da631">search</a> (<a href="unity.scopes.CannedQuery.md">unity::scopes::CannedQuery</a> const &q, <a href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> const &) override
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/f3246472-f2de-4eb0-9bbe-05e036c1ce8e-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QScopeBaseAPI/closed.png) Public Member Functions inherited from <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a>
virtual void 
<a href="../unity.scopes.ScopeBase.md#a386e99b98318a70f25db84bbe11c0292">run</a> ()
 
Called by the scopes runtime after it has called start() to hand a thread of control to the scope. More...
 
virtual ActivationQueryBase::UPtr 
<a href="../unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7">activate</a> (<a href="unity.scopes.Result.md">Result</a> const &result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata)
 
Called by the scopes runtime when a scope needs to respond to a result activation request. More...
 
virtual ActivationQueryBase::UPtr 
<a href="../unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11">perform_action</a> (<a href="unity.scopes.Result.md">Result</a> const &result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata, std::string const &widget\_id, std::string const &action\_id)
 
Invoked when a scope is requested to handle a preview action. More...
 
virtual std::string 
<a href="../unity.scopes.ScopeBase.md#a32744a21076d9dacc98362412c6a63d5">scope_directory</a> () const final
 
Returns the directory that stores the scope's configuration files and shared library. More...
 
virtual std::string 
<a href="../unity.scopes.ScopeBase.md#a36cfdda42db58da399390e7c5df2385e">cache_directory</a> () const final
 
Returns a directory that is (exclusively) writable for the scope. More...
 
virtual std::string 
<a href="../unity.scopes.ScopeBase.md#a4f54564b752a3451e05bd11171abb27e">app_directory</a> () const final
 
Returns a directory that is shared with an app in the same click package. More...
 
virtual std::string 
<a href="../unity.scopes.ScopeBase.md#ade8de1dca94e10aa9788624710ab49eb">tmp_directory</a> () const final
 
Returns a tmp directory that is (exclusively) writable for the scope. More...
 
virtual <a href="../unity.scopes.md#a45babc254d3548863d79ee54f266e84d">unity::scopes::RegistryProxy</a> 
<a href="../unity.scopes.ScopeBase.md#af874b8b3c5c28dcaacc416076c9dfc35">registry</a> () const final
 
Returns the proxy to the registry. More...
 
virtual <a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> 
<a href="../unity.scopes.ScopeBase.md#acddeebb3357c6941b3b77617133cda23">settings</a> () const final
 
Returns a dictionary with the scope's current settings. More...
 
virtual <a href="../unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> 
<a href="../unity.scopes.ScopeBase.md#abc864e2fa714b9424a89293fea6972bc">find_child_scopes</a> () const
 
Returns a defaulted list of child scopes aggregated by this scope. More...
 
virtual <a href="../unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> 
<a href="../unity.scopes.ScopeBase.md#a4016075ab95bbf1b5dfa1444e9d750e0">child_scopes</a> () const final
 
Returns the current list of child scopes aggregated by this scope. More...
 
virtual ActivationQueryBase::UPtr 
<a href="../unity.scopes.ScopeBase.md#a7ac39ca44f4790dd36900657692d0565">activate_result_action</a> (<a href="unity.scopes.Result.md">Result</a> const &result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata, std::string const &action\_id)
 
Invoked when a scope is requested to handle a result in-card action. More...
 
inherited
---------------------------------------------------------

![-](https://developer.ubuntu.com/static/devportal_uploaded/30427f39-600b-404e-b8df-97c1d22bea00-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QScopeBaseAPI/closed.png) Static Public Member Functions inherited from <a href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a>
static void 
<a href="../unity.scopes.ScopeBase.md#a4cbdf8cb790e6f44e388e70ab456e686">runtime_version</a> (int &v\_major, int &v\_minor, int &v\_micro) noexcept
 
Returns the version information for the scopes API that the scope was linked with.
 
<span id="details"></span>
Detailed Description
--------------------

Defines the lifecycle of scope plugin, and acts as a factory for Query and Preview objects.

Member Function Documentation
-----------------------------

<span id="a839ca01a0085c27edc5ee6fa060f7b75" class="anchor"></span>
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
<td>virtual unity::scopes::PreviewQueryBase::UPtr unity::scopes::qt::QScopeBaseAPI::preview</td>
<td>(</td>
<td>const <a href="unity.scopes.Result.md">unity::scopes::Result</a> &amp; </td>
<td>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>const <a href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a> &amp; </td>
<td> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called each time a new preview is requested

Implements <a href="../unity.scopes.ScopeBase.md#a154b9b4cfc0f40572cfec60dd819396f">unity::scopes::ScopeBase</a>.

<span id="ac5023d43f3169eb51283ebd6488da631" class="anchor"></span>
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
<td>virtual unity::scopes::SearchQueryBase::UPtr unity::scopes::qt::QScopeBaseAPI::search</td>
<td>(</td>
<td><a href="unity.scopes.CannedQuery.md">unity::scopes::CannedQuery</a> const &amp; </td>
<td><em>q</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> const &amp; </td>
<td> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called each time a new query is requested

Implements <a href="../unity.scopes.ScopeBase.md#a0e4969ff26dc1d396d74c56d896fd564">unity::scopes::ScopeBase</a>.

<span id="aefcd8d1262a89d1c9b6c63dbdc8bfcea" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QScopeBaseAPI::start</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>scope_id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes run time after the create function completes.

If <a href="#aefcd8d1262a89d1c9b6c63dbdc8bfcea" title="Called by the scopes run time after the create function completes. ">start()</a> throws an exception, <a href="#a7cfc17b94cc01761ac53acc1613ab8ce" title="Called by the scopes run time when the scope should shut down. ">stop()</a> will *not* be called.

The call to <a href="#aefcd8d1262a89d1c9b6c63dbdc8bfcea" title="Called by the scopes run time after the create function completes. ">start()</a> is made by the same thread that calls the create function.

Parameters  
|           |                                                                     |
|-----------|---------------------------------------------------------------------|
| scope\_id | The name of the scope as defined by the scope's configuration file. |

Reimplemented from <a href="../unity.scopes.ScopeBase.md#ac25f3f326e2cf25de2f2eca18de5926c">unity::scopes::ScopeBase</a>.

<span id="a7cfc17b94cc01761ac53acc1613ab8ce" class="anchor"></span>
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
<td>virtual void unity::scopes::qt::QScopeBaseAPI::stop</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes run time when the scope should shut down.

A scope should deallocate as many resources as possible when <a href="#a7cfc17b94cc01761ac53acc1613ab8ce" title="Called by the scopes run time when the scope should shut down. ">stop()</a> is called, for example, deallocate any caches and close network connections. In addition, if the scope implements <a href="../unity.scopes.ScopeBase.md#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> and did not return from <a href="../unity.scopes.ScopeBase.md#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>, it must return from <a href="../unity.scopes.ScopeBase.md#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> in response to the call to <a href="#a7cfc17b94cc01761ac53acc1613ab8ce" title="Called by the scopes run time when the scope should shut down. ">stop()</a>.

Exceptions from <a href="#a7cfc17b94cc01761ac53acc1613ab8ce" title="Called by the scopes run time when the scope should shut down. ">stop()</a> are ignored.

The call to <a href="#a7cfc17b94cc01761ac53acc1613ab8ce" title="Called by the scopes run time when the scope should shut down. ">stop()</a> is made by the same thread that calls the create function and <a href="#aefcd8d1262a89d1c9b6c63dbdc8bfcea" title="Called by the scopes run time after the create function completes. ">start()</a>.

Reimplemented from <a href="../unity.scopes.ScopeBase.md#a80c5fec9e985dbb315d780ef2a56bfbf">unity::scopes::ScopeBase</a>.

