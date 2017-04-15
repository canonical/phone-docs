---
Title: unity.scopes.qt.QDepartment
---
        
QDepartment
===========

A department with optional sub-departments. [More...](#details)

`#include <unity/scopes/qt/QDepartment.h>`

pub-methods
------------------------------------------------------

void 
<a href="#a2b9f07697f4a811afa26d9a0b951f9ca">set_subdepartments</a> (QDepartmentList const &departments)
 
Set sub-departments of this department. More...
 
void 
<a href="#a872794120c2b7337bf23f2ef5dae4330">add_subdepartment</a> (QDepartment::SCPtr const &department)
 
Add sub-department to this department. More...
 
void 
<a href="#a902b615bdfbccb322f65a5306b3a85dc">set_alternate_label</a> (QString const &<a href="#ae4fa435a1362b32544c79100e7d28c74">label</a>)
 
Set the alternate label (plural of the normal label) of this department. More...
 
void 
<a href="#a5ec4d42b6421e9661894432d347d2e05">set_has_subdepartments</a> (bool <a href="#a07b6395359cbdb456c3200df852988a0">subdepartments</a>=true)
 
Sets has\_subdepartments flag of this department. More...
 
QString 
<a href="#ad0cbefd8c90f4b0cdd147ca7b16d5144">id</a> () const
 
Get the identifier of this department. More...
 
QString 
<a href="#ae4fa435a1362b32544c79100e7d28c74">label</a> () const
 
Get the label of this department. More...
 
QString 
<a href="#a7ede92fdfc67214d6a6761d1d694bdfb">alternate_label</a> () const
 
Get the alternate label of this department. More...
 
<a href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> 
<a href="#aa5184890c7503571408d3d8ef9e58ed6">query</a> () const
 
Get the canned query associated with this department. More...
 
QDepartmentList 
<a href="#a07b6395359cbdb456c3200df852988a0">subdepartments</a> () const
 
Get list of sub-departments of this department. More...
 
bool 
<a href="#ae1075a9dbc4f92d51393dd57a36adf6e">has_subdepartments</a> () const
 
Check if this department has subdepartments or has\_subdepartments flag is set. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**QDepartment** (<a href="index.html">QDepartment</a> const &other)
 
 
**QDepartment** (<a href="index.html">QDepartment</a> &&)
 
<a href="index.html">QDepartment</a> & 
**operator=** (<a href="index.html">QDepartment</a> const &other)
 
<a href="index.html">QDepartment</a> & 
**operator=** (<a href="index.html">QDepartment</a> &&)
 
pub-static-methods
--------------------------------------------------------------------

static QDepartment::UPtr 
<a href="#a9bf07a3b3b3e57a391100f15abb4c651">create</a> (<a href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> const &<a href="#aa5184890c7503571408d3d8ef9e58ed6">query</a>, QString const &<a href="#ae4fa435a1362b32544c79100e7d28c74">label</a>)
 
Create a department with the given canned query and name. More...
 
static QDepartment::UPtr 
<a href="#a7c90a04ab4d200edc1270ed915914442">create</a> (QString const &department\_id, <a href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> const &<a href="#aa5184890c7503571408d3d8ef9e58ed6">query</a>, QString const &<a href="#ae4fa435a1362b32544c79100e7d28c74">label</a>)
 
Create a department with the given department identifier, canned query, and name. More...
 
<span id="details"></span>
Detailed Description
--------------------

A department with optional sub-departments.

Member Function Documentation
-----------------------------

<span id="a872794120c2b7337bf23f2ef5dae4330" class="anchor"></span>
|                                      |     |                             |              |     |     |
|--------------------------------------|-----|-----------------------------|--------------|-----|-----|
| void QDepartment::add\_subdepartment | (   | QDepartment::SCPtr const &  | *department* | )   |     |

Add sub-department to this department.

Parameters  
|            |                             |
|------------|-----------------------------|
| department | The subdepartment instance. |

<span id="a7ede92fdfc67214d6a6761d1d694bdfb" class="anchor"></span>
|                                       |     |     |     |       |
|---------------------------------------|-----|-----|-----|-------|
| QString QDepartment::alternate\_label | (   |     | )   | const |

Get the alternate label of this department.

Return the alternate label of this department. The alternate label expresses the plural "all" form of the normal label. For example, if the normal label is "Books", then the alternate label is "All Books". Note that alternate label and can be empty - in that case the normal label should be displayed instead.

Returns  
The alternate label.

<span id="a9bf07a3b3b3e57a391100f15abb4c651" class="anchor"></span>
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
<td>static QDepartment::UPtr unity::scopes::qt::QDepartment::create</td>
<td>(</td>
<td><a href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> const &amp; </td>
<td><em>query</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>QString const &amp; </td>
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

The identifier of this department instance is that of the `query` instance (<a href="../unity.scopes.qt.QCannedQuery.md#aa8de764af79922d974e1bef6186be9ed">QCannedQuery::department_id()</a>).

Parameters  
|       |                                                                                                                   |
|-------|-------------------------------------------------------------------------------------------------------------------|
| query | The query (and associated parameters, such as filter state) to be executed when the user selects this department. |
| label | The display name of this department.                                                                              |

<span id="a7c90a04ab4d200edc1270ed915914442" class="anchor"></span>
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
<td>static QDepartment::UPtr unity::scopes::qt::QDepartment::create</td>
<td>(</td>
<td>QString const &amp; </td>
<td><em>department_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> const &amp; </td>
<td><em>query</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>QString const &amp; </td>
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

<span id="ae1075a9dbc4f92d51393dd57a36adf6e" class="anchor"></span>
|                                       |     |     |     |       |
|---------------------------------------|-----|-----|-----|-------|
| bool QDepartment::has\_subdepartments | (   |     | )   | const |

Check if this department has subdepartments or has\_subdepartments flag is set.

Returns  
true if this deparment has subdepartments or has\_subdepartments flag is set

<span id="ad0cbefd8c90f4b0cdd147ca7b16d5144" class="anchor"></span>
|                         |     |     |     |       |
|-------------------------|-----|-----|-----|-------|
| QString QDepartment::id | (   |     | )   | const |

Get the identifier of this department.

Returns  
The department identifier.

<span id="ae4fa435a1362b32544c79100e7d28c74" class="anchor"></span>
|                            |     |     |     |       |
|----------------------------|-----|-----|-----|-------|
| QString QDepartment::label | (   |     | )   | const |

Get the label of this department.

Returns  
The department label.

<span id="aa5184890c7503571408d3d8ef9e58ed6" class="anchor"></span>
|                                                                                                     |     |     |     |       |
|-----------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> QDepartment::query | (   |     | )   | const |

Get the canned query associated with this department.

Returns  
The canned query for this department.

<span id="a902b615bdfbccb322f65a5306b3a85dc" class="anchor"></span>
|                                         |     |                  |         |     |     |
|-----------------------------------------|-----|------------------|---------|-----|-----|
| void QDepartment::set\_alternate\_label | (   | QString const &  | *label* | )   |     |

Set the alternate label (plural of the normal label) of this department.

The alternate label should express the plural "all" form of the normal label. For example, if the normal label is "Books", then the alternate label should be "All Books". The alternate label needs to be provided for the current department only.

Parameters  
|       |                                                                                    |
|-------|------------------------------------------------------------------------------------|
| label | The alternate label to display when showing plural form of this department's name. |

<span id="a5ec4d42b6421e9661894432d347d2e05" class="anchor"></span>
|                                            |     |       |                           |     |     |
|--------------------------------------------|-----|-------|---------------------------|-----|-----|
| void QDepartment::set\_has\_subdepartments | (   | bool  | *subdepartments* = `true` | )   |     |

Sets has\_subdepartments flag of this department.

This flag is a display hint for the Shell that indicates if this department has sub-departments and as such should be displayed in a way that suggests further navigation to the user. Setting this flag is not needed when sub-departments have been added with <a href="#a2b9f07697f4a811afa26d9a0b951f9ca" title="Set sub-departments of this department. ">set_subdepartments()</a> method. Setting this flag to false after adding sub-departments with <a href="#a2b9f07697f4a811afa26d9a0b951f9ca" title="Set sub-departments of this department. ">set_subdepartments()</a> throws unity::LogicException.

Exceptions  
|                       |                                                                                                                                                                                                                                                          |
|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if called with false after adding sub-departments with <a href="../unity.scopes.Department.md#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> |

<span id="a2b9f07697f4a811afa26d9a0b951f9ca" class="anchor"></span>
|                                       |     |                          |               |     |     |
|---------------------------------------|-----|--------------------------|---------------|-----|-----|
| void QDepartment::set\_subdepartments | (   | QDepartmentList const &  | *departments* | )   |     |

Set sub-departments of this department.

Parameters  
|             |                              |
|-------------|------------------------------|
| departments | The list of sub-departments. |

<span id="a07b6395359cbdb456c3200df852988a0" class="anchor"></span>
|                                             |     |     |     |       |
|---------------------------------------------|-----|-----|-----|-------|
| QDepartmentList QDepartment::subdepartments | (   |     | )   | const |

Get list of sub-departments of this department.

Returns  
The list of sub-departments.

