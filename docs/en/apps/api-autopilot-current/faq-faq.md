---
Title: faq-faq
---

# faq-faq

<p class="topic-title first">Contents</p>
<ul class="simple">
<li><a class="reference internal" href="#frequently-asked-questions" id="id1">Frequently Asked Questions</a><ul>
<li><a class="reference internal" href="#autopilot-the-project" id="id2">Autopilot: The Project</a><ul>
<li><a class="reference internal" href="#q-where-can-i-get-help-support" id="id3">Q. Where can I get help / support?</a></li>
<li><a class="reference internal" href="#q-which-version-of-autopilot-should-i-install" id="id4">Q. Which version of autopilot should I install?</a></li>
<li><a class="reference internal" href="#q-should-i-write-my-tests-in-python2-or-python3" id="id5">Q. Should I write my tests in python2 or python3?</a></li>
<li><a class="reference internal" href="#q-should-i-convert-my-existing-tests-to-python3" id="id6">Q: Should I convert my existing tests to python3?</a></li>
<li><a class="reference internal" href="#q-where-can-i-report-a-bug" id="id7">Q. Where can I report a bug?</a></li>
<li><a class="reference internal" href="#q-what-type-of-applications-can-autopilot-test" id="id8">Q. What type of applications can autopilot test?</a></li>
</ul>
</li>
<li><a class="reference internal" href="#autopilot-tests" id="id9">Autopilot Tests</a><ul>
<li><a class="reference internal" href="#q-autopilot-tests-often-include-multiple-assertions-isn-t-this-bad-practise" id="id10">Q. Autopilot tests often include multiple assertions. Isn&#8217;t this bad practise?</a></li>
<li><a class="reference internal" href="#q-how-do-i-write-a-test-that-uses-either-a-mouse-or-a-touch-device-interchangeably" id="id11">Q. How do I write a test that uses either a Mouse or a Touch device interchangeably?</a></li>
<li><a class="reference internal" href="#q-how-do-i-use-the-onscreen-keyboard-osk-to-input-text-in-my-test" id="id12">Q. How do I use the Onscreen Keyboard (OSK) to input text in my test?</a></li>
</ul>
</li>
<li><a class="reference internal" href="#autopilot-tests-and-launching-applications" id="id13">Autopilot Tests and Launching Applications</a><ul>
<li><a class="reference internal" href="#q-how-do-i-launch-a-click-application-from-within-a-test-so-i-can-introspect-it" id="id14">Q. How do I launch a Click application from within a test so I can introspect it?</a></li>
<li><a class="reference internal" href="#q-how-do-i-access-an-already-running-application-so-that-i-can-test-introspect-it" id="id15">Q. How do I access an already running application so that I can test/introspect it?</a></li>
</ul>
</li>
<li><a class="reference internal" href="#autopilot-qt-gtk-support" id="id16">Autopilot Qt &amp; Gtk Support</a><ul>
<li><a class="reference internal" href="#q-how-do-i-launch-my-application-so-that-i-can-explore-it-with-the-vis-tool" id="id17">Q. How do I launch my application so that I can explore it with the vis tool?</a></li>
<li><a class="reference internal" href="#q-what-is-the-impact-on-memory-of-adding-objectnames-to-qml-items" id="id18">Q. What is the impact on memory of adding objectNames to QML items?</a></li>
</ul>
</li>
</ul>
</li>
</ul>
<h2><a class="toc-backref" href="#id2">Autopilot: The Project</a><a class="headerlink" href="#autopilot-the-project" title="Permalink to this headline"></a></h2>
<span id="help-and-support"></span><h3><a class="toc-backref" href="#id3">Q. Where can I get help / support?</a><a class="headerlink" href="#q-where-can-i-get-help-support" title="Permalink to this headline"></a></h3>
<p>The developers hang out in the #ubuntu-autopilot IRC channel on irc.freenode.net.</p>
<h3><a class="toc-backref" href="#id4">Q. Which version of autopilot should I install?</a><a class="headerlink" href="#q-which-version-of-autopilot-should-i-install" title="Permalink to this headline"></a></h3>
<p>Ideally you should adopt and utilize the latest version of autopilot. If your testcase requires you to utilize an
older version of autopilot for reasons other than <a class="reference internal" href="porting-porting.md#porting"><em>Porting Autopilot Tests</em></a>, please <a class="reference external" href="https://bugs.launchpad.net/autopilot/+filebug">file a bug</a> and let the development team know about your issue.</p>
<h3><a class="toc-backref" href="#id5">Q. Should I write my tests in python2 or python3?</a><a class="headerlink" href="#q-should-i-write-my-tests-in-python2-or-python3" title="Permalink to this headline"></a></h3>
<p>As Autopilot fully supports python3 (see <a class="reference internal" href="porting-porting.md#python3-support"><em>Python 3</em></a>), you should seek to use python3 for new tests. Before making a decision, you should also ensure any 3rd party modules your test may depend on also support python3.</p>
<h3><a class="toc-backref" href="#id6">Q: Should I convert my existing tests to python3?</a><a class="headerlink" href="#q-should-i-convert-my-existing-tests-to-python3" title="Permalink to this headline"></a></h3>
<p>See above. In a word, yes. Converting python2 to python3 (see <a class="reference internal" href="porting-porting.md#python3-support"><em>Python 3</em></a>) is generally straightforward and converting a testcase is likely much easier than a full python application. You can also consider retaining python2 compatibility upon conversion.</p>
<h3><a class="toc-backref" href="#id7">Q. Where can I report a bug?</a><a class="headerlink" href="#q-where-can-i-report-a-bug" title="Permalink to this headline"></a></h3>
<p>Autopilot is hosted on launchpad - bugs can be reported on the <a class="reference external" href="https://bugs.launchpad.net/autopilot/+filebug">launchpad bug page for autopilot</a> (this requires a launchpad account).</p>
<h3><a class="toc-backref" href="#id8">Q. What type of applications can autopilot test?</a><a class="headerlink" href="#q-what-type-of-applications-can-autopilot-test" title="Permalink to this headline"></a></h3>
<dl class="docutils">
<dt>Autopilot works with severall different types of applications, including:</dt>
<dd><ul class="first last simple">
<li>The Unity desktop shell.</li>
<li>Gtk 2 &amp; 3 applications.</li>
<li>Qt4, Qt5, and Qml applications.</li>
</ul>
</dd>
</dl>
<p>Autopilot is designed to work across all the form factors Ubuntu runs on, including the phone and tablet.</p>
<h2><a class="toc-backref" href="#id9">Autopilot Tests</a><a class="headerlink" href="#autopilot-tests" title="Permalink to this headline"></a></h2>
<span id="faq-many-asserts"></span><h3><a class="toc-backref" href="#id10">Q. Autopilot tests often include multiple assertions. Isn&#8217;t this bad practise?</a><a class="headerlink" href="#q-autopilot-tests-often-include-multiple-assertions-isn-t-this-bad-practise" title="Permalink to this headline"></a></h3>
<p>Maybe. But probably not.</p>
<p>Unit tests should test a single unit of code, and ideally be written such that they can fail in exactly a single way. Therefore, unit tests should have a single assertion that determines whether the test passes or fails.</p>
<p>However, autopilot tests are not unit tests, they are functional tests. Functional test suites tests features, not units of code, so there&#8217;s several very good reasons to have more than assertion in a single test:</p>
<ul>
<li><p class="first">Some features require several assertions to prove that the feature is working correctly. For example, you may wish to verify that the &#8216;Save&#8217; dialog box opens correctly, using the following code:</p>
<pre><span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">save_win</span><span class="o">.</span><span class="n">title</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="s">&quot;Save Document&quot;</span><span class="p">)))</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">save_win</span><span class="o">.</span><span class="n">visible</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="bp">True</span><span class="p">))</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">save_win</span><span class="o">.</span><span class="n">has_focus</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="bp">True</span><span class="p">))</span>
</pre>
</li>
<li><p class="first">Some tests need to wait for the application to respond to user input before the test continues. The easiest way to do this is to use the <a class="reference internal" href="autopilot.matchers.Eventually.md#autopilot.matchers.Eventually" title="autopilot.matchers.Eventually"><tt class="xref py py-class docutils literal"><span class="pre">Eventually</span></tt></a> matcher in the middle of your interaction with the application. For example, if testing the <a class="reference external" href="http://www.mozilla.org/en-US/">Firefox</a> browsers ability to print a certain web comic, we might produce a test that looks similar to this:</p>
<pre><span class="k">def</span> <span class="nf">test_firefox_can_print_xkcd</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;Firefox must be able to print xkcd.com.&quot;&quot;&quot;</span>
<span class="c"># Put keyboard focus in URL bar:</span>
<span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">press_and_release</span><span class="p">(</span><span class="s">&#39;Ctrl+l&#39;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">type</span><span class="p">(</span><span class="s">&#39;http://xkcd.com&#39;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">press_and_release</span><span class="p">(</span><span class="s">&#39;Enter&#39;</span><span class="p">)</span>
<span class="c"># wait for page to load:</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">app</span><span class="o">.</span><span class="n">loading</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="bp">False</span><span class="p">)))</span>
<span class="c"># open print dialog:</span>
<span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">press_and_release</span><span class="p">(</span><span class="s">&#39;Ctrl+p&#39;</span><span class="p">)</span>
<span class="c"># wait for dialog to open:</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">app</span><span class="o">.</span><span class="n">print_dialog</span><span class="o">.</span><span class="n">open</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="bp">True</span><span class="p">)))</span>
<span class="bp">self</span><span class="o">.</span><span class="n">keyboard</span><span class="o">.</span><span class="n">press_and_release</span><span class="p">(</span><span class="s">&#39;Enter&#39;</span><span class="p">)</span>
<span class="c"># ensure something was sent to our faked printer:</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">fake_printer</span><span class="o">.</span><span class="n">documents_printed</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">1</span><span class="p">))</span>
</pre>
</li>
</ul>
<p>In general, autopilot tests are more relaxed about the &#8216;one assertion per test&#8217; rule. However, care should still be taken to produce tests that are as small and understandable as possible.</p>
<h3><a class="toc-backref" href="#id11">Q. How do I write a test that uses either a Mouse or a Touch device interchangeably?</a><a class="headerlink" href="#q-how-do-i-write-a-test-that-uses-either-a-mouse-or-a-touch-device-interchangeably" title="Permalink to this headline"></a></h3>
<p>The <tt class="xref py py-class docutils literal"><span class="pre">autopilot.input.Pointer</span></tt> class is a simple wrapper that unifies some of the differences between the <tt class="xref py py-class docutils literal"><span class="pre">Touch</span></tt> and <tt class="xref py py-class docutils literal"><span class="pre">Mouse</span></tt> classes. To use it, pass in the device you want to use under the hood, like so:</p>
<pre><span class="n">pointer1</span> <span class="o">=</span> <span class="n">Pointer</span><span class="p">(</span><span class="n">Touch</span><span class="o">.</span><span class="n">create</span><span class="p">())</span>
<span class="n">pointer2</span> <span class="o">=</span> <span class="n">Pointer</span><span class="p">(</span><span class="n">Mouse</span><span class="o">.</span><span class="n">create</span><span class="p">())</span>
<span class="c"># pointer1 and pointer2 now have identical APIs</span>
</pre>
<p>Combined with test scenarios, this can be used to write tests that are run twice - once with a mouse device and once with a touch device:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Mouse</span><span class="p">,</span> <span class="n">Touch</span><span class="p">,</span> <span class="n">Pointer</span>
<span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">TestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="n">scenarios</span> <span class="o">=</span> <span class="p">[</span>
<span class="p">(</span><span class="s">&#39;with mouse&#39;</span><span class="p">,</span> <span class="nb">dict</span><span class="p">(</span><span class="n">pointer</span><span class="o">=</span><span class="n">Pointer</span><span class="p">(</span><span class="n">Mouse</span><span class="o">.</span><span class="n">create</span><span class="p">()))),</span>
<span class="p">(</span><span class="s">&#39;with touch&#39;</span><span class="p">,</span> <span class="nb">dict</span><span class="p">(</span><span class="n">pointer</span><span class="o">=</span><span class="n">Pointer</span><span class="p">(</span><span class="n">Touch</span><span class="o">.</span><span class="n">create</span><span class="p">()))),</span>
<span class="p">]</span>
<span class="k">def</span> <span class="nf">test_something</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;Click the pointer at 100,100.&quot;&quot;&quot;</span>
<span class="bp">self</span><span class="o">.</span><span class="n">pointer</span><span class="o">.</span><span class="n">move</span><span class="p">(</span><span class="mi">100</span><span class="p">,</span><span class="mi">100</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">pointer</span><span class="o">.</span><span class="n">click</span><span class="p">()</span>
</pre>
<p>If you only want to use the mouse on certain platforms, use the <tt class="xref py py-mod docutils literal"><span class="pre">autopilot.platform</span></tt> module to determine the current platform at runtime.</p>
<h3><a class="toc-backref" href="#id12">Q. How do I use the Onscreen Keyboard (OSK) to input text in my test?</a><a class="headerlink" href="#q-how-do-i-use-the-onscreen-keyboard-osk-to-input-text-in-my-test" title="Permalink to this headline"></a></h3>
<p>The OSK is an backend option for the <tt class="xref py py-meth docutils literal"><span class="pre">autopilot.input.Keyboard.create</span></tt>
method (see this <a class="reference internal" href="tutorial-advanced_autopilot.md#adv-picking-backend"><em>Advanced Autopilot</em></a> section for
details regarding backend selection.)</p>
<p>Unlike the other backends (X11, UInput) the OSK has a GUI presence and thus can
be displayed on the screen.</p>
<p>The <tt class="xref py py-class docutils literal"><span class="pre">autopilot.input.Keyboard</span></tt> class provides a context manager that
handles any cleanup required when dealing with the input backends.</p>
<p>For example in the instance when the backend is the OSK, when leaving the scope
of the context manager the OSK will be dismissed with a swipe:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
<span class="n">text_area</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">_launch_test_input_area</span><span class="p">()</span>
<span class="n">keyboard</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&#39;OSK&#39;</span><span class="p">)</span>
<span class="k">with</span> <span class="n">keyboard</span><span class="o">.</span><span class="n">focused_type</span><span class="p">(</span><span class="n">text_area</span><span class="p">)</span> <span class="k">as</span> <span class="n">kb</span><span class="p">:</span>
<span class="n">kb</span><span class="o">.</span><span class="n">type</span><span class="p">(</span><span class="s">&quot;Hello World.&quot;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">text_area</span><span class="o">.</span><span class="n">text</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">))</span>
<span class="c"># At this point now the OSK has been swiped away.</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">()</span>
</pre>
<h2><a class="toc-backref" href="#id13">Autopilot Tests and Launching Applications</a><a class="headerlink" href="#autopilot-tests-and-launching-applications" title="Permalink to this headline"></a></h2>
<h3><a class="toc-backref" href="#id14">Q. How do I launch a Click application from within a test so I can introspect it?</a><a class="headerlink" href="#q-how-do-i-launch-a-click-application-from-within-a-test-so-i-can-introspect-it" title="Permalink to this headline"></a></h3>
<p>Launching a Click application is similar to launching a traditional application
and is as easy as using
<a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_click_package" title="autopilot.testcase.AutopilotTestCase.launch_click_package"><tt class="xref py py-meth docutils literal"><span class="pre">launch_click_package</span></tt></a>:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_click_package</span><span class="p">(</span>
<span class="s">&quot;com.ubuntu.dropping-letters&quot;</span>
<span class="p">)</span>
</pre>
<h3><a class="toc-backref" href="#id15">Q. How do I access an already running application so that I can test/introspect it?</a><a class="headerlink" href="#q-how-do-i-access-an-already-running-application-so-that-i-can-test-introspect-it" title="Permalink to this headline"></a></h3>
<p>In instances where it&#8217;s impossible to launch the application-under-test from
within the testsuite use
<tt class="xref py py-meth docutils literal"><span class="pre">get_proxy_object_for_existing_process</span></tt> to get a
proxy object for the running application.
In all other cases the recommended way to launch and retrieve a proxy object
for an application is by calling either
<a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_test_application" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><tt class="xref py py-meth docutils literal"><span class="pre">launch_test_application</span></tt></a> or
<a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_click_package" title="autopilot.testcase.AutopilotTestCase.launch_click_package"><tt class="xref py py-meth docutils literal"><span class="pre">launch_click_package</span></tt></a></p>
<p>For example, to access a long running process that is running before your test starts:</p>
<pre><span class="n">application_pid</span> <span class="o">=</span> <span class="n">get_long_running_processes_pid</span><span class="p">()</span>
<span class="n">app_proxy</span> <span class="o">=</span> <span class="n">get_proxy_object_for_existing_process</span><span class="p">(</span><span class="n">pid</span><span class="o">=</span><span class="n">application_pid</span><span class="p">)</span>
</pre>
<h2><a class="toc-backref" href="#id16">Autopilot Qt &amp; Gtk Support</a><a class="headerlink" href="#autopilot-qt-gtk-support" title="Permalink to this headline"></a></h2>
<h3><a class="toc-backref" href="#id17">Q. How do I launch my application so that I can explore it with the vis tool?</a><a class="headerlink" href="#q-how-do-i-launch-my-application-so-that-i-can-explore-it-with-the-vis-tool" title="Permalink to this headline"></a></h3>
<p>Autopilot can launch applications with Autopilot support enabled allowing you to
explore and introspect the application using the <a class="reference internal" href="guides-running_ap.md#visualise-introspection-tree"><em>vis
tool</em></a></p>
<p>For instance launching gedit is as easy as:</p>
<pre>$ autopilot3 launch gedit
</pre>
<p><em>Autopilot launch</em> attempts to detect if you are launching either a Gtk or Qt
application so that it can enable the correct libraries. If is is unable to
determine this you will need to specify the type of application it is by using
the <strong>-i</strong> argument.</p>
<p>For example, in our previous example Autopilot was able to automatically
determine that gedit is a Gtk application and thus no further arguments were
required.</p>
<p>If we want to use the vis tool to introspect something like the <a class="reference internal" href="tutorial-getting_started.md#tut-test-with-interaction"><em>testapp.py
script</em></a> from an earlier tutorial we will need to
inform autopilot that it is a Qt application so that it can enable the correct
support:</p>
<pre>$ autopilot3 launch -i Qt testapp.py
</pre>
<p>Now that it has been launched with Autopilot support we can introspect and
explore out application using the <a class="reference internal" href="guides-running_ap.md#visualise-introspection-tree"><em>vis tool</em></a>.</p>
<h3><a class="toc-backref" href="#id18">Q. What is the impact on memory of adding objectNames to QML items?</a><a class="headerlink" href="#q-what-is-the-impact-on-memory-of-adding-objectnames-to-qml-items" title="Permalink to this headline"></a></h3>
<p>The objectName is a QString property of QObject which defaults to an empty QString.
QString is UTF-16 representation and because it uses some general purpose
optimisations it usually allocates twice the space it needs to be able to grow
fast. It also uses implicit sharing with copy-on-write and other similar
tricks to increase performance again. These properties makes the used memory
not straightforward to predict. For example, copying an object with an
objectName, shares the memory between both as long as they are not changed.</p>
<p>When measuring memory consumption, things like memory alignment come into play.
Due to the fact that QML is interpreted by a JavaScript engine, we are working
in levels where lots of abstraction layers are in between the code and the
hardware and we have no chance to exactly measure consumption of a single
objectName property. Therefore the taken approach is to measure lots of items
and calculate the average consumption.</p>
<table border="1">
<caption>Measurement of memory consumption of 10000 Items</caption>
<colgroup>
<col width="30%" />
<col width="37%" />
<col width="33%" />
</colgroup>
<thead valign="bottom">
<tr class="row-odd"><th class="head">Without objectName</th>
<th class="head">With unique objectName</th>
<th class="head">With same objectName</th>
</tr>
</thead>
<tbody valign="top">
<tr class="row-even"><td>65292 kB</td>
<td>66628 kB</td>
<td>66480 kB</td>
</tr>
</tbody>
</table>
<p>=&gt; With 10000 different objectNames 1336 kB of memory are consumed which is
around 127 Bytes per Item.</p>
<p>Indeed, this is more than only the string. Some of the memory is certainly lost
due to memory alignment where certain areas are just not perfectly filled in
but left empty. However, certainly not all of the overhead can be blamed on
that. Additional memory is used by the QObject meta object information that is
needed to do signal/slot connections. Also, QML does some optimisations: It
does not connect signals/slots when not needed. So the fact that the object
name is set could trigger some more connections.</p>
<p>Even if more than the actual string size is used and QString uses a large
representation, this is very little compared to the rest. A qmlscene with just
the item is 27MB. One full screen image in the Nexus 10 tablet can easily
consume around 30MB of memory. So objectNames are definitely not the first
places where to search for optimisations.</p>
<p>Writing the test code snippets, one interesting thing came up frequently: Just
modifying the code around to set the objectName often influences the results
more than the actual string. For example, having a javascript function that
assigns the objectName definitely uses much more memory than the objectName
itself. Unless it makes sense from a performance point of view (frequently
changing bindings can be slow), objectNames should be added by directly
binding the value to the property instead using helper code to assign it.</p>
<p>Conclusion: If an objectName is needed for testing, this is definitely worth
it. objectName&#8217;s should obviously not be added when not needed. When adding
them, the <a class="reference external" href="http://qt-project.org/doc/qt-5.0/qtquick/qtquick-performance.html">general QML guidelines for performance should be followed.</a></p>
