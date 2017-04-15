---
Title: unity.scopes.NotFoundException
---
        
NotFoundException
=================

Exception to indicate that an object wasn't found by a lookup function. [More...](#details)

`#include <unity/scopes/ScopeExceptions.h>`

Inheritance diagram for unity::scopes::NotFoundException:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/90474ec5-3dee-4cf5-abb0-a43f072a07c7-api/scopes/cpp/sdk-15.04.4/unity.scopes.NotFoundException/classunity_1_1scopes_1_1_not_found_exception__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#adcda23015482c9a3fd7d7890ab152b9f">NotFoundException</a> (std::string const &reason, std::string const &<a href="#a7a27983f2cfa8034f2dccb67a996730b">name</a>)
 
Constructs the exception. More...
 
virtual std::exception\_ptr 
<a href="#a649bfe3375d8e276394a73c07908411d">self</a> () const override
 
Returns a `std::exception_ptr` to `this`. More...
 
virtual std::string 
<a href="#a7a27983f2cfa8034f2dccb67a996730b">name</a> () const
 
Returns the name that was passed to the constructor. More...
 
Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

 
**NotFoundException** (<a href="index.html">NotFoundException</a> const &)
 
<a href="index.html">NotFoundException</a> & 
**operator=** (<a href="index.html">NotFoundException</a> const &)
 
<span id="details"></span>
Detailed Description
--------------------

Exception to indicate that an object wasn't found by a lookup function.

Constructor & Destructor Documentation
--------------------------------------

<span id="adcda23015482c9a3fd7d7890ab152b9f" class="anchor"></span>
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
<td>unity::scopes::NotFoundException::NotFoundException</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>reason</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>name</em> </td>
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
| name   | The name of the object that was not found.        |

Member Function Documentation
-----------------------------

<span id="a7a27983f2cfa8034f2dccb67a996730b" class="anchor"></span>
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
<td>string unity::scopes::NotFoundException::name</td>
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

Returns the name that was passed to the constructor.

Returns  
The name that was passed to the constructor.

<span id="a649bfe3375d8e276394a73c07908411d" class="anchor"></span>
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
<td>exception_ptr unity::scopes::NotFoundException::self</td>
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

