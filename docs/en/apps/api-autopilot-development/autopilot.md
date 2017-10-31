---
Title: autopilot
---

# autopilot

<!-- Start Namespace Content -->
<span id="autopilot-global-stuff"></span>
<dl class="function">
<dt id="autopilot.get_test_configuration">
<tt class="descclassname">autopilot.</tt><tt class="descname">get_test_configuration</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.get_test_configuration" title="Permalink to this definition"></a></dt>
<dd><p>Get the test configuration dictionary.</p>
<p>Tests can be configured from the command line when the <tt class="docutils literal"><span class="pre">autopilot</span></tt> tool
is invoked. Typical use cases involve configuring the test suite to use
a particular binary (perhaps a locally built binary or one installed to
the system), or configuring which external services are faked.</p>
<p>This dictionary is populated from the <tt class="docutils literal"><span class="pre">--config</span></tt> option to the
<tt class="docutils literal"><span class="pre">autopilot</span> <span class="pre">run</span></tt> command. For example:</p>
<p><tt class="docutils literal"><span class="pre">autopilot</span> <span class="pre">run</span> <span class="pre">--config</span> <span class="pre">use_local</span> <span class="pre">some.test.id</span></tt></p>
<p>Will result in a dictionary where the key <tt class="docutils literal"><span class="pre">use_local</span></tt> is present, and
evaluates to true, e.g.-:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot</span> <span class="kn">import</span> <span class="n">get_test_configuration</span>
<span class="k">if</span> <span class="n">get_test_configuration</span><span class="p">[</span><span class="s">&#39;use_local&#39;</span><span class="p">]:</span> <span class="k">print</span><span class="p">(</span><span class="s">&quot;Using local binary&quot;</span><span class="p">)</span>
</pre>
<p>Values can also be specified. The following command:</p>
<p><tt class="docutils literal"><span class="pre">autopilot</span> <span class="pre">run</span> <span class="pre">--config</span> <span class="pre">fake_services=login</span> <span class="pre">some.test.id</span></tt></p>
<p>...will result in the key &#8216;fake_services&#8217; having the value &#8216;login&#8217;.</p>
<p>Autopilot itself does nothing with the conents of this dictionary. It is
entirely up to test authors to populate it, and to use the values as they
see fit.</p>
</dd></dl>
<dl class="function">
<dt id="autopilot.get_version_string">
<tt class="descclassname">autopilot.</tt><tt class="descname">get_version_string</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.get_version_string" title="Permalink to this definition"></a></dt>
<dd><p>Return the autopilot source and package versions.</p>
</dd></dl>
<dl class="function">
<dt id="autopilot.have_vis">
<tt class="descclassname">autopilot.</tt><tt class="descname">have_vis</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.have_vis" title="Permalink to this definition"></a></dt>
<dd><p>Return true if the vis package is installed.</p>
</dd></dl>
<!-- End Namespace Content -->
