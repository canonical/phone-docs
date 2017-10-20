---
Title: scope_harness.MatchResult
---

# scope_harness.MatchResult

<dl class="class">
<dt id="scope_harness.MatchResult">
<em class="property">class </em><tt class="descclassname">scope_harness.</tt><tt class="descname">MatchResult</tt><big>(</big><em>(object)arg1</em><big>)</big><a class="headerlink" href="#scope_harness.MatchResult" title="Permalink to this definition"></a></dt>
<dd><p>Represents the result of matching and is the final object you want to check in your tests. An instance of MatchResult can be obtained by calling one of the match() methods of ResultMatcher, CategoryMatcher, CategoryListMatcher, DepartmentMatcher and ChildDepartmentMatcher. When implementing tests on top of scope_harness.testing.ScopeHarnessTestCase class, use its assertMatchResult helper method to assert on MatchResult instance.</p>
<dl class="attribute">
<dt id="scope_harness.MatchResult.concat_failures">
<tt class="descname">concat_failures</tt><a class="headerlink" href="#scope_harness.MatchResult.concat_failures" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="scope_harness.MatchResult.failure">
<tt class="descname">failure</tt><big>(</big><em>(MatchResult)arg1</em>, <em>(str)arg2</em><big>)</big> &rarr; None<a class="headerlink" href="#scope_harness.MatchResult.failure" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.MatchResult.failures">
<tt class="descname">failures</tt><a class="headerlink" href="#scope_harness.MatchResult.failures" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.MatchResult.success">
<tt class="descname">success</tt><a class="headerlink" href="#scope_harness.MatchResult.success" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
</dd></dl>
<h2>Search results matchers<a class="headerlink" href="#search-results-matchers" title="Permalink to this headline"></a></h2>
