---
Title: scope_harness.ScopeHarness
---

# scope_harness.ScopeHarness

<dl class="class">
<dt id="scope_harness.ScopeHarness">
<em class="property">class </em><tt class="descclassname">scope_harness.</tt><tt class="descname">ScopeHarness</tt><a class="headerlink" href="#scope_harness.ScopeHarness" title="Permalink to this definition"></a></dt>
<dd><p>This is the main class for scope harness testing. An instance of it needs to be created using one of the static class methods (new_from_*) before any tests can be performed.
The instance of ResultsView provided by results_view property is the entry point for invoking actual queries.</p>
<dl class="docutils">
<dt>Here is an example of a search request:</dt>
<dd>harness = ScopeHarness.new_from_scope_list(Parameters([&#8216;my-scope.ini&#8217;])
view = harness.results_view
view.active_scope = &#8216;my-scope&#8217;
view.search_query = &#8216;&#8217;</dd>
</dl>
<dl class="staticmethod">
<dt id="scope_harness.ScopeHarness.new_from_pre_existing_config">
<em class="property">static </em><tt class="descname">new_from_pre_existing_config</tt><big>(</big><em>(str)arg1</em><big>)</big> &rarr; ScopeHarness :<a class="headerlink" href="#scope_harness.ScopeHarness.new_from_pre_existing_config" title="Permalink to this definition"></a></dt>
<dd><p>Creates ScopeHarness instance from scope runtime configuration files in given directory</p>
</dd></dl>
<dl class="staticmethod">
<dt id="scope_harness.ScopeHarness.new_from_scope_list">
<em class="property">static </em><tt class="descname">new_from_scope_list</tt><big>(</big><em>(Parameters)arg1</em><big>)</big> &rarr; ScopeHarness :<a class="headerlink" href="#scope_harness.ScopeHarness.new_from_scope_list" title="Permalink to this definition"></a></dt>
<dd><p>Creates ScopeHarness instance from a configuration provided by an instance of CustomRegistry passed to this factory method</p>
</dd></dl>
<dl class="staticmethod">
<dt id="scope_harness.ScopeHarness.new_from_system">
<em class="property">static </em><tt class="descname">new_from_system</tt><big>(</big><big>)</big> &rarr; ScopeHarness :<a class="headerlink" href="#scope_harness.ScopeHarness.new_from_system" title="Permalink to this definition"></a></dt>
<dd><p>Creates ScopeHarness instance using default configuration from the system</p>
</dd></dl>
</dd></dl>
