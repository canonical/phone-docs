---
Title: scope_harness
---

# scope_harness

<!-- Start Namespace Content -->
<h1>API<a class="headerlink" href="#api" title="Permalink to this headline"></a></h1>
<h2>Main classes<a class="headerlink" href="#main-classes" title="Permalink to this headline"></a></h2>
<!-- End Namespace Content -->
<h3>Elements</h3>
<dl>
<dt><a href="scope_harness.Category.md">Category</a></dt><dd>Represents a read-only view of a category returned by scope</dd>
<dt><a href="scope_harness.CategoryListMatcher.md">CategoryListMatcher</a></dt><dd>Matcher object that holds constraints for matching search categories.</dd>
<dt><a href="scope_harness.CategoryListMatcherMode.md">CategoryListMatcherMode</a></dt><dd>Match mode for category list</dd>
<dt><a href="scope_harness.CategoryMatcher.md">CategoryMatcher</a></dt><dd>Matcher object that holds constraints for matching search category.</dd>
<dt><a href="scope_harness.CategoryMatcherMode.md">CategoryMatcherMode</a></dt><dd>Match mode for category results</dd>
<dt><a href="scope_harness.ChildDepartment.md">ChildDepartment</a></dt><dd>Represents a read-only view of a child department.</dd>
<dt><a href="scope_harness.ChildDepartmentMatcher.md">ChildDepartmentMatcher</a></dt><dd>Matcher object that holds constraints for matching child departments of a department.</dd>
<dt><a href="scope_harness.CustomRegistry.md">CustomRegistry</a></dt><dd></dd>
<dt><a href="scope_harness.Department.md">Department</a></dt><dd>Represents a read-only view of a department returned by a scope. Use id, label, all_label properties to inspect it, and children property or child method to inspect child departments (instances of ChildDepartment).  This class supports __getitem__ call...</dd>
<dt><a href="scope_harness.DepartmentMatcher.md">DepartmentMatcher</a></dt><dd>Matcher object that holds constraints for matching departments.</dd>
<dt><a href="scope_harness.DepartmentMatcherMode.md">DepartmentMatcherMode</a></dt><dd>Match mode for departments</dd>
<dt><a href="scope_harness.MatchResult.md">MatchResult</a></dt><dd>Represents the result of matching and is the final object you want to check in your tests. An instance of MatchResult can be obtained by calling one of the match() methods of ResultMatcher, CategoryMatcher, CategoryListMatcher, DepartmentMatcher and Ch...</dd>
<dt><a href="scope_harness.Parameters.md">Parameters</a></dt><dd>Parameters for instantiating a CustomRegistry instace</dd>
<dt><a href="scope_harness.PreviewColumnMatcher.md">PreviewColumnMatcher</a></dt><dd>match( (PreviewColumnMatcher)arg1, (MatchResult)arg2, (object)arg3) -&gt; None</dd>
<dt><a href="scope_harness.PreviewMatcher.md">PreviewMatcher</a></dt><dd>match( (PreviewMatcher)arg1, (MatchResult)arg2, (PreviewWidgetList)arg3) -&gt; None</dd>
<dt><a href="scope_harness.PreviewView.md">PreviewView</a></dt><dd>This is a view on a preview returned by activation of search Result. Set column_count property to the desired number of columns, then inspect widgets in every column using widgets_in_column(index) method.</dd>
<dt><a href="scope_harness.PreviewWidget.md">PreviewWidget</a></dt><dd>This class represents a single widget of a preview, such as an image or header. The &#8216;data&#8217; property is a regular python dictionary that corresponds to Scopes API VariantMap and contains actual key-values that constitute the widget. See the ...</dd>
<dt><a href="scope_harness.PreviewWidgetList.md">PreviewWidgetList</a></dt><dd>A simple container for preview widgets returned by a scope. The number of widgets can be determined with python&#8217;s len() function and individual widgets can be accessed using [] operator. The [] indexing operator supports numeric index values as w...</dd>
<dt><a href="scope_harness.PreviewWidgetMatcher.md">PreviewWidgetMatcher</a></dt><dd>Matcher object that holds constraints for matching a preview widget.</dd>
<dt><a href="scope_harness.Result.md">Result</a></dt><dd>Represents a read-only view on a result returned by a scope</dd>
<dt><a href="scope_harness.ResultMatcher.md">ResultMatcher</a></dt><dd>Matcher object that holds constraints for matching search result.</dd>
<dt><a href="scope_harness.ResultsView.md">ResultsView</a></dt><dd>This is the main class for driving search and inspecting search results. Set search_query property to invoke search, then inspect categories property to access returned categories and their results. Use browse_department method to change active departm...</dd>
<dt><a href="scope_harness.ScopeHarness.md">ScopeHarness</a></dt><dd>This is the main class for scope harness testing. An instance of it needs to be created using one of the static class methods (new_from_*) before any tests can be perfor</dd>
<dt><a href="scope_harness.ScopeUri.md">ScopeUri</a></dt><dd>Helper class for creating scope:// uris</dd>
<dt><a href="scope_harness.SearchStatus.md">SearchStatus</a></dt><dd></dd>
<dt><a href="scope_harness.SettingsMatcher.md">SettingsMatcher</a></dt><dd>Matcher object that holds constraints for matchins settings (SettingsView) object.</dd>
<dt><a href="scope_harness.SettingsMatcherMode.md">SettingsMatcherMode</a></dt><dd>Match mode for settings</dd>
<dt><a href="scope_harness.SettingsOption.md">SettingsOption</a></dt><dd>This is a class holding properies of an option</dd>
<dt><a href="scope_harness.SettingsOptionMatcher.md">SettingsOptionMatcher</a></dt><dd>Matcher object that holds constraints for matching a settings option.</dd>
<dt><a href="scope_harness.SettingsOptionType.md">SettingsOptionType</a></dt><dd></dd>
<dt><a href="scope_harness.SettingsView.md">SettingsView</a></dt><dd>This is a view on a scope settings returned by settings() method of ResultsView.</dd>
</dl>
