---
Title: unity.scopes.qt.QVariantBuilder
---

# unity.scopes.qt.QVariantBuilder

<p>Helper class for creating and populating QVariant containers.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QVariantBuilder.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a379142f075b92183acf729798ebc5794"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a379142f075b92183acf729798ebc5794">add_tuple</a> (std::initializer_list&lt; QPair&lt; QString, QVariant &gt;&gt; const &amp;tuple)</td></tr>
<tr class="memdesc:a379142f075b92183acf729798ebc5794"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds a tuple of key-value pairs to an array.  More...<br /></td></tr>
<tr class="separator:a379142f075b92183acf729798ebc5794"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0fd901e8b0b1c7f6e78a993fd445b55c"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0fd901e8b0b1c7f6e78a993fd445b55c">add_tuple</a> (QVector&lt; QPair&lt; QString, QVariant &gt;&gt; const &amp;tuple)</td></tr>
<tr class="memdesc:a0fd901e8b0b1c7f6e78a993fd445b55c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds a tuple of key-value pairs to an array.  More...<br /></td></tr>
<tr class="separator:a0fd901e8b0b1c7f6e78a993fd445b55c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aaf11b857f040eb86cda244190166ee5b"><td class="memItemLeft" align="right" valign="top">QVariant&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aaf11b857f040eb86cda244190166ee5b">end</a> ()</td></tr>
<tr class="memdesc:aaf11b857f040eb86cda244190166ee5b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Retrieves a completed variant.  More...<br /></td></tr>
<tr class="separator:aaf11b857f040eb86cda244190166ee5b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a474722a60f44d9f87a179886a6d5e1d1"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QVariantBuilder</b> (<a class="el" href="index.html">QVariantBuilder</a> const &amp;other)</td></tr>
<tr class="separator:a474722a60f44d9f87a179886a6d5e1d1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab62b7a962a21a0b8daf4f26dd3ed9eff"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QVariantBuilder</b> (<a class="el" href="index.html">QVariantBuilder</a> &amp;&amp;other)</td></tr>
<tr class="separator:ab62b7a962a21a0b8daf4f26dd3ed9eff"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a518e03d274974a1a9c1ebfd16b442e52"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QVariantBuilder</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QVariantBuilder</a> const &amp;other)</td></tr>
<tr class="separator:a518e03d274974a1a9c1ebfd16b442e52"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa6b5bad450dd93f51625562f985df799"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QVariantBuilder</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QVariantBuilder</a> &amp;&amp;other)</td></tr>
<tr class="separator:aa6b5bad450dd93f51625562f985df799"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Helper class for creating and populating QVariant containers. </p>
<p>The main purpose of this class is to ease creation of variant containers needed for <a class="el" href="unity.scopes.qt.QPreviewWidget.md" title="Widget used in Preview. ">QPreviewWidget</a> instances or any other classes that require non-trivial variant definitions.</p>
<p>For example, the value of the "rating" key of the following JSON template </p>
```
{
<span class="stringliteral">&quot;type&quot;</span>: <span class="stringliteral">&quot;reviews&quot;</span>,
...
<span class="stringliteral">&quot;reviews&quot;</span>: [{<span class="stringliteral">&quot;rating&quot;</span>: null, <span class="stringliteral">&quot;review&quot;</span>: null, <span class="stringliteral">&quot;author&quot;</span>: null}]
}
```
<p>can be created with <a class="el" href="index.html" title="Helper class for creating and populating QVariant containers. ">QVariantBuilder</a> as follows:</p>
```
VariantBuilder builder;
builder.add_tuple({{<span class="stringliteral">&quot;rating&quot;</span>, QVariant()}, {<span class="stringliteral">&quot;review&quot;</span>, QVariant()}, {<span class="stringliteral">&quot;author&quot;</span>, QVariant()}});
```
 <h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">void QVariantBuilder::add_tuple </td>
<td>(</td>
<td class="paramtype">std::initializer_list&lt; QPair&lt; QString, QVariant &gt;&gt; const &amp;&#160;</td>
<td class="paramname"><em>tuple</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Adds a tuple of key-value pairs to an array. </p>
<p>It can be used multiple times to create an array of tuples, for example: </p>
```
[{<span class="stringliteral">&quot;a&quot;</span>: 1, <span class="stringliteral">&quot;b&quot;</span>: 2}, {<span class="stringliteral">&quot;c&quot;</span>: 2, <span class="stringliteral">&quot;d&quot;</span> : 3}]
```
<p> can be created with: </p>
```
QVariantBuilder builder;
builder.add_tuple({{<span class="stringliteral">&quot;a&quot;</span>, QVariant(1)}, {<span class="stringliteral">&quot;b&quot;</span>, QVariant(2)}});
builder.add_tuple({{<span class="stringliteral">&quot;c&quot;</span>, QVariant(2)}, {<span class="stringliteral">&quot;d&quot;</span>, QVariant(3)}});
```
 
<table class="memname">
<tr>
<td class="memname">void QVariantBuilder::add_tuple </td>
<td>(</td>
<td class="paramtype">QVector&lt; QPair&lt; QString, QVariant &gt;&gt; const &amp;&#160;</td>
<td class="paramname"><em>tuple</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Adds a tuple of key-value pairs to an array. </p>
<p>This is an overloaded version of add_tuple that accepts <code>QVector</code> instead of <code>std::initializer_list</code>. </p>
<table class="memname">
<tr>
<td class="memname">QVariant QVariantBuilder::end </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Retrieves a completed variant. </p>
<p>Returns the completed variant and resets this builder, so the builder can be re-used. </p><dl class="section return"><dt>Returns</dt><dd>The completed variant. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if the builder does not hold a variant. </td></tr>
</table>
</dd>
</dl>
