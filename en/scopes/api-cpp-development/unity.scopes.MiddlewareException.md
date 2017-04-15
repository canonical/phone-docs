---
Title: unity.scopes.MiddlewareException
---
        
MiddlewareException
===================

Exception to indicate that something went wrong with the middleware layer. [More...](#details)

`#include <unity/scopes/ScopeExceptions.h>`

Inheritance diagram for unity::scopes::MiddlewareException:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/b6f252ad-2bfc-4038-b90f-ebf32febd362-api/scopes/cpp/sdk-15.04.5/unity.scopes.MiddlewareException/classunity_1_1scopes_1_1_middleware_exception__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#af6250d2e529d103d30d3ebf06689c146">MiddlewareException</a> (std::string const &reason)
 
Constructs the exception. More...
 
virtual std::exception\_ptr 
<a href="#a5317c0215a98eb896d1d706450d2919e">self</a> () const override
 
Returns a `std::exception_ptr` to `this`. More...
 
Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

 
**MiddlewareException** (<a href="index.html">MiddlewareException</a> const &)
 
<a href="index.html">MiddlewareException</a> & 
**operator=** (<a href="index.html">MiddlewareException</a> const &)
 
<span id="details"></span>
Detailed Description
--------------------

Exception to indicate that something went wrong with the middleware layer.

Constructor & Destructor Documentation
--------------------------------------

<span id="af6250d2e529d103d30d3ebf06689c146" class="anchor"></span>
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
<td>unity::scopes::MiddlewareException::MiddlewareException</td>
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

<span id="a5317c0215a98eb896d1d706450d2919e" class="anchor"></span>
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
<td>exception_ptr unity::scopes::MiddlewareException::self</td>
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

Reimplemented in <a href="../unity.scopes.TimeoutException.md#a5b6ef04ea037bacfe594028306482720">unity::scopes::TimeoutException</a>, and <a href="../unity.scopes.ObjectNotExistException.md#af87f8d39791b7efb52cbba9dd0e4da25">unity::scopes::ObjectNotExistException</a>.

