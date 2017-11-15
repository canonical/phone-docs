---
Title: unity.scopes.qt.QPreviewWidget
---

# unity.scopes.qt.QPreviewWidget

<p>Widget used in Preview.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QPreviewWidget.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:aba81db48085e0528f1112941fb547c4a"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aba81db48085e0528f1112941fb547c4a">QPreviewWidget</a> (QString const &amp;<a class="el" href="#a3b230204123aa720d925f85fd51425a0">id</a>, QString const &amp;<a class="el" href="#a600705e26341af0ef375830665462a47">widget_type</a>)</td></tr>
<tr class="memdesc:aba81db48085e0528f1112941fb547c4a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create an empty widget definition with a specific id and type.  More...<br /></td></tr>
<tr class="separator:aba81db48085e0528f1112941fb547c4a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3b1daf6806081a727875ce0f4384f612"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3b1daf6806081a727875ce0f4384f612">QPreviewWidget</a> (QString const &amp;definition)</td></tr>
<tr class="memdesc:a3b1daf6806081a727875ce0f4384f612"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create a widget from a JSON definition.  More...<br /></td></tr>
<tr class="separator:a3b1daf6806081a727875ce0f4384f612"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a708df5ca5097de8f6b81a71958cf9b75"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a708df5ca5097de8f6b81a71958cf9b75">add_attribute_value</a> (QString const &amp;key, QVariant const &amp;value)</td></tr>
<tr class="memdesc:a708df5ca5097de8f6b81a71958cf9b75"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds an attribute definition and its value.  More...<br /></td></tr>
<tr class="separator:a708df5ca5097de8f6b81a71958cf9b75"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7ebeecb9c8cc66f871692bd19eb8cfe6"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7ebeecb9c8cc66f871692bd19eb8cfe6">add_attribute_mapping</a> (QString const &amp;key, QString const &amp;field_name)</td></tr>
<tr class="memdesc:a7ebeecb9c8cc66f871692bd19eb8cfe6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds an attribute definition using a component mapping.  More...<br /></td></tr>
<tr class="separator:a7ebeecb9c8cc66f871692bd19eb8cfe6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae9d8c0c5d81c827b84cda80df49dc70e"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae9d8c0c5d81c827b84cda80df49dc70e">add_widget</a> (<a class="el" href="index.html">QPreviewWidget</a> const &amp;widget)</td></tr>
<tr class="memdesc:ae9d8c0c5d81c827b84cda80df49dc70e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds a widget into expandable widget.  More...<br /></td></tr>
<tr class="separator:ae9d8c0c5d81c827b84cda80df49dc70e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3b230204123aa720d925f85fd51425a0"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3b230204123aa720d925f85fd51425a0">id</a> () const </td></tr>
<tr class="memdesc:a3b230204123aa720d925f85fd51425a0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the identifier of this widget.  More...<br /></td></tr>
<tr class="separator:a3b230204123aa720d925f85fd51425a0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a600705e26341af0ef375830665462a47"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a600705e26341af0ef375830665462a47">widget_type</a> () const </td></tr>
<tr class="memdesc:a600705e26341af0ef375830665462a47"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get type name of this widget.  More...<br /></td></tr>
<tr class="separator:a600705e26341af0ef375830665462a47"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae6d2278216cc638cc8869e12fdf619fc"><td class="memItemLeft" align="right" valign="top">QMap&lt; QString, QString &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae6d2278216cc638cc8869e12fdf619fc">attribute_mappings</a> () const </td></tr>
<tr class="memdesc:ae6d2278216cc638cc8869e12fdf619fc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the components of this widget.  More...<br /></td></tr>
<tr class="separator:ae6d2278216cc638cc8869e12fdf619fc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1af3433d81deca2a1c5de44cec693412"><td class="memItemLeft" align="right" valign="top">QVariantMap&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1af3433d81deca2a1c5de44cec693412">attribute_values</a> () const </td></tr>
<tr class="memdesc:a1af3433d81deca2a1c5de44cec693412"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the attributes of this widget.  More...<br /></td></tr>
<tr class="separator:a1af3433d81deca2a1c5de44cec693412"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5732c60c89fa86e08e86fd62f5649ce3"><td class="memItemLeft" align="right" valign="top">QPreviewWidgetList&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5732c60c89fa86e08e86fd62f5649ce3">widgets</a> () const </td></tr>
<tr class="memdesc:a5732c60c89fa86e08e86fd62f5649ce3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get widgets of 'expandable' widget.  More...<br /></td></tr>
<tr class="separator:a5732c60c89fa86e08e86fd62f5649ce3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4be99753312de446095968767eb46bbe"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4be99753312de446095968767eb46bbe">data</a> () const </td></tr>
<tr class="memdesc:a4be99753312de446095968767eb46bbe"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get a JSON representation of this widget.  More...<br /></td></tr>
<tr class="separator:a4be99753312de446095968767eb46bbe"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a228a3abdf00a12f5cac5029b205d02f7"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QPreviewWidget</b> (<a class="el" href="index.html">QPreviewWidget</a> const &amp;other)</td></tr>
<tr class="separator:a228a3abdf00a12f5cac5029b205d02f7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2a3fb53132bd8b95a940ca578884272f"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QPreviewWidget</b> (<a class="el" href="index.html">QPreviewWidget</a> &amp;&amp;other)</td></tr>
<tr class="separator:a2a3fb53132bd8b95a940ca578884272f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3afac99e8aaa19b3577207f63a8a49da"><td class="memItemLeft" align="right" valign="top">
virtual&#160;</td><td class="memItemRight" valign="bottom"><b>~QPreviewWidget</b> ()</td></tr>
<tr class="separator:a3afac99e8aaa19b3577207f63a8a49da"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9f487047c014f513991ec60646d6e022"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QPreviewWidget</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QPreviewWidget</a> const &amp;other)</td></tr>
<tr class="separator:a9f487047c014f513991ec60646d6e022"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3d62fdca3306ce911ad3507077b86b89"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QPreviewWidget</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QPreviewWidget</a> &amp;&amp;other)</td></tr>
<tr class="separator:a3d62fdca3306ce911ad3507077b86b89"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Widget used in Preview. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::qt::QPreviewWidget::QPreviewWidget </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QString const &amp;&#160;</td>
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
<td class="memname">unity::scopes::qt::QPreviewWidget::QPreviewWidget </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>definition</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Create a widget from a JSON definition. </p>
<p>The JSON definition must be a dictionary that includes widget "id" and all the values of attributes required by desired <a class="el" href="index.html">widget type</a>. For example, a definition of image widget may look as follows: </p>
```
PreviewWidget img(R<span class="stringliteral">&quot;({&quot;id&quot;: &quot;img&quot;, &quot;type&quot;: &quot;image&quot;, &quot;source&quot;: &quot;http://imageuri&quot;})&quot;);</span>
```
<p>For cases where attribute mappings are to be used instead of direct values, they need to be enclosed in the "components" dictionary, e.g. </p>
```
PreviewWidget img(R<span class="stringliteral">&quot;({&quot;id&quot;: &quot;img&quot;, &quot;type&quot;: &quot;image&quot;, &quot;components&quot;: { &quot;source&quot;: &quot;screenshot-url&quot; } })&quot;);</span>
```
<p> (this example assumes "screenshot-url" value is either available in the result object that's being previewed, or it will be pushed with <a class="el" href="unity.scopes.PreviewReply.md#a9fc593618b83ec444fb6c9b2b298764a" title="Sends widget definitions to the sender of the preview query. ">unity::scopes::PreviewReply::push()</a> method)</p>
<dl class="section note"><dt>Note</dt><dd>It is recommended to create widgets via <a class="el" href="unity.scopes.PreviewWidget.md" title="A widget for a preview. ">unity::scopes::PreviewWidget(QString const&amp;, QString const&amp;)</a> constructor and <a class="el" href="unity.scopes.PreviewWidget.md#a42dd64704890d72bcc6ecbd7bccbfcd9" title="Adds an attribute definition and its value. ">unity::scopes::PreviewWidget::add_attribute_value()</a> / <a class="el" href="unity.scopes.PreviewWidget.md#a8bb890267a69dd6bb5ca70b663c75e74" title="Adds an attribute definition using a component mapping. ">unity::scopes::PreviewWidget::add_attribute_mapping()</a> methods, rather than via JSON definition.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">definition</td><td>The JSON definition. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::qt::QPreviewWidget::add_attribute_mapping </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QString const &amp;&#160;</td>
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
<td class="memname">void unity::scopes::qt::QPreviewWidget::add_attribute_value </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>key</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QVariant const &amp;&#160;</td>
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
<td class="memname">void unity::scopes::qt::QPreviewWidget::add_widget </td>
<td>(</td>
<td class="paramtype"><a class="el" href="index.html">QPreviewWidget</a> const &amp;&#160;</td>
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
<td class="memname">QMap&lt;QString, QString&gt; unity::scopes::qt::QPreviewWidget::attribute_mappings </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the components of this widget. </p>
<p>The returned map is a dictionary of (key, field name) pairs, as defined by calls to <a class="el" href="#a7ebeecb9c8cc66f871692bd19eb8cfe6" title="Adds an attribute definition using a component mapping. ">add_attribute_mapping()</a>. </p><dl class="section return"><dt>Returns</dt><dd>The components map. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QVariantMap unity::scopes::qt::QPreviewWidget::attribute_values </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the attributes of this widget. </p>
<p>The returned map is a dictionary of (key, value) pairs, as defined by calls to <a class="el" href="#a708df5ca5097de8f6b81a71958cf9b75" title="Adds an attribute definition and its value. ">add_attribute_value()</a>. </p><dl class="section return"><dt>Returns</dt><dd>The attribute map. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QString unity::scopes::qt::QPreviewWidget::data </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get a JSON representation of this widget. </p>
<dl class="section return"><dt>Returns</dt><dd>The JSON string. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QString unity::scopes::qt::QPreviewWidget::id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the identifier of this widget. </p>
<dl class="section return"><dt>Returns</dt><dd>The widget identifier. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QString unity::scopes::qt::QPreviewWidget::widget_type </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get type name of this widget. </p>
<dl class="section return"><dt>Returns</dt><dd>The widget type. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QPreviewWidgetList unity::scopes::qt::QPreviewWidget::widgets </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get widgets of 'expandable' widget. </p>
<p>Returns the list of widget attached to this widget, which must be of 'expandable' type. This list is always empty for other widget types. </p>
