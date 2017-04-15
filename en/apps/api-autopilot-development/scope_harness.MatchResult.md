---
Title: scope_harness.MatchResult
---
        
MatchResult
===========

 *class* `scope_harness.``MatchResult`(*(object)arg1*)<a href="#scope_harness.MatchResult" class="headerlink" title="Permalink to this definition"></a>  
Represents the result of matching and is the final object you want to check in your tests. An instance of MatchResult can be obtained by calling one of the match() methods of ResultMatcher, CategoryMatcher, CategoryListMatcher, DepartmentMatcher and ChildDepartmentMatcher. When implementing tests on top of scope\_harness.testing.ScopeHarnessTestCase class, use its assertMatchResult helper method to assert on MatchResult instance.

 `concat_failures`<a href="#scope_harness.MatchResult.concat_failures" class="headerlink" title="Permalink to this definition"></a>  

 `failure`(*(MatchResult)arg1*, *(str)arg2*) → None<a href="#scope_harness.MatchResult.failure" class="headerlink" title="Permalink to this definition"></a>  

 `failures`<a href="#scope_harness.MatchResult.failures" class="headerlink" title="Permalink to this definition"></a>  

 `success`<a href="#scope_harness.MatchResult.success" class="headerlink" title="Permalink to this definition"></a>  

Search results matchers<a href="#search-results-matchers" class="headerlink" title="Permalink to this headline"></a>
------------------------------------------------------------------------------------------------------------------------------

