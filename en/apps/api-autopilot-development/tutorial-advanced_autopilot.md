---
Title: tutorial-advanced_autopilot
---

# tutorial-advanced_autopilot

<p>This document covers advanced features in autopilot.</p>
<span id="id1"></span><h2>Cleaning Up<a class="headerlink" href="#cleaning-up" title="Permalink to this headline"></a></h2>
<p>It is vitally important that every test you run leaves the system in exactly the same state as it found it. This means that:</p>
<ul class="simple">
<li>Any files written to disk need to be removed.</li>
<li>Any environment variables set during the test run need to be un-set.</li>
<li>Any applications opened during the test run need to be closed again.</li>
<li>Any <tt class="xref py py-class docutils literal"><span class="pre">Keyboard</span></tt> keys pressed during the test need to be released again.</li>
</ul>
<p>All of the methods on <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase" title="autopilot.testcase.AutopilotTestCase"><tt class="xref py py-class docutils literal"><span class="pre">AutopilotTestCase</span></tt></a> that alter the system state will automatically revert those changes at the end of the test. Similarly, the various input devices will release any buttons or keys that were pressed during the test. However, for all other changes, it is the responsibility of the test author to clean up those changes.</p>
<p>For example, a test might require that a file with certain content be written to disk at the start of the test. The test case might look something like this:</p>
<pre><span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">make_data_file</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="nb">open</span><span class="p">(</span><span class="s">&#39;/tmp/datafile&#39;</span><span class="p">,</span> <span class="s">&#39;w&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">write</span><span class="p">(</span><span class="s">&quot;Some data...&quot;</span><span class="p">)</span>
<span class="k">def</span> <span class="nf">test_application_opens_data_file</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;Our application must be able to open a data file from disk.&quot;&quot;&quot;</span>
<span class="bp">self</span><span class="o">.</span><span class="n">make_data_file</span><span class="p">()</span>
<span class="c"># rest of the test code goes here</span>
</pre>
<p>However this will leave the <tt class="file docutils literal"><span class="pre">/tmp/datafile</span></tt> on disk after the test has finished. To combat this, use the <tt class="xref py py-meth docutils literal"><span class="pre">addCleanup</span></tt> method. The arguments to <tt class="xref py py-meth docutils literal"><span class="pre">addCleanup</span></tt> are a callable, and then zero or more positional or keyword arguments. The Callable will be called with the positional and keyword arguments after the test has ended.</p>
<p>Cleanup actions are called in the reverse order in which they are added, and are called regardless of whether the test passed, failed, or raised an uncaught exception. To fix the above test, we might write something similar to:</p>
<pre><span class="kn">import</span> <span class="nn">os</span>
<span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">make_data_file</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="nb">open</span><span class="p">(</span><span class="s">&#39;/tmp/datafile&#39;</span><span class="p">,</span> <span class="s">&#39;w&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">write</span><span class="p">(</span><span class="s">&quot;Some data...&quot;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">addCleanup</span><span class="p">(</span><span class="n">os</span><span class="o">.</span><span class="n">remove</span><span class="p">,</span> <span class="s">&#39;/tmp/datafile&#39;</span><span class="p">)</span>
<span class="k">def</span> <span class="nf">test_application_opens_data_file</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;Our application must be able to open a data file from disk.&quot;&quot;&quot;</span>
<span class="bp">self</span><span class="o">.</span><span class="n">make_data_file</span><span class="p">()</span>
<span class="c"># rest of the test code goes here</span>
</pre>
<p>Note that by having the code to generate the <tt class="docutils literal"><span class="pre">/tmp/datafile</span></tt> file on disk in a separate method, the test itself can ignore the fact that these resources need to be cleaned up. This makes the tests cleaner and easier to read.</p>
<h2>Test Scenarios<a class="headerlink" href="#test-scenarios" title="Permalink to this headline"></a></h2>
<p>Occasionally test authors will find themselves writing multiple tests that differ in one or two subtle ways. For example, imagine a hypothetical test case that tests a dictionary application. The author wants to test that certain words return no results. Without using test scenarios, there are two basic approaches to this problem. The first is to create many test cases, one for each specific scenario (<em>don&#8217;t do this</em>):</p>
<pre><span class="k">class</span> <span class="nc">DictionaryResultsTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_empty_string_returns_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="s">&quot;&quot;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
<span class="k">def</span> <span class="nf">test_whitespace_string_returns_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="s">&quot; </span><span class="se">\t</span><span class="s"> &quot;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
<span class="k">def</span> <span class="nf">test_punctuation_string_returns_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="s">&quot;.-?&lt;&gt;{}[]&quot;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
<span class="k">def</span> <span class="nf">test_garbage_string_returns_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="s">&quot;ljdzgfhdsgjfhdgjh&quot;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
</pre>
<p>The main problem here is that there&#8217;s a lot of typing in order to change exactly one thing (and this hypothetical test is deliberately short, to ease clarity. Imagine a 100 line test case!). Another approach is to make the entire thing one large test (<em>don&#8217;t do this either</em>):</p>
<pre><span class="k">class</span> <span class="nc">DictionaryResultsTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_bad_strings_returns_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="n">bad_strings</span> <span class="o">=</span> <span class="p">(</span><span class="s">&quot;&quot;</span><span class="p">,</span>
<span class="s">&quot; </span><span class="se">\t</span><span class="s"> &quot;</span><span class="p">,</span>
<span class="s">&quot;.-?&lt;&gt;{}[]&quot;</span><span class="p">,</span>
<span class="s">&quot;ljdzgfhdsgjfhdgjh&quot;</span><span class="p">,</span>
<span class="p">)</span>
<span class="k">for</span> <span class="nb">input</span> <span class="ow">in</span> <span class="n">bad_strings</span><span class="p">:</span>
<span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="nb">input</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
</pre>
<p>This approach makes it easier to add new input strings, but what happens when just one of the input strings stops working? It becomes very hard to find out which input string is broken, and the first string that breaks will prevent the rest of the test from running, since tests stop running when the first assertion fails.</p>
<p>The solution is to use test scenarios. A scenario is a class attribute that specifies one or more scenarios to run on each of the tests. This is best demonstrated with an example:</p>
<pre><span class="k">class</span> <span class="nc">DictionaryResultsTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="n">scenarios</span> <span class="o">=</span> <span class="p">[</span>
<span class="p">(</span><span class="s">&#39;empty string&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&quot;&quot;</span><span class="p">}),</span>
<span class="p">(</span><span class="s">&#39;whitespace&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&quot; </span><span class="se">\t</span><span class="s"> &quot;</span><span class="p">}),</span>
<span class="p">(</span><span class="s">&#39;punctuation&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&quot;.-?&lt;&gt;{}[]&quot;</span><span class="p">}),</span>
<span class="p">(</span><span class="s">&#39;garbage&#39;</span><span class="p">,</span> <span class="p">{</span><span class="s">&#39;input&#39;</span><span class="p">:</span> <span class="s">&quot;ljdzgfhdsgjfhdgjh&quot;</span><span class="p">}),</span>
<span class="p">]</span>
<span class="k">def</span> <span class="nf">test_bad_strings_return_no_results</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">enter_search_term</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">input</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="bp">self</span><span class="o">.</span><span class="n">dictionary_app</span><span class="o">.</span><span class="n">results</span><span class="p">),</span> <span class="n">Equals</span><span class="p">(</span><span class="mi">0</span><span class="p">))</span>
</pre>
<p>Autopilot will run the <tt class="docutils literal"><span class="pre">test_bad_strings_return_no_results</span></tt> once for each scenario. On each test, the values from the scenario dictionary will be mapped to attributes of the test case class. In this example, that means that the &#8216;input&#8217; dictionary item will be mapped to <tt class="docutils literal"><span class="pre">self.input</span></tt>. Using scenarios has several benefits over either of the other strategies outlined above:</p>
<ul>
<li><p class="first">Tests that use strategies will appear as separate tests in the test output. The test id will be the normal test id, followed by the strategy name in parenthesis. So in the example above, the list of test ids will be:</p>
<pre>DictionaryResultsTests.test_bad_strings_return_no_results(empty string)
DictionaryResultsTests.test_bad_strings_return_no_results(whitespace)
DictionaryResultsTests.test_bad_strings_return_no_results(punctuation)
DictionaryResultsTests.test_bad_strings_return_no_results(garbage)
</pre>
</li>
<li><p class="first">Since scenarios are treated as separate tests, it&#8217;s easier to debug which scenario has broken, and re-run just that one scenario.</p>
</li>
<li><p class="first">Scenarios get applied before the <tt class="docutils literal"><span class="pre">setUp</span></tt> method, which means you can use scenario values in the <tt class="docutils literal"><span class="pre">setUp</span></tt> and <tt class="docutils literal"><span class="pre">tearDown</span></tt> methods. This makes them more flexible than either of the approaches listed above.</p>
</li>
</ul>
<h2>Test Logging<a class="headerlink" href="#test-logging" title="Permalink to this headline"></a></h2>
<p>Autopilot integrates the <a class="reference external" href="http://docs.python.org/2/library/logging.html">python logging framework</a> into the <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase" title="autopilot.testcase.AutopilotTestCase"><tt class="xref py py-class docutils literal"><span class="pre">AutopilotTestCase</span></tt></a> class. Various autopilot components write log messages to the logging framework, and all these log messages are attached to each test result when the test completes. By default, these log messages are shown when a test fails, or if autopilot is run with the <tt class="docutils literal"><span class="pre">-v</span></tt> option.</p>
<p>Test authors are encouraged to write to the python logging framework whenever doing so would make failing tests clearer. To do this, there are a few simple steps to follow:</p>
<ol class="arabic">
<li><p class="first">Import the logging module:</p>
<pre><span class="kn">import</span> <span class="nn">logging</span>
</pre>
</li>
<li><p class="first">Create a <tt class="docutils literal"><span class="pre">logger</span></tt> object. You can either do this at the file level scope, or within a test case class:</p>
<pre><span class="n">logger</span> <span class="o">=</span> <span class="n">logging</span><span class="o">.</span><span class="n">getLogger</span><span class="p">(</span><span class="n">__name__</span><span class="p">)</span>
</pre>
</li>
<li><p class="first">Log some messages. You may choose which level the messages should be logged at. For example:</p>
<pre><span class="n">logger</span><span class="o">.</span><span class="n">debug</span><span class="p">(</span><span class="s">&quot;This is debug information, not shown by default.&quot;</span><span class="p">)</span>
<span class="n">logger</span><span class="o">.</span><span class="n">info</span><span class="p">(</span><span class="s">&quot;This is some information&quot;</span><span class="p">)</span>
<span class="n">logger</span><span class="o">.</span><span class="n">warning</span><span class="p">(</span><span class="s">&quot;This is a warning&quot;</span><span class="p">)</span>
<span class="n">logger</span><span class="o">.</span><span class="n">error</span><span class="p">(</span><span class="s">&quot;This is an error&quot;</span><span class="p">)</span>
</pre>
</li>
</ol>
<p class="first admonition-title">Note</p>
<p class="last">To view log messages when using <tt class="docutils literal"><span class="pre">debug</span></tt> level of logging pass <tt class="docutils literal"><span class="pre">-vv</span></tt> when running autopilot.</p>
<p>For more information on the various logging levels, see the <a class="reference external" href="http://docs.python.org/2/library/logging.html#logger-objects">python documentation on Logger objects</a>. All messages logged in this way will be picked up by the autopilot test runner. This is a valuable tool when debugging failing tests.</p>
<h2>Environment Patching<a class="headerlink" href="#environment-patching" title="Permalink to this headline"></a></h2>
<p>Sometimes you need to change the value of an environment variable for the duration of a single test. It is important that the variable is changed back to it&#8217;s original value when the test has ended, so future tests are run in a pristine environment. The <tt class="xref py py-mod docutils literal"><span class="pre">fixtures</span></tt> module includes a <tt class="xref py py-class docutils literal"><span class="pre">fixtures.EnvironmentVariable</span></tt> fixture which takes care of this for you. For example, to set the <tt class="docutils literal"><span class="pre">FOO</span></tt> environment variable to <tt class="docutils literal"><span class="pre">&quot;Hello</span> <span class="pre">World&quot;</span></tt> for the duration of a single test, the code would look something like this:</p>
<pre><span class="kn">from</span> <span class="nn">fixtures</span> <span class="kn">import</span> <span class="n">EnvironmentVariable</span>
<span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">MyTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_that_needs_custom_environment</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">useFixture</span><span class="p">(</span><span class="n">EnvironmentVariable</span><span class="p">(</span><span class="s">&quot;FOO&quot;</span><span class="p">,</span> <span class="s">&quot;Hello World&quot;</span><span class="p">))</span>
<span class="c"># Test code goes here.</span>
</pre>
<p>The <tt class="xref py py-class docutils literal"><span class="pre">fixtures.EnvironmentVariable</span></tt> fixture will revert the value of the environment variable to it&#8217;s initial value, or will delete it altogether if the environment variable did not exist when <tt class="xref py py-class docutils literal"><span class="pre">fixtures.EnvironmentVariable</span></tt> was instantiated. This happens in the cleanup phase of the test execution.</p>
<span id="id2"></span><h2>Custom Assertions<a class="headerlink" href="#custom-assertions" title="Permalink to this headline"></a></h2>
<p>Autopilot provides additional custom assertion methods within the <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase" title="autopilot.testcase.AutopilotTestCase"><tt class="xref py py-class docutils literal"><span class="pre">AutopilotTestCase</span></tt></a> base class. These assertion methods can be used for validating the visible window stack and also properties on objects whose attributes do not have the <tt class="docutils literal"><span class="pre">wait_for</span></tt> method, such as <a class="reference internal" href="autopilot.process.Window.md#autopilot.process.Window" title="autopilot.process.Window"><tt class="xref py py-class docutils literal"><span class="pre">Window</span></tt></a> objects (See <a class="reference internal" href="guides-good_tests.md#wait-for"><em>In Proxy Classes</em></a> for more information about <tt class="docutils literal"><span class="pre">wait_for</span></tt>).</p>
<p><a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.assertVisibleWindowStack" title="autopilot.testcase.AutopilotTestCase.assertVisibleWindowStack"><tt class="xref py py-mod docutils literal"><span class="pre">autopilot.testcase.AutopilotTestCase.assertVisibleWindowStack</span></tt></a></p>
<p>This assertion allows the test to check the start of the visible window stack by passing an iterable item of <a class="reference internal" href="autopilot.process.Window.md#autopilot.process.Window" title="autopilot.process.Window"><tt class="xref py py-class docutils literal"><span class="pre">Window</span></tt></a> instances. Minimised windows will be ignored:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.process</span> <span class="kn">import</span> <span class="n">ProcessManager</span>
<span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">WindowTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_window_stack</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">launch_some_test_apps</span><span class="p">()</span>
<span class="n">pm</span> <span class="o">=</span> <span class="n">ProcessManager</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
<span class="n">test_app_windows</span> <span class="o">=</span> <span class="p">[]</span>
<span class="k">for</span> <span class="n">window</span> <span class="ow">in</span> <span class="n">pm</span><span class="o">.</span><span class="n">get_open_windows</span><span class="p">():</span>
<span class="k">if</span> <span class="bp">self</span><span class="o">.</span><span class="n">is_test_app</span><span class="p">(</span><span class="n">window</span><span class="o">.</span><span class="n">name</span><span class="p">):</span>
<span class="n">test_app_windows</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">window</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertVisibleWindowStack</span><span class="p">(</span><span class="n">test_app_windows</span><span class="p">)</span>
</pre>
<p class="first admonition-title">Note</p>
<p class="last">The process manager is only available on environments that use bamf, i.e. desktop running Unity 7. There is currently no process manager for any other platform.</p>
<p id="custom-assertions-assertproperty"><a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.assertProperty" title="autopilot.testcase.AutopilotTestCase.assertProperty"><tt class="xref py py-mod docutils literal"><span class="pre">autopilot.testcase.AutopilotTestCase.assertProperty</span></tt></a></p>
<p>This assertion allows the test to check properties of an object that does not have a <strong>wait_for</strong> method (i.e.- objects that do not come from the autopilot DBus interface). For example the <a class="reference internal" href="autopilot.process.Window.md#autopilot.process.Window" title="autopilot.process.Window"><tt class="xref py py-mod docutils literal"><span class="pre">Window</span></tt></a> object:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.process</span> <span class="kn">import</span> <span class="n">ProcessManager</span>
<span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">WindowTests</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_window_stack</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">launch_some_test_apps</span><span class="p">()</span>
<span class="n">pm</span> <span class="o">=</span> <span class="n">ProcessManager</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
<span class="k">for</span> <span class="n">window</span> <span class="ow">in</span> <span class="n">pm</span><span class="o">.</span><span class="n">get_open_windows</span><span class="p">():</span>
<span class="k">if</span> <span class="bp">self</span><span class="o">.</span><span class="n">is_test_app</span><span class="p">(</span><span class="n">window</span><span class="o">.</span><span class="n">name</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertProperty</span><span class="p">(</span><span class="n">window</span><span class="p">,</span> <span class="n">is_maximized</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
</pre>
<p class="first admonition-title">Note</p>
<p class="last"><a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.assertProperties" title="autopilot.testcase.AutopilotTestCase.assertProperties"><tt class="xref py py-mod docutils literal"><span class="pre">assertProperties</span></tt></a> is a synonym for this method.</p>
<p class="first admonition-title">Note</p>
<p class="last">The process manager is only available on environments that use bamf, i.e. desktop running Unity 7. There is currently no process manager for any other platform.</p>
<p><a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.assertProperties" title="autopilot.testcase.AutopilotTestCase.assertProperties"><tt class="xref py py-mod docutils literal"><span class="pre">autopilot.testcase.AutopilotTestCase.assertProperties</span></tt></a></p>
<p>See <a class="reference internal" href="#custom-assertions-assertproperty"><em>autopilot.testcase.AutopilotTestCase.assertProperty</em></a>.</p>
<p class="first admonition-title">Note</p>
<p class="last"><a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.assertProperty" title="autopilot.testcase.AutopilotTestCase.assertProperty"><tt class="xref py py-mod docutils literal"><span class="pre">assertProperty</span></tt></a> is a synonym for this method.</p>
<span id="id3"></span><h2>Platform Selection<a class="headerlink" href="#platform-selection" title="Permalink to this headline"></a></h2>
<p>Autopilot provides functionality that allows the test author to determine which
platform a test is running on so that they may either change behaviour within
the test or skipping the test all together.</p>
<p>For examples and API documentaion please see <tt class="xref py py-mod docutils literal"><span class="pre">autopilot.platform</span></tt>.</p>
<span id="gestures-multitouch"></span><h2>Gestures and Multi-touch<a class="headerlink" href="#gestures-and-multi-touch" title="Permalink to this headline"></a></h2>
<p>Autopilot provides API support for both <a class="reference internal" href="#single-touch"><em>single-touch</em></a> and <a class="reference internal" href="#multi-touch"><em>multi-touch</em></a> gestures which can be used to simulate user input required to drive an application or system under test. These APIs should be used in conjunction with <a class="reference internal" href="#platform-selection"><em>Platform Selection</em></a> to detect platform capabilities and ensure the correct input API is being used.</p>
<span id="id4"></span><h3>Single-Touch<a class="headerlink" href="#single-touch" title="Permalink to this headline"></a></h3>
<p><tt class="xref py py-class docutils literal"><span class="pre">autopilot.input.Touch</span></tt> provides single-touch input gestures, which includes:</p>
<ul class="simple">
<li><tt class="xref py py-meth docutils literal"><span class="pre">tap</span></tt> which can be used to tap a specified [x,y] point on the screen</li>
<li><tt class="xref py py-meth docutils literal"><span class="pre">drag</span></tt> which will drag between 2 [x,y] points and can be customised by altering the speed of the action</li>
<li><tt class="xref py py-meth docutils literal"><span class="pre">press</span></tt>, <tt class="xref py py-meth docutils literal"><span class="pre">release</span></tt> and <tt class="xref py py-meth docutils literal"><span class="pre">move</span></tt> operations which can be combined to create custom gestures</li>
<li><tt class="xref py py-meth docutils literal"><span class="pre">tap_object</span></tt> can be used to tap the center point of a given introspection object, where the screen co-ordinates are taken from one of several properties of the object</li>
</ul>
<p>Autopilot additionally provides the class <tt class="xref py py-class docutils literal"><span class="pre">autopilot.input.Pointer</span></tt> as a means to provide a single unified API that can be used with both <tt class="xref py py-class docutils literal"><span class="pre">Mouse</span></tt> input and <tt class="xref py py-class docutils literal"><span class="pre">Touch</span></tt> input . See the <tt class="xref py py-class docutils literal"><span class="pre">documentation</span></tt> for this class for further details of this, as not all operations can be performed on both of these input types.</p>
<p>This example demonstrates swiping from the center of the screen to the left edge, which could for example be used in Ubuntu Touch to swipe a new scope into view.</p>
<ol class="arabic">
<li><p class="first">First calculate the center point of the screen (see: <a class="reference internal" href="#display-information"><em>Display Information</em></a>):</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.display</span> <span class="kn">import</span> <span class="n">Display</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">display</span> <span class="o">=</span> <span class="n">Display</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">center_x</span> <span class="o">=</span> <span class="n">display</span><span class="o">.</span><span class="n">get_screen_width</span><span class="p">()</span> <span class="o">//</span> <span class="mi">2</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">center_y</span> <span class="o">=</span> <span class="n">display</span><span class="o">.</span><span class="n">get_screen_height</span><span class="p">()</span> <span class="o">//</span> <span class="mi">2</span>
</pre>
</li>
<li><p class="first">Then perform the swipe operation from the center of the screen to the left edge, using <tt class="xref py py-meth docutils literal"><span class="pre">autopilot.input.Pointer.drag</span></tt>:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Touch</span><span class="p">,</span> <span class="n">Pointer</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">pointer</span> <span class="o">=</span> <span class="n">Pointer</span><span class="p">(</span><span class="n">Touch</span><span class="o">.</span><span class="n">create</span><span class="p">())</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">pointer</span><span class="o">.</span><span class="n">drag</span><span class="p">(</span><span class="n">center_x</span><span class="p">,</span> <span class="n">center_y</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="n">center_y</span><span class="p">)</span>
</pre>
</li>
</ol>
<span id="id5"></span><h3>Multi-Touch<a class="headerlink" href="#multi-touch" title="Permalink to this headline"></a></h3>
<p><tt class="xref py py-class docutils literal"><span class="pre">autopilot.gestures</span></tt> provides support for multi-touch input which includes:</p>
<ul class="simple">
<li><tt class="xref py py-meth docutils literal"><span class="pre">autopilot.gestures.pinch</span></tt> provides a 2-finger pinch gesture centered around an [x,y] point on the screen</li>
</ul>
<p>This example demonstrates how to use the pinch gesture, which for example could be used on Ubuntu Touch web-browser, or gallery application to zoom in or out of currently displayed content.</p>
<ol class="arabic">
<li><p class="first">To zoom in, pinch vertically outwards from the center point by 100 pixels:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot</span> <span class="kn">import</span> <span class="n">gestures</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">gestures</span><span class="o">.</span><span class="n">pinch</span><span class="p">([</span><span class="n">center_x</span><span class="p">,</span> <span class="n">center_y</span><span class="p">],</span> <span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">0</span><span class="p">],</span> <span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">100</span><span class="p">])</span>
</pre>
</li>
<li><p class="first">To zoom back out, pinch vertically 100 pixels back towards the center point:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">gestures</span><span class="o">.</span><span class="n">pinch</span><span class="p">([</span><span class="n">center_x</span><span class="p">,</span> <span class="n">center_y</span><span class="p">],</span> <span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">100</span><span class="p">],</span> <span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">0</span><span class="p">])</span>
</pre>
</li>
</ol>
<p class="first admonition-title">Note</p>
<p class="last">The multi-touch <tt class="xref py py-meth docutils literal"><span class="pre">pinch</span></tt> method is intended for use on a touch enabled device. However, if run on a desktop environment it will behave as if the mouse select button is pressed whilst moving the mouse pointer. For example to select some text in a document.</p>
<span id="tut-picking-backends"></span><h2>Advanced Backend Picking<a class="headerlink" href="#advanced-backend-picking" title="Permalink to this headline"></a></h2>
<p>Several features in autopilot are provided by more than one backend. For example, the <tt class="xref py py-mod docutils literal"><span class="pre">autopilot.input</span></tt> module contains the <tt class="xref py py-class docutils literal"><span class="pre">Keyboard</span></tt>, <tt class="xref py py-class docutils literal"><span class="pre">Mouse</span></tt> and <tt class="xref py py-class docutils literal"><span class="pre">Touch</span></tt> classes, each of which can use more than one implementation depending on the platform the tests are being run on.</p>
<p>For example, when running autopilot on a traditional ubuntu desktop platform, <tt class="xref py py-class docutils literal"><span class="pre">Keyboard</span></tt> input events are probably created using the X11 client libraries. On a phone platform, X11 is not present, so autopilot will instead choose to generate events using the kernel UInput device driver instead.</p>
<p>Other autopilot systems that make use of multiple backends include the <tt class="xref py py-mod docutils literal"><span class="pre">autopilot.display</span></tt> and <tt class="xref py py-mod docutils literal"><span class="pre">autopilot.process</span></tt> modules. Every class in these modules follows the same construction pattern:</p>
<h3>Default Creation<a class="headerlink" href="#default-creation" title="Permalink to this headline"></a></h3>
<dl class="docutils">
<dt>By default, calling the <tt class="docutils literal"><span class="pre">create()</span></tt> method with no arguments will return an instance of the class that is appropriate to the current platform. For example::</dt>
<dd><pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
</pre>
</dd>
</dl>
<p>The code snippet above will create an instance of the Keyboard class that uses X11 on Desktop systems, and UInput on other systems. On the rare occaison when test authors need to construct these objects themselves, we expect that the default creation pattern to be used.</p>
<span id="adv-picking-backend"></span><h3>Picking a Backend<a class="headerlink" href="#picking-a-backend" title="Permalink to this headline"></a></h3>
<p>Test authors may sometimes want to pick a specific backend. The possible backends are documented in the API documentation for each class. For example, the documentation for the <tt class="xref py py-meth docutils literal"><span class="pre">autopilot.input.Keyboard.create</span></tt> method says there are three backends available: the <tt class="docutils literal"><span class="pre">X11</span></tt> backend, the <tt class="docutils literal"><span class="pre">UInput</span></tt> backend, and the <tt class="docutils literal"><span class="pre">OSK</span></tt> backend. These backends can be specified in the create method. For example, to specify that you want a Keyboard that uses X11 to generate it&#8217;s input events:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;X11&quot;</span><span class="p">)</span>
</pre>
<p>Similarly, to specify that a UInput keyboard should be created:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;UInput&quot;</span><span class="p">)</span>
</pre>
<p>Finally, for the Onscreen Keyboard:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;OSK&quot;</span><span class="p">)</span>
</pre>
<p class="first admonition-title">Warning</p>
<p class="last">Care must be taken when specifying specific backends. There is no guarantee that the backend you ask for is going to be available across all platforms. For that reason, using the default creation method is encouraged.</p>
<p class="first admonition-title">Warning</p>
<p class="last">The <strong>OSK</strong> backend has some known implementation limitations, please see <tt class="xref py py-meth docutils literal"><span class="pre">autopilot.input.Keyboard.create</span></tt> method documenation for further details.</p>
<h3>Possible Errors when Creating Backends<a class="headerlink" href="#possible-errors-when-creating-backends" title="Permalink to this headline"></a></h3>
<p>Lots of things can go wrong when creating backends with the <tt class="docutils literal"><span class="pre">create</span></tt> method.</p>
<p>If autopilot is unable to create any backends for your current platform, a <tt class="xref py py-exc docutils literal"><span class="pre">RuntimeError</span></tt> exception will be raised. It&#8217;s <tt class="docutils literal"><span class="pre">message</span></tt> attribute will contain the error message from each backend that autopilot tried to create.</p>
<p>If a preferred backend was specified, but that backend doesn&#8217;t exist (probably the test author mis-spelled it), a <tt class="xref py py-exc docutils literal"><span class="pre">RuntimeError</span></tt> will be raised:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
<span class="gp">&gt;&gt;&gt; </span><span class="k">try</span><span class="p">:</span>
<span class="gp">... </span>    <span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;uinput&quot;</span><span class="p">)</span>
<span class="gp">... </span><span class="k">except</span> <span class="ne">RuntimeError</span> <span class="k">as</span> <span class="n">e</span><span class="p">:</span>
<span class="gp">... </span>    <span class="k">print</span><span class="p">(</span><span class="s">&quot;Unable to create keyboard: &quot;</span> <span class="o">+</span> <span class="nb">str</span><span class="p">(</span><span class="n">e</span><span class="p">))</span>
<span class="gp">...</span>
<span class="go">Unable to create keyboard: Unknown backend &#39;uinput&#39;</span>
</pre>
<p>In this example, <tt class="docutils literal"><span class="pre">uinput</span></tt> was mis-spelled (backend names are case sensitive). Specifying the correct backend name works as expected:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;UInput&quot;</span><span class="p">)</span>
</pre>
<p>Finally, if the test author specifies a preferred backend, but that backend could not be created, a <tt class="xref py py-exc docutils literal"><span class="pre">autopilot.BackendException</span></tt> will be raised. This is an important distinction to understand: While calling <tt class="docutils literal"><span class="pre">create()</span></tt> with no arguments will try more than one backend, specifying a backend to create will only try and create that one backend type. The BackendException instance will contain the original exception raised by the backed in it&#8217;s <tt class="docutils literal"><span class="pre">original_exception</span></tt> attribute. In this example, we try and create a UInput keyboard, which fails because we don&#8217;t have the correct permissions (this is something that autopilot usually handles for you):</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
<span class="gp">&gt;&gt;&gt; </span><span class="kn">from</span> <span class="nn">autopilot</span> <span class="kn">import</span> <span class="n">BackendException</span>
<span class="gp">&gt;&gt;&gt; </span><span class="k">try</span><span class="p">:</span>
<span class="gp">... </span>    <span class="n">kbd</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&quot;UInput&quot;</span><span class="p">)</span>
<span class="gp">... </span><span class="k">except</span> <span class="n">BackendException</span> <span class="k">as</span> <span class="n">e</span><span class="p">:</span>
<span class="gp">... </span>    <span class="nb">repr</span><span class="p">(</span><span class="n">e</span><span class="o">.</span><span class="n">original_exception</span><span class="p">)</span>
<span class="gp">... </span>    <span class="nb">repr</span><span class="p">(</span><span class="n">e</span><span class="p">)</span>
<span class="gp">...</span>
<span class="go">&#39;UInputError(\&#39;&quot;/dev/uinput&quot; cannot be opened for writing\&#39;,)&#39;</span>
<span class="go">&#39;BackendException(\&#39;Error while initialising backend. Original exception was: &quot;/dev/uinput&quot; cannot be opened for writing\&#39;,)&#39;</span>
</pre>
<h2>Keyboard Backends<a class="headerlink" href="#keyboard-backends" title="Permalink to this headline"></a></h2>
<h3>A quick introduction to the Keyboard backends<a class="headerlink" href="#a-quick-introduction-to-the-keyboard-backends" title="Permalink to this headline"></a></h3>
<p>Each backend has a different method of operating behind the scenes to provide
the Keyboard interface.</p>
<p>Here is a quick overview of how each backend works.</p>
<table border="1">
<colgroup>
<col width="15%" />
<col width="85%" />
</colgroup>
<thead valign="bottom">
<tr class="row-odd"><th class="head">Backend</th>
<th class="head">Description</th>
</tr>
</thead>
<tbody valign="top">
<tr class="row-even"><td>X11</td>
<td>The X11 backend generates X11 events using a mock input device which it
then syncs with X to actually action the input.</td>
</tr>
<tr class="row-odd"><td>Uinput</td>
<td>The UInput backend injects events directly in to the kernel using the
UInput device driver to produce input.</td>
</tr>
<tr class="row-even"><td>OSK</td>
<td>The Onscreen Keyboard backend uses the GUI pop-up keyboard to enter
input. Using a pointer object it taps on the required keys to get the
expected output.</td>
</tr>
</tbody>
</table>
<span id="keyboard-backend-limitations"></span><h3>Limitations of the different Keyboard backends<a class="headerlink" href="#limitations-of-the-different-keyboard-backends" title="Permalink to this headline"></a></h3>
<p>While every effort has been made so that the Keyboard devices act the same
regardless of which backend or platform is in use, the simple fact is that
there can be some technical limitations for some backends.</p>
<p>Some of these limitations are hidden when using the &#8220;create&#8221; method and won&#8217;t
cause any concern (e.g. X11 backend on desktop, UInput on an Ubuntu Touch device.)
while others will raise exceptions (that are fully documented in the API docs).</p>
<p>Here is a list of known limitations:</p>
<p><strong>X11</strong></p>
<ul class="simple">
<li>Only available on desktop platforms<ul>
<li>X11 isn&#8217;t available on Ubuntu Touch devices</li>
</ul>
</li>
</ul>
<p><strong>UInput</strong></p>
<ul class="simple">
<li>Requires correct device access permissions<ul>
<li>The user (or group) that are running the autopilot tests need read/write
access to the UInput device (usually /dev/uinput).</li>
</ul>
</li>
<li>Specific kernel support is required<ul>
<li>The kernel on the system running the tests must be running a kernel that
includes UInput support (as well as have the module loaded.</li>
</ul>
</li>
</ul>
<p><strong>OSK</strong></p>
<ul class="simple">
<li>Currently only available on Ubuntu Touch devices<ul>
<li>At the time of writing this the OSK/Ubuntu Keyboard is only
supported/available on the Ubuntu Touch devices. It is possible that it
will be available on the desktop in the near future.</li>
</ul>
</li>
<li>Unable to type &#8216;special&#8217; keys e.g. Alt<ul>
<li>This shouldn&#8217;t be an issue as applications running on Ubuntu Touch devices
will be using the expected patterns of use on these platforms.</li>
</ul>
</li>
<li>The following methods have limitations or are not implemented:<ul>
<li><tt class="xref py py-meth docutils literal"><span class="pre">autopilot.input.Keyboard.press</span></tt>: Raises NotImplementedError if
called.</li>
<li><tt class="xref py py-meth docutils literal"><span class="pre">autopilot.input.Keyboard.release</span></tt>: Raises NotImplementedError if
called.</li>
<li><tt class="xref py py-meth docutils literal"><span class="pre">autopilot.input.Keyboard.press_and_release</span></tt>: can can only handle
single keys/characters. Raises either ValueError if passed more than a
single character key or UnsupportedKey if passed a key that is not
supported by the OSK backend (or the current language layout).</li>
</ul>
</li>
</ul>
<span id="id7"></span><h2>Process Control<a class="headerlink" href="#process-control" title="Permalink to this headline"></a></h2>
<p>The <tt class="xref py py-mod docutils literal"><span class="pre">autopilot.process</span></tt> module provides the <tt class="xref py py-class docutils literal"><span class="pre">ProcessManager</span></tt> class to provide a high-level interface for managing applications and windows during testing. Features of the <tt class="xref py py-class docutils literal"><span class="pre">ProcessManager</span></tt> allow the user to start and stop applications easily and to query the current state of an application and its windows. It also provides automatic cleanup for apps that have been launched during testing.</p>
<p class="first admonition-title">Note</p>
<p class="last"><a class="reference internal" href="autopilot.process.ProcessManager.md#autopilot.process.ProcessManager" title="autopilot.process.ProcessManager"><tt class="xref py py-class docutils literal"><span class="pre">ProcessManager</span></tt></a> is not intended for introspecting an application&#8217;s object tree, for this see <a class="reference internal" href="#launching-applications"><em>Launching Applications</em></a>. Also it does not provide a method for interacting with an application&#8217;s UI or specific features.</p>
<p>Properties of an application and its windows can be accessed using the classes <a class="reference internal" href="autopilot.process.Application.md#autopilot.process.Application" title="autopilot.process.Application"><tt class="xref py py-class docutils literal"><span class="pre">Application</span></tt></a> and <a class="reference internal" href="autopilot.process.Window.md#autopilot.process.Window" title="autopilot.process.Window"><tt class="xref py py-class docutils literal"><span class="pre">Window</span></tt></a>, which also allows the window instance to be focused and closed.</p>
<p>A list of known applications is defined in <a class="reference internal" href="autopilot.process.ProcessManager.md#autopilot.process.ProcessManager.KNOWN_APPS" title="autopilot.process.ProcessManager.KNOWN_APPS"><tt class="xref py py-meth docutils literal"><span class="pre">KNOWN_APPS</span></tt></a> and these can easily be referenced by name. This list can also be updated using <a class="reference internal" href="autopilot.process.ProcessManager.md#autopilot.process.ProcessManager.register_known_application" title="autopilot.process.ProcessManager.register_known_application"><tt class="xref py py-meth docutils literal"><span class="pre">register_known_application</span></tt></a> and <a class="reference internal" href="autopilot.process.ProcessManager.md#autopilot.process.ProcessManager.unregister_known_application" title="autopilot.process.ProcessManager.unregister_known_application"><tt class="xref py py-meth docutils literal"><span class="pre">unregister_known_application</span></tt></a> for easier use during the test.</p>
<p>To use the <a class="reference internal" href="autopilot.process.ProcessManager.md#autopilot.process.ProcessManager" title="autopilot.process.ProcessManager"><tt class="xref py py-class docutils literal"><span class="pre">ProcessManager</span></tt></a> the static <a class="reference internal" href="autopilot.process.ProcessManager.md#autopilot.process.ProcessManager.create" title="autopilot.process.ProcessManager.create"><tt class="xref py py-meth docutils literal"><span class="pre">create</span></tt></a> method should be called, which returns an initialised object instance.</p>
<p>A simple example to launch the gedit text editor and check it is in focus:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.process</span> <span class="kn">import</span> <span class="n">ProcessManager</span>
<span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">ProcessManagerTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_launch_app</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="n">pm</span> <span class="o">=</span> <span class="n">ProcessManager</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
<span class="n">app_window</span> <span class="o">=</span> <span class="n">pm</span><span class="o">.</span><span class="n">start_app_window</span><span class="p">(</span><span class="s">&#39;Text Editor&#39;</span><span class="p">)</span>
<span class="n">app_window</span><span class="o">.</span><span class="n">set_focus</span><span class="p">()</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertTrue</span><span class="p">(</span><span class="n">app_window</span><span class="o">.</span><span class="n">is_focused</span><span class="p">)</span>
</pre>
<p class="first admonition-title">Note</p>
<p class="last"><a class="reference internal" href="autopilot.process.ProcessManager.md#autopilot.process.ProcessManager" title="autopilot.process.ProcessManager"><tt class="xref py py-class docutils literal"><span class="pre">ProcessManager</span></tt></a> is only available on environments that use bamf, i.e. desktop running Unity 7. There is currently no process manager for any other platform.</p>
<span id="id8"></span><h2>Display Information<a class="headerlink" href="#display-information" title="Permalink to this headline"></a></h2>
<p>Autopilot provides the <tt class="xref py py-mod docutils literal"><span class="pre">autopilot.display</span></tt> module to get information about the displays currently being used. This information can be used in tests to implement gestures or input events that are specific to the current test environment. For example a test could be run on a desktop environment with multiple screens, or on a variety of touch devices that have different screen sizes.</p>
<p>The user must call the static <a class="reference internal" href="autopilot.display.Display.md#autopilot.display.Display.create" title="autopilot.display.Display.create"><tt class="xref py py-meth docutils literal"><span class="pre">create</span></tt></a> method to get an instance of the <a class="reference internal" href="autopilot.display.Display.md#autopilot.display.Display" title="autopilot.display.Display"><tt class="xref py py-class docutils literal"><span class="pre">Display</span></tt></a> class.</p>
<p>This example shows how to get the size of each available screen, which could be used to calculate coordinates for a swipe or input event (See the <tt class="xref py py-mod docutils literal"><span class="pre">autopilot.input</span></tt> module for more details about generating input events).:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.display</span> <span class="kn">import</span> <span class="n">Display</span>
<span class="n">display</span> <span class="o">=</span> <span class="n">Display</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
<span class="k">for</span> <span class="n">screen</span> <span class="ow">in</span> <span class="nb">range</span><span class="p">(</span><span class="mi">0</span><span class="p">,</span> <span class="n">display</span><span class="o">.</span><span class="n">get_num_screens</span><span class="p">()):</span>
<span class="n">width</span> <span class="o">=</span> <span class="n">display</span><span class="o">.</span><span class="n">get_screen_width</span><span class="p">(</span><span class="n">screen</span><span class="p">)</span>
<span class="n">height</span> <span class="o">=</span> <span class="n">display</span><span class="o">.</span><span class="n">get_screen_height</span><span class="p">(</span><span class="n">screen</span><span class="p">)</span>
<span class="k">print</span><span class="p">(</span><span class="s">&#39;screen {0}: {1}x{2}&#39;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">screen</span><span class="p">,</span> <span class="n">width</span><span class="p">,</span> <span class="n">height</span><span class="p">))</span>
</pre>
<span id="custom-proxy-classes"></span><h2>Writing Custom Proxy Classes<a class="headerlink" href="#writing-custom-proxy-classes" title="Permalink to this headline"></a></h2>
<p>By default, autopilot will generate an object for every introspectable item in your application under test. These are generated on the fly, and derive from
<a class="reference internal" href="autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase" title="autopilot.introspection.ProxyBase"><tt class="xref py py-class docutils literal"><span class="pre">ProxyBase</span></tt></a>. This gives you the usual methods of selecting other nodes in the object tree, as well the the means to inspect all the properties in that class.</p>
<p>However, sometimes you want to customize the class used to create these objects. The most common reason to want to do this is to provide methods that make it easier to inspect or interact with these objects. Autopilot allows test authors to provide their own custom classes, through a couple of simple steps:</p>
<ol class="arabic">
<li><p class="first">First, you must define your own base class, to be used by all custom proxy objects in your test suite. This base class can be empty, but must derive from <a class="reference internal" href="autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase" title="autopilot.introspection.ProxyBase"><tt class="xref py py-class docutils literal"><span class="pre">ProxyBase</span></tt></a>. An example class might look like this:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.introspection</span> <span class="kn">import</span> <span class="n">ProxyBase</span>
<span class="k">class</span> <span class="nc">CustomProxyObjectBase</span><span class="p">(</span><span class="n">ProxyBase</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;A base class for all custom proxy objects within this test suite.&quot;&quot;&quot;</span>
</pre>
</li>
</ol>
<p>For Ubuntu applications using Ubuntu UI Toolkit objects, you should derive your custom proxy object from UbuntuUIToolkitCustomProxyObjectBase. This base class is also derived from <a class="reference internal" href="autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase" title="autopilot.introspection.ProxyBase"><tt class="xref py py-class docutils literal"><span class="pre">ProxyBase</span></tt></a> and is used for all Ubuntu UI Toolkit custom proxy objects. So if you are introspecting objects from Ubuntu UI Toolkit then this is the base class to use.</p>
<ol class="arabic" start="2">
<li><p class="first">Define the classes you want autopilot to use, instead of the default. The simplest method is to give the class the same name as the type you wish to override. For example, if you want to define your own custom class to be used every time autopilot generates an instance of a &#8216;QLabel&#8217; object, the class definition would look like this:</p>
<pre>class QLabel(CustomProxyObjectBase):
# Add custom methods here...
</pre>
</li>
</ol>
<p>If you wish to implement more specific selection criteria, your class can override the validate_dbus_object method, which takes as arguments the dbus path and state.  For example:</p>
<pre><span class="k">class</span> <span class="nc">SpecificQLabel</span><span class="p">(</span><span class="n">CustomProxyObjectBase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">validate_dbus_object</span><span class="p">(</span><span class="n">path</span><span class="p">,</span> <span class="n">state</span><span class="p">):</span>
<span class="k">return</span> <span class="p">(</span><span class="n">path</span><span class="o">.</span><span class="n">endswith</span><span class="p">(</span><span class="s">&#39;object_we_want&#39;</span><span class="p">)</span> <span class="ow">or</span>
<span class="n">state</span><span class="p">[</span><span class="s">&#39;some_property&#39;</span><span class="p">]</span> <span class="o">==</span> <span class="s">&#39;desired_value&#39;</span><span class="p">)</span>
</pre>
<p>This method should return True if the object matches this custom proxy class, and False otherwise.  If more than one custom proxy class matches an object, a <tt class="xref py py-exc docutils literal"><span class="pre">ValueError</span></tt> will be raised at runtime.</p>
<p>An example using Ubuntu UI Toolkit which would be used to swipe up a PageWithBottomEdge object to reveal it&#8217;s bottom edge menu could look like this:</p>
<pre><span class="kn">import</span> <span class="nn">ubuntuuitoolkit</span>
<span class="k">class</span> <span class="nc">PageWithBottomEdge</span><span class="p">(</span><span class="n">ubuntuuitoolkit</span><span class="o">.</span><span class="n">UbuntuUIToolkitCustomProxyObjectBase</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;An emulator class that makes it easy to interact with the bottom edge</span>
<span class="sd">       swipe page&quot;&quot;&quot;</span>
<span class="k">def</span> <span class="nf">reveal_bottom_edge_page</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;Swipe up from the bottom edge of the Page</span>
<span class="sd">           to reveal it&#39;s bottom edge menu.&quot;&quot;&quot;</span>
</pre>
<ol class="arabic" start="3">
<li><p class="first">Pass the custom proxy base class as an argument to the launch_test_application method on your test class. This base class should be the same base class that is used to write all of your custom proxy objects:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">TestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">setUp</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="nb">super</span><span class="p">()</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
<span class="bp">self</span><span class="o">.</span><span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
<span class="s">&#39;/path/to/the/application&#39;</span><span class="p">,</span>
<span class="n">emulator_base</span><span class="o">=</span><span class="n">CustomProxyObjectBase</span><span class="p">)</span>
</pre>
</li>
</ol>
<p>For applications using objects from Ubuntu UI Toolkit, the emulator_base parameter should be:</p>
<pre><span class="n">emulator_base</span><span class="o">=</span><span class="n">ubuntuuitoolkit</span><span class="o">.</span><span class="n">UbuntuUIToolkitCustomProxyObjectBase</span>
</pre>
<ol class="arabic" start="4">
<li><p class="first">You can pass the custom proxy class to methods like <a class="reference internal" href="autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.select_single" title="autopilot.introspection.ProxyBase.select_single"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt></a> instead of a string. So, for example, the following is a valid way of selecting the QLabel instances in an application:</p>
<pre><span class="c"># Get all QLabels in the applicaton:</span>
<span class="n">labels</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">app</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="n">QLabel</span><span class="p">)</span>
</pre>
</li>
</ol>
<p>If you are introspecting an application that already has a custom proxy base class defined, then this class can simply be imported and passed to the appropriate application launcher method. See <a class="reference internal" href="#launching-applications"><em>launching applications</em></a> for more details on launching an application for introspection. This will allow you to call all of the public methods of the application&#8217;s proxy base class directly in your test.</p>
<p>This example will run on desktop and uses the webbrowser application to navigate to a url using the base class go_to_url() method:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="kn">from</span> <span class="nn">webbrowser_app.emulators</span> <span class="kn">import</span> <span class="n">browser</span>
<span class="k">class</span> <span class="nc">ClickAppTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_go_to_url</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="n">app</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span>
<span class="s">&#39;webbrowser-app&#39;</span><span class="p">,</span>
<span class="n">emulator_base</span><span class="o">=</span><span class="n">browser</span><span class="o">.</span><span class="n">Webbrowser</span><span class="p">)</span>
<span class="c"># main_window is a property of the Webbrowser class</span>
<span class="n">app</span><span class="o">.</span><span class="n">main_window</span><span class="o">.</span><span class="n">go_to_url</span><span class="p">(</span><span class="s">&#39;http://www.ubuntu.com&#39;</span><span class="p">)</span>
</pre>
<span id="id9"></span><h2>Launching Applications<a class="headerlink" href="#launching-applications" title="Permalink to this headline"></a></h2>
<p>Applications can be launched inside of a testcase using the application launcher methods from the <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase" title="autopilot.testcase.AutopilotTestCase"><tt class="xref py py-class docutils literal"><span class="pre">AutopilotTestCase</span></tt></a> class. The exact method required will depend upon the type of application being launched:</p>
<ul class="simple">
<li><a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_test_application" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><tt class="xref py py-meth docutils literal"><span class="pre">launch_test_application</span></tt></a> is used to launch regular executables</li>
<li><a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_upstart_application" title="autopilot.testcase.AutopilotTestCase.launch_upstart_application"><tt class="xref py py-meth docutils literal"><span class="pre">launch_upstart_application</span></tt></a> is used to launch upstart-based applications</li>
<li><a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_click_package" title="autopilot.testcase.AutopilotTestCase.launch_click_package"><tt class="xref py py-meth docutils literal"><span class="pre">launch_click_package</span></tt></a>  is used to launch applications inside a <a class="reference external" href="https://click.readthedocs.org/en/latest/">click package</a></li>
</ul>
<p>This example shows how to launch an installed click application from within a test case:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.testcase</span> <span class="kn">import</span> <span class="n">AutopilotTestCase</span>
<span class="k">class</span> <span class="nc">ClickAppTestCase</span><span class="p">(</span><span class="n">AutopilotTestCase</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">test_something</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_click_package</span><span class="p">(</span><span class="s">&#39;com.ubuntu.calculator&#39;</span><span class="p">)</span>
</pre>
<p>Outside of testcase classes, the <a class="reference internal" href="autopilot.application.NormalApplicationLauncher.md#autopilot.application.NormalApplicationLauncher" title="autopilot.application.NormalApplicationLauncher"><tt class="xref py py-class docutils literal"><span class="pre">NormalApplicationLauncher</span></tt></a>, <a class="reference internal" href="autopilot.application.UpstartApplicationLauncher.md#autopilot.application.UpstartApplicationLauncher" title="autopilot.application.UpstartApplicationLauncher"><tt class="xref py py-class docutils literal"><span class="pre">UpstartApplicationLauncher</span></tt></a>, and <a class="reference internal" href="autopilot.application.ClickApplicationLauncher.md#autopilot.application.ClickApplicationLauncher" title="autopilot.application.ClickApplicationLauncher"><tt class="xref py py-class docutils literal"><span class="pre">ClickApplicationLauncher</span></tt></a> fixtures can be used, e.g.:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.application</span> <span class="kn">import</span> <span class="n">NormalApplicationLauncher</span>
<span class="k">with</span> <span class="n">NormalApplicationLauncher</span><span class="p">()</span> <span class="k">as</span> <span class="n">launcher</span><span class="p">:</span>
<span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;gedit&#39;</span><span class="p">)</span>
</pre>
<p>or a similar example for an installed click package:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.application</span> <span class="kn">import</span> <span class="n">ClickApplicationLauncher</span>
<span class="k">with</span> <span class="n">ClickApplicationLauncher</span><span class="p">()</span> <span class="k">as</span> <span class="n">launcher</span><span class="p">:</span>
<span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;com.ubuntu.calculator&#39;</span><span class="p">)</span>
</pre>
<p>Within a fixture or a testcase, <tt class="docutils literal"><span class="pre">self.useFixture</span></tt> can be used:</p>
<pre><span class="n">launcher</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">useFixture</span><span class="p">(</span><span class="n">NormalApplicationLauncher</span><span class="p">())</span>
<span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;gedit&#39;</span><span class="p">,</span> <span class="p">[</span><span class="s">&#39;--new-window&#39;</span><span class="p">,</span> <span class="s">&#39;/path/to/file&#39;</span><span class="p">])</span>
</pre>
<p>or for an installed click package:</p>
<pre><span class="n">launcher</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">useFixture</span><span class="p">(</span><span class="n">ClickApplicationLauncher</span><span class="p">())</span>
<span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;com.ubuntu.calculator&#39;</span><span class="p">)</span>
</pre>
<p>Additional options can also be specified to set a custom addDetail method, a custom proxy base, or a custom dbus bus with which to patch the environment:</p>
<pre><span class="n">launcher</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">useFixture</span><span class="p">(</span><span class="n">NormalApplicationLauncher</span><span class="p">(</span>
<span class="n">case_addDetail</span><span class="o">=</span><span class="bp">self</span><span class="o">.</span><span class="n">addDetail</span><span class="p">,</span>
<span class="n">dbus_bus</span><span class="o">=</span><span class="s">&#39;some_other_bus&#39;</span><span class="p">,</span>
<span class="n">proxy_base</span><span class="o">=</span><span class="n">my_proxy_class</span><span class="p">,</span>
<span class="p">))</span>
</pre>
<p class="first admonition-title">Note</p>
<p class="last">You must pass the test case&#8217;s &#8216;addDetail&#8217; method to these application launch fixtures if you want application logs to be attached to the test result. This is due to the way fixtures are cleaned up, and is unavoidable.</p>
<p>The main qml file of some click applications can also be launched directly from source. This can be done using the <a class="reference external" href="http://doc.qt.io/qt-5/qtquick-qmlscene.html/">qmlscene</a> application directly on the target application&#8217;s main qml file. This example uses <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_test_application" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><tt class="xref py py-meth docutils literal"><span class="pre">launch_test_application</span></tt></a> method from within a test case:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">launch_test_application</span><span class="p">(</span><span class="s">&#39;qmlscene&#39;</span><span class="p">,</span> <span class="s">&#39;application.qml&#39;</span><span class="p">,</span> <span class="n">app_type</span><span class="o">=</span><span class="s">&#39;qt&#39;</span><span class="p">)</span>
</pre>
<p>However, using this method it will not be possible to return an application specific custom proxy object, see <a class="reference internal" href="#custom-proxy-classes"><em>Writing Custom Proxy Classes</em></a>.</p>
