---
Title: unity.scopes.qt.QPreviewWidget
---
        
QPreviewWidget
==============

Widget used in Preview. [More...](#details)

`#include <unity/scopes/qt/QPreviewWidget.h>`

pub-methods
------------------------------------------------------

 
<a href="#aba81db48085e0528f1112941fb547c4a">QPreviewWidget</a> (QString const &<a href="#a3b230204123aa720d925f85fd51425a0">id</a>, QString const &<a href="#a600705e26341af0ef375830665462a47">widget_type</a>)
 
Create an empty widget definition with a specific id and type. More...
 
 
<a href="#a3b1daf6806081a727875ce0f4384f612">QPreviewWidget</a> (QString const &definition)
 
Create a widget from a JSON definition. More...
 
void 
<a href="#a708df5ca5097de8f6b81a71958cf9b75">add_attribute_value</a> (QString const &key, QVariant const &value)
 
Adds an attribute definition and its value. More...
 
void 
<a href="#a7ebeecb9c8cc66f871692bd19eb8cfe6">add_attribute_mapping</a> (QString const &key, QString const &field\_name)
 
Adds an attribute definition using a component mapping. More...
 
void 
<a href="#ae9d8c0c5d81c827b84cda80df49dc70e">add_widget</a> (<a href="index.html">QPreviewWidget</a> const &widget)
 
Adds a widget into expandable widget. More...
 
QString 
<a href="#a3b230204123aa720d925f85fd51425a0">id</a> () const
 
Get the identifier of this widget. More...
 
QString 
<a href="#a600705e26341af0ef375830665462a47">widget_type</a> () const
 
Get type name of this widget. More...
 
QMap&lt; QString, QString &gt; 
<a href="#ae6d2278216cc638cc8869e12fdf619fc">attribute_mappings</a> () const
 
Get the components of this widget. More...
 
QVariantMap 
<a href="#a1af3433d81deca2a1c5de44cec693412">attribute_values</a> () const
 
Get the attributes of this widget. More...
 
QPreviewWidgetList 
<a href="#a5732c60c89fa86e08e86fd62f5649ce3">widgets</a> () const
 
Get widgets of 'expandable' widget. More...
 
QString 
<a href="#a4be99753312de446095968767eb46bbe">data</a> () const
 
Get a JSON representation of this widget. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**QPreviewWidget** (<a href="index.html">QPreviewWidget</a> const &other)
 
 
**QPreviewWidget** (<a href="index.html">QPreviewWidget</a> &&other)
 
virtual 
**~QPreviewWidget** ()
 
<a href="index.html">QPreviewWidget</a> & 
**operator=** (<a href="index.html">QPreviewWidget</a> const &other)
 
<a href="index.html">QPreviewWidget</a> & 
**operator=** (<a href="index.html">QPreviewWidget</a> &&other)
 
<span id="details"></span>
Detailed Description
--------------------

Widget used in Preview.

Constructor & Destructor Documentation
--------------------------------------

<span id="aba81db48085e0528f1112941fb547c4a" class="anchor"></span>
|                                                   |     |                  |                 |
|---------------------------------------------------|-----|------------------|-----------------|
| unity::scopes::qt::QPreviewWidget::QPreviewWidget | (   | QString const &  | *id*,           |
|                                                   |     | QString const &  | *widget\_type*  |
|                                                   | )   |                  |                 |

Create an empty widget definition with a specific id and type.

Parameters  
|              |                               |
|--------------|-------------------------------|
| id           | The unique widget identifier. |
| widget\_type | The type of the widget.       |

<span id="a3b1daf6806081a727875ce0f4384f612" class="anchor"></span>
|                                                   |     |                  |              |     |     |
|---------------------------------------------------|-----|------------------|--------------|-----|-----|
| unity::scopes::qt::QPreviewWidget::QPreviewWidget | (   | QString const &  | *definition* | )   |     |

Create a widget from a JSON definition.

The JSON definition must be a dictionary that includes widget "id" and all the values of attributes required by desired <a href="index.html">widget type</a>. For example, a definition of image widget may look as follows:

PreviewWidget img(R<span class="stringliteral">"({"id": "img", "type": "image", "source": "http://imageuri"})");</span>

For cases where attribute mappings are to be used instead of direct values, they need to be enclosed in the "components" dictionary, e.g.

PreviewWidget img(R<span class="stringliteral">"({"id": "img", "type": "image", "components": { "source": "screenshot-url" } })");</span>

(this example assumes "screenshot-url" value is either available in the result object that's being previewed, or it will be pushed with <a href="../unity.scopes.PreviewReply.md#a9fc593618b83ec444fb6c9b2b298764a" title="Sends widget definitions to the sender of the preview query. ">unity::scopes::PreviewReply::push()</a> method)

Note  
It is recommended to create widgets via <a href="unity.scopes.PreviewWidget.md" title="A widget for a preview. ">unity::scopes::PreviewWidget(QString const&amp;, QString const&amp;)</a> constructor and <a href="../unity.scopes.PreviewWidget.md#a42dd64704890d72bcc6ecbd7bccbfcd9" title="Adds an attribute definition and its value. ">unity::scopes::PreviewWidget::add_attribute_value()</a> / <a href="../unity.scopes.PreviewWidget.md#a8bb890267a69dd6bb5ca70b663c75e74" title="Adds an attribute definition using a component mapping. ">unity::scopes::PreviewWidget::add_attribute_mapping()</a> methods, rather than via JSON definition.

<!-- -->

Parameters  
|            |                      |
|------------|----------------------|
| definition | The JSON definition. |

Member Function Documentation
-----------------------------

<span id="a7ebeecb9c8cc66f871692bd19eb8cfe6" class="anchor"></span>
|                                                                 |     |                  |                |
|-----------------------------------------------------------------|-----|------------------|----------------|
| void unity::scopes::qt::QPreviewWidget::add\_attribute\_mapping | (   | QString const &  | *key*,         |
|                                                                 |     | QString const &  | *field\_name*  |
|                                                                 | )   |                  |                |

Adds an attribute definition using a component mapping.

If an attribute value is either not known, or the value is already present in a result field, this method creates a mapping between the attribute name and given the field name.

If an attribute value is not known, the scope is expected to push the attribute value using <a href="../unity.scopes.PreviewReply.md#a9fc593618b83ec444fb6c9b2b298764a" title="Sends widget definitions to the sender of the preview query. ">unity::scopes::PreviewReply::push()</a>; otherwise, the value is automatically mapped from the result.

<span id="a708df5ca5097de8f6b81a71958cf9b75" class="anchor"></span>
|                                                               |     |                   |          |
|---------------------------------------------------------------|-----|-------------------|----------|
| void unity::scopes::qt::QPreviewWidget::add\_attribute\_value | (   | QString const &   | *key*,   |
|                                                               |     | QVariant const &  | *value*  |
|                                                               | )   |                   |          |

Adds an attribute definition and its value.

Parameters  
|       |                             |
|-------|-----------------------------|
| key   | The name of the attribute.  |
| value | The value of the attribute. |

<span id="ae9d8c0c5d81c827b84cda80df49dc70e" class="anchor"></span>
|                                                     |     |                                                             |          |     |     |
|-----------------------------------------------------|-----|-------------------------------------------------------------|----------|-----|-----|
| void unity::scopes::qt::QPreviewWidget::add\_widget | (   | <a href="index.html">QPreviewWidget</a> const &  | *widget* | )   |     |

Adds a widget into expandable widget.

Adds a widget into this widget, which needs to be of 'expandable' type. This method throws if adding a widget into any other widget type. Also, adding an 'expandable' widget into another 'expandable' is not allowed.

Exceptions  
|                       |                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------|
| unity::LogicException | if type of this widget is other than 'expandable', or when adding 'expandable' to 'expandable'. |

<span id="ae6d2278216cc638cc8869e12fdf619fc" class="anchor"></span>
|                                                                                     |     |     |     |       |
|-------------------------------------------------------------------------------------|-----|-----|-----|-------|
| QMap&lt;QString, QString&gt; unity::scopes::qt::QPreviewWidget::attribute\_mappings | (   |     | )   | const |

Get the components of this widget.

The returned map is a dictionary of (key, field name) pairs, as defined by calls to <a href="#a7ebeecb9c8cc66f871692bd19eb8cfe6" title="Adds an attribute definition using a component mapping. ">add_attribute_mapping()</a>.

Returns  
The components map.

<span id="a1af3433d81deca2a1c5de44cec693412" class="anchor"></span>
|                                                                  |     |     |     |       |
|------------------------------------------------------------------|-----|-----|-----|-------|
| QVariantMap unity::scopes::qt::QPreviewWidget::attribute\_values | (   |     | )   | const |

Get the attributes of this widget.

The returned map is a dictionary of (key, value) pairs, as defined by calls to <a href="#a708df5ca5097de8f6b81a71958cf9b75" title="Adds an attribute definition and its value. ">add_attribute_value()</a>.

Returns  
The attribute map.

<span id="a4be99753312de446095968767eb46bbe" class="anchor"></span>
|                                                 |     |     |     |       |
|-------------------------------------------------|-----|-----|-----|-------|
| QString unity::scopes::qt::QPreviewWidget::data | (   |     | )   | const |

Get a JSON representation of this widget.

Returns  
The JSON string.

<span id="a3b230204123aa720d925f85fd51425a0" class="anchor"></span>
|                                               |     |     |     |       |
|-----------------------------------------------|-----|-----|-----|-------|
| QString unity::scopes::qt::QPreviewWidget::id | (   |     | )   | const |

Get the identifier of this widget.

Returns  
The widget identifier.

<span id="a600705e26341af0ef375830665462a47" class="anchor"></span>
|                                                         |     |     |     |       |
|---------------------------------------------------------|-----|-----|-----|-------|
| QString unity::scopes::qt::QPreviewWidget::widget\_type | (   |     | )   | const |

Get type name of this widget.

Returns  
The widget type.

<span id="a5732c60c89fa86e08e86fd62f5649ce3" class="anchor"></span>
|                                                               |     |     |     |       |
|---------------------------------------------------------------|-----|-----|-----|-------|
| QPreviewWidgetList unity::scopes::qt::QPreviewWidget::widgets | (   |     | )   | const |

Get widgets of 'expandable' widget.

Returns the list of widget attached to this widget, which must be of 'expandable' type. This list is always empty for other widget types.

