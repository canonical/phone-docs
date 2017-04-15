---
Title: scope_harness.DepartmentMatcher
---
        
DepartmentMatcher
=================

 *class* `scope_harness.``DepartmentMatcher`(*(object)arg1*)<a href="#scope_harness.DepartmentMatcher" class="headerlink" title="Permalink to this definition"></a>  
Matcher object that holds constraints for matching departments.

 `all_label`(*(DepartmentMatcher)arg1*, *(str)arg2*) → DepartmentMatcher :<a href="#scope_harness.DepartmentMatcher.all_label" class="headerlink" title="Permalink to this definition"></a>  
Set the department alternate (the ‘all’ variant’) label to match

 `child`(*(DepartmentMatcher)arg1*, *(ChildDepartmentMatcher)arg2*) → DepartmentMatcher :<a href="#scope_harness.DepartmentMatcher.child" class="headerlink" title="Permalink to this definition"></a>  
Set the matcher for child department

 `has_at_least`(*(DepartmentMatcher)arg1*, *(int)arg2*) → DepartmentMatcher :<a href="#scope_harness.DepartmentMatcher.has_at_least" class="headerlink" title="Permalink to this definition"></a>  
Set the minimum number of departments

 `has_exactly`(*(DepartmentMatcher)arg1*, *(int)arg2*) → DepartmentMatcher :<a href="#scope_harness.DepartmentMatcher.has_exactly" class="headerlink" title="Permalink to this definition"></a>  
Set the exact number of departments

 `id`(*(DepartmentMatcher)arg1*, *(str)arg2*) → DepartmentMatcher :<a href="#scope_harness.DepartmentMatcher.id" class="headerlink" title="Permalink to this definition"></a>  
Set the department id to match

 `is_hidden`(*(DepartmentMatcher)arg1*, *(bool)arg2*) → DepartmentMatcher :<a href="#scope_harness.DepartmentMatcher.is_hidden" class="headerlink" title="Permalink to this definition"></a>  
Set the ‘hidden’ flag to match

 `is_root`(*(DepartmentMatcher)arg1*, *(bool)arg2*) → DepartmentMatcher :<a href="#scope_harness.DepartmentMatcher.is_root" class="headerlink" title="Permalink to this definition"></a>  
Set the ‘root’ flag to match

 `label`(*(DepartmentMatcher)arg1*, *(str)arg2*) → DepartmentMatcher :<a href="#scope_harness.DepartmentMatcher.label" class="headerlink" title="Permalink to this definition"></a>  
Set the department name (label) to match

 `match`(*(DepartmentMatcher)arg1*, *(Department)arg2*) → MatchResult :<a href="#scope_harness.DepartmentMatcher.match" class="headerlink" title="Permalink to this definition"></a>  
> Match the department

match( (ResultMatcher)arg1, (MatchResult)arg2, (Department)arg3) -&gt; None :  
Match the department

 `mode`(*(DepartmentMatcher)arg1*, *(DepartmentMatcherMode)arg2*) → DepartmentMatcher :<a href="#scope_harness.DepartmentMatcher.mode" class="headerlink" title="Permalink to this definition"></a>  
Set the matching mode, see DepartmentMatcherMode.

 `parent_id`(*(DepartmentMatcher)arg1*, *(str)arg2*) → DepartmentMatcher :<a href="#scope_harness.DepartmentMatcher.parent_id" class="headerlink" title="Permalink to this definition"></a>  
Set the id of parent department to match

 `parent_label`(*(DepartmentMatcher)arg1*, *(str)arg2*) → DepartmentMatcher :<a href="#scope_harness.DepartmentMatcher.parent_label" class="headerlink" title="Permalink to this definition"></a>  
Set the label of parent department to match

