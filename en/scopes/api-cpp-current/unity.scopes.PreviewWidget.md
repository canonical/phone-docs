---
Title: unity.scopes.PreviewWidget
---
        
PreviewWidget
=============

A widget for a preview. [More...](#details)

pub-methods
------------------------------------------------------

 
<a href="#ace84578d55583c7c21f82d53ff6f0ed9">PreviewWidget</a> (std::string const &<a href="#a7706a5249a547ac55d77e815b9fe84af">id</a>, std::string const &<a href="#ad3d85940faa7109a7736d3b2be66b65e">widget_type</a>)
 
Create an empty widget definition with a specific id and type. More...
 
 
<a href="#a751fd8b5f9eb0a921333b3a85cbc9518">PreviewWidget</a> (std::string const &definition)
 
Create a widget from a JSON definition. More...
 
void 
<a href="#a42dd64704890d72bcc6ecbd7bccbfcd9">add_attribute_value</a> (std::string const &key, <a href="unity.scopes.Variant.md">Variant</a> const &value)
 
Adds an attribute definition and its value. More...
 
void 
<a href="#a8bb890267a69dd6bb5ca70b663c75e74">add_attribute_mapping</a> (std::string const &key, std::string const &field\_name)
 
Adds an attribute definition using a component mapping. More...
 
void 
<a href="#a5607e323e7394cb8be842b79b5565205">add_widget</a> (<a href="index.html">PreviewWidget</a> const &widget)
 
Adds a widget into expandable widget. More...
 
std::string 
<a href="#a7706a5249a547ac55d77e815b9fe84af">id</a> () const
 
Get the identifier of this widget. More...
 
std::string 
<a href="#ad3d85940faa7109a7736d3b2be66b65e">widget_type</a> () const
 
Get type name of this widget. More...
 
std::map&lt; std::string, std::string &gt; 
<a href="#a8a1ac22266b8827c5c5dcbb74dc81568">attribute_mappings</a> () const
 
Get the components of this widget. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> 
<a href="#ac2ec5ecc111bc73aabb8ee5a27dcce9e">attribute_values</a> () const
 
Get the attributes of this widget. More...
 
<a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> 
<a href="#a879e64d5ee205b4db8cb6ab9b66d18ee">widgets</a> () const
 
Get widgets of 'expandable' widget. More...
 
std::string 
<a href="#a5ef4058058119df35be51c992da2c2a4">data</a> () const
 
Get a JSON representation of this widget. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**PreviewWidget** (<a href="index.html">PreviewWidget</a> const &other)
 
 
**PreviewWidget** (<a href="index.html">PreviewWidget</a> &&other)
 
virtual 
**~PreviewWidget** ()
 
<a href="index.html">PreviewWidget</a> & 
**operator=** (<a href="index.html">PreviewWidget</a> const &other)
 
<a href="index.html">PreviewWidget</a> & 
**operator=** (<a href="index.html">PreviewWidget</a> &&other)
 
<span id="details"></span>
Detailed Description
--------------------

A widget for a preview.

This class describes an individual widget used when constructing a preview for a result item. Note that the data that applies to particular widget types is likely to change with different major versions of Unity; therefore, attributes are of type <a href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>, that is, loosely typed.

When Unity requests a preview for a particular result, the scope is expected to construct the preview by instantiating a <a href="index.html" title="A widget for a preview. ">PreviewWidget</a>. Each widget has a free-form id, a type, and a number of attributes whose names and types depend on the specific widget type (see <a href="previewwidgets.md">Preview Widgets</a>).

The attribute values can either be filled in directly before pushing the widget to Unity (using <a href="#a42dd64704890d72bcc6ecbd7bccbfcd9" title="Adds an attribute definition and its value. ">add_attribute_value()</a>), or they can be mapped from a result field in a similar fashion to the components mapping when specifying a <a href="unity.scopes.CategoryRenderer.md" title="A category renderer template in JSON format. ">CategoryRenderer</a> (see <a href="#a8bb890267a69dd6bb5ca70b663c75e74" title="Adds an attribute definition using a component mapping. ">add_attribute_mapping()</a>). When using <a href="#a8bb890267a69dd6bb5ca70b663c75e74" title="Adds an attribute definition using a component mapping. ">add_attribute_mapping()</a>, the corresponding attribute need not be present in the result; instead, its value can be pushed later using the <a href="../unity.scopes.PreviewReply.md#a9fc593618b83ec444fb6c9b2b298764a" title="Sends widget definitions to the sender of the preview query. ">PreviewReply::push()</a> method, which accepts the name of the field and its value as a <a href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>.

Preview widget can also be created entirely from a JSON string. See the documentation of <a href="#a751fd8b5f9eb0a921333b3a85cbc9518" title="Create a widget from a JSON definition. ">unity::scopes::PreviewWidget::PreviewWidget(std::string const&amp;)</a> constructor for details.

Here is an example that creates a preview and illustrates three ways to associate a preview widget attribute with its value:

<span class="keywordtype">void</span> MyPreview::run(<a href="../unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754" class="code">PreviewReplyProxy</a> <span class="keyword">const</span>& reply)

{

<a href="#ace84578d55583c7c21f82d53ff6f0ed9" class="code">PreviewWidget</a> w1(<span class="stringliteral">"img"</span>, <span class="stringliteral">"image"</span>);

<span class="comment">// directly specify source URI for the image widget</span>

w1.add\_attribute\_value(<span class="stringliteral">"source"</span>, Variant(<span class="stringliteral">"http://www.example.org/graphics.png"</span>));

<a href="#ace84578d55583c7c21f82d53ff6f0ed9" class="code">PreviewWidget</a> w2(<span class="stringliteral">"hdr"</span>, <span class="stringliteral">"header"</span>);

<span class="comment">// the result associated with this preview already had a title specified, so we'll just map it to the preview widget</span>

w2.add\_attribute\_mapping(<span class="stringliteral">"title"</span>, <span class="stringliteral">"title"</span>);

<span class="comment">// description is not present in the result, but we'll push it later</span>

w2.add\_attribute\_mapping(<span class="stringliteral">"summary"</span>, <span class="stringliteral">"description"</span>);

<a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d" class="code">PreviewWidgetList</a> <a href="#a879e64d5ee205b4db8cb6ab9b66d18ee" class="code">widgets</a>;

widgets.push\_back(w1);

widgets.push\_back(w2);

reply-&gt;push(widgets);

<span class="comment">// do a costly database lookup for the description</span>

std::string description = fetch\_description(result().uri());

reply-&gt;push(<span class="stringliteral">"description"</span>, Variant(description));

}

Constructor & Destructor Documentation
--------------------------------------

<span id="ace84578d55583c7c21f82d53ff6f0ed9" class="anchor"></span>
|                                             |     |                      |                 |
|---------------------------------------------|-----|----------------------|-----------------|
| unity::scopes::PreviewWidget::PreviewWidget | (   | std::string const &  | *id*,           |
|                                             |     | std::string const &  | *widget\_type*  |
|                                             | )   |                      |                 |

Create an empty widget definition with a specific id and type.

Parameters  
|              |                               |
|--------------|-------------------------------|
| id           | The unique widget identifier. |
| widget\_type | The type of the widget.       |

<span id="a751fd8b5f9eb0a921333b3a85cbc9518" class="anchor"></span>
|                                             |     |                      |              |     |     |
|---------------------------------------------|-----|----------------------|--------------|-----|-----|
| unity::scopes::PreviewWidget::PreviewWidget | (   | std::string const &  | *definition* | )   |     |

Create a widget from a JSON definition.

The JSON definition must be a dictionary that includes widget "id" and all the values of attributes required by desired <a href="previewwidgets.md">widget type</a>. For example, a definition of image widget may look as follows:

<a href="#ace84578d55583c7c21f82d53ff6f0ed9" class="code">PreviewWidget</a> img(R<span class="stringliteral">"({"id": "img", "type": "image", "source": "http://imageuri",</span>

<span class="stringliteral"> "fallback": "file:///tmp/image.png"})");</span>

