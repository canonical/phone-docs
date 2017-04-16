---
Title: ScopeJS.PreviewWidget
---

# ScopeJS.PreviewWidget

<p>A widget for a preview.</p>
<ul>
<li>Methods</li>
</ul>
<div>
<strong class="name"><code>add_attribute_mapping</code></strong>( <code>key, value </code> ) 
<br>
<p>Adds an attribute definition using a component mapping</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>key</code> <strong>&lt;String&gt;</strong>
<p>Attribute definition</p>
</li>
<li>
<code>value</code> <strong>&lt;String&gt;</strong>
<p>Value</p>
</li>
</ul>
<strong class="name"><code>add_attribute_value</code></strong>( <code>key, value </code> ) 
<br>
<p>Adds an attribute definition and its value</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>key</code> <strong>&lt;String&gt;</strong>
<p>Attribute definition</p>
</li>
<li>
<code>value</code> <strong>&lt;String&gt;</strong>
<p>, {Number}, {Object}. The value can be a string, number, object</p>
</li>
</ul>
<strong class="name"><code>add_widget</code></strong>( <code>widget </code> ) 
<br>
<p>Adds a widget into expandable widget</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>widget</code> <strong>&lt;<a href="index.html">PreviewWidget</a>&gt;</strong>
<p>The widget that needs to be added</p>
</li>
</ul>
<strong class="name"><code>attribute_mappings</code></strong>( <code>  </code> ) 
<br>
<p>Get the components of this widget</p>
<br><strong>Returns:</strong> <p>Dictionary of widget components</p>
<strong class="name"><code>attribute_values</code></strong>( <code>  </code> ) 
<br>
<p>Get the attributes of this widget</p>
<br><strong>Returns:</strong> <p>Object corresponding to attributes of this widget</p>
<strong class="name"><code>data</code></strong>( <code>  </code> ) 
<br>
<p>Get a JSON representation of this widget</p>
<br><strong>Returns:</strong> <p>String representation of widget</p>
String <strong class="name"><code>id</code></strong>( <code>  </code> ) 
<br>
<p>Get the identifier of this widget</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>Id</p>
String <strong class="name"><code>widget_type</code></strong>( <code>  </code> ) 
<br>
<p>Get type name of this widget</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>Widget type</p>
<strong class="name"><code>widgets</code></strong>( <code>  </code> ) 
<br>
<p>Get widgets of 'expandable' widget</p>
<br><strong>Returns:</strong> <p>List of PreviewWidget</p>
