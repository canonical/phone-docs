---
Title: unity.scopes.qt.QSearchReply
---

# unity.scopes.qt.QSearchReply

<p>Allows the results of a search query to be sent to the query source.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QSearchReply.h&gt;</code></p>
Inheritance diagram for unity::scopes::qt::QSearchReply:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/ec7172a3-6f65-4171-a33a-6d148623aed2-../unity.scopes.qt.QSearchReply/classunity_1_1scopes_1_1qt_1_1_q_search_reply__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1qt_1_1_q_search_reply_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1qt_1_1_q_search_reply_inherit__map" id="unity_1_1scopes_1_1qt_1_1_q_search_reply_inherit__map">
</map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a6c9794d4fbbd36e2c6f4ce70495a580f"><td class="memItemLeft" align="right" valign="top">
virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6c9794d4fbbd36e2c6f4ce70495a580f">~QSearchReply</a> ()</td></tr>
<tr class="memdesc:a6c9794d4fbbd36e2c6f4ce70495a580f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destroys a <a class="el" href="index.html" title="Allows the results of a search query to be sent to the query source. ">QSearchReply</a>. <br /></td></tr>
<tr class="separator:a6c9794d4fbbd36e2c6f4ce70495a580f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acac93ea6c02ccccdae2c72384cc5c5fd"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acac93ea6c02ccccdae2c72384cc5c5fd">register_departments</a> (QDepartment::SCPtr const &amp;parent)</td></tr>
<tr class="memdesc:acac93ea6c02ccccdae2c72384cc5c5fd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Register departments for the current search reply and provide the current department.  More...<br /></td></tr>
<tr class="separator:acac93ea6c02ccccdae2c72384cc5c5fd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac208a555cddc39f086b88804bb9bd26f"><td class="memItemLeft" align="right" valign="top">virtual QCategory::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac208a555cddc39f086b88804bb9bd26f">register_category</a> (QString const &amp;id, QString const &amp;title, QString const &amp;icon, <a class="el" href="unity.scopes.CategoryRenderer.md">unity::scopes::CategoryRenderer</a> const &amp;renderer_template=<a class="el" href="unity.scopes.CategoryRenderer.md">unity::scopes::CategoryRenderer</a>())</td></tr>
<tr class="memdesc:ac208a555cddc39f086b88804bb9bd26f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Register new category and send it to the source of the query.  More...<br /></td></tr>
<tr class="separator:ac208a555cddc39f086b88804bb9bd26f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a17a9439fd592a2c76b7b74f46053bad5"><td class="memItemLeft" align="right" valign="top">virtual bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a17a9439fd592a2c76b7b74f46053bad5">push</a> (<a class="el" href="unity.scopes.qt.QCategorisedResult.md">QCategorisedResult</a> const &amp;result)</td></tr>
<tr class="memdesc:a17a9439fd592a2c76b7b74f46053bad5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sends a single result to the source of a query.  More...<br /></td></tr>
<tr class="separator:a17a9439fd592a2c76b7b74f46053bad5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a74f1e3d2dd82ef9810413fa38401e16e"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a74f1e3d2dd82ef9810413fa38401e16e">error</a> (std::exception_ptr ex)</td></tr>
<tr class="memdesc:a74f1e3d2dd82ef9810413fa38401e16e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Informs the source of a query that the query was terminated due to an error.  More...<br /></td></tr>
<tr class="separator:a74f1e3d2dd82ef9810413fa38401e16e"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Allows the results of a search query to be sent to the query source. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void QSearchReply::error </td>
<td>(</td>
<td class="paramtype">std::exception_ptr&#160;</td>
<td class="paramname"><em>ex</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Informs the source of a query that the query was terminated due to an error. </p>
<p>Multiple calls to <a class="el" href="#a74f1e3d2dd82ef9810413fa38401e16e" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> and calls to finished() after <a class="el" href="#a74f1e3d2dd82ef9810413fa38401e16e" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> was called are ignored. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">ex</td><td>An exception_ptr indicating the cause of the error. If ex is a <code>std::exception</code>, the return value of <code>what()</code> is made available to the query source. Otherwise, the query source receives <code>"unknown exception"</code>. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">bool QSearchReply::push </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.qt.QCategorisedResult.md">QCategorisedResult</a> const &amp;&#160;</td>
<td class="paramname"><em>result</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Sends a single result to the source of a query. </p>
<p>Any calls to <a class="el" href="#a17a9439fd592a2c76b7b74f46053bad5" title="Sends a single result to the source of a query. ">push()</a> after finished() was called are ignored. </p><dl class="section return"><dt>Returns</dt><dd>The return value is true if the result was accepted, false otherwise. A false return value can be due to finished() having been called earlier, or the client that sent the query having cancelled that query. The return value is false also if the query has a cardinality limit and is reached or exceeded. (The return value is false for the last valid push and subsequent pushes.) </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">QCategory::SCPtr QSearchReply::register_category </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>title</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>icon</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.CategoryRenderer.md">unity::scopes::CategoryRenderer</a> const &amp;&#160;</td>
<td class="paramname"><em>renderer_template</em> = <code><a class="el" href="unity.scopes.CategoryRenderer.md">unity::scopes::CategoryRenderer</a>()</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Register new category and send it to the source of the query. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>The identifier of the category </td></tr>
<tr><td class="paramname">title</td><td>The title of the category </td></tr>
<tr><td class="paramname">icon</td><td>The icon of the category </td></tr>
<tr><td class="paramname">renderer_template</td><td>The renderer template to be used for results in this category</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The category instance </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::scopes::InvalidArgumentException</td><td>if category with that id has already been registered. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void QSearchReply::register_departments </td>
<td>(</td>
<td class="paramtype">QDepartment::SCPtr const &amp;&#160;</td>
<td class="paramname"><em>parent</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Register departments for the current search reply and provide the current department. </p>
<p>Departments are optional. If scope supports departments, it is expected to register departments on every search as follows:</p>
<ul>
<li>
create a <a class="el" href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node for current department and attach to it a list of its subdepartments (unless current department is a leaf department) using <a class="el" href="unity.scopes.Department.md#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> method. For every subdepartment on the list set "has_subdepartments" flag if applicable. </li>
<li>
provide an alternate label for current department with <a class="el" href="unity.scopes.Department.md#a9ab1192cdfcbce44b9164df11290c217" title="Set the alternate label (plural of the normal label) of this department. ">unity::scopes::Department::set_alternate_label()</a>. </li>
<li>
create a <a class="el" href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node for parent of current department (if applicable - not when in root department), and attach current <a class="el" href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node to it with <a class="el" href="unity.scopes.Department.md#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> method. </li>
<li>
register the parent department with <a class="el" href="#acac93ea6c02ccccdae2c72384cc5c5fd" title="Register departments for the current search reply and provide the current department. ">unity::scopes::qt::QSearchReply::register_departments()</a>. </li>
</ul>
<p>For example, assuming the user is visiting a "History" department in "Books", and "History" has sub-departments such as "World War Two" and "Ancient", the code that registers departments for current search in "History" may look like this: </p>
```
unity::scopes::qt::QDepartment::SPtr books = move(<a class="code" href="unity.scopes.qt.QDepartment.md#a9bf07a3b3b3e57a391100f15abb4c651">unity::scopes::qt::QDepartment::create</a>(<span class="stringliteral">&quot;books&quot;</span>, query, <span class="stringliteral">&quot;Books&quot;</span>));
<span class="comment">// the</span>
parent of <span class="stringliteral">&quot;History&quot;</span>
unity::scopes::Department::SPtr history = move(<a class="code" href="unity.scopes.qt.QDepartment.md#a9bf07a3b3b3e57a391100f15abb4c651">unity::scopes::qt::QDepartment::create</a>(<span class="stringliteral">&quot;history&quot;</span>, query,
<span class="stringliteral">&quot;History&quot;</span>));
<a class="code" href="unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231">unity::scopes::DepartmentList</a> history_depts({
move(<a class="code" href="unity.scopes.qt.QDepartment.md#a9bf07a3b3b3e57a391100f15abb4c651">unity::scopes::qt::QDepartment::create</a>(<span class="stringliteral">&quot;ww2&quot;</span>, query, <span class="stringliteral">&quot;World War</span>
<span class="stringliteral">Two&quot;</span>)),
move(<a class="code" href="unity.scopes.qt.QDepartment.md#a9bf07a3b3b3e57a391100f15abb4c651">unity::scopes::qt::QDepartment::create</a>(<span class="stringliteral">&quot;ancient&quot;</span>, query,
<span class="stringliteral">&quot;Ancient&quot;</span>))});
history-&gt;set_subdepartments(history_depts);
books-&gt;set_subdepartments({history});
reply-&gt;register_departments(books);
```
<p>Current department should be the department returned by <a class="el" href="unity.scopes.CannedQuery.md#a61351960149bb4c0840f020c4e645f66" title="Returns the department id of this CannedQuery. ">unity::scopes::CannedQuery::department_id()</a>. Empty department id denotes the root deparment.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">parent</td><td>The parent department of current department, or current one if visiting root department. </td></tr>
</table>
</dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if departments are invalid (nullptr passed, current department not present in the parent's tree, duplicated department ids present in the tree). </td></tr>
</table>
</dd>
</dl>
