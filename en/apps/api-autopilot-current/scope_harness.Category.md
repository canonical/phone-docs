---
Title: scope_harness.Category
---
        
Category
========

 *class* `scope_harness.``Category`<a href="#scope_harness.Category" class="headerlink" title="Permalink to this definition"></a>  
Represents a read-only view of a category returned by scope

 `components`<a href="#scope_harness.Category.components" class="headerlink" title="Permalink to this definition"></a>  

 `empty`<a href="#scope_harness.Category.empty" class="headerlink" title="Permalink to this definition"></a>  

 `header_link`<a href="#scope_harness.Category.header_link" class="headerlink" title="Permalink to this definition"></a>  

 `icon`<a href="#scope_harness.Category.icon" class="headerlink" title="Permalink to this definition"></a>  

 `id`<a href="#scope_harness.Category.id" class="headerlink" title="Permalink to this definition"></a>  

 `renderer`<a href="#scope_harness.Category.renderer" class="headerlink" title="Permalink to this definition"></a>  

 `result`(*(Category)arg1*, *(str)arg2*) → Result :<a href="#scope_harness.Category.result" class="headerlink" title="Permalink to this definition"></a>  
> Get a Result instance by its uri.
>
> |             |                                 |
> |-------------|---------------------------------|
> | param arg2: | uri                             |
> | type arg2:  | string                          |
> | returns:    | instance of Result              |
> | raises:     | ValueError if uri doesn’t exist |
>
result( (Category)arg1, (int)arg2) -&gt; Result :  
Get a Result instance by index.

|             |                                |
|-------------|--------------------------------|
| param arg2: | index                          |
| type arg2:  | int                            |
| returns:    | instance of Result             |
| raises:     | ValueError if index is invalid |

 `results`<a href="#scope_harness.Category.results" class="headerlink" title="Permalink to this definition"></a>  

 `title`<a href="#scope_harness.Category.title" class="headerlink" title="Permalink to this definition"></a>  

