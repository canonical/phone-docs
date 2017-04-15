---
Title: unity.scopes.qt.QSearchReply
---
        
QSearchReply
============

Allows the results of a search query to be sent to the query source. [More...](#details)

`#include <unity/scopes/qt/QSearchReply.h>`

Inheritance diagram for unity::scopes::qt::QSearchReply:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/ec7172a3-6f65-4171-a33a-6d148623aed2-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QSearchReply/classunity_1_1scopes_1_1qt_1_1_q_search_reply__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual 
<a href="#a6c9794d4fbbd36e2c6f4ce70495a580f">~QSearchReply</a> ()
 
Destroys a <a href="index.html" title="Allows the results of a search query to be sent to the query source. ">QSearchReply</a>.
 
virtual void 
<a href="#acac93ea6c02ccccdae2c72384cc5c5fd">register_departments</a> (QDepartment::SCPtr const &parent)
 
Register departments for the current search reply and provide the current department. More...
 
virtual QCategory::SCPtr 
<a href="#ac208a555cddc39f086b88804bb9bd26f">register_category</a> (QString const &id, QString const &title, QString const &icon, <a href="unity.scopes.CategoryRenderer.md">unity::scopes::CategoryRenderer</a> const &renderer\_template=<a href="unity.scopes.CategoryRenderer.md">unity::scopes::CategoryRenderer</a>())
 
Register new category and send it to the source of the query. More...
 
virtual bool 
<a href="#a17a9439fd592a2c76b7b74f46053bad5">push</a> (<a href="unity.scopes.qt.QCategorisedResult.md">QCategorisedResult</a> const &result)
 
Sends a single result to the source of a query. More...
 
virtual void 
<a href="#a74f1e3d2dd82ef9810413fa38401e16e">error</a> (std::exception\_ptr ex)
 
Informs the source of a query that the query was terminated due to an error. More...
 
<span id="details"></span>
Detailed Description
--------------------

Allows the results of a search query to be sent to the query source.

Member Function Documentation
-----------------------------

<span id="a74f1e3d2dd82ef9810413fa38401e16e" class="anchor"></span>
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
<td>void QSearchReply::error</td>
<td>(</td>
<td>std::exception_ptr </td>
<td><em>ex</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Informs the source of a query that the query was terminated due to an error.

Multiple calls to <a href="#a74f1e3d2dd82ef9810413fa38401e16e" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> and calls to finished() after <a href="#a74f1e3d2dd82ef9810413fa38401e16e" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> was called are ignored.

Parameters  
|     |                                                                                                                                                                                                                   |
|-----|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ex  | An exception\_ptr indicating the cause of the error. If ex is a `std::exception`, the return value of `what()` is made available to the query source. Otherwise, the query source receives `"unknown exception"`. |

<span id="a17a9439fd592a2c76b7b74f46053bad5" class="anchor"></span>
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
<td>bool QSearchReply::push</td>
<td>(</td>
<td><a href="unity.scopes.qt.QCategorisedResult.md">QCategorisedResult</a> const &amp; </td>
<td><em>result</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Sends a single result to the source of a query.

Any calls to <a href="#a17a9439fd592a2c76b7b74f46053bad5" title="Sends a single result to the source of a query. ">push()</a> after finished() was called are ignored.

Returns  
The return value is true if the result was accepted, false otherwise. A false return value can be due to finished() having been called earlier, or the client that sent the query having cancelled that query. The return value is false also if the query has a cardinality limit and is reached or exceeded. (The return value is false for the last valid push and subsequent pushes.)

<span id="ac208a555cddc39f086b88804bb9bd26f" class="anchor"></span>
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
<td>QCategory::SCPtr QSearchReply::register_category</td>
<td>(</td>
<td>QString const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>QString const &amp; </td>
<td><em>title</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>QString const &amp; </td>
<td><em>icon</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.CategoryRenderer.md">unity::scopes::CategoryRenderer</a> const &amp; </td>
<td><em>renderer_template</em> = <code>unity::scopes::CategoryRenderer()</code> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Register new category and send it to the source of the query.

Parameters  
|                    |                                                               |
|--------------------|---------------------------------------------------------------|
| id                 | The identifier of the category                                |
| title              | The title of the category                                     |
| icon               | The icon of the category                                      |
| renderer\_template | The renderer template to be used for results in this category |

<!-- -->

Returns  
The category instance

<!-- -->

Exceptions  
|                                         |                                                       |
|-----------------------------------------|-------------------------------------------------------|
| unity::scopes::InvalidArgumentException | if category with that id has already been registered. |

<span id="acac93ea6c02ccccdae2c72384cc5c5fd" class="anchor"></span>
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
<td>void QSearchReply::register_departments</td>
<td>(</td>
<td>QDepartment::SCPtr const &amp; </td>
<td><em>parent</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Register departments for the current search reply and provide the current department.

Departments are optional. If scope supports departments, it is expected to register departments on every search as follows:

-   create a <a href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node for current department and attach to it a list of its subdepartments (unless current department is a leaf department) using <a href="../unity.scopes.Department.md#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> method. For every subdepartment on the list set "has\_subdepartments" flag if applicable.
-   provide an alternate label for current department with <a href="../unity.scopes.Department.md#a9ab1192cdfcbce44b9164df11290c217" title="Set the alternate label (plural of the normal label) of this department. ">unity::scopes::Department::set_alternate_label()</a>.
-   create a <a href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node for parent of current department (if applicable - not when in root department), and attach current <a href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node to it with <a href="../unity.scopes.Department.md#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> method.
-   register the parent department with <a href="#acac93ea6c02ccccdae2c72384cc5c5fd" title="Register departments for the current search reply and provide the current department. ">unity::scopes::qt::QSearchReply::register_departments()</a>.

For example, assuming the user is visiting a "History" department in "Books", and "History" has sub-departments such as "World War Two" and "Ancient", the code that registers departments for current search in "History" may look like this:

unity::scopes::qt::QDepartment::SPtr books = move(<a href="../unity.scopes.qt.QDepartment.md#a9bf07a3b3b3e57a391100f15abb4c651" class="code">unity::scopes::qt::QDepartment::create</a>(<span class="stringliteral">"books"</span>, query, <span class="stringliteral">"Books"</span>));

<span class="comment">// the</span>

parent of <span class="stringliteral">"History"</span>

unity::scopes::Department::SPtr history = move(<a href="../unity.scopes.qt.QDepartment.md#a9bf07a3b3b3e57a391100f15abb4c651" class="code">unity::scopes::qt::QDepartment::create</a>(<span class="stringliteral">"history"</span>, query,

<span class="stringliteral">"History"</span>));

<a href="../unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231" class="code">unity::scopes::DepartmentList</a> history\_depts({

move(<a href="../unity.scopes.qt.QDepartment.md#a9bf07a3b3b3e57a391100f15abb4c651" class="code">unity::scopes::qt::QDepartment::create</a>(<span class="stringliteral">"ww2"</span>, query, <span class="stringliteral">"World War</span>

<span class="stringliteral">Two"</span>)),

move(<a href="../unity.scopes.qt.QDepartment.md#a9bf07a3b3b3e57a391100f15abb4c651" class="code">unity::scopes::qt::QDepartment::create</a>(<span class="stringliteral">"ancient"</span>, query,

<span class="stringliteral">"Ancient"</span>))});

history-&gt;set\_subdepartments(history\_depts);

books-&gt;set\_subdepartments({history});

reply-&gt;register\_departments(books);

Current department should be the department returned by <a href="../unity.scopes.CannedQuery.md#a61351960149bb4c0840f020c4e645f66" title="Returns the department id of this CannedQuery. ">unity::scopes::CannedQuery::department_id()</a>. Empty department id denotes the root deparment.

Parameters  
|        |                                                                                          |
|--------|------------------------------------------------------------------------------------------|
| parent | The parent department of current department, or current one if visiting root department. |

<!-- -->

Exceptions  
|                       |                                                                                                                                                  |
|-----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if departments are invalid (nullptr passed, current department not present in the parent's tree, duplicated department ids present in the tree). |

