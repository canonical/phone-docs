---
Title: unity.scopes.PreviewWidget
---

# unity.scopes.PreviewWidget

<p>A widget for a preview.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ace84578d55583c7c21f82d53ff6f0ed9"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ace84578d55583c7c21f82d53ff6f0ed9">PreviewWidget</a> (std::string const &amp;<a class="el" href="#a7706a5249a547ac55d77e815b9fe84af">id</a>, std::string const &amp;<a class="el" href="#ad3d85940faa7109a7736d3b2be66b65e">widget_type</a>)</td></tr>
<tr class="memdesc:ace84578d55583c7c21f82d53ff6f0ed9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create an empty widget definition with a specific id and type.  More...<br /></td></tr>
<tr class="separator:ace84578d55583c7c21f82d53ff6f0ed9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a751fd8b5f9eb0a921333b3a85cbc9518"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a751fd8b5f9eb0a921333b3a85cbc9518">PreviewWidget</a> (std::string const &amp;definition)</td></tr>
<tr class="memdesc:a751fd8b5f9eb0a921333b3a85cbc9518"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create a widget from a JSON definition.  More...<br /></td></tr>
<tr class="separator:a751fd8b5f9eb0a921333b3a85cbc9518"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a42dd64704890d72bcc6ecbd7bccbfcd9"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a42dd64704890d72bcc6ecbd7bccbfcd9">add_attribute_value</a> (std::string const &amp;key, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;value)</td></tr>
<tr class="memdesc:a42dd64704890d72bcc6ecbd7bccbfcd9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds an attribute definition and its value.  More...<br /></td></tr>
<tr class="separator:a42dd64704890d72bcc6ecbd7bccbfcd9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8bb890267a69dd6bb5ca70b663c75e74"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8bb890267a69dd6bb5ca70b663c75e74">add_attribute_mapping</a> (std::string const &amp;key, std::string const &amp;field_name)</td></tr>
<tr class="memdesc:a8bb890267a69dd6bb5ca70b663c75e74"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds an attribute definition using a component mapping.  More...<br /></td></tr>
<tr class="separator:a8bb890267a69dd6bb5ca70b663c75e74"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5607e323e7394cb8be842b79b5565205"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5607e323e7394cb8be842b79b5565205">add_widget</a> (<a class="el" href="index.html">PreviewWidget</a> const &amp;widget)</td></tr>
<tr class="memdesc:a5607e323e7394cb8be842b79b5565205"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds a widget into expandable widget.  More...<br /></td></tr>
<tr class="separator:a5607e323e7394cb8be842b79b5565205"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7706a5249a547ac55d77e815b9fe84af"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7706a5249a547ac55d77e815b9fe84af">id</a> () const </td></tr>
<tr class="memdesc:a7706a5249a547ac55d77e815b9fe84af"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the identifier of this widget.  More...<br /></td></tr>
<tr class="separator:a7706a5249a547ac55d77e815b9fe84af"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad3d85940faa7109a7736d3b2be66b65e"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad3d85940faa7109a7736d3b2be66b65e">widget_type</a> () const </td></tr>
<tr class="memdesc:ad3d85940faa7109a7736d3b2be66b65e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get type name of this widget.  More...<br /></td></tr>
<tr class="separator:ad3d85940faa7109a7736d3b2be66b65e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8a1ac22266b8827c5c5dcbb74dc81568"><td class="memItemLeft" align="right" valign="top">std::map&lt; std::string, std::string &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8a1ac22266b8827c5c5dcbb74dc81568">attribute_mappings</a> () const </td></tr>
<tr class="memdesc:a8a1ac22266b8827c5c5dcbb74dc81568"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the components of this widget.  More...<br /></td></tr>
<tr class="separator:a8a1ac22266b8827c5c5dcbb74dc81568"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac2ec5ecc111bc73aabb8ee5a27dcce9e"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac2ec5ecc111bc73aabb8ee5a27dcce9e">attribute_values</a> () const </td></tr>
<tr class="memdesc:ac2ec5ecc111bc73aabb8ee5a27dcce9e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the attributes of this widget.  More...<br /></td></tr>
<tr class="separator:ac2ec5ecc111bc73aabb8ee5a27dcce9e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a879e64d5ee205b4db8cb6ab9b66d18ee"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a879e64d5ee205b4db8cb6ab9b66d18ee">widgets</a> () const </td></tr>
<tr class="memdesc:a879e64d5ee205b4db8cb6ab9b66d18ee"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get widgets of 'expandable' widget.  More...<br /></td></tr>
<tr class="separator:a879e64d5ee205b4db8cb6ab9b66d18ee"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5ef4058058119df35be51c992da2c2a4"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5ef4058058119df35be51c992da2c2a4">data</a> () const </td></tr>
<tr class="memdesc:a5ef4058058119df35be51c992da2c2a4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get a JSON representation of this widget.  More...<br /></td></tr>
<tr class="separator:a5ef4058058119df35be51c992da2c2a4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a466b2062926b282bb868f5d495fd3b9d"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>PreviewWidget</b> (<a class="el" href="index.html">PreviewWidget</a> const &amp;other)</td></tr>
<tr class="separator:a466b2062926b282bb868f5d495fd3b9d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af66325a4864b5528eab33caeb7e92f5c"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>PreviewWidget</b> (<a class="el" href="index.html">PreviewWidget</a> &amp;&amp;other)</td></tr>
<tr class="separator:af66325a4864b5528eab33caeb7e92f5c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abaec071bf16877e4f48b31f6f68df3fa"><td class="memItemLeft" align="right" valign="top">
virtual&#160;</td><td class="memItemRight" valign="bottom"><b>~PreviewWidget</b> ()</td></tr>
<tr class="separator:abaec071bf16877e4f48b31f6f68df3fa"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa050506887bbd6a77d07575af1a83dca"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">PreviewWidget</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">PreviewWidget</a> const &amp;other)</td></tr>
<tr class="separator:aa050506887bbd6a77d07575af1a83dca"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8e255269e7729b285b92de111e6ea726"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">PreviewWidget</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">PreviewWidget</a> &amp;&amp;other)</td></tr>
<tr class="separator:a8e255269e7729b285b92de111e6ea726"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A widget for a preview. </p>
<p>This class describes an individual widget used when constructing a preview for a result item. Note that the data that applies to particular widget types is likely to change with different major versions of Unity; therefore, attributes are of type <a class="el" href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>, that is, loosely typed.</p>
<p>When Unity requests a preview for a particular result, the scope is expected to construct the preview by instantiating a <a class="el" href="index.html" title="A widget for a preview. ">PreviewWidget</a>. Each widget has a free-form id, a type, and a number of attributes whose names and types depend on the specific widget type (see <a class="el" href="previewwidgets.md">Preview Widgets</a>).</p>
<p>The attribute values can either be filled in directly before pushing the widget to Unity (using <a class="el" href="#a42dd64704890d72bcc6ecbd7bccbfcd9" title="Adds an attribute definition and its value. ">add_attribute_value()</a>), or they can be mapped from a result field in a similar fashion to the components mapping when specifying a <a class="el" href="unity.scopes.CategoryRenderer.md" title="A category renderer template in JSON format. ">CategoryRenderer</a> (see <a class="el" href="#a8bb890267a69dd6bb5ca70b663c75e74" title="Adds an attribute definition using a component mapping. ">add_attribute_mapping()</a>). When using <a class="el" href="#a8bb890267a69dd6bb5ca70b663c75e74" title="Adds an attribute definition using a component mapping. ">add_attribute_mapping()</a>, the corresponding attribute need not be present in the result; instead, its value can be pushed later using the <a class="el" href="unity.scopes.PreviewReply.md#a9fc593618b83ec444fb6c9b2b298764a" title="Sends widget definitions to the sender of the preview query. ">PreviewReply::push()</a> method, which accepts the name of the field and its value as a <a class="el" href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>.</p>
<p>Preview widget can also be created entirely from a JSON string. See the documentation of <a class="el" href="#a751fd8b5f9eb0a921333b3a85cbc9518" title="Create a widget from a JSON definition. ">unity::scopes::PreviewWidget::PreviewWidget(std::string const&amp;)</a> constructor for details.</p>
<p>Here is an example that creates a preview and illustrates three ways to associate a preview widget attribute with its value:</p>
```
<span class="keywordtype">void</span> MyPreview::run(<a class="code" href="unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754">PreviewReplyProxy</a> <span class="keyword">const</span>&amp; reply)
{
<a class="code" href="#ace84578d55583c7c21f82d53ff6f0ed9">PreviewWidget</a> w1(<span class="stringliteral">&quot;img&quot;</span>, <span class="stringliteral">&quot;image&quot;</span>);
<span class="comment">// directly specify source URI for the image widget</span>
w1.add_attribute_value(<span class="stringliteral">&quot;source&quot;</span>, Variant(<span class="stringliteral">&quot;http://www.example.org/graphics.png&quot;</span>));
<a class="code" href="#ace84578d55583c7c21f82d53ff6f0ed9">PreviewWidget</a> w2(<span class="stringliteral">&quot;hdr&quot;</span>, <span class="stringliteral">&quot;header&quot;</span>);
<span class="comment">// the result associated with this preview already had a title specified, so we&#39;ll just map it to the preview widget</span>
w2.add_attribute_mapping(<span class="stringliteral">&quot;title&quot;</span>, <span class="stringliteral">&quot;title&quot;</span>);
<span class="comment">// description is not present in the result, but we&#39;ll push it later</span>
w2.add_attribute_mapping(<span class="stringliteral">&quot;summary&quot;</span>, <span class="stringliteral">&quot;description&quot;</span>);
<a class="code" href="unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> <a class="code" href="#a879e64d5ee205b4db8cb6ab9b66d18ee">widgets</a>;
widgets.push_back(w1);
widgets.push_back(w2);
reply-&gt;push(widgets);
<span class="comment">// do a costly database lookup for the description</span>
std::string description = fetch_description(result().uri());
reply-&gt;push(<span class="stringliteral">&quot;description&quot;</span>, Variant(description));
}
```
 <h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::PreviewWidget::PreviewWidget </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>widget_type</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create an empty widget definition with a specific id and type. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>The unique widget identifier. </td></tr>
