---
Title: scope_harness
---
        
API<a href="#api" class="headerlink" title="Permalink to this headline"></a>
======================================================================================

Main classes<a href="#main-classes" class="headerlink" title="Permalink to this headline"></a>
--------------------------------------------------------------------------------------------------------

### Elements

[Category](../scope_harness.Category.md)  
Represents a read-only view of a category returned by scope

[CategoryListMatcher](../scope_harness.CategoryListMatcher.md)  
Matcher object that holds constraints for matching search categories.

[CategoryListMatcherMode](../scope_harness.CategoryListMatcherMode.md)  
Match mode for category list

[CategoryMatcher](../scope_harness.CategoryMatcher.md)  
Matcher object that holds constraints for matching search category.

[CategoryMatcherMode](../scope_harness.CategoryMatcherMode.md)  
Match mode for category results

[ChildDepartment](../scope_harness.ChildDepartment.md)  
Represents a read-only view of a child department.

[ChildDepartmentMatcher](../scope_harness.ChildDepartmentMatcher.md)  
Matcher object that holds constraints for matching child departments of a department.

[CustomRegistry](../scope_harness.CustomRegistry.md)  

[Department](../scope_harness.Department.md)  
Represents a read-only view of a department returned by a scope. Use id, label, all\_label properties to inspect it, and children property or child method to inspect child departments (instances of ChildDepartment). This class supports \_\_getitem\_\_ call...

[DepartmentMatcher](../scope_harness.DepartmentMatcher.md)  
Matcher object that holds constraints for matching departments.

[DepartmentMatcherMode](../scope_harness.DepartmentMatcherMode.md)  
Match mode for departments

[MatchResult](../scope_harness.MatchResult.md)  
Represents the result of matching and is the final object you want to check in your tests. An instance of MatchResult can be obtained by calling one of the match() methods of ResultMatcher, CategoryMatcher, CategoryListMatcher, DepartmentMatcher and Ch...

[Parameters](../scope_harness.Parameters.md)  
Parameters for instantiating a CustomRegistry instace

[PreviewColumnMatcher](../scope_harness.PreviewColumnMatcher.md)  
match( (PreviewColumnMatcher)arg1, (MatchResult)arg2, (object)arg3) -&gt; None

[PreviewMatcher](../scope_harness.PreviewMatcher.md)  
match( (PreviewMatcher)arg1, (MatchResult)arg2, (PreviewWidgetList)arg3) -&gt; None

[PreviewView](../scope_harness.PreviewView.md)  
This is a view on a preview returned by activation of search Result. Set column\_count property to the desired number of columns, then inspect widgets in every column using widgets\_in\_column(index) method.

[PreviewWidget](../scope_harness.PreviewWidget.md)  
This class represents a single widget of a preview, such as an image or header. The ‘data’ property is a regular python dictionary that corresponds to Scopes API VariantMap and contains actual key-values that constitute the widget. See the ...

[PreviewWidgetList](../scope_harness.PreviewWidgetList.md)  
A simple container for preview widgets returned by a scope. The number of widgets can be determined with python’s len() function and individual widgets can be accessed using \[\] operator. The \[\] indexing operator supports numeric index values as w...

[PreviewWidgetMatcher](../scope_harness.PreviewWidgetMatcher.md)  
Matcher object that holds constraints for matching a preview widget.

[Result](../scope_harness.Result.md)  
Represents a read-only view on a result returned by a scope

[ResultMatcher](../scope_harness.ResultMatcher.md)  
Matcher object that holds constraints for matching search result.

[ResultsView](../scope_harness.ResultsView.md)  
This is the main class for driving search and inspecting search results. Set search\_query property to invoke search, then inspect categories property to access returned categories and their results. Use browse\_department method to change active departm...

[ScopeHarness](../scope_harness.ScopeHarness.md)  
This is the main class for scope harness testing. An instance of it needs to be created using one of the static class methods (new\_from\_\*) before any tests can be perfor

[ScopeUri](../scope_harness.ScopeUri.md)  
Helper class for creating scope:// uris

[SearchStatus](../scope_harness.SearchStatus.md)  

[SettingsMatcher](../scope_harness.SettingsMatcher.md)  
Matcher object that holds constraints for matchins settings (SettingsView) object.

[SettingsMatcherMode](../scope_harness.SettingsMatcherMode.md)  
Match mode for settings

[SettingsOption](../scope_harness.SettingsOption.md)  
This is a class holding properies of an option

[SettingsOptionMatcher](../scope_harness.SettingsOptionMatcher.md)  
Matcher object that holds constraints for matching a settings option.

[SettingsOptionType](../scope_harness.SettingsOptionType.md)  

[SettingsView](../scope_harness.SettingsView.md)  
This is a view on a scope settings returned by settings() method of ResultsView.

