---
Title: scope_harness.ResultsView
---

# scope_harness.ResultsView

<dl class="class">
<dt id="scope_harness.ResultsView">
<em class="property">class </em><tt class="descclassname">scope_harness.</tt><tt class="descname">ResultsView</tt><a class="headerlink" href="#scope_harness.ResultsView" title="Permalink to this definition"></a></dt>
<dd><p>This is the main class for driving search and inspecting search results. Set search_query property to invoke search, then inspect categories property to access returned categories and their results. Use browse_department method to change active department.</p>
<dl class="attribute">
<dt id="scope_harness.ResultsView.active_scope">
<tt class="descname">active_scope</tt><a class="headerlink" href="#scope_harness.ResultsView.active_scope" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.alt_department_id">
<tt class="descname">alt_department_id</tt><a class="headerlink" href="#scope_harness.ResultsView.alt_department_id" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="scope_harness.ResultsView.browse_alt_department">
<tt class="descname">browse_alt_department</tt><big>(</big><em>(ResultsView)arg1</em>, <em>(str)arg2</em><big>)</big> &rarr; Department :<a class="headerlink" href="#scope_harness.ResultsView.browse_alt_department" title="Permalink to this definition"></a></dt>
<dd><p>Go to a specific alternate (e.g. the top-right selection filter if provided by the scope) department by id. Returns Department instance.</p>
</dd></dl>
<dl class="method">
<dt id="scope_harness.ResultsView.browse_department">
<tt class="descname">browse_department</tt><big>(</big><em>(ResultsView)arg1</em>, <em>(str)arg2</em><big>)</big> &rarr; Department :<a class="headerlink" href="#scope_harness.ResultsView.browse_department" title="Permalink to this definition"></a></dt>
<dd><p>Go to a specific department by id. Returns Department instance.</p>
</dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.categories">
<tt class="descname">categories</tt><a class="headerlink" href="#scope_harness.ResultsView.categories" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="scope_harness.ResultsView.category">
<tt class="descname">category</tt><big>(</big><em>(ResultsView)arg1</em>, <em>(int)arg2</em><big>)</big> &rarr; Category :<a class="headerlink" href="#scope_harness.ResultsView.category" title="Permalink to this definition"></a></dt>
<dd><blockquote>
</blockquote>
<dl class="docutils">
<dt>category( (ResultsView)arg1, (str)arg2) -&gt; Category :</dt>
<dd>Get Category instance by id</dd>
</dl>
</dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.customizations">
<tt class="descname">customizations</tt><a class="headerlink" href="#scope_harness.ResultsView.customizations" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.department_id">
<tt class="descname">department_id</tt><a class="headerlink" href="#scope_harness.ResultsView.department_id" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.description">
<tt class="descname">description</tt><a class="headerlink" href="#scope_harness.ResultsView.description" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.display_name">
<tt class="descname">display_name</tt><a class="headerlink" href="#scope_harness.ResultsView.display_name" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.has_alt_departments">
<tt class="descname">has_alt_departments</tt><a class="headerlink" href="#scope_harness.ResultsView.has_alt_departments" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.has_departments">
<tt class="descname">has_departments</tt><a class="headerlink" href="#scope_harness.ResultsView.has_departments" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.icon_hint">
<tt class="descname">icon_hint</tt><a class="headerlink" href="#scope_harness.ResultsView.icon_hint" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.query_id">
<tt class="descname">query_id</tt><a class="headerlink" href="#scope_harness.ResultsView.query_id" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.scope_id">
<tt class="descname">scope_id</tt><a class="headerlink" href="#scope_harness.ResultsView.scope_id" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.search_hint">
<tt class="descname">search_hint</tt><a class="headerlink" href="#scope_harness.ResultsView.search_hint" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.search_query">
<tt class="descname">search_query</tt><a class="headerlink" href="#scope_harness.ResultsView.search_query" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.session_id">
<tt class="descname">session_id</tt><a class="headerlink" href="#scope_harness.ResultsView.session_id" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.settings">
<tt class="descname">settings</tt><a class="headerlink" href="#scope_harness.ResultsView.settings" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.ResultsView.shortcut">
<tt class="descname">shortcut</tt><a class="headerlink" href="#scope_harness.ResultsView.shortcut" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
</dd></dl>
