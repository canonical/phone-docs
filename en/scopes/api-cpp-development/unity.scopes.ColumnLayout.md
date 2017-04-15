---
Title: unity.scopes.ColumnLayout
---
        
ColumnLayout
============

Defines a layout for preview widgets with given column setup. [More...](#details)

pub-methods
------------------------------------------------------

 
<a href="#ac93fd7c6681f2013b4dcf2ed16f95401">ColumnLayout</a> (int num\_of\_columns)
 
Creates a layout definition that expects num\_of\_columns columns to be added with ColumnLayout::add\_column. More...
 
void 
<a href="#a0a8db9f2725f9c56f8639c55412d931d">add_column</a> (std::vector&lt; std::string &gt; widget\_ids)
 
Adds a new column and assigns widgets to it. More...
 
int 
<a href="#abd5129b6d56ad2aaaeb4f454f13176dd">size</a> () const noexcept
 
Get the current number of columns in this layout. More...
 
int 
<a href="#a3213620bbddcab29eb32a2eeff2bb8dd">number_of_columns</a> () const noexcept
 
Get the number of columns expected by this layout as specified in the constructor. More...
 
std::vector&lt; std::string &gt; 
<a href="#a7457b565bd76d573f40241450a1f839f">column</a> (int index) const
 
Retrieve the list of widgets for given column. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**ColumnLayout** (<a href="index.html">ColumnLayout</a> const &other)
 
 
**ColumnLayout** (<a href="index.html">ColumnLayout</a> &&)
 
<a href="index.html">ColumnLayout</a> & 
**operator=** (<a href="index.html">ColumnLayout</a> const &other)
 
<a href="index.html">ColumnLayout</a> & 
**operator=** (<a href="index.html">ColumnLayout</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Defines a layout for preview widgets with given column setup.

<a href="index.html" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> defines how widgets should be laid out on a display with a given number of columns. In typical use cases, a scope creates <a href="index.html" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> instances for all supported displays (number of columns), and defines for every instance what widgets belong to which columns. The shell uses the layout that is most appropriate for the device in use. Column layout definitions are optional. However, we recommend that scopes define layouts for the best visual appearance.

An example of creating two layouts, one for a screen with one column and and one for a screen with two columns.

<span class="keywordtype">void</span> MyPreview::run(<a href="../unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754" class="code">PreviewReplyProxy</a> <span class="keyword">const</span>& reply)

<span class="comment">// layout definition for a screen with just 1 column</span>

<a href="#ac93fd7c6681f2013b4dcf2ed16f95401" class="code">ColumnLayout</a> layout1col(1);

layout1col.add\_column({<span class="stringliteral">"art"</span>, <span class="stringliteral">"header"</span>, <span class="stringliteral">"actions"</span>}); <span class="comment">// all widgets in a single column</span>

<span class="comment">// layout definition for a screen with 2 columns</span>

<a href="#ac93fd7c6681f2013b4dcf2ed16f95401" class="code">ColumnLayout</a> layout2col(2);

layout2col.add\_column({<span class="stringliteral">"art"</span>}); <span class="comment">// widget in 1st column</span>

layout2col.add\_column({<span class="stringliteral">"header"</span>, <span class="stringliteral">"actions"</span>}); <span class="comment">// widgets in 2nd column</span>

reply-&gt;register\_layout({layout1col, layout2col});

<span class="comment">// create widgets</span>

PreviewWidget w1(<span class="stringliteral">"art"</span>, <span class="stringliteral">"image"</span>);

...

Constructor & Destructor Documentation
--------------------------------------

<span id="ac93fd7c6681f2013b4dcf2ed16f95401" class="anchor"></span>
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
<td>unity::scopes::ColumnLayout::ColumnLayout</td>
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

Creates a layout definition that expects num\_of\_columns columns to be added with <a href="#a0a8db9f2725f9c56f8639c55412d931d" title="Adds a new column and assigns widgets to it. ">ColumnLayout::add_column</a>.

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

<span id="a0a8db9f2725f9c56f8639c55412d931d" class="anchor"></span>
|                                               |     |                                   |               |     |     |
|-----------------------------------------------|-----|-----------------------------------|---------------|-----|-----|
| void unity::scopes::ColumnLayout::add\_column | (   | std::vector&lt; std::string &gt;  | *widget\_ids* | )   |     |

Adds a new column and assigns widgets to it.

<a href="index.html" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> expects exactly the number of columns passed to the constructor to be created with the add\_column method.

Exceptions  
|                       |                                                                                                                                                                                                                       |
|-----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if an attempt is made to add more columns than specified in the constructor.                                                                                                                                          |
| unity::LogicException | from <a href="../unity.scopes.PreviewReply.md#a16a757d821bd3792d1a69112b1f13964">unity::scopes::PreviewReply::register_layout</a> if a layout has fewer columns than specified in the constructor. |

<span id="a7457b565bd76d573f40241450a1f839f" class="anchor"></span>
|                                                                      |     |      |         |     |       |
|----------------------------------------------------------------------|-----|------|---------|-----|-------|
| std::vector&lt; std::string &gt; unity::scopes::ColumnLayout::column | (   | int  | *index* | )   | const |

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

<span id="a3213620bbddcab29eb32a2eeff2bb8dd" class="anchor"></span>
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
<td>int unity::scopes::ColumnLayout::number_of_columns</td>
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

<span id="abd5129b6d56ad2aaaeb4f454f13176dd" class="anchor"></span>
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
<td>int unity::scopes::ColumnLayout::size</td>
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
The number of columns added with <a href="#a0a8db9f2725f9c56f8639c55412d931d" title="Adds a new column and assigns widgets to it. ">add_column()</a>.

