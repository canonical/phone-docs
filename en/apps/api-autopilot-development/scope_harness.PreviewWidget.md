---
Title: scope_harness.PreviewWidget
---
        
PreviewWidget
=============

 *class* `scope_harness.``PreviewWidget`<a href="#scope_harness.PreviewWidget" class="headerlink" title="Permalink to this definition"></a>  
This class represents a single widget of a preview, such as an image or header. The ‘data’ property is a regular python dictionary that corresponds to Scopes API VariantMap and contains actual key-values that constitute the widget. See the documentation of Unity Scopes API for more information about supported values.

 `data`<a href="#scope_harness.PreviewWidget.data" class="headerlink" title="Permalink to this definition"></a>  

 `id`<a href="#scope_harness.PreviewWidget.id" class="headerlink" title="Permalink to this definition"></a>  

 `trigger`(*(PreviewWidget)arg1*, *(str)arg2*, *(object)arg3*) → AbstractView :<a href="#scope_harness.PreviewWidget.trigger" class="headerlink" title="Permalink to this definition"></a>  
Trigger preview action.

|             |                                                                                                            |
|-------------|------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **arg2** (*string*) – action identifier                                                                
  -   **arg3** (*dict*) – dictionary holding additional action data, typically the value of `data` property.  |
| Returns:    | instance of PreviewView or ResultsView.                                                                    |
| Raises:     | ValueError if action couldn’t be executed                                                                  |

 `type`<a href="#scope_harness.PreviewWidget.type" class="headerlink" title="Permalink to this definition"></a>  

