---
Title: unity.scopes.Department
---
        
Department
==========

A department with optional sub-departments. [More...](#details)

`#include <unity/scopes/Department.h>`

pub-methods
------------------------------------------------------

void 
<a href="#ab17057cef9ce35f1302f5421a087c067">set_subdepartments</a> (<a href="../unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231">DepartmentList</a> const &departments)
 
Set sub-departments of this department. More...
 
void 
<a href="#acfea57f2fcca24339e0b3c2f58cde567">add_subdepartment</a> (Department::SCPtr const &department)
 
Add sub-department to this department. More...
 
void 
<a href="#a9ab1192cdfcbce44b9164df11290c217">set_alternate_label</a> (std::string const &<a href="#aa84ff5c8a1ebaf43beceb8379330db42">label</a>)
 
Set the alternate label (plural of the normal label) of this department. More...
 
void 
<a href="#af1adb3d18a901c0b8a1cb5b98e924dfa">set_has_subdepartments</a> (bool <a href="#aee8ee96bcd5a6ce0d6ca5786aa6f6450">subdepartments</a>=true)
 
Sets has\_subdepartments flag of this department. More...
 
std::string 
<a href="#ad715a9991355c4f08efa6cf32c61b2c6">id</a> () const
 
Get the identifier of this department. More...
 
std::string 
<a href="#aa84ff5c8a1ebaf43beceb8379330db42">label</a> () const
 
Get the label of this department. More...
 
std::string 
<a href="#a77c6faaed77693259c0862dca2fc2459">alternate_label</a> () const
 
Get the alternate label of this department. More...
 
<a href="unity.scopes.CannedQuery.md">CannedQuery</a> 
<a href="#a6256e78d1e3eece6e2afd8a63978bce4">query</a> () const
 
Get the canned query associated with this department. More...
 
<a href="../unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231">DepartmentList</a> 
<a href="#aee8ee96bcd5a6ce0d6ca5786aa6f6450">subdepartments</a> () const
 
Get list of sub-departments of this department. More...
 
bool 
<a href="#a0ca9c7c16072e881f245063c19fae179">has_subdepartments</a> () const
 
Check if this department has subdepartments or has\_subdepartments flag is set. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**Department** (<a href="index.html">Department</a> const &other)
 
 
**Department** (<a href="index.html">Department</a> &&)
 
<a href="index.html">Department</a> & 
**operator=** (<a href="index.html">Department</a> const &other)
 
<a href="index.html">Department</a> & 
**operator=** (<a href="index.html">Department</a> &&)
 
pub-static-methods
--------------------------------------------------------------------

static Department::UPtr 
<a href="#a11a3b8e9a3317f963d4bc9f46f79922b">create</a> (<a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &<a href="#a6256e78d1e3eece6e2afd8a63978bce4">query</a>, std::string const &<a href="#aa84ff5c8a1ebaf43beceb8379330db42">label</a>)
 
Create a department with the given canned query and name. More...
 
static Department::UPtr 
<a href="#a1f4feec9298abd3eefbacf60d9ba1fd9">create</a> (std::string const &department\_id, <a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &<a href="#a6256e78d1e3eece6e2afd8a63978bce4">query</a>, std::string const &<a href="#aa84ff5c8a1ebaf43beceb8379330db42">label</a>)
 
Create a department with the given department identifier, canned query, and name. More...
 
<span id="details"></span>
Detailed Description
--------------------

A department with optional sub-departments.

Member Function Documentation
-----------------------------

<span id="acfea57f2fcca24339e0b3c2f58cde567" class="anchor"></span>
|                                                    |     |                            |              |     |     |
|----------------------------------------------------|-----|----------------------------|--------------|-----|-----|
| void unity::scopes::Department::add\_subdepartment | (   | Department::SCPtr const &  | *department* | )   |     |

Add sub-department to this department.

Parameters  
|            |                             |
|------------|-----------------------------|
| department | The subdepartment instance. |

<span id="a77c6faaed77693259c0862dca2fc2459" class="anchor"></span>
|                                                         |     |     |     |       |
|---------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Department::alternate\_label | (   |     | )   | const |

Get the alternate label of this department.

Return the alternate label of this department. The alternate label expresses the plural "all" form of the normal label. For example, if the normal label is "Books", then the alternate label is "All Books". Note that alternate label and can be empty - in that case the normal label should be displayed instead.

Returns  
The alternate label.

<span id="a11a3b8e9a3317f963d4bc9f46f79922b" class="anchor"></span>
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
<td>static Department::UPtr unity::scopes::Department::create</td>
<td>(</td>
<td><a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp; </td>
<td><em>query</em>,</td>
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

Create a department with the given canned query and name.

The identifier of this department instance is that of the `query` instance (<a href="../unity.scopes.CannedQuery.md#a61351960149bb4c0840f020c4e645f66">CannedQuery::department_id()</a>).

Parameters  
|       |                                                                                                                   |
|-------|-------------------------------------------------------------------------------------------------------------------|
| query | The query (and associated parameters, such as filter state) to be executed when the user selects this department. |
| label | The display name of this department.                                                                              |

<span id="a1f4feec9298abd3eefbacf60d9ba1fd9" class="anchor"></span>
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
<td>static Department::UPtr unity::scopes::Department::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>department_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp; </td>
<td><em>query</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>label</em> </td>
</tr>
<tr class="even">
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

Create a department with the given department identifier, canned query, and name.

The canned query's target department identifier is updated with department\_id. This constructor is convenient for creating multiple departments that use the same query and only need a different department identifier.

Parameters  
|                |                                                                                                                          |
|----------------|--------------------------------------------------------------------------------------------------------------------------|
| department\_id | The department identifier.                                                                                               |
| query          | The canned query (and associated parameters, such as filter state) to be executed when the user selects this department. |
| label          | The display name of this department.                                                                                     |

<span id="a0ca9c7c16072e881f245063c19fae179" class="anchor"></span>
|                                                     |     |     |     |       |
|-----------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Department::has\_subdepartments | (   |     | )   | const |

Check if this department has subdepartments or has\_subdepartments flag is set.

Returns  
true if this deparment has subdepartments or has\_subdepartments flag is set

<span id="ad715a9991355c4f08efa6cf32c61b2c6" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Department::id | (   |     | )   | const |

Get the identifier of this department.

Returns  
The department identifier.

<span id="aa84ff5c8a1ebaf43beceb8379330db42" class="anchor"></span>
|                                              |     |     |     |       |
|----------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Department::label | (   |     | )   | const |

Get the label of this department.

Returns  
The department label.

<span id="a6256e78d1e3eece6e2afd8a63978bce4" class="anchor"></span>
|                                                                                                              |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.CannedQuery.md">CannedQuery</a> unity::scopes::Department::query | (   |     | )   | const |

Get the canned query associated with this department.

Returns  
The canned query for this department.

<span id="a9ab1192cdfcbce44b9164df11290c217" class="anchor"></span>
|                                                       |     |                      |         |     |     |
|-------------------------------------------------------|-----|----------------------|---------|-----|-----|
| void unity::scopes::Department::set\_alternate\_label | (   | std::string const &  | *label* | )   |     |

Set the alternate label (plural of the normal label) of this department.

The alternate label should express the plural "all" form of the normal label. For example, if the normal label is "Books", then the alternate label should be "All Books". The alternate label needs to be provided for the current department only.

Parameters  
|       |                                                                                    |
|-------|------------------------------------------------------------------------------------|
| label | The alternate label to display when showing plural form of this department's name. |

<span id="af1adb3d18a901c0b8a1cb5b98e924dfa" class="anchor"></span>
|                                                          |     |       |                           |     |     |
|----------------------------------------------------------|-----|-------|---------------------------|-----|-----|
| void unity::scopes::Department::set\_has\_subdepartments | (   | bool  | *subdepartments* = `true` | )   |     |

Sets has\_subdepartments flag of this department.

This flag is a display hint for the Shell that indicates if this department has sub-departments and as such should be displayed in a way that suggests further navigation to the user. Setting this flag is not needed when sub-departments have been added with <a href="#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">set_subdepartments()</a> method. Setting this flag to false after adding sub-departments with <a href="#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">set_subdepartments()</a> throws unity::LogicException.

Exceptions  
|                       |                                                                                                                                                                                                                               |
|-----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if called with false after adding sub-departments with <a href="#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> |

<span id="ab17057cef9ce35f1302f5421a087c067" class="anchor"></span>
|                                                     |     |                                                                                                               |               |     |     |
|-----------------------------------------------------|-----|---------------------------------------------------------------------------------------------------------------|---------------|-----|-----|
| void unity::scopes::Department::set\_subdepartments | (   | <a href="../unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231">DepartmentList</a> const &  | *departments* | )   |     |

Set sub-departments of this department.

Parameters  
|             |                              |
|-------------|------------------------------|
| departments | The list of sub-departments. |

<span id="aee8ee96bcd5a6ce0d6ca5786aa6f6450" class="anchor"></span>
|                                                                                                                                                |     |     |     |       |
|------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231">DepartmentList</a> unity::scopes::Department::subdepartments | (   |     | )   | const |

Get list of sub-departments of this department.

Returns  
The list of sub-departments.

