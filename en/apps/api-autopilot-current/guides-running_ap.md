---
Title: guides-running_ap
---

# guides-running_ap

<p>Autopilot test suites can be run with any python test runner (for example, the built-in testtools runner). However, several autopilot features are only available if you use the autopilot runner.</p>
<h2>List Tests<a class="headerlink" href="#list-tests" title="Permalink to this headline"></a></h2>
<p>Autopilot can list all tests found within a particular module:</p>
<pre>$ autopilot3 list &lt;modulename&gt;
</pre>
<p>where <em>&lt;modulename&gt;</em> is the base name of the module you want to look at. The module must either be in the current working directory, or be importable by python. For example, to list the tests inside autopilot itself, you can run:</p>
<pre>$ autopilot3 list autopilot
autopilot.tests.test_ap_apps.GtkTests.test_can_launch_qt_app
autopilot.tests.test_ap_apps.QtTests.test_can_launch_qt_app
autopilot.tests.test_application_mixin.ApplicationSupportTests.test_can_create
autopilot.tests.test_application_mixin.ApplicationSupportTests.test_launch_raises_ValueError_on_unknown_kwargs
autopilot.tests.test_application_mixin.ApplicationSupportTests.test_launch_raises_ValueError_on_unknown_kwargs_with_known
autopilot.tests.test_application_mixin.ApplicationSupportTests.test_launch_with_bad_types_raises_typeerror
autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_can_register_new_application
autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_can_unregister_application
autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_registering_app_twice_raises_KeyError
autopilot.tests.test_application_registration.ApplicationRegistrationTests.test_unregistering_unknown_application_raises_KeyError
...
81 total tests.
</pre>
<p>Some results have been omitted for clarity.</p>
<p>The list command takes only one option:</p>
<table class="docutils option-list" frame="void" rules="none">
<col class="option" />
<col class="description" />
<tbody valign="top">
<tr><td class="option-group" colspan="2">
<kbd><span class="option">-r<var>o</var></span>, <span class="option">--run-order</span></kbd></td>
</tr>
<tr><td>&nbsp;</td><td>Display tests in the order in which they will be run,
rather than alphabetical order (which is the default).</td></tr>
</tbody>
</table>
<h2>Run Tests<a class="headerlink" href="#run-tests" title="Permalink to this headline"></a></h2>
<p>Running autopilot tests is very similar to listing tests:</p>
<pre>$ autopilot3 run &lt;modulename&gt;
</pre>
<p>However, the run command has many more options to customize the run behavior:</p>
<table class="docutils option-list" frame="void" rules="none">
<col class="option" />
<col class="description" />
<tbody valign="top">
<tr><td class="option-group">
<kbd><span class="option">-h</span>, <span class="option">--help</span></kbd></td>
<td>show this help message and exit</td></tr>
<tr><td class="option-group" colspan="2">
<kbd><span class="option">-o <var>OUTPUT</var></span>, <span class="option">--output <var>OUTPUT</var></span></kbd></td>
</tr>
<tr><td>&nbsp;</td><td>Write test result report to file. Defaults to stdout.
If given a directory instead of a file will write to a
file in that directory named:
&lt;hostname&gt;_&lt;dd.mm.yyy_HHMMSS&gt;.log</td></tr>
<tr><td class="option-group" colspan="2">
<kbd><span class="option">-f <var>FORMAT</var></span>, <span class="option">--format <var>FORMAT</var></span></kbd></td>
</tr>
<tr><td>&nbsp;</td><td>Specify desired output format. Default is &#8220;text&#8221;.
Other option is &#8216;xml&#8217; to produce junit xml format.</td></tr>
<tr><td class="option-group">
<kbd><span class="option">-r</span>, <span class="option">--record</span></kbd></td>
<td>Record failing tests. Required &#8216;recordmydesktop&#8217; app
to be installed. Videos are stored in /tmp/autopilot.</td></tr>
</tbody>
</table>
<dl class="docutils">
<dt>-rd PATH, &#8211;record-directory PATH</dt>
<dd>Directory to put recorded tests (only if -r)
specified.</dd>
</dl>
<table class="docutils option-list" frame="void" rules="none">
<col class="option" />
<col class="description" />
<tbody valign="top">
<tr><td class="option-group">
<kbd><span class="option">-v</span>, <span class="option">--verbose</span></kbd></td>
<td>If set, autopilot will output test log data to stderr
during a test run.</td></tr>
</tbody>
</table>
<h3>Common use cases<a class="headerlink" href="#common-use-cases" title="Permalink to this headline"></a></h3>
<ol class="arabic">
<li><p class="first"><strong>Run autopilot and save the test log</strong>:</p>
<pre>$ autopilot3 run -o . &lt;modulename&gt;
</pre>
</li>
</ol>
<blockquote>
</blockquote>
<ol class="arabic" start="2">
<li><p class="first"><strong>Run autopilot and record failing tests</strong>:</p>
<pre>$ autopilot3 run -r --rd . &lt;modulename&gt;
</pre>
</li>
</ol>
<blockquote>
ogg-vorbis</em> files, with an .ogv extension. They will be named with the test id that failed. All videos will be placed in the directory specified by the <tt class="docutils literal"><span class="pre">-rd</span></tt> option - in this case the currect directory. If this option is omitted, videos will be placed in <tt class="docutils literal"><span class="pre">/tmp/autopilot/</span></tt>.</blockquote>
<ol class="arabic" start="3">
<li><p class="first"><strong>Save the test log as jUnitXml format</strong>:</p>
<pre>$ autopilot3 run -o results.xml -f xml &lt;modulename&gt;
</pre>
</li>
</ol>
<blockquote>
</blockquote>
<span id="launching-application-to-introspect"></span><h2>Launching an Application to Introspect<a class="headerlink" href="#launching-an-application-to-introspect" title="Permalink to this headline"></a></h2>
<p>In order to be able to introspect an application, it must first be launched with introspection enabled. Autopilot provides the <strong>launch</strong> command to enable this:</p>
<pre>$ autopilot3 launch &lt;application&gt; &lt;app_parameters&gt;
</pre>
<p>The <em>&lt;application&gt;</em> parameter could be the full path to the application, or the name of an application located somewhere on <tt class="docutils literal"><span class="pre">$PATH</span></tt>. <em>&lt;app_parameter&gt;</em> is passed on to the application being launched.</p>
<p>A simple Gtk example to launch gedit:</p>
<pre>$ autopilot3 launch gedit
</pre>
<p>A Qt example which passes on parameters to the application being launched:</p>
<pre>$ autopilot3 launch qmlscene my_app.qml
</pre>
<p>Autopilot launch attempts to detect if you are launching either a Gtk or Qt application so that it can enable the correct libraries. If it is unable to determine this you will need to specify the type of application it is by using the -i argument. This allows &#8220;Gtk&#8221; or &#8220;Qt&#8221; frameworks to be specified when launching the application. The default value (&#8220;Auto&#8221;) will try to detect which interface to load automatically.</p>
<p>A typical error in this situation will be &#8220;Error: Could not determine introspection type to use for application&#8221;. In which case the -i option should be specified with the correct application framework type to fix the problem:</p>
<pre>$ autopilot3 launch -i Qt address-book-app
</pre>
<p>Once an application has launched with introspection enabled, it will be possible to launch autopilot vis and view the introspection tree, see: <a class="reference internal" href="#visualise-introspection-tree"><em>Visualise Introspection Tree</em></a>.</p>
<span id="id1"></span><h2>Visualise Introspection Tree<a class="headerlink" href="#visualise-introspection-tree" title="Permalink to this headline"></a></h2>
<p>A very common thing to want to do while writing autopilot tests is see the structure of the application being tested. To support this, autopilot includes a simple application to help visualize the introspection tree. To start it, make sure the application you wish to test is running (see: <a class="reference internal" href="#launching-application-to-introspect"><em>Launching an Application to Introspect</em></a>), and then run:</p>
<pre>$ autopilot3 vis
</pre>
<p>The result should be a window similar to below:</p>
<img alt="https://assets.ubuntu.com/v1/282e4797-ap_vis_front_page.png" />
<p>Selecting a connection from the drop-down box allows you to inspect different autopilot-supporting applications. If Unity is running, the Unity connection should always be present. If other applications have been started with the autopilot support enabled, they should appear in this list as well. Once a connection is selected, the introspection tree is rendered in the left-hand pane, and the details of each object appear in the right-hand pane.</p>
<img alt="https://assets.ubuntu.com/v1/87042287-ap_vis_object.png" />
<p>Autopilot vis also has the ability to search the object tree for nodes that match a given name (such as &#8220;LauncherController&#8221;, for example), and draw a transparent overlay over a widget if it contains position information. These tools, when combined can make finding certain parts of an application introspection tree much easier.</p>
