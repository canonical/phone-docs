---
Title: porting-porting
---

# porting-porting

<p>This document contains hints as to what is required to port a test suite from any version of autopilot to any newer version.</p>
<p class="topic-title first">Contents</p>
<ul class="simple">
<li><a class="reference internal" href="#porting-autopilot-tests" id="id1">Porting Autopilot Tests</a><ul>
<li><a class="reference internal" href="#a-note-on-versions" id="id2">A note on Versions</a></li>
<li><a class="reference internal" href="#porting-to-autopilot-v1-4-x" id="id3">Porting to Autopilot v1.4.x</a><ul>
<li><a class="reference internal" href="#gtk-tests-and-boolean-parameters" id="id4">Gtk Tests and Boolean Parameters</a></li>
<li><a class="reference internal" href="#select-single-changes" id="id5"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt> Changes</a></li>
<li><a class="reference internal" href="#dbus-backends-and-dbusintrospectionobject-changes" id="id6">DBus backends and <tt class="xref py py-class docutils literal"><span class="pre">DBusIntrospectionObject</span></tt> changes</a></li>
<li><a class="reference internal" href="#python-3" id="id7">Python 3</a></li>
</ul>
</li>
<li><a class="reference internal" href="#porting-to-autopilot-v1-3-x" id="id8">Porting to Autopilot v1.3.x</a><ul>
<li><a class="reference internal" href="#qtintrospectiontestmixin-and-gtkintrospectiontestmixin-no-longer-exist" id="id9"><tt class="docutils literal"><span class="pre">QtIntrospectionTestMixin</span></tt> and <tt class="docutils literal"><span class="pre">GtkIntrospectionTestMixin</span></tt> no longer exist</a></li>
<li><a class="reference internal" href="#autopilot-emulators-namespace-has-been-deprecated" id="id10"><tt class="docutils literal"><span class="pre">autopilot.emulators</span></tt> namespace has been deprecated</a></li>
</ul>
</li>
</ul>
</li>
</ul>
<h2><a class="toc-backref" href="#id2">A note on Versions</a><a class="headerlink" href="#a-note-on-versions" title="Permalink to this headline"></a></h2>
<p>Autopilot releases are reasonably tightly coupled with Ubuntu releases. However, the autopilot authors maintain separate version numbers, with the aim of separating the autopilot release cadence from the Ubuntu platform release cadence.</p>
<p>Autopilot versions earlier than 1.2 were not publicly announced, and were only used within Canonical. For that reason, this document assumes that version 1.2 is the lowest version of autopilot present <cite>&#8220;in the wild&#8221;</cite>.</p>
<h2><a class="toc-backref" href="#id3">Porting to Autopilot v1.4.x</a><a class="headerlink" href="#porting-to-autopilot-v1-4-x" title="Permalink to this headline"></a></h2>
<p>The 1.4 release contains several changes that required a break in the DBus wire protocol between autopilot and the applications under test. Most of these changes require no change to test code.</p>
<h3><a class="toc-backref" href="#id4">Gtk Tests and Boolean Parameters</a><a class="headerlink" href="#gtk-tests-and-boolean-parameters" title="Permalink to this headline"></a></h3>
<p>Version 1.3 of the autopilot-gtk backend contained <a class="reference external" href="https://bugs.launchpad.net/autopilot-gtk/+bug/1214249">a bug</a> that caused all Boolean properties to be exported as integers instead of boolean values. This in turn meant that test code would fail to return the correct objects when using selection criteria such as:</p>
<pre><span class="n">visible_buttons</span> <span class="o">=</span> <span class="n">app</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="s">&quot;GtkPushButton&quot;</span><span class="p">,</span> <span class="n">visible</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
</pre>
<p>and instead had to write something like this:</p>
<pre><span class="n">visible_buttons</span> <span class="o">=</span> <span class="n">app</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="s">&quot;GtkPushButton&quot;</span><span class="p">,</span> <span class="n">visible</span><span class="o">=</span><span class="mi">1</span><span class="p">)</span>
</pre>
<p>This bug has now been fixed, and using the integer selection will fail.</p>
<h3><a class="toc-backref" href="#id5"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt> Changes</a><a class="headerlink" href="#select-single-changes" title="Permalink to this headline"></a></h3>
<p>The <tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt> method used to return <tt class="docutils literal"><span class="pre">None</span></tt> in the case where no object was found that matched the search criteria. This led to rather awkward code in places where the object you are searching for is being created dynamically:</p>
<pre><span class="k">for</span> <span class="n">i</span> <span class="ow">in</span> <span class="nb">range</span><span class="p">(</span><span class="mi">10</span><span class="p">):</span>
<span class="n">my_obj</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">app</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&quot;MyObject&quot;</span><span class="p">)</span>
<span class="k">if</span> <span class="n">my_obj</span> <span class="ow">is</span> <span class="ow">not</span> <span class="bp">None</span><span class="p">:</span>
<span class="k">break</span>
<span class="n">time</span><span class="o">.</span><span class="n">sleep</span><span class="p">(</span><span class="mi">1</span><span class="p">)</span>
<span class="k">else</span><span class="p">:</span>
<span class="bp">self</span><span class="o">.</span><span class="n">fail</span><span class="p">(</span><span class="s">&quot;Object &#39;MyObject&#39; was not found within 10 seconds.&quot;</span><span class="p">)</span>
</pre>
<p>This makes the authors intent harder to discern. To improve this situation, two changes have been made:</p>
<ol class="arabic">
<li><p class="first"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt> raises a <tt class="xref py py-class docutils literal"><span class="pre">StateNotFoundError</span></tt> exception if the search terms returned no values, rather than returning <tt class="docutils literal"><span class="pre">None</span></tt>.</p>
</li>
<li><p class="first">If the object being searched for is likely to not exist, there is a new method: <tt class="xref py py-meth docutils literal"><span class="pre">wait_select_single</span></tt> will try to retrieve an object for 10 seconds. If the object does not exist after that timeout, a <tt class="xref py py-class docutils literal"><span class="pre">StateNotFoundError</span></tt> exception is raised. This means that the above code example should now be written as:</p>
<pre><span class="n">my_obj</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">app</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span><span class="s">&quot;MyObject&quot;</span><span class="p">)</span>
</pre>
</li>
</ol>
<span id="dbus-backends"></span><h3><a class="toc-backref" href="#id6">DBus backends and <tt class="xref py py-class docutils literal"><span class="pre">DBusIntrospectionObject</span></tt> changes</a><a class="headerlink" href="#dbus-backends-and-dbusintrospectionobject-changes" title="Permalink to this headline"></a></h3>
<p>Due to a change in how
<tt class="xref py py-class docutils literal"><span class="pre">DBusIntrospectionObject</span></tt> objects store
their DBus backend a couple of classmethods have now become instance methods.</p>
<p>These affected methods are:</p>
<blockquote>
<li><tt class="xref py py-meth docutils literal"><span class="pre">get_all_instances</span></tt></li>
<li><tt class="xref py py-meth docutils literal"><span class="pre">get_root_instance</span></tt></li>
<li><tt class="xref py py-meth docutils literal"><span class="pre">get_state_by_path</span></tt></li>
</ul>
</blockquote>
<p>For example, if your old code is something along the lines of:</p>
<pre><span class="n">all_keys</span> <span class="o">=</span> <span class="n">KeyCustomProxy</span><span class="o">.</span><span class="n">get_all_instances</span><span class="p">()</span>
</pre>
<p>You will instead need to have something like this instead:</p>
<pre><span class="n">all_keys</span> <span class="o">=</span> <span class="n">app_proxy</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="n">KeyCustomProxy</span><span class="p">)</span>
</pre>
<span id="python3-support"></span><h3><a class="toc-backref" href="#id7">Python 3</a><a class="headerlink" href="#python-3" title="Permalink to this headline"></a></h3>
<p>Starting from version 1.4, autopilot supports python 3 as well as python 2. Test authors can choose to target either version of python.</p>
<h2><a class="toc-backref" href="#id8">Porting to Autopilot v1.3.x</a><a class="headerlink" href="#porting-to-autopilot-v1-3-x" title="Permalink to this headline"></a></h2>
<p>The 1.3 release included many API breaking changes. Earlier versions of autopilot made several assumptions about where tests would be run, that turned out not to be correct. Autopilot 1.3 brought several much-needed features, including:</p>
<ul class="simple">
<li>A system for building pluggable implementations for several core components. This system is used in several areas:</li>
</ul>
<blockquote>
<li>The input stack can now generate events using either the X11 client libraries, or the UInput kernel driver. This is necessary for devices that do not use X11.</li>
<li>The display stack can now report display information for systems that use both X11 and the mir display server.</li>
<li>The process stack can now report details regarding running processes &amp; their windows on both Desktop, tablet, and phone platforms.</li>
</ul>
</blockquote>
<ul class="simple">
<li>A large code cleanup and reorganisation. In particular, lots of code that came from the Unity 3D codebase has been removed if it was deemed to not be useful to the majority of test authors. This code cleanup includes a flattening of the autopilot namespace. Previously, many useful classes lived under the <tt class="docutils literal"><span class="pre">autopilot.emulators</span></tt> namespace. These have now been moved into the <tt class="docutils literal"><span class="pre">autopilot</span></tt> namespace.</li>
</ul>
<p class="first admonition-title">Note</p>
<p class="last">There is an API breakage in autopilot 1.3. The changes outlined under
the heading &#8220;<a class="reference internal" href="#dbus-backends"><em>DBus backends and DBusIntrospectionObject changes</em></a>&#8221; apply to version
1.3.1+13.10.20131003.1-0ubuntu1 and onwards .</p>
<h3><a class="toc-backref" href="#id9"><tt class="docutils literal"><span class="pre">QtIntrospectionTestMixin</span></tt> and <tt class="docutils literal"><span class="pre">GtkIntrospectionTestMixin</span></tt> no longer exist</a><a class="headerlink" href="#qtintrospectiontestmixin-and-gtkintrospectiontestmixin-no-longer-exist" title="Permalink to this headline"></a></h3>
<p>In autopilot 1.2, tests enabled application introspection services by inheriting from one of two mixin classes: <tt class="docutils literal"><span class="pre">QtIntrospectionTestMixin</span></tt> to enable testing Qt4, Qt5, and Qml applications, and <tt class="docutils literal"><span class="pre">GtkIntrospectionTestMixin</span></tt> to enable testing Gtk 2 and Gtk3 applications. For example, a test case class in autopilot 1.2 might look like this:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.introspection.qt</span> <span class="kn">import</span> <span class="n">QtIntrospectionTestMixin</span>
<span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">MyAppTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">,</span> <span class="n">QtIntrospectionTestMixin</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">setUp</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="nb">super</span><span class="p">(</span><span class="n">MyAppTestCase</span><span class="p">,</span> <span class="bp">self</span><span class="p">)</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
<span class="bp">self</span><span class="o">.</span><span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="s">&quot;../../my-app&quot;</span><span class="p">)</span>
</pre>
<p>In Autopilot 1.3, the <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase" title="autopilot.testcase.AutopilotTestCase"><tt class="xref py py-class docutils literal"><span class="pre">AutopilotTestCase</span></tt></a> class contains this functionality directly, so the <tt class="docutils literal"><span class="pre">QtIntrospectionTestMixin</span></tt> and <tt class="docutils literal"><span class="pre">GtkIntrospectionTestMixin</span></tt> classes no longer exist. The above example becomes simpler:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">MyAppTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">setUp</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="nb">super</span><span class="p">(</span><span class="n">MyAppTestCase</span><span class="p">,</span> <span class="bp">self</span><span class="p">)</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
<span class="bp">self</span><span class="o">.</span><span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="s">&quot;../../my-app&quot;</span><span class="p">)</span>
</pre>
<p>Autopilot will try and determine the introspection type automatically. If this process fails, you can specify the application type manually:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">MyAppTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">setUp</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="nb">super</span><span class="p">(</span><span class="n">MyAppTestCase</span><span class="p">,</span> <span class="bp">self</span><span class="p">)</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
<span class="bp">self</span><span class="o">.</span><span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="s">&quot;../../my-app&quot;</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
</pre>
<p class="first admonition-title">See also</p>
<dl class="last docutils">
<dt>Method <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_test_application" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><tt class="xref py py-meth docutils literal"><span class="pre">autopilot.testcase.AutopilotTestCase.launch_test_application</span></tt></a></dt>
<dd>Launch test applications.</dd>
</dl>
<h3><a class="toc-backref" href="#id10"><tt class="docutils literal"><span class="pre">autopilot.emulators</span></tt> namespace has been deprecated</a><a class="headerlink" href="#autopilot-emulators-namespace-has-been-deprecated" title="Permalink to this headline"></a></h3>
<p>In autopilot 1.2 and earlier, the <tt class="docutils literal"><span class="pre">autopilot.emulators</span></tt> package held several modules and classes that were used frequently in tests. This package has been removed, and it&#8217;s contents merged into the autopilot package. Below is a table showing the basic translations that need to be made:</p>
<table border="1">
<colgroup>
<col width="45%" />
<col width="55%" />
</colgroup>
<thead valign="bottom">
<tr class="row-odd"><th class="head">Old module</th>
<th class="head">New Module</th>
</tr>
</thead>
<tbody valign="top">
<tr class="row-even"><td><tt class="docutils literal"><span class="pre">autopilot.emulators.input</span></tt></td>
<td><tt class="xref py py-mod docutils literal"><span class="pre">autopilot.input</span></tt></td>
</tr>
<tr class="row-odd"><td><tt class="docutils literal"><span class="pre">autopilot.emulators.X11</span></tt></td>
<td>Deprecated - use
<tt class="xref py py-mod docutils literal"><span class="pre">autopilot.input</span></tt> for input
and <tt class="xref py py-mod docutils literal"><span class="pre">autopilot.display</span></tt> for
getting display information.</td>
</tr>
<tr class="row-even"><td><tt class="docutils literal"><span class="pre">autopilot.emulators.bamf</span></tt></td>
<td>Deprecated - use
<tt class="xref py py-mod docutils literal"><span class="pre">autopilot.process</span></tt> instead.</td>
</tr>
</tbody>
</table>