For cases where attribute mappings are to be used instead of direct values, they need to be enclosed in the "components" dictionary, e.g.

<a href="#ace84578d55583c7c21f82d53ff6f0ed9" class="code">PreviewWidget</a> img(R<span class="stringliteral">"({"id": "img", "type": "image", "fallback": "file:///tmp/image.png",</span>

<span class="stringliteral"> "components": { "source": "screenshot-url" } })");</span>

(this example assumes "screenshot-url" value is either available in the result object that's being previewed, or it will be pushed with <a href="../unity.scopes.PreviewReply.md#a9fc593618b83ec444fb6c9b2b298764a" title="Sends widget definitions to the sender of the preview query. ">unity::scopes::PreviewReply::push()</a> method)

Note  
It is recommended to create widgets via <a href="index.html" title="A widget for a preview. ">unity::scopes::PreviewWidget(std::string const&amp;, std::string const&amp;)</a> constructor and <a href="#a42dd64704890d72bcc6ecbd7bccbfcd9" title="Adds an attribute definition and its value. ">unity::scopes::PreviewWidget::add_attribute_value()</a> / <a href="#a8bb890267a69dd6bb5ca70b663c75e74" title="Adds an attribute definition using a component mapping. ">unity::scopes::PreviewWidget::add_attribute_mapping()</a> methods, rather than via JSON definition.

<!-- -->

Parameters  
|            |                      |
|------------|----------------------|
| definition | The JSON definition. |

Member Function Documentation
-----------------------------

<span id="a8bb890267a69dd6bb5ca70b663c75e74" class="anchor"></span>
|                                                            |     |                      |                |
|------------------------------------------------------------|-----|----------------------|----------------|
| void unity::scopes::PreviewWidget::add\_attribute\_mapping | (   | std::string const &  | *key*,         |
|                                                            |     | std::string const &  | *field\_name*  |
|                                                            | )   |                      |                |

Adds an attribute definition using a component mapping.

If an attribute value is either not known, or the value is already present in a result field, this method creates a mapping between the attribute name and given the field name.

If an attribute value is not known, the scope is expected to push the attribute value using <a href="../unity.scopes.PreviewReply.md#a9fc593618b83ec444fb6c9b2b298764a" title="Sends widget definitions to the sender of the preview query. ">unity::scopes::PreviewReply::push()</a>; otherwise, the value is automatically mapped from the result.

<span id="a42dd64704890d72bcc6ecbd7bccbfcd9" class="anchor"></span>
|                                                          |     |                                                                              |          |
|----------------------------------------------------------|-----|------------------------------------------------------------------------------|----------|
| void unity::scopes::PreviewWidget::add\_attribute\_value | (   | std::string const &                                                          | *key*,   |
|                                                          |     | <a href="unity.scopes.Variant.md">Variant</a> const &  | *value*  |
|                                                          | )   |                                                                              |          |

Adds an attribute definition and its value.

Parameters  
|       |                             |
|-------|-----------------------------|
| key   | The name of the attribute.  |
| value | The value of the attribute. |

<span id="a5607e323e7394cb8be842b79b5565205" class="anchor"></span>
|                                                |     |                                                            |          |     |     |
|------------------------------------------------|-----|------------------------------------------------------------|----------|-----|-----|
| void unity::scopes::PreviewWidget::add\_widget | (   | <a href="index.html">PreviewWidget</a> const &  | *widget* | )   |     |

Adds a widget into expandable widget.

Adds a widget into this widget, which needs to be of 'expandable' type. This method throws if adding a widget into any other widget type. Also, adding an 'expandable' widget into another 'expandable' is not allowed.

Exceptions  
|                       |                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------|
| unity::LogicException | if type of this widget is other than 'expandable', or when adding 'expandable' to 'expandable'. |

<span id="a8a1ac22266b8827c5c5dcbb74dc81568" class="anchor"></span>
|                                                                                            |     |     |     |       |
|--------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| std::map&lt;std::string, std::string&gt; unity::scopes::PreviewWidget::attribute\_mappings | (   |     | )   | const |

Get the components of this widget.

The returned map is a dictionary of (key, field name) pairs, as defined by calls to <a href="#a8bb890267a69dd6bb5ca70b663c75e74" title="Adds an attribute definition using a component mapping. ">add_attribute_mapping()</a>.

Returns  
The components map.

<span id="ac2ec5ecc111bc73aabb8ee5a27dcce9e" class="anchor"></span>
|                                                                                                                                                  |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::PreviewWidget::attribute\_values | (   |     | )   | const |

Get the attributes of this widget.

The returned map is a dictionary of (key, value) pairs, as defined by calls to <a href="#a42dd64704890d72bcc6ecbd7bccbfcd9" title="Adds an attribute definition and its value. ">add_attribute_value()</a>.

Returns  
The attribute map.

<span id="a5ef4058058119df35be51c992da2c2a4" class="anchor"></span>
|                                                |     |     |     |       |
|------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::PreviewWidget::data | (   |     | )   | const |

Get a JSON representation of this widget.

Returns  
The JSON string.

<span id="a7706a5249a547ac55d77e815b9fe84af" class="anchor"></span>
|                                              |     |     |     |       |
|----------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::PreviewWidget::id | (   |     | )   | const |

Get the identifier of this widget.

Returns  
The widget identifier.

<span id="ad3d85940faa7109a7736d3b2be66b65e" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::PreviewWidget::widget\_type | (   |     | )   | const |

Get type name of this widget.

Returns  
The widget type.

<span id="a879e64d5ee205b4db8cb6ab9b66d18ee" class="anchor"></span>
|                                                                                                                                               |     |     |     |       |
|-----------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> unity::scopes::PreviewWidget::widgets | (   |     | )   | const |

Get widgets of 'expandable' widget.

Returns the list of widget attached to this widget, which must be of 'expandable' type. This list is always empty for other widget types.

