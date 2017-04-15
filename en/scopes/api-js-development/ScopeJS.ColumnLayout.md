---
Title: ScopeJS.ColumnLayout
---
        
ColumnLayout
============

Describes a column layout for preview widgets.

-   Methods

<span id="add_column"></span>
**`add_column`**( `widget_ids ` )
Adds a new column and assigns widgets to it.

**Parameters:**
-   `widget_ids` **&lt;Object&gt;**

    ColumnLayout expects exactly the number of columns passed to the constructor to be created with the add\_column method.

<span id="column"></span>
**`column`**( `index ` )
Retrieve the list of widgets for given column.

**Parameters:**
-   `index` **&lt;Object&gt;**

    The index of a column.

**Returns:**
The widget identifiers for the given column index.

<span id="number_of_columns"></span>
**`number_of_columns`**( `  ` )
Get the number of columns expected by this layout as specified in the constructor.

**Returns:**
The number of columns expected by this layout.

<span id="size"></span>
**`size`**( `  ` )
Get the current number of columns in this layout.

**Returns:**
The number of columns added with add\_column()

