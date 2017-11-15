---
Title: scope_harness.CategoryListMatcher
---

# scope_harness.CategoryListMatcher

<dl class="class">
<dt id="scope_harness.CategoryListMatcher">
<em class="property">class </em><tt class="descclassname">scope_harness.</tt><tt class="descname">CategoryListMatcher</tt><big>(</big><em>(object)arg1</em><big>)</big><a class="headerlink" href="#scope_harness.CategoryListMatcher" title="Permalink to this definition"></a></dt>
<dd><p>Matcher object that holds constraints for matching search categories.</p>
<dl class="method">
<dt id="scope_harness.CategoryListMatcher.category">
<tt class="descname">category</tt><big>(</big><em>(CategoryListMatcher)arg1</em>, <em>(CategoryMatcher)arg2</em><big>)</big> &rarr; CategoryListMatcher :<a class="headerlink" href="#scope_harness.CategoryListMatcher.category" title="Permalink to this definition"></a></dt>
<dd><p>Set the category matcher</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.CategoryListMatcher.has_at_least">
<tt class="descname">has_at_least</tt><big>(</big><em>(CategoryListMatcher)arg1</em>, <em>(int)arg2</em><big>)</big> &rarr; CategoryListMatcher :<a class="headerlink" href="#scope_harness.CategoryListMatcher.has_at_least" title="Permalink to this definition"></a></dt>
<dd><p>Set the minimum number of expected categories</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.CategoryListMatcher.has_exactly">
<tt class="descname">has_exactly</tt><big>(</big><em>(CategoryListMatcher)arg1</em>, <em>(int)arg2</em><big>)</big> &rarr; CategoryListMatcher :<a class="headerlink" href="#scope_harness.CategoryListMatcher.has_exactly" title="Permalink to this definition"></a></dt>
<dd><p>Set the exact number of expected categories</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.CategoryListMatcher.match">
<tt class="descname">match</tt><big>(</big><em>(CategoryListMatcher)arg1</em>, <em>(object)arg2</em><big>)</big> &rarr; MatchResult :<a class="headerlink" href="#scope_harness.CategoryListMatcher.match" title="Permalink to this definition"></a></dt>
<dd><p>Match the list of categories</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.CategoryListMatcher.mode">
<tt class="descname">mode</tt><big>(</big><em>(CategoryListMatcher)arg1</em>, <em>(CategoryListMatcherMode)arg2</em><big>)</big> &rarr; CategoryListMatcher :<a class="headerlink" href="#scope_harness.CategoryListMatcher.mode" title="Permalink to this definition"></a></dt>
<dd><p>Set the matching mode, see CategoryListMatcherMode.</p>
</dd></dl>
</dd></dl>
