---
Title: unity.scopes.Category
---

# unity.scopes.Category

<p>A set of related results returned by a scope and displayed within a single pane in the Unity dash.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/Category.h&gt;</code></p>
Inheritance diagram for unity::scopes::Category:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/5ec67155-fe5c-4461-9252-f2dc40e6051f-../unity.scopes.Category/classunity_1_1scopes_1_1_category__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1_category_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1_category_inherit__map" id="unity_1_1scopes_1_1_category_inherit__map">
<area shape="rect" id="node2" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1testing_1_1_category.html" title="Implementation of Category class for testing. " alt="" coords="12,80,169,121"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:aa14a4f95af60187f890ef475d0d8cabe"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa14a4f95af60187f890ef475d0d8cabe">id</a> () const </td></tr>
<tr class="memdesc:aa14a4f95af60187f890ef475d0d8cabe"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get identifier of this Category.  More...<br /></td></tr>
<tr class="separator:aa14a4f95af60187f890ef475d0d8cabe"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6f11a12253de78d61761b49b45951221"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6f11a12253de78d61761b49b45951221">title</a> () const </td></tr>
<tr class="memdesc:a6f11a12253de78d61761b49b45951221"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get title of this Category.  More...<br /></td></tr>
<tr class="separator:a6f11a12253de78d61761b49b45951221"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acb98bc96e054fcdf787684cc7d0422ca"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acb98bc96e054fcdf787684cc7d0422ca">icon</a> () const </td></tr>
<tr class="memdesc:acb98bc96e054fcdf787684cc7d0422ca"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get icon of this Category.  More...<br /></td></tr>
<tr class="separator:acb98bc96e054fcdf787684cc7d0422ca"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a88034923f3493c2cfb5500e7aeae35cc"><td class="memItemLeft" align="right" valign="top">CannedQuery::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a88034923f3493c2cfb5500e7aeae35cc">query</a> () const </td></tr>
<tr class="memdesc:a88034923f3493c2cfb5500e7aeae35cc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Query to perform when this category is expanded.  More...<br /></td></tr>
<tr class="separator:a88034923f3493c2cfb5500e7aeae35cc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2668bac76f600a009934faa8b7eeea6d"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2668bac76f600a009934faa8b7eeea6d">renderer_template</a> () const </td></tr>
<tr class="memdesc:a2668bac76f600a009934faa8b7eeea6d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get renderer template of this Category.  More...<br /></td></tr>
<tr class="separator:a2668bac76f600a009934faa8b7eeea6d"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A set of related results returned by a scope and displayed within a single pane in the Unity dash. </p>
<p>To create a <a class="el" href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>, use SearchReplyProxy::register_category. </p><dl class="section see"><dt>See also</dt><dd>ResultItem </dd></dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Category::icon </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get icon of this <a class="el" href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The category icon. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Category::id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get identifier of this <a class="el" href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The category identifier. </dd></dl>
<table class="memname">
<tr>
<td class="memname">CannedQuery::SCPtr unity::scopes::Category::query </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Query to perform when this category is expanded. </p>
<dl class="section return"><dt>Returns</dt><dd>The expansion query or nullptr. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const&amp; unity::scopes::Category::renderer_template </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get renderer template of this <a class="el" href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The category renderer template. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Category::title </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get title of this <a class="el" href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The category title. </dd></dl>
