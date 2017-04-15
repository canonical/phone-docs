---
Title: scope_harness.Department
---
        
Department
==========

 *class* `scope_harness.``Department`<a href="#scope_harness.Department" class="headerlink" title="Permalink to this definition"></a>  
Represents a read-only view of a department returned by a scope. Use id, label, all\_label properties to inspect it, and children property or child method to inspect child departments (instances of ChildDepartment). This class supports \_\_getitem\_\_ call, which acts as a shortcut for child(index) method, and responds to \_\_len\_\_ call, so python’s len(department) may be used instead of department.size

 `all_label`<a href="#scope_harness.Department.all_label" class="headerlink" title="Permalink to this definition"></a>  

 `child`(*(Department)arg1*, *(int)arg2*) → ChildDepartment :<a href="#scope_harness.Department.child" class="headerlink" title="Permalink to this definition"></a>  
Get child department by its index (a number)

 `children`<a href="#scope_harness.Department.children" class="headerlink" title="Permalink to this definition"></a>  

 `id`<a href="#scope_harness.Department.id" class="headerlink" title="Permalink to this definition"></a>  

 `is_hidden`<a href="#scope_harness.Department.is_hidden" class="headerlink" title="Permalink to this definition"></a>  

 `is_root`<a href="#scope_harness.Department.is_root" class="headerlink" title="Permalink to this definition"></a>  

 `label`<a href="#scope_harness.Department.label" class="headerlink" title="Permalink to this definition"></a>  

 `parent_id`<a href="#scope_harness.Department.parent_id" class="headerlink" title="Permalink to this definition"></a>  

 `parent_label`<a href="#scope_harness.Department.parent_label" class="headerlink" title="Permalink to this definition"></a>  

 `size`<a href="#scope_harness.Department.size" class="headerlink" title="Permalink to this definition"></a>  

