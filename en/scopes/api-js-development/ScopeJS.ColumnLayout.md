---
Title: ScopeJS.ColumnLayout
---

# ScopeJS.ColumnLayout

<p>Describes a column layout for preview widgets.</p>
<ul>
<li>Methods</li>
</ul>
<strong class="name"><code>add_column</code></strong>( <code>widget_ids </code> ) 
<br>
<p>Adds a new column and assigns widgets to it.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>widget_ids</code> <strong>&lt;Object&gt;</strong>
<p>ColumnLayout expects exactly the number of columns passed to the constructor to be created with the add_column method.</p>
</li>
</ul>
<strong class="name"><code>column</code></strong>( <code>index </code> ) 
<br>
<p>Retrieve the list of widgets for given column.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>index</code> <strong>&lt;Object&gt;</strong>
<p>The index of a column.</p>
</li>
</ul>
<br><strong>Returns:</strong> <p>The widget identifiers for the given column index.</p>
<strong class="name"><code>number_of_columns</code></strong>( <code>  </code> ) 
<br>
<p>Get the number of columns expected by this layout as specified in the constructor.</p>
<br><strong>Returns:</strong> <p>The number of columns expected by this layout.</p>
<strong class="name"><code>size</code></strong>( <code>  </code> ) 
<br>
<p>Get the current number of columns in this layout.</p>
<br><strong>Returns:</strong> <p>The number of columns added with add_column()</p>
