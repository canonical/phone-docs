---
Title: unity.scopes.qt.QDepartment
---

# unity.scopes.qt.QDepartment

<p>A department with optional sub-departments.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QDepartment.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a2b9f07697f4a811afa26d9a0b951f9ca"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2b9f07697f4a811afa26d9a0b951f9ca">set_subdepartments</a> (QDepartmentList const &amp;departments)</td></tr>
<tr class="memdesc:a2b9f07697f4a811afa26d9a0b951f9ca"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set sub-departments of this department.  More...<br /></td></tr>
<tr class="separator:a2b9f07697f4a811afa26d9a0b951f9ca"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a872794120c2b7337bf23f2ef5dae4330"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a872794120c2b7337bf23f2ef5dae4330">add_subdepartment</a> (QDepartment::SCPtr const &amp;department)</td></tr>
<tr class="memdesc:a872794120c2b7337bf23f2ef5dae4330"><td class="mdescLeft">&#160;</td><td class="mdescRight">Add sub-department to this department.  More...<br /></td></tr>
<tr class="separator:a872794120c2b7337bf23f2ef5dae4330"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a902b615bdfbccb322f65a5306b3a85dc"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a902b615bdfbccb322f65a5306b3a85dc">set_alternate_label</a> (QString const &amp;<a class="el" href="#ae4fa435a1362b32544c79100e7d28c74">label</a>)</td></tr>
<tr class="memdesc:a902b615bdfbccb322f65a5306b3a85dc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the alternate label (plural of the normal label) of this department.  More...<br /></td></tr>
<tr class="separator:a902b615bdfbccb322f65a5306b3a85dc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5ec4d42b6421e9661894432d347d2e05"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5ec4d42b6421e9661894432d347d2e05">set_has_subdepartments</a> (bool <a class="el" href="#a07b6395359cbdb456c3200df852988a0">subdepartments</a>=true)</td></tr>
<tr class="memdesc:a5ec4d42b6421e9661894432d347d2e05"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets has_subdepartments flag of this department.  More...<br /></td></tr>
<tr class="separator:a5ec4d42b6421e9661894432d347d2e05"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad0cbefd8c90f4b0cdd147ca7b16d5144"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad0cbefd8c90f4b0cdd147ca7b16d5144">id</a> () const </td></tr>
<tr class="memdesc:ad0cbefd8c90f4b0cdd147ca7b16d5144"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the identifier of this department.  More...<br /></td></tr>
<tr class="separator:ad0cbefd8c90f4b0cdd147ca7b16d5144"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae4fa435a1362b32544c79100e7d28c74"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae4fa435a1362b32544c79100e7d28c74">label</a> () const </td></tr>
<tr class="memdesc:ae4fa435a1362b32544c79100e7d28c74"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the label of this department.  More...<br /></td></tr>
<tr class="separator:ae4fa435a1362b32544c79100e7d28c74"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7ede92fdfc67214d6a6761d1d694bdfb"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7ede92fdfc67214d6a6761d1d694bdfb">alternate_label</a> () const </td></tr>
<tr class="memdesc:a7ede92fdfc67214d6a6761d1d694bdfb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the alternate label of this department.  More...<br /></td></tr>
<tr class="separator:a7ede92fdfc67214d6a6761d1d694bdfb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa5184890c7503571408d3d8ef9e58ed6"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa5184890c7503571408d3d8ef9e58ed6">query</a> () const </td></tr>
<tr class="memdesc:aa5184890c7503571408d3d8ef9e58ed6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the canned query associated with this department.  More...<br /></td></tr>
<tr class="separator:aa5184890c7503571408d3d8ef9e58ed6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a07b6395359cbdb456c3200df852988a0"><td class="memItemLeft" align="right" valign="top">QDepartmentList&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a07b6395359cbdb456c3200df852988a0">subdepartments</a> () const </td></tr>
<tr class="memdesc:a07b6395359cbdb456c3200df852988a0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get list of sub-departments of this department.  More...<br /></td></tr>
<tr class="separator:a07b6395359cbdb456c3200df852988a0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae1075a9dbc4f92d51393dd57a36adf6e"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae1075a9dbc4f92d51393dd57a36adf6e">has_subdepartments</a> () const </td></tr>
<tr class="memdesc:ae1075a9dbc4f92d51393dd57a36adf6e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this department has subdepartments or has_subdepartments flag is set.  More...<br /></td></tr>
<tr class="separator:ae1075a9dbc4f92d51393dd57a36adf6e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:ac84fd21f24060d177b424717ac96b881"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QDepartment</b> (<a class="el" href="index.html">QDepartment</a> const &amp;other)</td></tr>
<tr class="separator:ac84fd21f24060d177b424717ac96b881"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abd18cdfd10097f832373f6bd9066d530"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QDepartment</b> (<a class="el" href="index.html">QDepartment</a> &amp;&amp;)</td></tr>
<tr class="separator:abd18cdfd10097f832373f6bd9066d530"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa65f103d7c1286265d7846a49af68828"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QDepartment</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QDepartment</a> const &amp;other)</td></tr>
<tr class="separator:aa65f103d7c1286265d7846a49af68828"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab189ae146745a83d9a539f00556ab745"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QDepartment</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QDepartment</a> &amp;&amp;)</td></tr>
<tr class="separator:ab189ae146745a83d9a539f00556ab745"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Static Public Member Functions</h2></td></tr>
<tr class="memitem:a9bf07a3b3b3e57a391100f15abb4c651"><td class="memItemLeft" align="right" valign="top">static QDepartment::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9bf07a3b3b3e57a391100f15abb4c651">create</a> (<a class="el" href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> const &amp;<a class="el" href="#aa5184890c7503571408d3d8ef9e58ed6">query</a>, QString const &amp;<a class="el" href="#ae4fa435a1362b32544c79100e7d28c74">label</a>)</td></tr>
<tr class="memdesc:a9bf07a3b3b3e57a391100f15abb4c651"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create a department with the given canned query and name.  More...<br /></td></tr>
<tr class="separator:a9bf07a3b3b3e57a391100f15abb4c651"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7c90a04ab4d200edc1270ed915914442"><td class="memItemLeft" align="right" valign="top">static QDepartment::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7c90a04ab4d200edc1270ed915914442">create</a> (QString const &amp;department_id, <a class="el" href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> const &amp;<a class="el" href="#aa5184890c7503571408d3d8ef9e58ed6">query</a>, QString const &amp;<a class="el" href="#ae4fa435a1362b32544c79100e7d28c74">label</a>)</td></tr>
<tr class="memdesc:a7c90a04ab4d200edc1270ed915914442"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create a department with the given department identifier, canned query, and name.  More...<br /></td></tr>
<tr class="separator:a7c90a04ab4d200edc1270ed915914442"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A department with optional sub-departments. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">void QDepartment::add_subdepartment </td>
<td>(</td>
<td class="paramtype">QDepartment::SCPtr const &amp;&#160;</td>
<td class="paramname"><em>department</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Add sub-department to this department. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">department</td><td>The subdepartment instance. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">QString QDepartment::alternate_label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the alternate label of this department. </p>
<p>Return the alternate label of this department. The alternate label expresses the plural "all" form of the normal label. For example, if the normal label is "Books", then the alternate label is "All Books". Note that alternate label and can be empty - in that case the normal label should be displayed instead.</p>
<dl class="section return"><dt>Returns</dt><dd>The alternate label. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">static QDepartment::UPtr unity::scopes::qt::QDepartment::create </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> const &amp;&#160;</td>
<td class="paramname"><em>query</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>label</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">static</span></span>  </td>
</tr>
</table>
<p>Create a department with the given canned query and name. </p>
<p>The identifier of this department instance is that of the <code>query</code> instance (<a class="el" href="unity.scopes.qt.QCannedQuery.md#aa8de764af79922d974e1bef6186be9ed">QCannedQuery::department_id()</a>). </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">query</td><td>The query (and associated parameters, such as filter state) to be executed when the user selects this department. </td></tr>
<tr><td class="paramname">label</td><td>The display name of this department. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">static QDepartment::UPtr unity::scopes::qt::QDepartment::create </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>department_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> const &amp;&#160;</td>
<td class="paramname"><em>query</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>label</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">static</span></span>  </td>
</tr>
</table>
<p>Create a department with the given department identifier, canned query, and name. </p>
<p>The canned query's target department identifier is updated with department_id. This constructor is convenient for creating multiple departments that use the same query and only need a different department identifier. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">department_id</td><td>The department identifier. </td></tr>
<tr><td class="paramname">query</td><td>The canned query (and associated parameters, such as filter state) to be executed when the user selects this department. </td></tr>
<tr><td class="paramname">label</td><td>The display name of this department. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">bool QDepartment::has_subdepartments </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this department has subdepartments or has_subdepartments flag is set. </p>
<dl class="section return"><dt>Returns</dt><dd>true if this deparment has subdepartments or has_subdepartments flag is set </dd></dl>
<table class="memname">
<tr>
<td class="memname">QString QDepartment::id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the identifier of this department. </p>
<dl class="section return"><dt>Returns</dt><dd>The department identifier. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QString QDepartment::label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the label of this department. </p>
<dl class="section return"><dt>Returns</dt><dd>The department label. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.qt.QCannedQuery.md">QCannedQuery</a> QDepartment::query </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the canned query associated with this department. </p>
<dl class="section return"><dt>Returns</dt><dd>The canned query for this department. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void QDepartment::set_alternate_label </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>label</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the alternate label (plural of the normal label) of this department. </p>
<p>The alternate label should express the plural "all" form of the normal label. For example, if the normal label is "Books", then the alternate label should be "All Books". The alternate label needs to be provided for the current department only. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">label</td><td>The alternate label to display when showing plural form of this department's name. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void QDepartment::set_has_subdepartments </td>
<td>(</td>
<td class="paramtype">bool&#160;</td>
<td class="paramname"><em>subdepartments</em> = <code>true</code></td><td>)</td>
<td></td>
</tr>
</table>
<p>Sets has_subdepartments flag of this department. </p>
<p>This flag is a display hint for the Shell that indicates if this department has sub-departments and as such should be displayed in a way that suggests further navigation to the user. Setting this flag is not needed when sub-departments have been added with <a class="el" href="#a2b9f07697f4a811afa26d9a0b951f9ca" title="Set sub-departments of this department. ">set_subdepartments()</a> method. Setting this flag to false after adding sub-departments with <a class="el" href="#a2b9f07697f4a811afa26d9a0b951f9ca" title="Set sub-departments of this department. ">set_subdepartments()</a> throws unity::LogicException.</p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if called with false after adding sub-departments with <a class="el" href="unity.scopes.Department.md#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void QDepartment::set_subdepartments </td>
<td>(</td>
<td class="paramtype">QDepartmentList const &amp;&#160;</td>
<td class="paramname"><em>departments</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set sub-departments of this department. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">departments</td><td>The list of sub-departments. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">QDepartmentList QDepartment::subdepartments </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get list of sub-departments of this department. </p>
<dl class="section return"><dt>Returns</dt><dd>The list of sub-departments. </dd></dl>
