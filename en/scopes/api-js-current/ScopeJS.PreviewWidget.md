---
Title: ScopeJS.PreviewWidget
---
        
PreviewWidget
=============

A widget for a preview.

-   Methods

<span id="add_attribute_mapping"></span>
**`add_attribute_mapping`**( `key, value ` )
Adds an attribute definition using a component mapping

**Parameters:**
-   `key` **&lt;String&gt;**

    Attribute definition

-   `value` **&lt;String&gt;**

    Value

<span id="add_attribute_value"></span>
**`add_attribute_value`**( `key, value ` )
Adds an attribute definition and its value

**Parameters:**
-   `key` **&lt;String&gt;**

    Attribute definition

-   `value` **&lt;String&gt;**

    , {Number}, {Object}. The value can be a string, number, object

<span id="add_widget"></span>
**`add_widget`**( `widget ` )
Adds a widget into expandable widget

**Parameters:**
-   `widget` **&lt;<a href="index.html" class="crosslink">PreviewWidget</a>&gt;**

    The widget that needs to be added

<span id="attribute_mappings"></span>
**`attribute_mappings`**( `  ` )
Get the components of this widget

**Returns:**
Dictionary of widget components

<span id="attribute_values"></span>
**`attribute_values`**( `  ` )
Get the attributes of this widget

**Returns:**
Object corresponding to attributes of this widget

<span id="data"></span>
**`data`**( `  ` )
Get a JSON representation of this widget

**Returns:**
String representation of widget

<span id="id"></span>
String **`id`**( `  ` )
Get the identifier of this widget

**Returns:** &lt;String&gt;
Id

<span id="widget_type"></span>
String **`widget_type`**( `  ` )
Get type name of this widget

**Returns:** &lt;String&gt;
Widget type

<span id="widgets"></span>
**`widgets`**( `  ` )
Get widgets of 'expandable' widget

**Returns:**
List of PreviewWidget

