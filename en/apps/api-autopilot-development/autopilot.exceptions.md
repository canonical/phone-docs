---
Title: autopilot.exceptions
---
        
<span id="autopilot-exceptions-autopilot-exceptions"></span>
Autopilot Exceptions.

This module contains exceptions that autopilot may raise in various conditions. Each exception is documented with when it is raised: a generic description in this module, as well as a detailed description in the function or method that raises it.

 *exception* `autopilot.exceptions.``BackendException`(*original\_exception*)<a href="#autopilot.exceptions.BackendException" class="headerlink" title="Permalink to this definition"></a>  
An error occured while trying to initialise an autopilot backend.

<!-- -->

 *exception* `autopilot.exceptions.``ProcessSearchError`<a href="#autopilot.exceptions.ProcessSearchError" class="headerlink" title="Permalink to this definition"></a>  
Object introspection error occured.

<!-- -->

 *exception* `autopilot.exceptions.``StateNotFoundError`(*class\_name=None*, *\*\*filters*)<a href="#autopilot.exceptions.StateNotFoundError" class="headerlink" title="Permalink to this definition"></a>  
Raised when a piece of state information is not found.

This exception is commonly raised when the application has destroyed (or not yet created) the object you are trying to access in autopilot. This typically happens for a number of possible reasons:

-   The UI widget you are trying to access with <a href="../../1.5.0/autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.select_single" class="reference internal" title="autopilot.introspection.ProxyBase.select_single"><code class="xref py py-meth docutils literal">select_single</code></a> or <a href="../../1.5.0/autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.wait_select_single" class="reference internal" title="autopilot.introspection.ProxyBase.wait_select_single"><code class="xref py py-meth docutils literal">wait_select_single</code></a> or <a href="../../1.5.0/autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.select_many" class="reference internal" title="autopilot.introspection.ProxyBase.select_many"><code class="xref py py-meth docutils literal">select_many</code></a> does not exist yet.
-   The UI widget you are trying to access has been destroyed by the application.

<!-- -->

 *exception* `autopilot.exceptions.``InvalidXPathQuery`<a href="#autopilot.exceptions.InvalidXPathQuery" class="headerlink" title="Permalink to this definition"></a>  
Raised when an XPathselect query is invalid or unsupported.

