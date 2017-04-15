---
Title: unity.scopes.FilterGroup
---
        
FilterGroup
===========

Groups several filters into an expandable widget in the UI. [More...](#details)

`#include <unity/scopes/FilterGroup.h>`

pub-methods
------------------------------------------------------

std::string 
<a href="#a0a42c7ad65a4115dfdfbdf2aa32a6ca4">id</a> () const
 
Get the id of the widget group. More...
 
std::string 
<a href="#aef99f5048cc090da4b96f68c39020f44">label</a> () const
 
Get the label of the widget group. More...
 
pub-static-methods
--------------------------------------------------------------------

static FilterGroup::SCPtr 
<a href="#a8438bee537e5b4624875233f9e6ad4a9">create</a> (std::string const &<a href="#a0a42c7ad65a4115dfdfbdf2aa32a6ca4">id</a>, std::string const &<a href="#aef99f5048cc090da4b96f68c39020f44">label</a>)
 
Create a WidgetGroup. More...
 
<span id="details"></span>
Detailed Description
--------------------

Groups several filters into an expandable widget in the UI.

Member Function Documentation
-----------------------------

<span id="a8438bee537e5b4624875233f9e6ad4a9" class="anchor"></span>
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
<td>FilterGroup::SCPtr unity::scopes::FilterGroup::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>label</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Create a WidgetGroup.

Returns  
An instance of WidgetGroup.

<span id="a0a42c7ad65a4115dfdfbdf2aa32a6ca4" class="anchor"></span>
|                                            |     |     |     |       |
|--------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::FilterGroup::id | (   |     | )   | const |

Get the id of the widget group.

Returns  
The identifier.

<span id="aef99f5048cc090da4b96f68c39020f44" class="anchor"></span>
|                                               |     |     |     |       |
|-----------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::FilterGroup::label | (   |     | )   | const |

Get the label of the widget group.

Returns  
The label.

