---
Title: scope_harness.CategoryListMatcher
---
        
CategoryListMatcher
===================

 *class* `scope_harness.``CategoryListMatcher`(*(object)arg1*)<a href="#scope_harness.CategoryListMatcher" class="headerlink" title="Permalink to this definition"></a>  
Matcher object that holds constraints for matching search categories.

 `category`(*(CategoryListMatcher)arg1*, *(CategoryMatcher)arg2*) → CategoryListMatcher :<a href="#scope_harness.CategoryListMatcher.category" class="headerlink" title="Permalink to this definition"></a>  
Set the category matcher

 `has_at_least`(*(CategoryListMatcher)arg1*, *(int)arg2*) → CategoryListMatcher :<a href="#scope_harness.CategoryListMatcher.has_at_least" class="headerlink" title="Permalink to this definition"></a>  
Set the minimum number of expected categories

 `has_exactly`(*(CategoryListMatcher)arg1*, *(int)arg2*) → CategoryListMatcher :<a href="#scope_harness.CategoryListMatcher.has_exactly" class="headerlink" title="Permalink to this definition"></a>  
Set the exact number of expected categories

 `match`(*(CategoryListMatcher)arg1*, *(object)arg2*) → MatchResult :<a href="#scope_harness.CategoryListMatcher.match" class="headerlink" title="Permalink to this definition"></a>  
Match the list of categories

 `mode`(*(CategoryListMatcher)arg1*, *(CategoryListMatcherMode)arg2*) → CategoryListMatcher :<a href="#scope_harness.CategoryListMatcher.mode" class="headerlink" title="Permalink to this definition"></a>  
Set the matching mode, see CategoryListMatcherMode.

