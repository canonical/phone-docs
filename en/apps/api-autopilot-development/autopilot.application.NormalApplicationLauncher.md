---
Title: autopilot.application.NormalApplicationLauncher
---

# autopilot.application.NormalApplicationLauncher

<dl class="class">
<dt id="autopilot.application.NormalApplicationLauncher">
<em class="property">class </em><tt class="descclassname">autopilot.application.</tt><tt class="descname">NormalApplicationLauncher</tt><big>(</big><em>case_addDetail=None</em>, <em>emulator_base=None</em>, <em>dbus_bus='session'</em><big>)</big><a class="headerlink" href="#autopilot.application.NormalApplicationLauncher" title="Permalink to this definition"></a></dt>
<dd><p>Fixture to manage launching an application.A class that knows how to launch an application with a certain type of
introspection enabled.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first last simple">
<li><strong>case_addDetail</strong> &#8211; addDetail method to use.</li>
<li><strong>proxy_base</strong> &#8211; custom proxy base class to use, defaults to None</li>
<li><strong>dbus_bus</strong> &#8211; dbus bus to use, if set to something other than the
default (&#8216;session&#8217;) the environment will be patched</li>
</ul>
</td>
</tr>
</tbody>
</table>
<dl class="method">
<dt id="autopilot.application.NormalApplicationLauncher.launch">
<tt class="descname">launch</tt><big>(</big><em>application</em>, <em>arguments=[]</em>, <em>app_type=None</em>, <em>launch_dir=None</em>, <em>capture_output=True</em><big>)</big><a class="headerlink" href="#autopilot.application.NormalApplicationLauncher.launch" title="Permalink to this definition"></a></dt>
<dd><p>Launch an application and return a proxy object.</p>
<p>Use this method to launch an application and start testing it. The
arguments passed in <tt class="docutils literal"><span class="pre">arguments</span></tt> are used as arguments to the
application to launch. Additional keyword arguments are used to control
the manner in which the application is launched.</p>
<p>This fixture is designed to be flexible enough to launch all supported
types of applications. Autopilot can automatically determine how to
enable introspection support for dynamically linked binary
applications. For example, to launch a binary Gtk application, a test
might start with:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.application</span> <span class="kn">import</span> <span class="n">NormalApplicationLauncher</span>
<span class="n">launcher</span> <span class="o">=</span> <span class="n">NormalApplicationLauncher</span><span class="p">()</span>
<span class="n">launcher</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
<span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;gedit&#39;</span><span class="p">)</span>
</pre>
<p>For use within a testcase, use useFixture:</p>
<blockquote>
<div>from autopilot.application import NormalApplicationLauncher
launcher = self.useFixture(NormalApplicationLauncher())
app_proxy = launcher.launch(&#8216;gedit&#8217;)</blockquote>
<p>Applications can be given command line arguments by supplying an
<tt class="docutils literal"><span class="pre">arguments</span></tt> argument to this method. For example, if we want to
launch <tt class="docutils literal"><span class="pre">gedit</span></tt> with a certain document loaded, we might do this:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span>
<span class="s">&#39;gedit&#39;</span><span class="p">,</span> <span class="n">arguments</span><span class="o">=</span><span class="p">[</span><span class="s">&#39;/tmp/test-document.txt&#39;</span><span class="p">])</span>
</pre>
<p>... a Qt5 Qml application is launched in a similar fashion:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span>
<span class="s">&#39;qmlscene&#39;</span><span class="p">,</span> <span class="n">arguments</span><span class="o">=</span><span class="p">[</span><span class="s">&#39;my_scene.qml&#39;</span><span class="p">])</span>
</pre>
<p>If you wish to launch an application that is not a dynamically linked
binary, you must specify the application type. For example, a Qt4
python application might be launched like this:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span>
<span class="s">&#39;my_qt_app.py&#39;</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
</pre>
<p>Similarly, a python/Gtk application is launched like so:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span>
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
<li><strong>arguments</strong> &#8211; If set, the list of arguments is passed to the
launched app.</li>
<li><strong>app_type</strong> &#8211; If set, provides a hint to autopilot as to which
kind of introspection to enable. This is needed when the
application you wish to launch is <em>not</em> a dynamically linked
binary. Valid values are &#8216;gtk&#8217; or &#8216;qt&#8217;. These strings are case
insensitive.</li>
<li><strong>launch_dir</strong> &#8211; If set to a directory that exists the process
will be launched from that directory.</li>
<li><strong>capture_output</strong> &#8211; If set to True (the default), the process
output will be captured and attached to the test as test detail.</li>
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
</dd></dl>
