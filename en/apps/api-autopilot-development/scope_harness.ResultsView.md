---
Title: scope_harness.ResultsView
---
        
ResultsView
===========

 *class* `scope_harness.``ResultsView`<a href="#scope_harness.ResultsView" class="headerlink" title="Permalink to this definition"></a>  
This is the main class for driving search and inspecting search results. Set search\_query property to invoke search, then inspect categories property to access returned categories and their results. Use browse\_department method to change active department.

 `active_scope`<a href="#scope_harness.ResultsView.active_scope" class="headerlink" title="Permalink to this definition"></a>  

 `alt_department_id`<a href="#scope_harness.ResultsView.alt_department_id" class="headerlink" title="Permalink to this definition"></a>  

 `browse_alt_department`(*(ResultsView)arg1*, *(str)arg2*) → Department :<a href="#scope_harness.ResultsView.browse_alt_department" class="headerlink" title="Permalink to this definition"></a>  
Go to a specific alternate (e.g. the top-right selection filter if provided by the scope) department by id. Returns Department instance.

 `browse_department`(*(ResultsView)arg1*, *(str)arg2*) → Department :<a href="#scope_harness.ResultsView.browse_department" class="headerlink" title="Permalink to this definition"></a>  
Go to a specific department by id. Returns Department instance.

 `categories`<a href="#scope_harness.ResultsView.categories" class="headerlink" title="Permalink to this definition"></a>  

 `category`(*(ResultsView)arg1*, *(int)arg2*) → Category :<a href="#scope_harness.ResultsView.category" class="headerlink" title="Permalink to this definition"></a>  
> Get Category instance by row index

category( (ResultsView)arg1, (str)arg2) -&gt; Category :  
Get Category instance by id

 `customizations`<a href="#scope_harness.ResultsView.customizations" class="headerlink" title="Permalink to this definition"></a>  

 `department_id`<a href="#scope_harness.ResultsView.department_id" class="headerlink" title="Permalink to this definition"></a>  

 `description`<a href="#scope_harness.ResultsView.description" class="headerlink" title="Permalink to this definition"></a>  

 `display_name`<a href="#scope_harness.ResultsView.display_name" class="headerlink" title="Permalink to this definition"></a>  

 `has_alt_departments`<a href="#scope_harness.ResultsView.has_alt_departments" class="headerlink" title="Permalink to this definition"></a>  

 `has_departments`<a href="#scope_harness.ResultsView.has_departments" class="headerlink" title="Permalink to this definition"></a>  

 `icon_hint`<a href="#scope_harness.ResultsView.icon_hint" class="headerlink" title="Permalink to this definition"></a>  

 `query_id`<a href="#scope_harness.ResultsView.query_id" class="headerlink" title="Permalink to this definition"></a>  

 `scope_id`<a href="#scope_harness.ResultsView.scope_id" class="headerlink" title="Permalink to this definition"></a>  

 `search_hint`<a href="#scope_harness.ResultsView.search_hint" class="headerlink" title="Permalink to this definition"></a>  

 `search_query`<a href="#scope_harness.ResultsView.search_query" class="headerlink" title="Permalink to this definition"></a>  

 `session_id`<a href="#scope_harness.ResultsView.session_id" class="headerlink" title="Permalink to this definition"></a>  

 `settings`<a href="#scope_harness.ResultsView.settings" class="headerlink" title="Permalink to this definition"></a>  

 `shortcut`<a href="#scope_harness.ResultsView.shortcut" class="headerlink" title="Permalink to this definition"></a>  

