---
Title: unity.scopes.ObjectNotExistException
---
        
ObjectNotExistException
=======================

Exception to indicate that a (twoway) request was sent to an object with an unknown identity. [More...](#details)

`#include <unity/scopes/ScopeExceptions.h>`

Inheritance diagram for unity::scopes::ObjectNotExistException:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/0d95d266-eecd-459f-82dd-278db38bee46-api/scopes/cpp/sdk-15.04.5/unity.scopes.ObjectNotExistException/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#a31beda1f8f1a97154618e97f4ab8e34f">ObjectNotExistException</a> (std::string const &reason, std::string const &<a href="#a63a7640944e3799f065379800715580e">id</a>)
 
Constructs the exception. More...
 
virtual std::exception\_ptr 
<a href="#af87f8d39791b7efb52cbba9dd0e4da25">self</a> () const override
 
Returns a `std::exception_ptr` to `this`. More...
 
virtual std::string 
<a href="#a63a7640944e3799f065379800715580e">id</a> () const
 
Returns the identity of the non-existent object. More...
 
Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

 
**ObjectNotExistException** (<a href="index.html">ObjectNotExistException</a> const &)
 
<a href="index.html">ObjectNotExistException</a> & 
**operator=** (<a href="index.html">ObjectNotExistException</a> const &)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/ded1e895-1eb6-4a04-84ce-d02bab7fcc3c-api/scopes/cpp/sdk-15.04.5/unity.scopes.ObjectNotExistException/closed.png) Public Member Functions inherited from <a href="unity.scopes.MiddlewareException.md">unity::scopes::MiddlewareException</a>
 
<a href="../unity.scopes.MiddlewareException.md#af6250d2e529d103d30d3ebf06689c146">MiddlewareException</a> (std::string const &reason)
 
Constructs the exception. More...
 
 
**MiddlewareException** (<a href="unity.scopes.MiddlewareException.md">MiddlewareException</a> const &)
 
<a href="unity.scopes.MiddlewareException.md">MiddlewareException</a> & 
**operator=** (<a href="unity.scopes.MiddlewareException.md">MiddlewareException</a> const &)
 
<span id="details"></span>
Detailed Description
--------------------

Exception to indicate that a (twoway) request was sent to an object with an unknown identity.

Constructor & Destructor Documentation
--------------------------------------

<span id="a31beda1f8f1a97154618e97f4ab8e34f" class="anchor"></span>
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
<td>unity::scopes::ObjectNotExistException::ObjectNotExistException</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>reason</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>id</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
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
| id     | The identity of the unknown object.               |

Member Function Documentation
-----------------------------

<span id="a63a7640944e3799f065379800715580e" class="anchor"></span>
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
<td>string unity::scopes::ObjectNotExistException::id</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns the identity of the non-existent object.

Returns  
The identity of the non-existent object.

<span id="af87f8d39791b7efb52cbba9dd0e4da25" class="anchor"></span>
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
<td>exception_ptr unity::scopes::ObjectNotExistException::self</td>
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

