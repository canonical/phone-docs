---
Title: unity.scopes.qt.QColumnLayout
---
        
QColumnLayout
=============

Represents a column layout. [More...](#details)

`#include <unity/scopes/qt/QColumnLayout.h>`

pub-methods
------------------------------------------------------

 
<a href="#a89f72698ef94dd4db26d286df0e5eb05">QColumnLayout</a> (int num\_of\_columns)
 
Creates a layout definition that expects num\_of\_columns columns to be added with ColumnLayout::add\_column. More...
 
void 
<a href="#ad7e3e39240dc8dc5a24cbe19235a0752">add_column</a> (QVector&lt; QString &gt; widget\_ids)
 
Adds a new column and assigns widgets to it. More...
 
int 
<a href="#af062c78bd61aad7d0bfa03b8b06f7f20">size</a> () const noexcept
 
Get the current number of columns in this layout. More...
 
int 
<a href="#a5a989ce965336941a2e24fcd763f0596">number_of_columns</a> () const noexcept
 
Get the number of columns expected by this layout as specified in the constructor. More...
 
QVector&lt; QString &gt; 
<a href="#afa169274d04b70956761ca55451e5921">column</a> (int index) const
 
Retrieve the list of widgets for given column. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**QColumnLayout** (<a href="index.html">QColumnLayout</a> const &other)
 
 
**QColumnLayout** (<a href="index.html">QColumnLayout</a> &&)
 
<a href="index.html">QColumnLayout</a> & 
**operator=** (<a href="index.html">QColumnLayout</a> const &other)
 
<a href="index.html">QColumnLayout</a> & 
**operator=** (<a href="index.html">QColumnLayout</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Represents a column layout.

Column layouts are used to represent the view in different ways depending on the device we are running our application.

If, for example, you run the application in a tablet that has more screen the application could use more columns than running in a phone.

Constructor & Destructor Documentation
--------------------------------------

<span id="a89f72698ef94dd4db26d286df0e5eb05" class="anchor"></span>
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
<td>unity::scopes::qt::QColumnLayout::QColumnLayout</td>
<td>(</td>
<td>int </td>
<td><em>num_of_columns</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">explicit</span></span></td>
</tr>
</tbody>
</table>

Creates a layout definition that expects num\_of\_columns columns to be added with <a href="../unity.scopes.ColumnLayout.md#a0a8db9f2725f9c56f8639c55412d931d" title="Adds a new column and assigns widgets to it. ">ColumnLayout::add_column</a>.

Parameters  
|                  |                                       |
|------------------|---------------------------------------|
| num\_of\_columns | The number of columns for the layout. |

<!-- -->

Exceptions  
|                                 |                                   |
|---------------------------------|-----------------------------------|
| unity::InvalidArgumentException | for an invalid number of columns. |

Member Function Documentation
-----------------------------

<span id="ad7e3e39240dc8dc5a24cbe19235a0752" class="anchor"></span>
|                                                    |     |                           |               |     |     |
|----------------------------------------------------|-----|---------------------------|---------------|-----|-----|
| void unity::scopes::qt::QColumnLayout::add\_column | (   | QVector&lt; QString &gt;  | *widget\_ids* | )   |     |

Adds a new column and assigns widgets to it.

<a href="unity.scopes.ColumnLayout.md" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> expects exactly the number of columns passed to the constructor to be created with the add\_column method.

Exceptions  
|                       |                                                                                                                                                                                                                                |
|-----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if an attempt is made to add more columns than specified in the constructor.                                                                                                                                                   |
| unity::LogicException | from <a href="../unity.scopes.qt.QPreviewReply.md#abe5967042a22327f6ec9d5a1f595968c">unity::scopes::qt::QPreviewReply::register_layout</a> if a layout has fewer columns than specified in the constructor. |

<span id="afa169274d04b70956761ca55451e5921" class="anchor"></span>
|                                                                 |     |      |         |     |       |
|-----------------------------------------------------------------|-----|------|---------|-----|-------|
| QVector&lt;QString&gt; unity::scopes::qt::QColumnLayout::column | (   | int  | *index* | )   | const |

Retrieve the list of widgets for given column.

Parameters  
|       |                        |
|-------|------------------------|
| index | The index of a column. |

<!-- -->

Returns  
The widget identifiers for the given column index.

<!-- -->

Exceptions  
|                                 |                          |
|---------------------------------|--------------------------|
| unity::InvalidArgumentException | if the index is invalid. |

<span id="a5a989ce965336941a2e24fcd763f0596" class="anchor"></span>
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
<td>int unity::scopes::qt::QColumnLayout::number_of_columns</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the number of columns expected by this layout as specified in the constructor.

Returns  
The number of columns expected by this layout.

<span id="af062c78bd61aad7d0bfa03b8b06f7f20" class="anchor"></span>
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
<td>int unity::scopes::qt::QColumnLayout::size</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the current number of columns in this layout.

Returns  
The number of columns added with <a href="#ad7e3e39240dc8dc5a24cbe19235a0752" title="Adds a new column and assigns widgets to it. ">add_column()</a>.

