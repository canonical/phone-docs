---
Title: unity.scopes.ColumnLayout
---

# unity.scopes.ColumnLayout

<p>Defines a layout for preview widgets with given column setup.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ac93fd7c6681f2013b4dcf2ed16f95401"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac93fd7c6681f2013b4dcf2ed16f95401">ColumnLayout</a> (int num_of_columns)</td></tr>
<tr class="memdesc:ac93fd7c6681f2013b4dcf2ed16f95401"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a layout definition that expects num_of_columns columns to be added with ColumnLayout::add_column.  More...<br /></td></tr>
<tr class="separator:ac93fd7c6681f2013b4dcf2ed16f95401"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0a8db9f2725f9c56f8639c55412d931d"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0a8db9f2725f9c56f8639c55412d931d">add_column</a> (std::vector&lt; std::string &gt; widget_ids)</td></tr>
<tr class="memdesc:a0a8db9f2725f9c56f8639c55412d931d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds a new column and assigns widgets to it.  More...<br /></td></tr>
<tr class="separator:a0a8db9f2725f9c56f8639c55412d931d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abd5129b6d56ad2aaaeb4f454f13176dd"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#abd5129b6d56ad2aaaeb4f454f13176dd">size</a> () const noexcept</td></tr>
<tr class="memdesc:abd5129b6d56ad2aaaeb4f454f13176dd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the current number of columns in this layout.  More...<br /></td></tr>
<tr class="separator:abd5129b6d56ad2aaaeb4f454f13176dd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3213620bbddcab29eb32a2eeff2bb8dd"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3213620bbddcab29eb32a2eeff2bb8dd">number_of_columns</a> () const noexcept</td></tr>
<tr class="memdesc:a3213620bbddcab29eb32a2eeff2bb8dd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the number of columns expected by this layout as specified in the constructor.  More...<br /></td></tr>
<tr class="separator:a3213620bbddcab29eb32a2eeff2bb8dd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7457b565bd76d573f40241450a1f839f"><td class="memItemLeft" align="right" valign="top">std::vector&lt; std::string &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7457b565bd76d573f40241450a1f839f">column</a> (int index) const </td></tr>
<tr class="memdesc:a7457b565bd76d573f40241450a1f839f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Retrieve the list of widgets for given column.  More...<br /></td></tr>
<tr class="separator:a7457b565bd76d573f40241450a1f839f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:af25196f2f8669562ea6e152f795a622e"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ColumnLayout</b> (<a class="el" href="index.html">ColumnLayout</a> const &amp;other)</td></tr>
<tr class="separator:af25196f2f8669562ea6e152f795a622e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a90afaddfd9755111f8597ea1eb52a848"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ColumnLayout</b> (<a class="el" href="index.html">ColumnLayout</a> &amp;&amp;)</td></tr>
<tr class="separator:a90afaddfd9755111f8597ea1eb52a848"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a79e1e48d41d2cd488c54fa530dbea61c"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ColumnLayout</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ColumnLayout</a> const &amp;other)</td></tr>
<tr class="separator:a79e1e48d41d2cd488c54fa530dbea61c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae061d682fbaa89b0ed4f75ebf6d0972d"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ColumnLayout</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ColumnLayout</a> &amp;&amp;)</td></tr>
<tr class="separator:ae061d682fbaa89b0ed4f75ebf6d0972d"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Defines a layout for preview widgets with given column setup. </p>
<p><a class="el" href="index.html" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> defines how widgets should be laid out on a display with a given number of columns. In typical use cases, a scope creates <a class="el" href="index.html" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> instances for all supported displays (number of columns), and defines for every instance what widgets belong to which columns. The shell uses the layout that is most appropriate for the device in use. Column layout definitions are optional. However, we recommend that scopes define layouts for the best visual appearance.</p>
<p>An example of creating two layouts, one for a screen with one column and and one for a screen with two columns.</p>
```
<span class="keywordtype">void</span> MyPreview::run(<a class="code" href="unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754">PreviewReplyProxy</a> <span class="keyword">const</span>&amp; reply)
<span class="comment">// layout definition for a screen with just 1 column</span>
<a class="code" href="#ac93fd7c6681f2013b4dcf2ed16f95401">ColumnLayout</a> layout1col(1);
layout1col.add_column({<span class="stringliteral">&quot;art&quot;</span>, <span class="stringliteral">&quot;header&quot;</span>, <span class="stringliteral">&quot;actions&quot;</span>}); <span class="comment">// all widgets in a single column</span>
<span class="comment">// layout definition for a screen with 2 columns</span>
<a class="code" href="#ac93fd7c6681f2013b4dcf2ed16f95401">ColumnLayout</a> layout2col(2);
layout2col.add_column({<span class="stringliteral">&quot;art&quot;</span>});  <span class="comment">// widget in 1st column</span>
layout2col.add_column({<span class="stringliteral">&quot;header&quot;</span>, <span class="stringliteral">&quot;actions&quot;</span>}); <span class="comment">// widgets in 2nd column</span>
reply-&gt;register_layout({layout1col, layout2col});
<span class="comment">// create widgets</span>
PreviewWidget w1(<span class="stringliteral">&quot;art&quot;</span>, <span class="stringliteral">&quot;image&quot;</span>);
...
```
 <h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">unity::scopes::ColumnLayout::ColumnLayout </td>
<td>(</td>
<td class="paramtype">int&#160;</td>
<td class="paramname"><em>num_of_columns</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">explicit</span></span>  </td>
</tr>
</table>
<p>Creates a layout definition that expects num_of_columns columns to be added with <a class="el" href="#a0a8db9f2725f9c56f8639c55412d931d" title="Adds a new column and assigns widgets to it. ">ColumnLayout::add_column</a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">num_of_columns</td><td>The number of columns for the layout. </td></tr>
</table>
</dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>for an invalid number of columns. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ColumnLayout::add_column </td>
<td>(</td>
<td class="paramtype">std::vector&lt; std::string &gt;&#160;</td>
<td class="paramname"><em>widget_ids</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Adds a new column and assigns widgets to it. </p>
<p><a class="el" href="index.html" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> expects exactly the number of columns passed to the constructor to be created with the add_column method. </p><dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if an attempt is made to add more columns than specified in the constructor. </td></tr>
<tr><td class="paramname">unity::LogicException</td><td>from <a class="el" href="unity.scopes.PreviewReply.md#a16a757d821bd3792d1a69112b1f13964">unity::scopes::PreviewReply::register_layout</a> if a layout has fewer columns than specified in the constructor. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">std::vector&lt; std::string &gt; unity::scopes::ColumnLayout::column </td>
<td>(</td>
<td class="paramtype">int&#160;</td>
<td class="paramname"><em>index</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Retrieve the list of widgets for given column. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">index</td><td>The index of a column. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The widget identifiers for the given column index. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>if the index is invalid. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">int unity::scopes::ColumnLayout::number_of_columns </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the number of columns expected by this layout as specified in the constructor. </p>
<dl class="section return"><dt>Returns</dt><dd>The number of columns expected by this layout. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">int unity::scopes::ColumnLayout::size </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the current number of columns in this layout. </p>
<dl class="section return"><dt>Returns</dt><dd>The number of columns added with <a class="el" href="#a0a8db9f2725f9c56f8639c55412d931d" title="Adds a new column and assigns widgets to it. ">add_column()</a>. </dd></dl>
