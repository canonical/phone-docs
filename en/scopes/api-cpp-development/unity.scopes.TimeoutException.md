---
Title: unity.scopes.TimeoutException
---
        
TimeoutException
================

Exception to indicate that a twoway request timed out. [More...](#details)

`#include <unity/scopes/ScopeExceptions.h>`

Inheritance diagram for unity::scopes::TimeoutException:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/33b95100-2e21-4768-b335-4f002abd7ff1-api/scopes/cpp/sdk-15.04.5/unity.scopes.TimeoutException/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#a76573760d4c9c8b019675302000d4f1a">TimeoutException</a> (std::string const &reason)
 
Constructs the exception. More...
 
virtual std::exception\_ptr 
<a href="#a5b6ef04ea037bacfe594028306482720">self</a> () const override
 
Returns a `std::exception_ptr` to `this`. More...
 
Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

 
**TimeoutException** (<a href="index.html">TimeoutException</a> const &)
 
<a href="index.html">TimeoutException</a> & 
**operator=** (<a href="index.html">TimeoutException</a> const &)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/923daafb-3617-4db8-8c33-dcab399396d8-api/scopes/cpp/sdk-15.04.5/unity.scopes.TimeoutException/closed.png) Public Member Functions inherited from <a href="unity.scopes.MiddlewareException.md">unity::scopes::MiddlewareException</a>
 
<a href="../unity.scopes.MiddlewareException.md#af6250d2e529d103d30d3ebf06689c146">MiddlewareException</a> (std::string const &reason)
 
Constructs the exception. More...
 
 
**MiddlewareException** (<a href="unity.scopes.MiddlewareException.md">MiddlewareException</a> const &)
 
<a href="unity.scopes.MiddlewareException.md">MiddlewareException</a> & 
**operator=** (<a href="unity.scopes.MiddlewareException.md">MiddlewareException</a> const &)
 
<span id="details"></span>
Detailed Description
--------------------

Exception to indicate that a twoway request timed out.

Constructor & Destructor Documentation
--------------------------------------

<span id="a76573760d4c9c8b019675302000d4f1a" class="anchor"></span>
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
<td>unity::scopes::TimeoutException::TimeoutException</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>reason</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">explicit</span></span></td>
</tr>
</tbody>
</table>

Constructs the exception.

Parameters  
|        |                                                   |
|--------|---------------------------------------------------|
| reason | Further details about the cause of the exception. |

Member Function Documentation
-----------------------------

<span id="a5b6ef04ea037bacfe594028306482720" class="anchor"></span>
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
<td>exception_ptr unity::scopes::TimeoutException::self</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a `std::exception_ptr` to `this`.

Returns  
`std::exception_ptr` to `this`.

Reimplemented from <a href="../unity.scopes.MiddlewareException.md#a5317c0215a98eb896d1d706450d2919e">unity::scopes::MiddlewareException</a>.

