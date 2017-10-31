---
Title: unity.scopes.VariantBuilder
---

# unity.scopes.VariantBuilder

<p>Helper class for creating and populating <a class="el" href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> containers.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/VariantBuilder.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a6636c251658079d95b2c9da9fac297d5"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6636c251658079d95b2c9da9fac297d5">add_tuple</a> (std::initializer_list&lt; std::pair&lt; std::string, <a class="el" href="unity.scopes.Variant.md">Variant</a> &gt;&gt; const &amp;tuple)</td></tr>
<tr class="memdesc:a6636c251658079d95b2c9da9fac297d5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds a tuple of key-value pairs to an array.  More...<br /></td></tr>
<tr class="separator:a6636c251658079d95b2c9da9fac297d5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aea54406435e03542d10da70cd04a6b80"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aea54406435e03542d10da70cd04a6b80">add_tuple</a> (std::vector&lt; std::pair&lt; std::string, <a class="el" href="unity.scopes.Variant.md">Variant</a> &gt;&gt; const &amp;tuple)</td></tr>
<tr class="memdesc:aea54406435e03542d10da70cd04a6b80"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds a tuple of key-value pairs to an array.  More...<br /></td></tr>
<tr class="separator:aea54406435e03542d10da70cd04a6b80"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abc6c1133cffc6730df7470185460e802"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#abc6c1133cffc6730df7470185460e802">end</a> ()</td></tr>
<tr class="memdesc:abc6c1133cffc6730df7470185460e802"><td class="mdescLeft">&#160;</td><td class="mdescRight">Retrieves a completed variant.  More...<br /></td></tr>
<tr class="separator:abc6c1133cffc6730df7470185460e802"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a454b3668e3638bab21dba637ed2bc024"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>VariantBuilder</b> (<a class="el" href="index.html">VariantBuilder</a> const &amp;other)</td></tr>
<tr class="separator:a454b3668e3638bab21dba637ed2bc024"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8cec9964e9837d3685d339ceb7852404"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>VariantBuilder</b> (<a class="el" href="index.html">VariantBuilder</a> &amp;&amp;other)</td></tr>
<tr class="separator:a8cec9964e9837d3685d339ceb7852404"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6f3f9a796ad583e2c66b25637d60b45b"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">VariantBuilder</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">VariantBuilder</a> const &amp;other)</td></tr>
<tr class="separator:a6f3f9a796ad583e2c66b25637d60b45b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acf76f6ae2481c10c016abb2ae827a6d1"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">VariantBuilder</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">VariantBuilder</a> &amp;&amp;other)</td></tr>
<tr class="separator:acf76f6ae2481c10c016abb2ae827a6d1"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Helper class for creating and populating <a class="el" href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> containers. </p>
<p>The main purpose of this class is to ease creation of variant containers needed for <a class="el" href="unity.scopes.PreviewWidget.md" title="A widget for a preview. ">PreviewWidget</a> instances or any other classes that require non-trivial variant definitions.</p>
<p>For example, the value of the "rating" key of the following JSON template </p>
```
{
<span class="stringliteral">&quot;type&quot;</span>: <span class="stringliteral">&quot;reviews&quot;</span>,
...
<span class="stringliteral">&quot;reviews&quot;</span>: [{<span class="stringliteral">&quot;rating&quot;</span>: null, <span class="stringliteral">&quot;review&quot;</span>: null, <span class="stringliteral">&quot;author&quot;</span>: null}]
}
```
<p>can be created with <a class="el" href="index.html" title="Helper class for creating and populating Variant containers. ">VariantBuilder</a> as follows:</p>
```
VariantBuilder builder;
builder.add_tuple({{<span class="stringliteral">&quot;rating&quot;</span>, <a class="code" href="unity.scopes.Variant.md#a2bd2d5425fdec9af9340c22e3b47ac1c">Variant::null</a>())}, {<span class="stringliteral">&quot;review&quot;</span>, <a class="code" href="unity.scopes.Variant.md#a2bd2d5425fdec9af9340c22e3b47ac1c">Variant::null</a>()}, {<span class="stringliteral">&quot;author&quot;</span>, <a class="code" href="unity.scopes.Variant.md#a2bd2d5425fdec9af9340c22e3b47ac1c">Variant::null</a>()}});
```
 <h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::VariantBuilder::add_tuple </td>
<td>(</td>
<td class="paramtype">std::initializer_list&lt; std::pair&lt; std::string, <a class="el" href="unity.scopes.Variant.md">Variant</a> &gt;&gt; const &amp;&#160;</td>
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
VariantBuilder builder;
builder.add_tuple({{<span class="stringliteral">&quot;a&quot;</span>, Variant(1)}, {<span class="stringliteral">&quot;b&quot;</span>, Variant(2)}});
builder.add_tuple({{<span class="stringliteral">&quot;c&quot;</span>, Variant(2)}, {<span class="stringliteral">&quot;d&quot;</span>, Variant(3)}});
```
 
<table class="memname">
<tr>
<td class="memname">void unity::scopes::VariantBuilder::add_tuple </td>
<td>(</td>
<td class="paramtype">std::vector&lt; std::pair&lt; std::string, <a class="el" href="unity.scopes.Variant.md">Variant</a> &gt;&gt; const &amp;&#160;</td>
<td class="paramname"><em>tuple</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Adds a tuple of key-value pairs to an array. </p>
<p>This is an overloaded version of add_tuple that accepts <code>std::vector</code> instead of <code>std::initializer_list</code>, making it more convenient for language bindings. </p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> unity::scopes::VariantBuilder::end </td>
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
