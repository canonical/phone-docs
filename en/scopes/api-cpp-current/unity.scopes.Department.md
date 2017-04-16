---
Title: unity.scopes.Department
---

# unity.scopes.Department

<p>A department with optional sub-departments.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/Department.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ab17057cef9ce35f1302f5421a087c067"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab17057cef9ce35f1302f5421a087c067">set_subdepartments</a> (<a class="el" href="unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231">DepartmentList</a> const &amp;departments)</td></tr>
<tr class="memdesc:ab17057cef9ce35f1302f5421a087c067"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set sub-departments of this department.  More...<br /></td></tr>
<tr class="separator:ab17057cef9ce35f1302f5421a087c067"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acfea57f2fcca24339e0b3c2f58cde567"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acfea57f2fcca24339e0b3c2f58cde567">add_subdepartment</a> (Department::SCPtr const &amp;department)</td></tr>
<tr class="memdesc:acfea57f2fcca24339e0b3c2f58cde567"><td class="mdescLeft">&#160;</td><td class="mdescRight">Add sub-department to this department.  More...<br /></td></tr>
<tr class="separator:acfea57f2fcca24339e0b3c2f58cde567"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9ab1192cdfcbce44b9164df11290c217"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9ab1192cdfcbce44b9164df11290c217">set_alternate_label</a> (std::string const &amp;<a class="el" href="#aa84ff5c8a1ebaf43beceb8379330db42">label</a>)</td></tr>
<tr class="memdesc:a9ab1192cdfcbce44b9164df11290c217"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the alternate label (plural of the normal label) of this department.  More...<br /></td></tr>
<tr class="separator:a9ab1192cdfcbce44b9164df11290c217"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af1adb3d18a901c0b8a1cb5b98e924dfa"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af1adb3d18a901c0b8a1cb5b98e924dfa">set_has_subdepartments</a> (bool <a class="el" href="#aee8ee96bcd5a6ce0d6ca5786aa6f6450">subdepartments</a>=true)</td></tr>
<tr class="memdesc:af1adb3d18a901c0b8a1cb5b98e924dfa"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets has_subdepartments flag of this department.  More...<br /></td></tr>
<tr class="separator:af1adb3d18a901c0b8a1cb5b98e924dfa"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad715a9991355c4f08efa6cf32c61b2c6"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad715a9991355c4f08efa6cf32c61b2c6">id</a> () const </td></tr>
<tr class="memdesc:ad715a9991355c4f08efa6cf32c61b2c6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the identifier of this department.  More...<br /></td></tr>
<tr class="separator:ad715a9991355c4f08efa6cf32c61b2c6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa84ff5c8a1ebaf43beceb8379330db42"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa84ff5c8a1ebaf43beceb8379330db42">label</a> () const </td></tr>
<tr class="memdesc:aa84ff5c8a1ebaf43beceb8379330db42"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the label of this department.  More...<br /></td></tr>
<tr class="separator:aa84ff5c8a1ebaf43beceb8379330db42"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a77c6faaed77693259c0862dca2fc2459"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a77c6faaed77693259c0862dca2fc2459">alternate_label</a> () const </td></tr>
<tr class="memdesc:a77c6faaed77693259c0862dca2fc2459"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the alternate label of this department.  More...<br /></td></tr>
<tr class="separator:a77c6faaed77693259c0862dca2fc2459"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6256e78d1e3eece6e2afd8a63978bce4"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6256e78d1e3eece6e2afd8a63978bce4">query</a> () const </td></tr>
<tr class="memdesc:a6256e78d1e3eece6e2afd8a63978bce4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the canned query associated with this department.  More...<br /></td></tr>
<tr class="separator:a6256e78d1e3eece6e2afd8a63978bce4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aee8ee96bcd5a6ce0d6ca5786aa6f6450"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231">DepartmentList</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aee8ee96bcd5a6ce0d6ca5786aa6f6450">subdepartments</a> () const </td></tr>
<tr class="memdesc:aee8ee96bcd5a6ce0d6ca5786aa6f6450"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get list of sub-departments of this department.  More...<br /></td></tr>
<tr class="separator:aee8ee96bcd5a6ce0d6ca5786aa6f6450"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0ca9c7c16072e881f245063c19fae179"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0ca9c7c16072e881f245063c19fae179">has_subdepartments</a> () const </td></tr>
<tr class="memdesc:a0ca9c7c16072e881f245063c19fae179"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this department has subdepartments or has_subdepartments flag is set.  More...<br /></td></tr>
<tr class="separator:a0ca9c7c16072e881f245063c19fae179"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a4b0372ee2eb5b9b99eff3e1a95cf610a"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Department</b> (<a class="el" href="index.html">Department</a> const &amp;other)</td></tr>
<tr class="separator:a4b0372ee2eb5b9b99eff3e1a95cf610a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af2583eeb0da808e2c16e6e46ee8a1eb1"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Department</b> (<a class="el" href="index.html">Department</a> &amp;&amp;)</td></tr>
<tr class="separator:af2583eeb0da808e2c16e6e46ee8a1eb1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0c97ef4995169f3935efe6f135eca70f"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Department</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">Department</a> const &amp;other)</td></tr>
<tr class="separator:a0c97ef4995169f3935efe6f135eca70f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a87990d70c37fe840900db1a610e3f9c9"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Department</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">Department</a> &amp;&amp;)</td></tr>
<tr class="separator:a87990d70c37fe840900db1a610e3f9c9"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Static Public Member Functions</h2></td></tr>
<tr class="memitem:a11a3b8e9a3317f963d4bc9f46f79922b"><td class="memItemLeft" align="right" valign="top">static Department::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a11a3b8e9a3317f963d4bc9f46f79922b">create</a> (<a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;<a class="el" href="#a6256e78d1e3eece6e2afd8a63978bce4">query</a>, std::string const &amp;<a class="el" href="#aa84ff5c8a1ebaf43beceb8379330db42">label</a>)</td></tr>
<tr class="memdesc:a11a3b8e9a3317f963d4bc9f46f79922b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create a department with the given canned query and name.  More...<br /></td></tr>
<tr class="separator:a11a3b8e9a3317f963d4bc9f46f79922b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f4feec9298abd3eefbacf60d9ba1fd9"><td class="memItemLeft" align="right" valign="top">static Department::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1f4feec9298abd3eefbacf60d9ba1fd9">create</a> (std::string const &amp;department_id, <a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;<a class="el" href="#a6256e78d1e3eece6e2afd8a63978bce4">query</a>, std::string const &amp;<a class="el" href="#aa84ff5c8a1ebaf43beceb8379330db42">label</a>)</td></tr>
<tr class="memdesc:a1f4feec9298abd3eefbacf60d9ba1fd9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create a department with the given department identifier, canned query, and name.  More...<br /></td></tr>
<tr class="separator:a1f4feec9298abd3eefbacf60d9ba1fd9"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A department with optional sub-departments. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Department::add_subdepartment </td>
<td>(</td>
<td class="paramtype">Department::SCPtr const &amp;&#160;</td>
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
<td class="memname">std::string unity::scopes::Department::alternate_label </td>
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
<td class="memname">static Department::UPtr unity::scopes::Department::create </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;&#160;</td>
<td class="paramname"><em>query</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
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
<p>The identifier of this department instance is that of the <code>query</code> instance (<a class="el" href="unity.scopes.CannedQuery.md#a61351960149bb4c0840f020c4e645f66">CannedQuery::department_id()</a>). </p><dl class="params"><dt>Parameters</dt><dd>
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
<td class="memname">static Department::UPtr unity::scopes::Department::create </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>department_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;&#160;</td>
<td class="paramname"><em>query</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
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
<td class="memname">bool unity::scopes::Department::has_subdepartments </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this department has subdepartments or has_subdepartments flag is set. </p>
<dl class="section return"><dt>Returns</dt><dd>true if this deparment has subdepartments or has_subdepartments flag is set </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Department::id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the identifier of this department. </p>
<dl class="section return"><dt>Returns</dt><dd>The department identifier. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Department::label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the label of this department. </p>
<dl class="section return"><dt>Returns</dt><dd>The department label. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> unity::scopes::Department::query </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the canned query associated with this department. </p>
<dl class="section return"><dt>Returns</dt><dd>The canned query for this department. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Department::set_alternate_label </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
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
<td class="memname">void unity::scopes::Department::set_has_subdepartments </td>
<td>(</td>
<td class="paramtype">bool&#160;</td>
<td class="paramname"><em>subdepartments</em> = <code>true</code></td><td>)</td>
<td></td>
</tr>
</table>
<p>Sets has_subdepartments flag of this department. </p>
<p>This flag is a display hint for the Shell that indicates if this department has sub-departments and as such should be displayed in a way that suggests further navigation to the user. Setting this flag is not needed when sub-departments have been added with <a class="el" href="#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">set_subdepartments()</a> method. Setting this flag to false after adding sub-departments with <a class="el" href="#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">set_subdepartments()</a> throws unity::LogicException.</p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if called with false after adding sub-departments with <a class="el" href="#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Department::set_subdepartments </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231">DepartmentList</a> const &amp;&#160;</td>
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
<td class="memname"><a class="el" href="unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231">DepartmentList</a> unity::scopes::Department::subdepartments </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get list of sub-departments of this department. </p>
<dl class="section return"><dt>Returns</dt><dd>The list of sub-departments. </dd></dl>
