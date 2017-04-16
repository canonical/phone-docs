---
Title: unity.scopes.qt.QCategory
---

# unity.scopes.qt.QCategory

<p>A set of related results returned by a scope and displayed within a single pane in the Unity dash.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QCategory.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a63a38bcb7635a7669c378b772892ef44"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a63a38bcb7635a7669c378b772892ef44">id</a> () const </td></tr>
<tr class="memdesc:a63a38bcb7635a7669c378b772892ef44"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get identifier of this Category.  More...<br /></td></tr>
<tr class="separator:a63a38bcb7635a7669c378b772892ef44"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a91ec8bb3764dc291bd7452fc74fde297"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a91ec8bb3764dc291bd7452fc74fde297">title</a> () const </td></tr>
<tr class="memdesc:a91ec8bb3764dc291bd7452fc74fde297"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get title of this Category.  More...<br /></td></tr>
<tr class="separator:a91ec8bb3764dc291bd7452fc74fde297"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a534ad8fe06ec11c70a5438b47b93c27a"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a534ad8fe06ec11c70a5438b47b93c27a">icon</a> () const </td></tr>
<tr class="memdesc:a534ad8fe06ec11c70a5438b47b93c27a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get icon of this Category.  More...<br /></td></tr>
<tr class="separator:a534ad8fe06ec11c70a5438b47b93c27a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a58567db06e8b5c981fed2911c86591f8"><td class="memItemLeft" align="right" valign="top">CannedQuery::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a58567db06e8b5c981fed2911c86591f8">query</a> () const </td></tr>
<tr class="memdesc:a58567db06e8b5c981fed2911c86591f8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Query to perform when this category is expanded.  More...<br /></td></tr>
<tr class="separator:a58567db06e8b5c981fed2911c86591f8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6af889b4f3e3c5e70f48df0e09511ac8"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6af889b4f3e3c5e70f48df0e09511ac8">renderer_template</a> () const </td></tr>
<tr class="memdesc:a6af889b4f3e3c5e70f48df0e09511ac8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get renderer template of this Category.  More...<br /></td></tr>
<tr class="separator:a6af889b4f3e3c5e70f48df0e09511ac8"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A set of related results returned by a scope and displayed within a single pane in the Unity dash. </p>
<p>To create a <a class="el" href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">QCategory</a>, use QReplyProxy::register_category. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">QString unity::scopes::qt::QCategory::icon </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get icon of this <a class="el" href="unity.scopes.Category.md" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The category icon. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QString unity::scopes::qt::QCategory::id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get identifier of this <a class="el" href="unity.scopes.Category.md" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The category identifier. </dd></dl>
<table class="memname">
<tr>
<td class="memname">CannedQuery::SCPtr unity::scopes::qt::QCategory::query </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Query to perform when this category is expanded. </p>
<dl class="section return"><dt>Returns</dt><dd>The expansion query or nullptr. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const&amp; unity::scopes::qt::QCategory::renderer_template </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get renderer template of this <a class="el" href="unity.scopes.Category.md" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The category renderer template. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QString unity::scopes::qt::QCategory::title </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get title of this <a class="el" href="unity.scopes.Category.md" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The category title. </dd></dl>
