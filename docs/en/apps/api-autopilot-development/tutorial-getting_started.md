---
Title: tutorial-getting_started
---

# tutorial-getting_started

<p>This document contains everything you need to know to write your first autopilot test. It covers writing several simple tests for a sample Qt5/Qml application. However, it&#8217;s important to note that nothing in this tutorial is specific to Qt5/Qml, and will work equally well with any other kind of application.</p>
<h2>Files and Directories<a class="headerlink" href="#files-and-directories" title="Permalink to this headline"></a></h2>
<p>Your autopilot test suite will grow to several files, possibly spread across several directories. We recommend that you follow this simple directory layout:</p>
<pre>autopilot/
autopilot/&lt;projectname&gt;/
autopilot/&lt;projectname&gt;/tests/
</pre>
<p>The <tt class="docutils literal"><span class="pre">autopilot</span></tt> folder can be anywhere within your project&#8217;s source tree. It will likely contain a <a class="reference external" href="http://docs.python.org/3/distutils/setupscript.html">setup.py</a> file.</p>
<p>The <tt class="docutils literal"><span class="pre">autopilot/&lt;projectname&gt;/</span></tt> folder is the base package for your autopilot tests. This folder, and all child folders, are python packages, and so must contain an <a class="reference external" href="http://docs.python.org/3/tutorial/modules.html#packages">__init__.py file</a>. If you ever find yourself writing custom proxy classes (This is an advanced topic, and is covered here: <a class="reference internal" href="tutorial-advanced_autopilot.md#custom-proxy-classes"><em>Writing Custom Proxy Classes</em></a>), they should be imported from this top-level package.</p>
<p>Each test file should be named <tt class="docutils literal"><span class="pre">test_&lt;component&gt;.py</span></tt>, where <em>&lt;component&gt;</em> is the logical component you are testing in that file. Test files must be written in the <tt class="docutils literal"><span class="pre">autopilot/&lt;projectname&gt;/tests/</span></tt> folder.</p>
<h3>A Minimal Test Case<a class="headerlink" href="#a-minimal-test-case" title="Permalink to this headline"></a></h3>
<p>Autopilot tests follow a similar pattern to other python test libraries: you must declare a class that derives from <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase" title="autopilot.testcase.AutopilotTestCase"><tt class="xref py py-class docutils literal"><span class="pre">AutopilotTestCase</span></tt></a>. A minimal test case looks like this:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_something</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;An example test case that will always pass.&quot;&quot;&quot;</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertTrue</span><span class="p">(</span><span class="bp">True</span><span class="p">)</span>
</pre>
<img alt="otto icon" src="https://assets.ubuntu.com/v1/14ad469c-otto-64.png" />
<p class="first admonition-title">Autopilot Says</p>
<p><strong>Make your tests expressive!</strong></p>
<p class="last">It&#8217;s important to make sure that your tests express your <em>intent</em> as clearly as possible. We recommend choosing long, descriptive names for test functions and classes (even breaking <span class="target" id="index-0"></span><a class="pep reference external" href="http://www.python.org/dev/peps/pep-0008"><strong>PEP 8</strong></a>, if you need to), and give your tests a detailed docstring explaining exactly what you are trying to test. For more detailed advice on this point, see <a class="reference internal" href="guides-good_tests.md#write-expressive-tests"><em>Write Expressive Tests</em></a></p>
<h2>The Setup Phase<a class="headerlink" href="#the-setup-phase" title="Permalink to this headline"></a></h2>
<p>Before each test is run, the <tt class="docutils literal"><span class="pre">setUp</span></tt> method is called. Test authors may override this method to run any setup that needs to happen before the test is run. However, care must be taken when using the <tt class="docutils literal"><span class="pre">setUp</span></tt> method: it tends to hide code from the test case, which can make your tests less readable. It is our recommendation, therefore, that you use this feature sparingly. A more suitable alternative is often to put the setup code in a separate function or method and call it from the test function.</p>
<p>Should you wish to put code in a setup method, it looks like this:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">setUp</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="nb">super</span><span class="p">(</span><span class="n">MyTests</span><span class="p">,</span> <span class="bp">self</span><span class="p">)</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
<span class="c"># This code gets run before every test!</span>
<span class="k">def</span> <span class="nf">test_something</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;An example test case that will always pass.&quot;&quot;&quot;</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertTrue</span><span class="p">(</span><span class="bp">True</span><span class="p">)</span>
</pre>
<p class="first admonition-title">Note</p>
<p class="last">Any action you take in the setup phase must be undone if it alters the system state. See <a class="reference internal" href="tutorial-advanced_autopilot.md#cleaning-up"><em>Cleaning Up</em></a> for more details.</p>
<h3>Starting the Application<a class="headerlink" href="#starting-the-application" title="Permalink to this headline"></a></h3>
<p>At the start of your test, you need to tell autopilot to launch your application. To do this, call <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_test_application" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><tt class="xref py py-meth docutils literal"><span class="pre">launch_test_application</span></tt></a>. The minimum required argument to this method is the application name or path. If you pass in the application name, autopilot will look in the current working directory, and then will search the <span class="target" id="index-1"></span><tt class="xref std std-envvar docutils literal"><span class="pre">PATH</span></tt> environment variable. Otherwise, autopilot looks for the executable at the path specified. Positional arguments to this method are passed to the executable being launched.</p>
<p>Autopilot will try and guess what type of application you are launching, and therefore what kind of introspection libraries it should load. Sometimes autopilot will need some assistance however. For example, at the time of writing, autopilot cannot automatically detect the introspection type for python / Qt4 applications. In that case, a <tt class="xref py py-class docutils literal"><span class="pre">RuntimeError</span></tt> will be raised. To provide autopilot with a hint as to which introspection type to load, you can provide the <tt class="docutils literal"><span class="pre">app_type</span></tt> keyword argument. For example:</p>
<pre><span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_python_qt4_application</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
<span class="s">&#39;my-pyqt4-app&#39;</span><span class="p">,</span>
<span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span>
<span class="p">)</span>
</pre>
<p>See the documentation for <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_test_application" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><tt class="xref py py-meth docutils literal"><span class="pre">launch_test_application</span></tt></a> for more details.</p>
<p>The return value from <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_test_application" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><tt class="xref py py-meth docutils literal"><span class="pre">launch_test_application</span></tt></a> is a proxy object representing the root of the introspection tree of the application you just launched.</p>
<img alt="otto icon" src="https://assets.ubuntu.com/v1/14ad469c-otto-64.png" />
<p class="first admonition-title">Autopilot Says</p>
<p><strong>What is a Proxy Object?</strong></p>
<p>Whenever you launch an application, autopilot gives you a &#8220;proxy object&#8221;. These are instances of the <a class="reference internal" href="autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase" title="autopilot.introspection.ProxyBase"><tt class="xref py py-class docutils literal"><span class="pre">ProxyBase</span></tt></a> class, with all the data from your application mirrored in the proxy object instances. For example, if you have a proxy object for a push button class (say, <tt class="docutils literal"><span class="pre">QPushButton</span></tt>, for example), the proxy object will have attribute to match every attribute in the class within your application. Autopilot automatically keeps the data in these instances up to date, so you can use them in your test assertions.</p>
<p class="last">User interfaces are made up of a tree of widgets, and autopilot represents these widgets as a tree of proxy objects. Proxy objects have a number of methods on them for selecting child objects in the introspection tree, so test authors can easily inspect the parts of the UI tree they care about.</p>
<h2>A Simple Test<a class="headerlink" href="#a-simple-test" title="Permalink to this headline"></a></h2>
<p>To demonstrate the material covered so far, this selection will outline a simple application, and a single test for it. Instead of testing a third-party application, we will write the simplest possible application in Python and Qt4. The application, named &#8216;testapp.py&#8217;, is listed below:</p>
<pre><span class="c">#!/usr/bin/env python</span>
<span class="kn">from</span> <span class="nn">PyQt4</span> <span class="kn">import</span> <span class="n">QtGui</span>
<span class="kn">from</span> <span class="nn">sys</span> <span class="kn">import</span> <span class="n">argv</span>
<span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
<span class="n">app</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QApplication</span><span class="p">(</span><span class="n">argv</span><span class="p">)</span>
<span class="n">win</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QMainWindow</span><span class="p">()</span>
<span class="n">win</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
<span class="n">win</span><span class="o">.</span><span class="n">setWindowTitle</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">)</span>
<span class="n">app</span><span class="o">.</span><span class="n">exec_</span><span class="p">()</span>
<span class="k">if</span> <span class="n">__name__</span> <span class="o">==</span> <span class="s">&#39;__main__&#39;</span><span class="p">:</span>
<span class="n">main</span><span class="p">()</span>
</pre>
<p>As you can see, this is a trivial application, but it serves our purpose. For the upcoming tests to run this file must be executable:</p>
<pre>$ chmod u+x testapp.py
</pre>
<p>We will write a single autopilot test that asserts that the title of the main window is equal to the string &#8220;Hello World&#8221;. Our test file is named &#8220;test_window.py&#8221;, and contains the following code:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="kn">from</span> <span class="nn">os.path</span> <span class="kn">import</span> <span class="n">abspath</span><span class="p">,</span> <span class="n">dirname</span><span class="p">,</span> <span class="n">join</span>
<span class="kn">from</span> <span class="nn">testtools.matchers</span> <span class="kn">import</span> <span class="n">Equals</span>
<span class="k">class</span> <span class="nc">MainWindowTitleTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">launch_application</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;Work out the full path to the application and launch it.</span>
<span class="sd">        This is necessary since our test application will not be in $PATH.</span>
<span class="sd">        :returns: The application proxy object.</span>
<span class="sd">        &quot;&quot;&quot;</span>
<span class="n">full_path</span> <span class="o">=</span> <span class="n">abspath</span><span class="p">(</span><span class="n">join</span><span class="p">(</span><span class="n">dirname</span><span class="p">(</span><span class="n">__file__</span><span class="p">),</span> <span class="s">&#39;..&#39;</span><span class="p">,</span> <span class="s">&#39;..&#39;</span><span class="p">,</span> <span class="s">&#39;testapp.py&#39;</span><span class="p">))</span>
<span class="k">return</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="n">full_path</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
<span class="k">def</span> <span class="nf">test_main_window_title_string</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;The main window title must be &#39;Hello World&#39;.&quot;&quot;&quot;</span>
<span class="n">app_root</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_application</span><span class="p">()</span>
<span class="n">main_window</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QMainWindow&#39;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">main_window</span><span class="o">.</span><span class="n">windowTitle</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">))</span>
</pre>
<p>Note that we have made the test method as readable as possible by hiding the complexities of finding the full path to the application we want to test. Of course, if you can guarantee that the application is in <span class="target" id="index-2"></span><tt class="xref std std-envvar docutils literal"><span class="pre">PATH</span></tt>, then this step becomes a lot simpler.</p>
<p>The entire directory structure looks like this:</p>
<pre>./example/__init__.py
./example/tests/__init__.py
./example/tests/test_window.py
./testapp.py
</pre>
<p>The <tt class="docutils literal"><span class="pre">__init__.py</span></tt> files are empty, and are needed to make these directories importable by python.</p>
<h3>Running Autopilot<a class="headerlink" href="#running-autopilot" title="Permalink to this headline"></a></h3>
<p>From the root of this directory structure, we can ask autopilot to list all the tests it can find:</p>
<pre>$ autopilot3 list example
Loading tests from: /home/thomi/code/canonical/autopilot/example_test
example.tests.test_window.MainWindowTitleTests.test_main_window_title_string
1 total tests.
</pre>
<p>Note that on the first line, autopilot will tell you where it has loaded the test definitions from. Autopilot will look in the current directory for a python package that matches the package name specified on the command line. If it does not find any suitable packages, it will look in the standard python module search path instead.</p>
<p>To run our test, we use the autopilot &#8216;run&#8217; command:</p>
<pre>$ autopilot3 run example
Loading tests from: /home/thomi/code/canonical/autopilot/example_test
Tests running...
Ran 1 test in 2.342s
OK
</pre>
<p>You will notice that the test application launches, and then dissapears shortly afterwards. Since this test doesn&#8217;t manipulate the application in any way, this is a rather boring test to look at. If you ever want more output from the run command, you may specify the &#8216;-v&#8217; flag:</p>
<pre>$ autopilot3 run -v example
Loading tests from: /home/thomi/code/canonical/autopilot/example_test
Tests running...
13:41:11.614 INFO globals:49 - ************************************************************
13:41:11.614 INFO globals:50 - Starting test example.tests.test_window.MainWindowTitleTests.test_main_window_title_string
13:41:11.693 INFO __init__:136 - Launching process: [&#39;/home/thomi/code/canonical/autopilot/example_test/testapp.py&#39;, &#39;-testability&#39;]
13:41:11.699 INFO __init__:169 - Looking for autopilot interface for PID 12013 (and children)
13:41:11.727 WARNING __init__:185 - Caught exception while searching for autopilot interface: &#39;DBusException(&quot;Could not get PID of name &#39;org.freedesktop.DBus&#39;: no such name&quot;,)&#39;
13:41:12.773 WARNING __init__:185 - Caught exception while searching for autopilot interface: &#39;DBusException(&quot;Could not get PID of name &#39;org.freedesktop.DBus&#39;: no such name&quot;,)&#39;
13:41:12.848 WARNING __init__:185 - Caught exception while searching for autopilot interface: &#39;RuntimeError(&quot;Could not find Autopilot interface on DBus backend &#39;&lt;session bus :1.5967 /com/canonical/Autopilot/Introspection&gt;&#39;&quot;,)&#39;
13:41:12.852 WARNING __init__:185 - Caught exception while searching for autopilot interface: &#39;RuntimeError(&quot;Could not find Autopilot interface on DBus backend &#39;&lt;session bus :1.5968 /com/canonical/Autopilot/Introspection&gt;&#39;&quot;,)&#39;
13:41:12.863 WARNING dbus:464 - Generating introspection instance for type &#39;Root&#39; based on generic class.
13:41:12.864 DEBUG dbus:338 - Selecting objects of type QMainWindow with attributes: {}
13:41:12.871 WARNING dbus:464 - Generating introspection instance for type &#39;QMainWindow&#39; based on generic class.
13:41:12.886 INFO testcase:380 - waiting for process to exit.
13:41:13.983 INFO testresult:35 - OK: example.tests.test_window.MainWindowTitleTests.test_main_window_title_string
Ran 1 test in 2.370s
OK
</pre>
<p>You may also specify &#8216;-v&#8217; twice for even more output (this is rarely useful for test authors however).</p>
<p>Both the &#8216;list&#8217; and &#8216;run&#8217; commands take a test id as an argument. You may be as generic, or as specific as you like. In the examples above, we will list and run all tests in the &#8216;example&#8217; package (i.e.- all tests), but we could specify a more specific run criteria if we only wanted to run some of the tests. For example, to only run the single test we&#8217;ve written, we can execute:</p>
<pre>$ autopilot3 run example.tests.test_window.MainWindowTitleTests.test_main_window_title_string
</pre>
<span id="tut-test-with-interaction"></span><h2>A Test with Interaction<a class="headerlink" href="#a-test-with-interaction" title="Permalink to this headline"></a></h2>
<p>Now lets take a look at some simple tests with some user interaction. First, update the test application with some input and output controls:</p>
<pre><span class="c">#!/usr/bin/env python</span>
<span class="c"># File: testapp.py</span>
<span class="kn">from</span> <span class="nn">PyQt4</span> <span class="kn">import</span> <span class="n">QtGui</span>
<span class="kn">from</span> <span class="nn">sys</span> <span class="kn">import</span> <span class="n">argv</span>
<span class="k">class</span> <span class="nc">AutopilotHelloWorld</span><span class="p">(</span><span class="n">QtGui</span><span class="o">.</span><span class="n">QWidget</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">__init__</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="nb">super</span><span class="p">(</span><span class="n">AutopilotHelloWorld</span><span class="p">,</span> <span class="bp">self</span><span class="p">)</span><span class="o">.</span><span class="n">__init__</span><span class="p">()</span>
<span class="bp">self</span><span class="o">.</span><span class="n">hello</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QPushButton</span><span class="p">(</span><span class="s">&quot;Hello&quot;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">hello</span><span class="o">.</span><span class="n">clicked</span><span class="o">.</span><span class="n">connect</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">say_hello</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">goodbye</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QPushButton</span><span class="p">(</span><span class="s">&quot;Goodbye&quot;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">goodbye</span><span class="o">.</span><span class="n">clicked</span><span class="o">.</span><span class="n">connect</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">say_goodbye</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">response</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QLabel</span><span class="p">(</span><span class="s">&quot;Response: None&quot;</span><span class="p">)</span>
<span class="n">grid</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QGridLayout</span><span class="p">()</span>
<span class="n">grid</span><span class="o">.</span><span class="n">addWidget</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">hello</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="mi">0</span><span class="p">)</span>
<span class="n">grid</span><span class="o">.</span><span class="n">addWidget</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">goodbye</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="mi">1</span><span class="p">)</span>
<span class="n">grid</span><span class="o">.</span><span class="n">addWidget</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">response</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">setLayout</span><span class="p">(</span><span class="n">grid</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
<span class="bp">self</span><span class="o">.</span><span class="n">setWindowTitle</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">)</span>
<span class="k">def</span> <span class="nf">say_hello</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">response</span><span class="o">.</span><span class="n">setText</span><span class="p">(</span><span class="s">&#39;Response: Hello&#39;</span><span class="p">)</span>
<span class="k">def</span> <span class="nf">say_goodbye</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">response</span><span class="o">.</span><span class="n">setText</span><span class="p">(</span><span class="s">&#39;Response: Goodbye&#39;</span><span class="p">)</span>
<span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
<span class="n">app</span> <span class="o">=</span> <span class="n">QtGui</span><span class="o">.</span><span class="n">QApplication</span><span class="p">(</span><span class="n">argv</span><span class="p">)</span>
<span class="n">ahw</span> <span class="o">=</span> <span class="n">AutopilotHelloWorld</span><span class="p">()</span>
<span class="n">app</span><span class="o">.</span><span class="n">exec_</span><span class="p">()</span>
<span class="k">if</span> <span class="n">__name__</span> <span class="o">==</span> <span class="s">&#39;__main__&#39;</span><span class="p">:</span>
<span class="n">main</span><span class="p">()</span>
</pre>
<p>We&#8217;ve reorganized the application code into a class to make the event handling easier. Then we added two input controls, the <tt class="docutils literal"><span class="pre">hello</span></tt> and <tt class="docutils literal"><span class="pre">goodbye</span></tt> buttons and an output control, the <tt class="docutils literal"><span class="pre">response</span></tt> label.</p>
<p>The operation of the application is still very trivial, but now we can test that it actually does something in response to user input. Clicking either of the two buttons will cause the response text to change. Clicking the <tt class="docutils literal"><span class="pre">Hello</span></tt> button should result in <tt class="docutils literal"><span class="pre">Response:</span> <span class="pre">Hello</span></tt> while clicking the <tt class="docutils literal"><span class="pre">Goodbye</span></tt> button should result in <tt class="docutils literal"><span class="pre">Response:</span> <span class="pre">Goodbye</span></tt>.</p>
<p>Since we&#8217;re adding a new category of tests, button response tests, we should organize them into a new class. Our tests module now looks like:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="kn">from</span> <span class="nn">os.path</span> <span class="kn">import</span> <span class="n">abspath</span><span class="p">,</span> <span class="n">dirname</span><span class="p">,</span> <span class="n">join</span>
<span class="kn">from</span> <span class="nn">testtools.matchers</span> <span class="kn">import</span> <span class="n">Equals</span>
<span class="kn">from</span> <span class="nn">autopilot.matchers</span> <span class="kn">import</span> <span class="n">Eventually</span>
<span class="k">class</span> <span class="nc">HelloWorldTestBase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">launch_application</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;Work out the full path to the application and launch it.</span>
<span class="sd">        This is necessary since our test application will not be in $PATH.</span>
<span class="sd">        :returns: The application proxy object.</span>
<span class="sd">        &quot;&quot;&quot;</span>
<span class="n">full_path</span> <span class="o">=</span> <span class="n">abspath</span><span class="p">(</span><span class="n">join</span><span class="p">(</span><span class="n">dirname</span><span class="p">(</span><span class="n">__file__</span><span class="p">),</span> <span class="s">&#39;..&#39;</span><span class="p">,</span> <span class="s">&#39;..&#39;</span><span class="p">,</span> <span class="s">&#39;testapp.py&#39;</span><span class="p">))</span>
<span class="k">return</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="n">full_path</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
<span class="k">class</span> <span class="nc">MainWindowTitleTests</span><span class="p">(</span><span class="n">HelloWorldTestBase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_main_window_title_string</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;The main window title must be &#39;Hello World&#39;.&quot;&quot;&quot;</span>
<span class="n">app_root</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_application</span><span class="p">()</span>
<span class="n">main_window</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;AutopilotHelloWorld&#39;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">main_window</span><span class="o">.</span><span class="n">windowTitle</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">))</span>
<span class="k">class</span> <span class="nc">ButtonResponseTests</span><span class="p">(</span><span class="n">HelloWorldTestBase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_hello_response</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;The response text must be &#39;Response: Hello&#39; after a Hello click.&quot;&quot;&quot;</span>
<span class="n">app_root</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_application</span><span class="p">()</span>
<span class="n">response</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QLabel&#39;</span><span class="p">)</span>
<span class="n">hello</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">text</span><span class="o">=</span><span class="s">&#39;Hello&#39;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">mouse</span><span class="o">.</span><span class="n">click_object</span><span class="p">(</span><span class="n">hello</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="s">&#39;Response: Hello&#39;</span><span class="p">)))</span>
<span class="k">def</span> <span class="nf">test_goodbye_response</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;The response text must be &#39;Response: Goodbye&#39; after a Goodbye</span>
<span class="sd">        click.&quot;&quot;&quot;</span>
<span class="n">app_root</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_application</span><span class="p">()</span>
<span class="n">response</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QLabel&#39;</span><span class="p">)</span>
<span class="n">goodbye</span> <span class="o">=</span> <span class="n">app_root</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">text</span><span class="o">=</span><span class="s">&#39;Goodbye&#39;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">mouse</span><span class="o">.</span><span class="n">click_object</span><span class="p">(</span><span class="n">goodbye</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="s">&#39;Response: Goodbye&#39;</span><span class="p">)))</span>
</pre>
<p>In addition to the new class, <tt class="docutils literal"><span class="pre">ButtonResponseTests</span></tt>, you&#8217;ll notice a few other changes. First, two new import lines were added to support the new tests. Next, the existing <tt class="docutils literal"><span class="pre">MainWindowTitleTests</span></tt> class was refactored to subclass from a base class, <tt class="docutils literal"><span class="pre">HelloWorldTestBase</span></tt>. The base class contains the <tt class="docutils literal"><span class="pre">launch_application</span></tt> method which is used for all test cases. Finally, the object type of the main window changed from <tt class="docutils literal"><span class="pre">QMainWindow</span></tt> to <tt class="docutils literal"><span class="pre">AutopilotHelloWorld</span></tt>. The change in object type is a result of our test application being refactored into a class called <tt class="docutils literal"><span class="pre">AutopilotHelloWorld</span></tt>.</p>
<img alt="otto icon" src="https://assets.ubuntu.com/v1/14ad469c-otto-64.png" />
<p class="first admonition-title">Autopilot Says</p>
<p><strong>Be careful when identifing user interface controls</strong></p>
<p class="last">Notice that our simple refactoring of the test application forced a change to the test for the main window. When developing application code, put a little extra thought into how the user interface controls will be identified in the tests. Identify objects with attributes that are likely to remain constant as the application code is developed.</p>
<p>The <tt class="docutils literal"><span class="pre">ButtonResponseTests</span></tt> class adds two new tests, one for each input control. Each test identifies the user interface controls that need to be used, performs a single, specific action, and then verifies the outcome. In <tt class="docutils literal"><span class="pre">test_hello_response</span></tt>, we first identify the <tt class="docutils literal"><span class="pre">QLabel</span></tt> control which contains the output we need to check. We then identify the <tt class="docutils literal"><span class="pre">Hello</span></tt> button. As the application has two <tt class="docutils literal"><span class="pre">QPushButton</span></tt> controls, we must further refine the <tt class="docutils literal"><span class="pre">select_single</span></tt> call by specifing an additional property. In this case, we use the button text. Next, an input action is triggered by instructing the <tt class="docutils literal"><span class="pre">mouse</span></tt> to click the <tt class="docutils literal"><span class="pre">Hello</span></tt> button. Finally, the test asserts that the response label text matches the expected string. The second test repeats the same process with the <tt class="docutils literal"><span class="pre">Goodbye</span></tt> button.</p>
<h2>The Eventually Matcher<a class="headerlink" href="#the-eventually-matcher" title="Permalink to this headline"></a></h2>
<p>Notice that in the ButtonResponseTests tests above, the autopilot method <a class="reference internal" href="autopilot.matchers.Eventually.md#autopilot.matchers.Eventually" title="autopilot.matchers.Eventually"><tt class="xref py py-class docutils literal"><span class="pre">Eventually</span></tt></a> is used in the assertion. This allows the assertion to be retried continuously until it either becomes true, or times out (the default timout is 10 seconds). This is necessary because the application and the autopilot tests run in different processes. Autopilot could test the assert before the application has completed its action. Using <a class="reference internal" href="autopilot.matchers.Eventually.md#autopilot.matchers.Eventually" title="autopilot.matchers.Eventually"><tt class="xref py py-class docutils literal"><span class="pre">Eventually</span></tt></a> allows the application to complete its action without having to explicitly add delays to the tests.</p>
<img alt="otto icon" src="https://assets.ubuntu.com/v1/14ad469c-otto-64.png" />
<p class="first admonition-title">Autopilot Says</p>
<p><strong>Use Eventually when asserting any user interface condition</strong></p>
<p class="last">You may find that when running tests, the application is often ready with the outcome by the time autopilot is able to test the assertion without using <a class="reference internal" href="autopilot.matchers.Eventually.md#autopilot.matchers.Eventually" title="autopilot.matchers.Eventually"><tt class="xref py py-class docutils literal"><span class="pre">Eventually</span></tt></a>. However, this may not always be true when running your test suite on different hardware.</p>
