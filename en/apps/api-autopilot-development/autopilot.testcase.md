---
Title: autopilot.testcase
---
        
<span id="autopilot-testcase-base-class-for-all-autopilot-test-cases"></span>
Quick Start<a href="#quick-start" class="headerlink" title="Permalink to this headline"></a>
------------------------------------------------------------------------------------------------------

The <a href="../autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase" class="reference internal" title="autopilot.testcase.AutopilotTestCase"><code class="xref py py-class docutils literal">AutopilotTestCase</code></a> is the main class test authors will be interacting with. Every autopilot test case should derive from this class. <a href="../autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase" class="reference internal" title="autopilot.testcase.AutopilotTestCase"><code class="xref py py-class docutils literal">AutopilotTestCase</code></a> derives from `testtools.TestCase`, so test authors can use all the methods defined in that class as well.

**Writing tests**

Tests must be named: `test_<testname>`, where *&lt;testname&gt;* is the name of the test. Test runners (including autopilot itself) look for methods with this naming convention. It is recommended that you make your test names descriptive of what each test is testing. For example, possible test names include:

    test_ctrl_p_opens_print_dialog
    test_dash_remembers_maximized_state

**Launching the Application Under Test**

If you are writing a test for an application, you need to use the <a href="../autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_test_application" class="reference internal" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><code class="xref py py-meth docutils literal">launch_test_application</code></a> method. This will launch the application, enable introspection, and return a proxy object representing the root of the application introspection tree.

### Elements

[AutopilotTestCase](../autopilot.testcase.AutopilotTestCase.md)  
Wrapper around testtools.TestCase that adds significant functionality.

