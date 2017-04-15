---
Title: unity.scopes.ConfigException
---
        
ConfigException
===============

Exception to indicate that something went wrong with the contents of configuration files. [More...](#details)

`#include <unity/scopes/ScopeExceptions.h>`

Inheritance diagram for unity::scopes::ConfigException:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/dcaaf72a-b36a-426d-8b73-0b6e40a41ff3-api/scopes/cpp/sdk-15.04.4/unity.scopes.ConfigException/classunity_1_1scopes_1_1_config_exception__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#a5478ebe647b1aa386d17fa079f573cb3">ConfigException</a> (std::string const &reason)
 
Constructs the exception. More...
 
virtual std::exception\_ptr 
<a href="#a413ff3265dff664dabae83f73a58c58b">self</a> () const override
 
Returns a `std::exception_ptr` to `this`. More...
 
Copy and assignment

Copy constructor and assignment operator have the usual value semantics.

 
**ConfigException** (<a href="index.html">ConfigException</a> const &)
 
<a href="index.html">ConfigException</a> & 
**operator=** (<a href="index.html">ConfigException</a> const &)
 
<span id="details"></span>
Detailed Description
--------------------

Exception to indicate that something went wrong with the contents of configuration files.

Constructor & Destructor Documentation
--------------------------------------

<span id="a5478ebe647b1aa386d17fa079f573cb3" class="anchor"></span>
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
<td>unity::scopes::ConfigException::ConfigException</td>
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

<span id="a413ff3265dff664dabae83f73a58c58b" class="anchor"></span>
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
<td>exception_ptr unity::scopes::ConfigException::self</td>
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

