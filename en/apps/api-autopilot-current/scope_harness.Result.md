---
Title: scope_harness.Result
---
        
Result
======

 *class* `scope_harness.``Result`<a href="#scope_harness.Result" class="headerlink" title="Permalink to this definition"></a>  
Represents a read-only view on a result returned by a scope

 `__getitem__`(*(Result)arg1*, *(str)arg2*) → object :<a href="#scope_harness.Result.__getitem__" class="headerlink" title="Permalink to this definition"></a>  
Get result attribute by name.

|             |                                      |
|-------------|--------------------------------------|
| Parameters: | **arg2** (*string*) – attribute name |
| Returns:    | attribute value                      |
| Raises:     | ValueError if not found              |

 `__init__`()<a href="#scope_harness.Result.__init__" class="headerlink" title="Permalink to this definition"></a>  
Raises an exception This class cannot be instantiated from Python

 `__module__` *= 'scope\_harness'*<a href="#scope_harness.Result.__module__" class="headerlink" title="Permalink to this definition"></a>  

 `__reduce__`()<a href="#scope_harness.Result.__reduce__" class="headerlink" title="Permalink to this definition"></a>  

 `art`<a href="#scope_harness.Result.art" class="headerlink" title="Permalink to this definition"></a>  

 `attributes`<a href="#scope_harness.Result.attributes" class="headerlink" title="Permalink to this definition"></a>  

 `background`<a href="#scope_harness.Result.background" class="headerlink" title="Permalink to this definition"></a>  

 `dnd_uri`<a href="#scope_harness.Result.dnd_uri" class="headerlink" title="Permalink to this definition"></a>  

 `emblem`<a href="#scope_harness.Result.emblem" class="headerlink" title="Permalink to this definition"></a>  

 `long_press`(*(Result)arg1*) → AbstractView :<a href="#scope_harness.Result.long_press" class="headerlink" title="Permalink to this definition"></a>  
Activates the result, as if user long-pressed it. Returns an instance of PreviewView (if result was previewed) or None (if result’s uri was a canned scope query)

|          |                     |
|----------|---------------------|
| Returns: | PreviewView or None |

 `mascot`<a href="#scope_harness.Result.mascot" class="headerlink" title="Permalink to this definition"></a>  

 `subtitle`<a href="#scope_harness.Result.subtitle" class="headerlink" title="Permalink to this definition"></a>  

 `summary`<a href="#scope_harness.Result.summary" class="headerlink" title="Permalink to this definition"></a>  

 `tap`(*(Result)arg1*) → AbstractView :<a href="#scope_harness.Result.tap" class="headerlink" title="Permalink to this definition"></a>  
Activates the result, as if user tapped it. Returns an instance of PreviewView (if result was previewed) or ResultsView (if result’s uri was a canned scope query, resulting in a new search)

|          |                                        |
|----------|----------------------------------------|
| Returns: | instance of PreviewView or ResultsView |

 `tap_action`(*(Result)arg1*, *(str)arg2*) → AbstractView :<a href="#scope_harness.Result.tap_action" class="headerlink" title="Permalink to this definition"></a>  
Activates result action. Returns the ResultsView where affected result may potentially be updated.

 `title`<a href="#scope_harness.Result.title" class="headerlink" title="Permalink to this definition"></a>  

 `uri`<a href="#scope_harness.Result.uri" class="headerlink" title="Permalink to this definition"></a>  

