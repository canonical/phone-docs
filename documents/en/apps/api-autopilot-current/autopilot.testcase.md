---
Title: autopilot.testcase
---

# autopilot.testcase

<!-- Start Namespace Content -->
<span id="autopilot-testcase-base-class-for-all-autopilot-test-cases"></span>
<h2>Quick Start<a class="headerlink" href="#quick-start" title="Permalink to this headline"></a></h2>
<p>The <a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase" title="autopilot.testcase.AutopilotTestCase"><tt class="xref py py-class docutils literal"><span class="pre">AutopilotTestCase</span></tt></a> is the main class test authors will be
interacting with. Every autopilot test case should derive from this class.
<a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase" title="autopilot.testcase.AutopilotTestCase"><tt class="xref py py-class docutils literal"><span class="pre">AutopilotTestCase</span></tt></a> derives from <tt class="xref py py-class docutils literal"><span class="pre">testtools.TestCase</span></tt>, so test
authors can use all the methods defined in that class as well.</p>
<p><strong>Writing tests</strong></p>
<p>Tests must be named: <tt class="docutils literal"><span class="pre">test_&lt;testname&gt;</span></tt>, where <em>&lt;testname&gt;</em> is the name of the
test. Test runners (including autopilot itself) look for methods with this
naming convention. It is recommended that you make your test names descriptive
of what each test is testing. For example, possible test names include:</p>
<pre><span class="n">test_ctrl_p_opens_print_dialog</span>
<span class="n">test_dash_remembers_maximized_state</span>
</pre>
<p><strong>Launching the Application Under Test</strong></p>
<p>If you are writing a test for an application, you need to use the
<a class="reference internal" href="autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_test_application" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><tt class="xref py py-meth docutils literal"><span class="pre">launch_test_application</span></tt></a> method. This will launch the
application, enable introspection, and return a proxy object representing the
root of the application introspection tree.</p>
<!-- End Namespace Content -->
<h3>Elements</h3>
<dl>
<dt><a href="autopilot.testcase.AutopilotTestCase.md">AutopilotTestCase</a></dt><dd>Wrapper around testtools.TestCase that adds significant functionality.</dd>
</dl>