<tr><td class="paramname">widget_type</td><td>The type of the widget. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">unity::scopes::PreviewWidget::PreviewWidget </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>definition</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Create a widget from a JSON definition. </p>
<p>The JSON definition must be a dictionary that includes widget "id" and all the values of attributes required by desired <a class="el" href="previewwidgets.md">widget type</a>. For example, a definition of image widget may look as follows: </p>
```
<a class="code" href="#ace84578d55583c7c21f82d53ff6f0ed9">PreviewWidget</a> img(R<span class="stringliteral">&quot;({&quot;id&quot;: &quot;img&quot;, &quot;type&quot;: &quot;image&quot;, &quot;source&quot;: &quot;http://imageuri&quot;,</span>
<span class="stringliteral">                      &quot;fallback&quot;: &quot;file:///tmp/image.png&quot;})&quot;);</span>
```
<p>For cases where attribute mappings are to be used instead of direct values, they need to be enclosed in the "components" dictionary, e.g. </p>
```
<a class="code" href="#ace84578d55583c7c21f82d53ff6f0ed9">PreviewWidget</a> img(R<span class="stringliteral">&quot;({&quot;id&quot;: &quot;img&quot;, &quot;type&quot;: &quot;image&quot;, &quot;fallback&quot;: &quot;file:///tmp/image.png&quot;,</span>
<span class="stringliteral">                      &quot;components&quot;: { &quot;source&quot;: &quot;screenshot-url&quot; } })&quot;);</span>
```
<p> (this example assumes "screenshot-url" value is either available in the result object that's being previewed, or it will be pushed with <a class="el" href="unity.scopes.PreviewReply.md#a9fc593618b83ec444fb6c9b2b298764a" title="Sends widget definitions to the sender of the preview query. ">unity::scopes::PreviewReply::push()</a> method)</p>
<dl class="section note"><dt>Note</dt><dd>It is recommended to create widgets via <a class="el" href="index.html" title="A widget for a preview. ">unity::scopes::PreviewWidget(std::string const&amp;, std::string const&amp;)</a> constructor and <a class="el" href="#a42dd64704890d72bcc6ecbd7bccbfcd9" title="Adds an attribute definition and its value. ">unity::scopes::PreviewWidget::add_attribute_value()</a> / <a class="el" href="#a8bb890267a69dd6bb5ca70b663c75e74" title="Adds an attribute definition using a component mapping. ">unity::scopes::PreviewWidget::add_attribute_mapping()</a> methods, rather than via JSON definition.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">definition</td><td>The JSON definition. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::PreviewWidget::add_attribute_mapping </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>field_name</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Adds an attribute definition using a component mapping. </p>
<p>If an attribute value is either not known, or the value is already present in a result field, this method creates a mapping between the attribute name and given the field name.</p>
<p>If an attribute value is not known, the scope is expected to push the attribute value using <a class="el" href="unity.scopes.PreviewReply.md#a9fc593618b83ec444fb6c9b2b298764a" title="Sends widget definitions to the sender of the preview query. ">unity::scopes::PreviewReply::push()</a>; otherwise, the value is automatically mapped from the result. </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::PreviewWidget::add_attribute_value </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>value</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Adds an attribute definition and its value. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the attribute. </td></tr>
<tr><td class="paramname">value</td><td>The value of the attribute. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::PreviewWidget::add_widget </td>
<td>(</td>
<td class="paramtype"><a class="el" href="index.html">PreviewWidget</a> const &amp;&#160;</td>
<td class="paramname"><em>widget</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Adds a widget into expandable widget. </p>
<p>Adds a widget into this widget, which needs to be of 'expandable' type. This method throws if adding a widget into any other widget type. Also, adding an 'expandable' widget into another 'expandable' is not allowed.</p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if type of this widget is other than 'expandable', or when adding 'expandable' to 'expandable'. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">std::map&lt;std::string, std::string&gt; unity::scopes::PreviewWidget::attribute_mappings </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the components of this widget. </p>
<p>The returned map is a dictionary of (key, field name) pairs, as defined by calls to <a class="el" href="#a8bb890267a69dd6bb5ca70b663c75e74" title="Adds an attribute definition using a component mapping. ">add_attribute_mapping()</a>. </p><dl class="section return"><dt>Returns</dt><dd>The components map. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::PreviewWidget::attribute_values </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the attributes of this widget. </p>
<p>The returned map is a dictionary of (key, value) pairs, as defined by calls to <a class="el" href="#a42dd64704890d72bcc6ecbd7bccbfcd9" title="Adds an attribute definition and its value. ">add_attribute_value()</a>. </p><dl class="section return"><dt>Returns</dt><dd>The attribute map. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::PreviewWidget::data </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get a JSON representation of this widget. </p>
<dl class="section return"><dt>Returns</dt><dd>The JSON string. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::PreviewWidget::id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the identifier of this widget. </p>
<dl class="section return"><dt>Returns</dt><dd>The widget identifier. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::PreviewWidget::widget_type </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get type name of this widget. </p>
<dl class="section return"><dt>Returns</dt><dd>The widget type. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> unity::scopes::PreviewWidget::widgets </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get widgets of 'expandable' widget. </p>
<p>Returns the list of widget attached to this widget, which must be of 'expandable' type. This list is always empty for other widget types. </p>
