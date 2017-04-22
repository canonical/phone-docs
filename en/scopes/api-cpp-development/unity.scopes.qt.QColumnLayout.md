---
Title: unity.scopes.qt.QColumnLayout
---

# unity.scopes.qt.QColumnLayout

<p>Represents a column layout.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QColumnLayout.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a89f72698ef94dd4db26d286df0e5eb05"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a89f72698ef94dd4db26d286df0e5eb05">QColumnLayout</a> (int num_of_columns)</td></tr>
<tr class="memdesc:a89f72698ef94dd4db26d286df0e5eb05"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a layout definition that expects num_of_columns columns to be added with ColumnLayout::add_column.  More...<br /></td></tr>
<tr class="separator:a89f72698ef94dd4db26d286df0e5eb05"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad7e3e39240dc8dc5a24cbe19235a0752"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad7e3e39240dc8dc5a24cbe19235a0752">add_column</a> (QVector&lt; QString &gt; widget_ids)</td></tr>
<tr class="memdesc:ad7e3e39240dc8dc5a24cbe19235a0752"><td class="mdescLeft">&#160;</td><td class="mdescRight">Adds a new column and assigns widgets to it.  More...<br /></td></tr>
<tr class="separator:ad7e3e39240dc8dc5a24cbe19235a0752"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af062c78bd61aad7d0bfa03b8b06f7f20"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af062c78bd61aad7d0bfa03b8b06f7f20">size</a> () const noexcept</td></tr>
<tr class="memdesc:af062c78bd61aad7d0bfa03b8b06f7f20"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the current number of columns in this layout.  More...<br /></td></tr>
<tr class="separator:af062c78bd61aad7d0bfa03b8b06f7f20"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5a989ce965336941a2e24fcd763f0596"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5a989ce965336941a2e24fcd763f0596">number_of_columns</a> () const noexcept</td></tr>
<tr class="memdesc:a5a989ce965336941a2e24fcd763f0596"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the number of columns expected by this layout as specified in the constructor.  More...<br /></td></tr>
<tr class="separator:a5a989ce965336941a2e24fcd763f0596"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afa169274d04b70956761ca55451e5921"><td class="memItemLeft" align="right" valign="top">QVector&lt; QString &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afa169274d04b70956761ca55451e5921">column</a> (int index) const </td></tr>
<tr class="memdesc:afa169274d04b70956761ca55451e5921"><td class="mdescLeft">&#160;</td><td class="mdescRight">Retrieve the list of widgets for given column.  More...<br /></td></tr>
<tr class="separator:afa169274d04b70956761ca55451e5921"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:ac436f83c74eb89b4ce5355341a00a521"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QColumnLayout</b> (<a class="el" href="index.html">QColumnLayout</a> const &amp;other)</td></tr>
<tr class="separator:ac436f83c74eb89b4ce5355341a00a521"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2866fc30fd60a730c5e8c2c7d52752df"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QColumnLayout</b> (<a class="el" href="index.html">QColumnLayout</a> &amp;&amp;)</td></tr>
<tr class="separator:a2866fc30fd60a730c5e8c2c7d52752df"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acc3c299185b0b82183bed9cf9ef82bf9"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QColumnLayout</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QColumnLayout</a> const &amp;other)</td></tr>
<tr class="separator:acc3c299185b0b82183bed9cf9ef82bf9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5f740fda22bf735573b9eb11c800c1ab"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QColumnLayout</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QColumnLayout</a> &amp;&amp;)</td></tr>
<tr class="separator:a5f740fda22bf735573b9eb11c800c1ab"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Represents a column layout. </p>
<p>Column layouts are used to represent the view in different ways depending on the device we are running our application.</p>
<p>If, for example, you run the application in a tablet that has more screen the application could use more columns than running in a phone. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">unity::scopes::qt::QColumnLayout::QColumnLayout </td>
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
<p>Creates a layout definition that expects num_of_columns columns to be added with <a class="el" href="unity.scopes.ColumnLayout.md#a0a8db9f2725f9c56f8639c55412d931d" title="Adds a new column and assigns widgets to it. ">ColumnLayout::add_column</a>. </p>
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
<td class="memname">void unity::scopes::qt::QColumnLayout::add_column </td>
<td>(</td>
<td class="paramtype">QVector&lt; QString &gt;&#160;</td>
<td class="paramname"><em>widget_ids</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Adds a new column and assigns widgets to it. </p>
<p><a class="el" href="unity.scopes.ColumnLayout.md" title="Defines a layout for preview widgets with given column setup. ">ColumnLayout</a> expects exactly the number of columns passed to the constructor to be created with the add_column method. </p><dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if an attempt is made to add more columns than specified in the constructor. </td></tr>
<tr><td class="paramname">unity::LogicException</td><td>from <a class="el" href="unity.scopes.qt.QPreviewReply.md#abe5967042a22327f6ec9d5a1f595968c">unity::scopes::qt::QPreviewReply::register_layout</a> if a layout has fewer columns than specified in the constructor. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">QVector&lt;QString&gt; unity::scopes::qt::QColumnLayout::column </td>
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
<td class="memname">int unity::scopes::qt::QColumnLayout::number_of_columns </td>
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
<td class="memname">int unity::scopes::qt::QColumnLayout::size </td>
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
<dl class="section return"><dt>Returns</dt><dd>The number of columns added with <a class="el" href="#ad7e3e39240dc8dc5a24cbe19235a0752" title="Adds a new column and assigns widgets to it. ">add_column()</a>. </dd></dl>
