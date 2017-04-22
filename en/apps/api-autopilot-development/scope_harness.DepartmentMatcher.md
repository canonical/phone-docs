---
Title: scope_harness.DepartmentMatcher
---

# scope_harness.DepartmentMatcher

<dl class="class">
<dt id="scope_harness.DepartmentMatcher">
<em class="property">class </em><tt class="descclassname">scope_harness.</tt><tt class="descname">DepartmentMatcher</tt><big>(</big><em>(object)arg1</em><big>)</big><a class="headerlink" href="#scope_harness.DepartmentMatcher" title="Permalink to this definition"></a></dt>
<dd><p>Matcher object that holds constraints for matching departments.</p>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.all_label">
<tt class="descname">all_label</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(str)arg2</em><big>)</big> &rarr; DepartmentMatcher :<a class="headerlink" href="#scope_harness.DepartmentMatcher.all_label" title="Permalink to this definition"></a></dt>
<dd><p>Set the department alternate (the &#8216;all&#8217; variant&#8217;) label to match</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.child">
<tt class="descname">child</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(ChildDepartmentMatcher)arg2</em><big>)</big> &rarr; DepartmentMatcher :<a class="headerlink" href="#scope_harness.DepartmentMatcher.child" title="Permalink to this definition"></a></dt>
<dd><p>Set the matcher for child department</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.has_at_least">
<tt class="descname">has_at_least</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(int)arg2</em><big>)</big> &rarr; DepartmentMatcher :<a class="headerlink" href="#scope_harness.DepartmentMatcher.has_at_least" title="Permalink to this definition"></a></dt>
<dd><p>Set the minimum number of departments</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.has_exactly">
<tt class="descname">has_exactly</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(int)arg2</em><big>)</big> &rarr; DepartmentMatcher :<a class="headerlink" href="#scope_harness.DepartmentMatcher.has_exactly" title="Permalink to this definition"></a></dt>
<dd><p>Set the exact number of departments</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.id">
<tt class="descname">id</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(str)arg2</em><big>)</big> &rarr; DepartmentMatcher :<a class="headerlink" href="#scope_harness.DepartmentMatcher.id" title="Permalink to this definition"></a></dt>
<dd><p>Set the department id to match</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.is_hidden">
<tt class="descname">is_hidden</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(bool)arg2</em><big>)</big> &rarr; DepartmentMatcher :<a class="headerlink" href="#scope_harness.DepartmentMatcher.is_hidden" title="Permalink to this definition"></a></dt>
<dd><p>Set the &#8216;hidden&#8217; flag to match</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.is_root">
<tt class="descname">is_root</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(bool)arg2</em><big>)</big> &rarr; DepartmentMatcher :<a class="headerlink" href="#scope_harness.DepartmentMatcher.is_root" title="Permalink to this definition"></a></dt>
<dd><p>Set the &#8216;root&#8217; flag to match</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.label">
<tt class="descname">label</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(str)arg2</em><big>)</big> &rarr; DepartmentMatcher :<a class="headerlink" href="#scope_harness.DepartmentMatcher.label" title="Permalink to this definition"></a></dt>
<dd><p>Set the department name (label) to match</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.match">
<tt class="descname">match</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(Department)arg2</em><big>)</big> &rarr; MatchResult :<a class="headerlink" href="#scope_harness.DepartmentMatcher.match" title="Permalink to this definition"></a></dt>
<dd><blockquote>
</blockquote>
<dl class="docutils">
<dt>match( (ResultMatcher)arg1, (MatchResult)arg2, (Department)arg3) -&gt; None :</dt>
<dd>Match the department</dd>
</dl>
</dd></dl>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.mode">
<tt class="descname">mode</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(DepartmentMatcherMode)arg2</em><big>)</big> &rarr; DepartmentMatcher :<a class="headerlink" href="#scope_harness.DepartmentMatcher.mode" title="Permalink to this definition"></a></dt>
<dd><p>Set the matching mode, see DepartmentMatcherMode.</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.parent_id">
<tt class="descname">parent_id</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(str)arg2</em><big>)</big> &rarr; DepartmentMatcher :<a class="headerlink" href="#scope_harness.DepartmentMatcher.parent_id" title="Permalink to this definition"></a></dt>
<dd><p>Set the id of parent department to match</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.DepartmentMatcher.parent_label">
<tt class="descname">parent_label</tt><big>(</big><em>(DepartmentMatcher)arg1</em>, <em>(str)arg2</em><big>)</big> &rarr; DepartmentMatcher :<a class="headerlink" href="#scope_harness.DepartmentMatcher.parent_label" title="Permalink to this definition"></a></dt>
<dd><p>Set the label of parent department to match</p>
</dd></dl>
</dd></dl>
