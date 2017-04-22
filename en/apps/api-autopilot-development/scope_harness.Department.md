---
Title: scope_harness.Department
---

# scope_harness.Department

<dl class="class">
<dt id="scope_harness.Department">
<em class="property">class </em><tt class="descclassname">scope_harness.</tt><tt class="descname">Department</tt><a class="headerlink" href="#scope_harness.Department" title="Permalink to this definition"></a></dt>
<dd><p>Represents a read-only view of a department returned by a scope. Use id, label, all_label properties to inspect it, and children property or child method to inspect child departments (instances of ChildDepartment).  This class supports __getitem__ call, which acts as a shortcut for child(index) method, and responds to __len__ call, so python&#8217;s len(department) may be used instead of department.size</p>
<dl class="attribute">
<dt id="scope_harness.Department.all_label">
<tt class="descname">all_label</tt><a class="headerlink" href="#scope_harness.Department.all_label" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="scope_harness.Department.child">
<tt class="descname">child</tt><big>(</big><em>(Department)arg1</em>, <em>(int)arg2</em><big>)</big> &rarr; ChildDepartment :<a class="headerlink" href="#scope_harness.Department.child" title="Permalink to this definition"></a></dt>
<dd><p>Get child department by its index (a number)</p>
</dd></dl>
<dl class="attribute">
<dt id="scope_harness.Department.children">
<tt class="descname">children</tt><a class="headerlink" href="#scope_harness.Department.children" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Department.id">
<tt class="descname">id</tt><a class="headerlink" href="#scope_harness.Department.id" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Department.is_hidden">
<tt class="descname">is_hidden</tt><a class="headerlink" href="#scope_harness.Department.is_hidden" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Department.is_root">
<tt class="descname">is_root</tt><a class="headerlink" href="#scope_harness.Department.is_root" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Department.label">
<tt class="descname">label</tt><a class="headerlink" href="#scope_harness.Department.label" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Department.parent_id">
<tt class="descname">parent_id</tt><a class="headerlink" href="#scope_harness.Department.parent_id" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Department.parent_label">
<tt class="descname">parent_label</tt><a class="headerlink" href="#scope_harness.Department.parent_label" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Department.size">
<tt class="descname">size</tt><a class="headerlink" href="#scope_harness.Department.size" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
</dd></dl>
