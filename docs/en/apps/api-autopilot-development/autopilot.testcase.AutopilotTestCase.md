---
Title: autopilot.testcase.AutopilotTestCase
---

# autopilot.testcase.AutopilotTestCase

<dl class="class">
<dt id="autopilot.testcase.AutopilotTestCase">
<em class="property">class </em><tt class="descclassname">autopilot.testcase.</tt><tt class="descname">AutopilotTestCase</tt><big>(</big><em>*args</em>, <em>**kwargs</em><big>)</big><a class="reference internal" href="#AutopilotTestCase"></a><a class="headerlink" href="#autopilot.testcase.AutopilotTestCase" title="Permalink to this definition"></a></dt>
<dd><p>Wrapper around testtools.TestCase that adds significant functionality.</p>
<p>This class should be the base class for all autopilot test case classes.
Not using this class as the base class disables several important
convenience methods, and also prevents the use of the failed-test
recording tools.</p>
<dl class="method">
<dt id="autopilot.testcase.AutopilotTestCase.launch_test_application">
<tt class="descname">launch_test_application</tt><big>(</big><em>application</em>, <em>*arguments</em>, <em>**kwargs</em><big>)</big><a class="reference internal" href="#AutopilotTestCase.launch_test_application"></a><a class="headerlink" href="#autopilot.testcase.AutopilotTestCase.launch_test_application" title="Permalink to this definition"></a></dt>
<dd><p>Launch <tt class="docutils literal"><span class="pre">application</span></tt> and return a proxy object for the
application.</p>
<p>Use this method to launch an application and start testing it. The
positional arguments are used as arguments to the application to lanch.
Keyword arguments are used to control the manner in which the
application is launched.</p>
<p>This method is designed to be flexible enough to launch all supported
types of applications. Autopilot can automatically determine how to
enable introspection support for dynamically linked binary
applications. For example, to launch a binary Gtk application, a test
might start with:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="s">&#39;gedit&#39;</span><span class="p">)</span>
</pre>
<p>Applications can be given command line arguments by supplying
positional arguments to this method. For example, if we want to launch
<tt class="docutils literal"><span class="pre">gedit</span></tt> with a certain document loaded, we might do this:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
<span class="s">&#39;gedit&#39;</span><span class="p">,</span> <span class="s">&#39;/tmp/test-document.txt&#39;</span><span class="p">)</span>
</pre>
<p>... a Qt5 Qml application is launched in a similar fashion:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
<span class="s">&#39;qmlscene&#39;</span><span class="p">,</span> <span class="s">&#39;my_scene.qml&#39;</span><span class="p">)</span>
</pre>
<p>If you wish to launch an application that is not a dynamically linked
binary, you must specify the application type. For example, a Qt4
python application might be launched like this:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
<span class="s">&#39;my_qt_app.py&#39;</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
</pre>
<p>Similarly, a python/Gtk application is launched like so:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
<span class="s">&#39;my_gtk_app.py&#39;</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;gtk&#39;</span><span class="p">)</span>
</pre>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>application</strong> &#8211; <p>The application to launch. The application can be
specified as:</p>
<blockquote>
<li>A full, absolute path to an executable file.
(<tt class="docutils literal"><span class="pre">/usr/bin/gedit</span></tt>)</li>
<li>A relative path to an executable file.
(<tt class="docutils literal"><span class="pre">./build/my_app</span></tt>)</li>
<li>An app name, which will be searched for in $PATH (<tt class="docutils literal"><span class="pre">my_app</span></tt>)</li>
</ul>
</blockquote>
</li>
<li><strong>app_type</strong> &#8211; If set, provides a hint to autopilot as to which
kind of introspection to enable. This is needed when the
application you wish to launch is <em>not</em> a dynamically linked
binary. Valid values are &#8216;gtk&#8217; or &#8216;qt&#8217;. These strings are case
insensitive.</li>
<li><strong>launch_dir</strong> &#8211; If set to a directory that exists the process
will be launched from that directory.</li>
<li><strong>capture_output</strong> &#8211; If set to True (the default), the process
output will be captured and attached to the test as test detail.</li>
<li><strong>emulator_base</strong> &#8211; If set, specifies the base class to be used for
all emulators for this loaded application.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Returns:</th><td class="field-body"><p class="first last">A proxy object that represents the application. Introspection
data is retrievable via this object.</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.testcase.AutopilotTestCase.launch_click_package">
<tt class="descname">launch_click_package</tt><big>(</big><em>package_id</em>, <em>app_name=None</em>, <em>app_uris=[]</em>, <em>**kwargs</em><big>)</big><a class="reference internal" href="#AutopilotTestCase.launch_click_package"></a><a class="headerlink" href="#autopilot.testcase.AutopilotTestCase.launch_click_package" title="Permalink to this definition"></a></dt>
<dd><p>Launch a click package application with introspection enabled.</p>
<p>This method takes care of launching a click package with introspection
exabled. You probably want to use this method if your application is
packaged in a click application, or is started via upstart.</p>
<p>Usage is similar to the
<a class="reference internal" href="#autopilot.testcase.AutopilotTestCase.launch_test_application" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><tt class="xref py py-meth docutils literal"><span class="pre">AutopilotTestCase.launch_test_application</span></tt></a>:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_click_package</span><span class="p">(</span>
<span class="s">&quot;com.ubuntu.dropping-letters&quot;</span>
<span class="p">)</span>
</pre>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>package_id</strong> &#8211; The Click package name you want to launch. For
example: <tt class="docutils literal"><span class="pre">com.ubuntu.dropping-letters</span></tt></li>
<li><strong>app_name</strong> &#8211; Currently, only one application can be packaged in a
click package, and this parameter can be left at None. If
specified, it should be the application name you wish to launch.</li>
<li><strong>app_uris</strong> &#8211; Parameters used to launch the click package. This
parameter will be left empty if not used.</li>
<li><strong>emulator_base</strong> &#8211; If set, specifies the base class to be used for
all emulators for this loaded application.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><ul class="first simple">
<li><strong>RuntimeError</strong> &#8211; If the specified package_id cannot be found in
the click package manifest.</li>
<li><strong>RuntimeError</strong> &#8211; If the specified app_name cannot be found within
the specified click package.</li>
</ul>
</td>
</tr>
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body"><p class="first last">proxy object for the launched package application</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.testcase.AutopilotTestCase.launch_upstart_application">
<tt class="descname">launch_upstart_application</tt><big>(</big><em>application_name</em>, <em>uris=[]</em>, <em>launcher_class=&lt;class 'autopilot.application._launcher.UpstartApplicationLauncher'&gt;</em>, <em>**kwargs</em><big>)</big><a class="reference internal" href="#AutopilotTestCase.launch_upstart_application"></a><a class="headerlink" href="#autopilot.testcase.AutopilotTestCase.launch_upstart_application" title="Permalink to this definition"></a></dt>
<dd><p>Launch an application with upstart.</p>
<p>This method launched an application via the <tt class="docutils literal"><span class="pre">ubuntu-app-launch</span></tt>
library, on platforms that support it.</p>
<p>Usage is similar to the
<a class="reference internal" href="#autopilot.testcase.AutopilotTestCase.launch_test_application" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><tt class="xref py py-meth docutils literal"><span class="pre">AutopilotTestCase.launch_test_application</span></tt></a>:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_upstart_application</span><span class="p">(</span><span class="s">&quot;gallery-app&quot;</span><span class="p">)</span>
</pre>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first last simple">
<li><strong>application_name</strong> &#8211; The name of the application to launch.</li>
<li><strong>launcher_class</strong> &#8211; The application launcher class to use. Useful if</li>
</ul>
</td>
</tr>
</tbody>
</table>
<dl class="docutils">
<dt>you need to overwrite the default to do something custom (i.e. using</dt>
<dd>AlreadyLaunchedUpstartLauncher)</dd>
</dl>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>emulator_base</strong> &#8211; If set, specifies the base class to be used for
all emulators for this loaded application.</td>
</tr>
<tr class="field-even field"><th class="field-name" colspan="2">Raises RuntimeError:</th></tr>
<tr class="field-even field"><td>&nbsp;</td><td class="field-body">If the specified application cannot be launched.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.testcase.AutopilotTestCase.take_screenshot">
<tt class="descname">take_screenshot</tt><big>(</big><em>attachment_name</em><big>)</big><a class="reference internal" href="#AutopilotTestCase.take_screenshot"></a><a class="headerlink" href="#autopilot.testcase.AutopilotTestCase.take_screenshot" title="Permalink to this definition"></a></dt>
<dd><p>Take a screenshot of the current screen and adds it to the test as a
detail named <em>attachment_name</em>.</p>
<p>If <em>attachment_name</em> already exists as a detail the name will be
modified to remove the naming conflict
(i.e. using TestCase.addDetailUniqueName).</p>
<p>Returns True if the screenshot was taken and attached successfully,
False otherwise.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.testcase.AutopilotTestCase.patch_environment">
<tt class="descname">patch_environment</tt><big>(</big><em>key</em>, <em>value</em><big>)</big><a class="reference internal" href="#AutopilotTestCase.patch_environment"></a><a class="headerlink" href="#autopilot.testcase.AutopilotTestCase.patch_environment" title="Permalink to this definition"></a></dt>
<dd><p>Patch environment using fixture.</p>
<p>This function is deprecated and planned for removal in autopilot 1.6.
New implementations should use EnvironmenVariable from the fixtures
module:</p>
<pre><span class="kn">from</span> <span class="nn">fixtures</span> <span class="kn">import</span> <span class="n">EnvironmentVariable</span>
<span class="k">def</span> <span class="nf">my_test</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="n">my_patch</span> <span class="o">=</span> <span class="n">EnvironmentVariable</span><span class="p">(</span><span class="s">&#39;key&#39;</span><span class="p">,</span> <span class="s">&#39;value&#39;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">useFixture</span><span class="p">(</span><span class="n">my_patch</span><span class="p">)</span>
</pre>
<p>&#8216;key&#8217; will be set to &#8216;value&#8217;.  During tearDown, it will be reset to a
previous value, if one is found, or unset if not.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.testcase.AutopilotTestCase.assertVisibleWindowStack">
<tt class="descname">assertVisibleWindowStack</tt><big>(</big><em>stack_start</em><big>)</big><a class="reference internal" href="#AutopilotTestCase.assertVisibleWindowStack"></a><a class="headerlink" href="#autopilot.testcase.AutopilotTestCase.assertVisibleWindowStack" title="Permalink to this definition"></a></dt>
<dd><p>Check that the visible window stack starts with the windows passed
in.</p>
<p class="first admonition-title">Note</p>
<p class="last">Minimised windows are skipped.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>stack_start</strong> &#8211; An iterable of
<a class="reference internal" href="autopilot.process.Window.md#autopilot.process.Window" title="autopilot.process.Window"><tt class="xref py py-class docutils literal"><span class="pre">Window</span></tt></a> instances.</td>
</tr>
<tr class="field-even field"><th class="field-name" colspan="2">Raises AssertionError:</th></tr>
<tr class="field-even field"><td>&nbsp;</td><td class="field-body">if the top of the window stack does not
match the contents of the stack_start parameter.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.testcase.AutopilotTestCase.assertProperty">
<tt class="descname">assertProperty</tt><big>(</big><em>obj</em>, <em>**kwargs</em><big>)</big><a class="reference internal" href="#AutopilotTestCase.assertProperty"></a><a class="headerlink" href="#autopilot.testcase.AutopilotTestCase.assertProperty" title="Permalink to this definition"></a></dt>
<dd><p>Assert that <em>obj</em> has properties equal to the key/value pairs in
kwargs.</p>
<p>This method is intended to be used on objects whose attributes do not
have the <tt class="xref py py-meth docutils literal"><span class="pre">wait_for</span></tt> method (i.e.- objects that do not come from
the autopilot DBus interface).</p>
<p>For example, from within a test, to assert certain properties on a
<cite>~autopilot.process.Window</cite> instance:</p>
<pre><span class="bp">self</span><span class="o">.</span><span class="n">assertProperty</span><span class="p">(</span><span class="n">my_window</span><span class="p">,</span> <span class="n">is_maximized</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
</pre>
<p class="first admonition-title">Note</p>
<p class="last">assertProperties is a synonym for this method.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>obj</strong> &#8211; The object to test.</li>
<li><strong>kwargs</strong> &#8211; One or more keyword arguments to match against the
attributes of the <em>obj</em> parameter.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><ul class="first last simple">
<li><strong>ValueError</strong> &#8211; if no keyword arguments were given.</li>
<li><strong>ValueError</strong> &#8211; if a named attribute is a callable object.</li>
<li><strong>AssertionError</strong> &#8211; if any of the attribute/value pairs in
kwargs do not match the attributes on the object passed in.</li>
</ul>
</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.testcase.AutopilotTestCase.assertProperties">
<tt class="descname">assertProperties</tt><big>(</big><em>obj</em>, <em>**kwargs</em><big>)</big><a class="headerlink" href="#autopilot.testcase.AutopilotTestCase.assertProperties" title="Permalink to this definition"></a></dt>
<dd><p>Assert that <em>obj</em> has properties equal to the key/value pairs in
kwargs.</p>
<p>This method is intended to be used on objects whose attributes do not
have the <tt class="xref py py-meth docutils literal"><span class="pre">wait_for</span></tt> method (i.e.- objects that do not come from
the autopilot DBus interface).</p>
<p>For example, from within a test, to assert certain properties on a
<cite>~autopilot.process.Window</cite> instance:</p>
<pre><span class="bp">self</span><span class="o">.</span><span class="n">assertProperty</span><span class="p">(</span><span class="n">my_window</span><span class="p">,</span> <span class="n">is_maximized</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
</pre>
<p class="first admonition-title">Note</p>
<p class="last">assertProperties is a synonym for this method.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>obj</strong> &#8211; The object to test.</li>
<li><strong>kwargs</strong> &#8211; One or more keyword arguments to match against the
attributes of the <em>obj</em> parameter.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><ul class="first last simple">
<li><strong>ValueError</strong> &#8211; if no keyword arguments were given.</li>
<li><strong>ValueError</strong> &#8211; if a named attribute is a callable object.</li>
<li><strong>AssertionError</strong> &#8211; if any of the attribute/value pairs in
kwargs do not match the attributes on the object passed in.</li>
</ul>
</td>
</tr>
</tbody>
</table>
</dd></dl>
</dd></dl>
