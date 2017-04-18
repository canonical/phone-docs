---
Title: autopilot.exceptions
---

# autopilot.exceptions

<!-- Start Namespace Content -->
<span id="autopilot-exceptions-autopilot-exceptions"></span>
<p>Autopilot Exceptions.</p>
<p>This module contains exceptions that autopilot may raise in various conditions.
Each exception is documented with when it is raised: a generic description in
this module, as well as a detailed description in the function or method that
raises it.</p>
<dl class="exception">
<dt id="autopilot.exceptions.BackendException">
<em class="property">exception </em><tt class="descclassname">autopilot.exceptions.</tt><tt class="descname">BackendException</tt><big>(</big><em>original_exception</em><big>)</big><a class="headerlink" href="#autopilot.exceptions.BackendException" title="Permalink to this definition"></a></dt>
<dd><p>An error occured while trying to initialise an autopilot backend.</p>
</dd></dl>
<dl class="exception">
<dt id="autopilot.exceptions.ProcessSearchError">
<em class="property">exception </em><tt class="descclassname">autopilot.exceptions.</tt><tt class="descname">ProcessSearchError</tt><a class="headerlink" href="#autopilot.exceptions.ProcessSearchError" title="Permalink to this definition"></a></dt>
<dd><p>Object introspection error occured.</p>
</dd></dl>
<dl class="exception">
<dt id="autopilot.exceptions.StateNotFoundError">
<em class="property">exception </em><tt class="descclassname">autopilot.exceptions.</tt><tt class="descname">StateNotFoundError</tt><big>(</big><em>class_name=None</em>, <em>**filters</em><big>)</big><a class="headerlink" href="#autopilot.exceptions.StateNotFoundError" title="Permalink to this definition"></a></dt>
<dd><p>Raised when a piece of state information is not found.</p>
<p>This exception is commonly raised when the application has destroyed (or
not yet created) the object you are trying to access in autopilot. This
typically happens for a number of possible reasons:</p>
<ul class="simple">
<li>The UI widget you are trying to access with
<a class="reference internal" href="../1.5.0/autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.select_single" title="autopilot.introspection.ProxyBase.select_single"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt></a> or
<a class="reference internal" href="../1.5.0/autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.wait_select_single" title="autopilot.introspection.ProxyBase.wait_select_single"><tt class="xref py py-meth docutils literal"><span class="pre">wait_select_single</span></tt></a> or
<a class="reference internal" href="../1.5.0/autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.select_many" title="autopilot.introspection.ProxyBase.select_many"><tt class="xref py py-meth docutils literal"><span class="pre">select_many</span></tt></a> does not exist
yet.</li>
<li>The UI widget you are trying to access has been destroyed by the
application.</li>
</ul>
</dd></dl>
<dl class="exception">
<dt id="autopilot.exceptions.InvalidXPathQuery">
<em class="property">exception </em><tt class="descclassname">autopilot.exceptions.</tt><tt class="descname">InvalidXPathQuery</tt><a class="headerlink" href="#autopilot.exceptions.InvalidXPathQuery" title="Permalink to this definition"></a></dt>
<dd><p>Raised when an XPathselect query is invalid or unsupported.</p>
</dd></dl>
<!-- End Namespace Content -->
