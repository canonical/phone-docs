---
Title: autopilot.process.ProcessManager
---

# autopilot.process.ProcessManager

<dl class="class">
<dt id="autopilot.process.ProcessManager">
<em class="property">class </em><tt class="descclassname">autopilot.process.</tt><tt class="descname">ProcessManager</tt><a class="reference internal" href="#ProcessManager"></a><a class="headerlink" href="#autopilot.process.ProcessManager" title="Permalink to this definition"></a></dt>
<dd><p>A simple process manager class.</p>
<p>The process manager is used to handle processes, windows and applications.
This class should not be instantiated directly however. To get an instance
of the keyboard class, call <a class="reference internal" href="#autopilot.process.ProcessManager.create" title="autopilot.process.ProcessManager.create"><tt class="xref py py-meth docutils literal"><span class="pre">create</span></tt></a> instead.</p>
<dl class="attribute">
<dt id="autopilot.process.ProcessManager.KNOWN_APPS">
<tt class="descname">KNOWN_APPS</tt><em class="property"> = {'System Settings': {'process-name': 'unity-control-center', 'desktop-file': 'unity-control-center.desktop'}, 'Mahjongg': {'process-name': 'gnome-mahjongg', 'desktop-file': 'gnome-mahjongg.desktop'}, 'Text Editor': {'process-name': 'gedit', 'desktop-file': 'gedit.desktop'}, 'Terminal': {'process-name': 'gnome-terminal', 'desktop-file': 'gnome-terminal.desktop'}, 'Character Map': {'process-name': 'gucharmap', 'desktop-file': 'gucharmap.desktop'}, 'Remmina': {'process-name': 'remmina', 'desktop-file': 'remmina.desktop'}, 'Calculator': {'process-name': 'gnome-calculator', 'desktop-file': 'gcalctool.desktop'}}</em><a class="headerlink" href="#autopilot.process.ProcessManager.KNOWN_APPS" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="staticmethod">
<dt id="autopilot.process.ProcessManager.create">
<em class="property">static </em><tt class="descname">create</tt><big>(</big><em>preferred_backend=''</em><big>)</big><a class="reference internal" href="#ProcessManager.create"></a><a class="headerlink" href="#autopilot.process.ProcessManager.create" title="Permalink to this definition"></a></dt>
<dd><p>Get an instance of the <a class="reference internal" href="#autopilot.process.ProcessManager" title="autopilot.process.ProcessManager"><tt class="xref py py-class docutils literal"><span class="pre">ProcessManager</span></tt></a> class.</p>
<p>For more infomration on picking specific backends, see
<a class="reference internal" href="tutorial-advanced_autopilot.md#tut-picking-backends"><em>Advanced Backend Picking</em></a></p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>preferred_backend</strong> &#8211; <p>A string containing a hint as to which
backend you would like. Possible backends are:</p>
<ul>
<li><dl class="first docutils">
<dt><tt class="docutils literal"><span class="pre">BAMF</span></tt> - Get process information using the BAMF Application</dt>
<dd>Matching Framework.</dd>
</dl>
</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body">RuntimeError if autopilot cannot instantate any of the
possible backends.</td>
</tr>
<tr class="field-odd field"><th class="field-name">Raises:</th><td class="field-body">RuntimeError if the preferred_backend is specified and is not
one of the possible backends for this device class.</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><tt class="xref py py-class docutils literal"><span class="pre">BackendException</span></tt> if the preferred_backend
is set, but that backend could not be instantiated.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="classmethod">
<dt id="autopilot.process.ProcessManager.register_known_application">
<em class="property">classmethod </em><tt class="descname">register_known_application</tt><big>(</big><em>name</em>, <em>desktop_file</em>, <em>process_name</em><big>)</big><a class="reference internal" href="#ProcessManager.register_known_application"></a><a class="headerlink" href="#autopilot.process.ProcessManager.register_known_application" title="Permalink to this definition"></a></dt>
<dd><p>Register an application with autopilot.</p>
<p>After calling this method, you may call <a class="reference internal" href="#autopilot.process.ProcessManager.start_app" title="autopilot.process.ProcessManager.start_app"><tt class="xref py py-meth docutils literal"><span class="pre">start_app</span></tt></a> or
<a class="reference internal" href="#autopilot.process.ProcessManager.start_app_window" title="autopilot.process.ProcessManager.start_app_window"><tt class="xref py py-meth docutils literal"><span class="pre">start_app_window</span></tt></a> with the <cite>name</cite> parameter to start this
application.
You need only call this once within a test run - the application will
remain registerred until the test run ends.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>name</strong> &#8211; The name to be used when launching the application.</li>
<li><strong>desktop_file</strong> &#8211; The filename (without path component) of the
desktop file used to launch the application.</li>
<li><strong>process_name</strong> &#8211; The name of the executable process that gets run.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><p class="first last"><strong>KeyError</strong> if application has been registered already</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="classmethod">
<dt id="autopilot.process.ProcessManager.unregister_known_application">
<em class="property">classmethod </em><tt class="descname">unregister_known_application</tt><big>(</big><em>name</em><big>)</big><a class="reference internal" href="#ProcessManager.unregister_known_application"></a><a class="headerlink" href="#autopilot.process.ProcessManager.unregister_known_application" title="Permalink to this definition"></a></dt>
<dd><p>Unregister an application with the known_apps dictionary.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>name</strong> &#8211; The name to be used when launching the application.</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><strong>KeyError</strong> if the application has not been registered.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.process.ProcessManager.start_app">
<tt class="descname">start_app</tt><big>(</big><em>app_name</em>, <em>files=[]</em>, <em>locale=None</em><big>)</big><a class="reference internal" href="#ProcessManager.start_app"></a><a class="headerlink" href="#autopilot.process.ProcessManager.start_app" title="Permalink to this definition"></a></dt>
<dd><p>Start one of the known applications, and kill it on tear down.</p>
<p class="first admonition-title">Warning</p>
<p class="last">This method will clear all instances of this application
on tearDown, not just the one opened by this method! We recommend that
you use the <a class="reference internal" href="#autopilot.process.ProcessManager.start_app_window" title="autopilot.process.ProcessManager.start_app_window"><tt class="xref py py-meth docutils literal"><span class="pre">start_app_window</span></tt></a> method instead, as it is
generally safer.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>app_name</strong> &#8211; The application name. <em>This name must either already
be registered as one of the built-in applications that are supported
by autopilot, or must have been registered using</em>
<a class="reference internal" href="#autopilot.process.ProcessManager.register_known_application" title="autopilot.process.ProcessManager.register_known_application"><tt class="xref py py-meth docutils literal"><span class="pre">register_known_application</span></tt></a> <em>beforehand.</em></li>
<li><strong>files</strong> &#8211; (Optional) A list of paths to open with the
given application. <em>Not all applications support opening files in this
way.</em></li>
<li><strong>locale</strong> &#8211; (Optional) The locale will to set when the application
is launched. <em>If you want to launch an application without any
localisation being applied, set this parameter to &#8216;C&#8217;.</em></li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Returns:</th><td class="field-body"><p class="first last">A <a class="reference internal" href="autopilot.process.Application.md#autopilot.process.Application" title="autopilot.process.Application"><tt class="xref py py-class docutils literal"><span class="pre">Application</span></tt></a> instance.</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.process.ProcessManager.start_app_window">
<tt class="descname">start_app_window</tt><big>(</big><em>app_name</em>, <em>files=[]</em>, <em>locale=None</em><big>)</big><a class="reference internal" href="#ProcessManager.start_app_window"></a><a class="headerlink" href="#autopilot.process.ProcessManager.start_app_window" title="Permalink to this definition"></a></dt>
<dd><p>Open a single window for one of the known applications, and close it
at the end of the test.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>app_name</strong> &#8211; The application name. <em>This name must either already
be registered as one of the built-in applications that are supported
by autopilot, or must have been registered with</em>
<a class="reference internal" href="#autopilot.process.ProcessManager.register_known_application" title="autopilot.process.ProcessManager.register_known_application"><tt class="xref py py-meth docutils literal"><span class="pre">register_known_application</span></tt></a> <em>beforehand.</em></li>
<li><strong>files</strong> &#8211; (Optional) Should be a list of paths to open with the
given application. <em>Not all applications support opening files in this
way.</em></li>
<li><strong>locale</strong> &#8211; (Optional) The locale will to set when the application
is launched. <em>If you want to launch an application without any
localisation being applied, set this parameter to &#8216;C&#8217;.</em></li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><p class="first"><strong>AssertionError</strong> if no window was opened, or more than one
window was opened.</p>
</td>
</tr>
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body"><p class="first last">A <a class="reference internal" href="autopilot.process.Window.md#autopilot.process.Window" title="autopilot.process.Window"><tt class="xref py py-class docutils literal"><span class="pre">Window</span></tt></a> instance.</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.process.ProcessManager.get_open_windows_by_application">
<tt class="descname">get_open_windows_by_application</tt><big>(</big><em>app_name</em><big>)</big><a class="reference internal" href="#ProcessManager.get_open_windows_by_application"></a><a class="headerlink" href="#autopilot.process.ProcessManager.get_open_windows_by_application" title="Permalink to this definition"></a></dt>
<dd><p>Get a list of ~autopilot.process.Window` instances
for the given application name.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>app_name</strong> &#8211; The name of one of the well-known applications.</td>
</tr>
<tr class="field-even field"><th class="field-name">Returns:</th><td class="field-body">A list of <a class="reference internal" href="autopilot.process.Window.md#autopilot.process.Window" title="autopilot.process.Window"><tt class="xref py py-class docutils literal"><span class="pre">Window</span></tt></a>
instances.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.process.ProcessManager.close_all_app">
<tt class="descname">close_all_app</tt><big>(</big><em>app_name</em><big>)</big><a class="reference internal" href="#ProcessManager.close_all_app"></a><a class="headerlink" href="#autopilot.process.ProcessManager.close_all_app" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="autopilot.process.ProcessManager.get_app_instances">
<tt class="descname">get_app_instances</tt><big>(</big><em>app_name</em><big>)</big><a class="reference internal" href="#ProcessManager.get_app_instances"></a><a class="headerlink" href="#autopilot.process.ProcessManager.get_app_instances" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="autopilot.process.ProcessManager.app_is_running">
<tt class="descname">app_is_running</tt><big>(</big><em>app_name</em><big>)</big><a class="reference internal" href="#ProcessManager.app_is_running"></a><a class="headerlink" href="#autopilot.process.ProcessManager.app_is_running" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="autopilot.process.ProcessManager.get_running_applications">
<tt class="descname">get_running_applications</tt><big>(</big><em>user_visible_only=True</em><big>)</big><a class="reference internal" href="#ProcessManager.get_running_applications"></a><a class="headerlink" href="#autopilot.process.ProcessManager.get_running_applications" title="Permalink to this definition"></a></dt>
<dd><p>Get a list of the currently running applications.</p>
<p>If user_visible_only is True (the default), only applications
visible to the user in the switcher will be returned.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.process.ProcessManager.get_running_applications_by_desktop_file">
<tt class="descname">get_running_applications_by_desktop_file</tt><big>(</big><em>desktop_file</em><big>)</big><a class="reference internal" href="#ProcessManager.get_running_applications_by_desktop_file"></a><a class="headerlink" href="#autopilot.process.ProcessManager.get_running_applications_by_desktop_file" title="Permalink to this definition"></a></dt>
<dd><p>Return a list of applications with the desktop file <em>desktop_file</em>.</p>
<p>This method will return an empty list if no applications
are found with the specified desktop file.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.process.ProcessManager.get_open_windows">
<tt class="descname">get_open_windows</tt><big>(</big><em>user_visible_only=True</em><big>)</big><a class="reference internal" href="#ProcessManager.get_open_windows"></a><a class="headerlink" href="#autopilot.process.ProcessManager.get_open_windows" title="Permalink to this definition"></a></dt>
<dd><p>Get a list of currently open windows.</p>
<p>If <em>user_visible_only</em> is True (the default), only applications visible
to the user in the switcher will be returned.</p>
<p>The result is sorted to be in stacking order.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.process.ProcessManager.wait_until_application_is_running">
<tt class="descname">wait_until_application_is_running</tt><big>(</big><em>desktop_file</em>, <em>timeout</em><big>)</big><a class="reference internal" href="#ProcessManager.wait_until_application_is_running"></a><a class="headerlink" href="#autopilot.process.ProcessManager.wait_until_application_is_running" title="Permalink to this definition"></a></dt>
<dd><p>Wait until a given application is running.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>desktop_file</strong> (<em>string</em>) &#8211; The name of the application desktop file.</li>
<li><strong>timeout</strong> (<em>integer</em>) &#8211; The maximum time to wait, in seconds. <em>If set
to something less than 0, this method will wait forever.</em></li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Returns:</th><td class="field-body"><p class="first last">true once the application is found, or false if the
application was not found until the timeout was reached.</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.process.ProcessManager.launch_application">
<tt class="descname">launch_application</tt><big>(</big><em>desktop_file</em>, <em>files=[]</em>, <em>wait=True</em><big>)</big><a class="reference internal" href="#ProcessManager.launch_application"></a><a class="headerlink" href="#autopilot.process.ProcessManager.launch_application" title="Permalink to this definition"></a></dt>
<dd><p>Launch an application by specifying a desktop file.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>files</strong> (<em>List of strings</em>) &#8211; List of files to pass to the application. <em>Not all
apps support this.</em></td>
</tr>
</tbody>
</table>
<p class="first admonition-title">Note</p>
<p class="last">If <cite>wait</cite> is True, this method will wait up to 10 seconds for
the application to appear.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Raises:</th><td class="field-body"><strong>TypeError</strong> on invalid <em>files</em> parameter.</td>
</tr>
<tr class="field-even field"><th class="field-name">Returns:</th><td class="field-body">The Gobject process object.</td>
</tr>
</tbody>
</table>
</dd></dl>
</dd></dl>
