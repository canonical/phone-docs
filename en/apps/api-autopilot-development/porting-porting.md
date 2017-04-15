---
Title: porting-porting
---
        
Porting Autopilot Tests
=======================

This document contains hints as to what is required to port a test suite from any version of autopilot to any newer version.

Contents

-   <a href="#porting-autopilot-tests" id="id1" class="reference internal">Porting Autopilot Tests</a>
    -   <a href="#a-note-on-versions" id="id2" class="reference internal">A note on Versions</a>
    -   <a href="#porting-to-autopilot-v1-4-x" id="id3" class="reference internal">Porting to Autopilot v1.4.x</a>
        -   <a href="#gtk-tests-and-boolean-parameters" id="id4" class="reference internal">Gtk Tests and Boolean Parameters</a>
        -   <a href="#select-single-changes" id="id5" class="reference internal"><code class="xref py py-meth docutils literal">select_single</code> Changes</a>
        -   <a href="#dbus-backends-and-dbusintrospectionobject-changes" id="id6" class="reference internal">DBus backends and <code class="xref py py-class docutils literal">DBusIntrospectionObject</code> changes</a>
        -   <a href="#python-3" id="id7" class="reference internal">Python 3</a>
    -   <a href="#porting-to-autopilot-v1-3-x" id="id8" class="reference internal">Porting to Autopilot v1.3.x</a>
        -   <a href="#qtintrospectiontestmixin-and-gtkintrospectiontestmixin-no-longer-exist" id="id9" class="reference internal"><code class="docutils literal">QtIntrospectionTestMixin</code> and <code class="docutils literal">GtkIntrospectionTestMixin</code> no longer exist</a>
        -   <a href="#autopilot-emulators-namespace-has-been-deprecated" id="id10" class="reference internal"><code class="docutils literal">autopilot.emulators</code> namespace has been deprecated</a>

<a href="#id2" class="toc-backref">A note on Versions</a><a href="#a-note-on-versions" class="headerlink" title="Permalink to this headline"></a>
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

Autopilot releases are reasonably tightly coupled with Ubuntu releases. However, the autopilot authors maintain separate version numbers, with the aim of separating the autopilot release cadence from the Ubuntu platform release cadence.

Autopilot versions earlier than 1.2 were not publicly announced, and were only used within Canonical. For that reason, this document assumes that version 1.2 is the lowest version of autopilot present “in the wild”.

<a href="#id3" class="toc-backref">Porting to Autopilot v1.4.x</a><a href="#porting-to-autopilot-v1-4-x" class="headerlink" title="Permalink to this headline"></a>
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The 1.4 release contains several changes that required a break in the DBus wire protocol between autopilot and the applications under test. Most of these changes require no change to test code.

### <a href="#id4" class="toc-backref">Gtk Tests and Boolean Parameters</a><a href="#gtk-tests-and-boolean-parameters" class="headerlink" title="Permalink to this headline"></a>

Version 1.3 of the autopilot-gtk backend contained <a href="https://bugs.launchpad.net/autopilot-gtk/+bug/1214249" class="reference external">a bug</a> that caused all Boolean properties to be exported as integers instead of boolean values. This in turn meant that test code would fail to return the correct objects when using selection criteria such as:

    visible_buttons = app.select_many("GtkPushButton", visible=True)

and instead had to write something like this:

    visible_buttons = app.select_many("GtkPushButton", visible=1)

This bug has now been fixed, and using the integer selection will fail.

### <a href="#id5" class="toc-backref"><code class="xref py py-meth docutils literal">select_single</code> Changes</a><a href="#select-single-changes" class="headerlink" title="Permalink to this headline"></a>

The `select_single` method used to return `None` in the case where no object was found that matched the search criteria. This led to rather awkward code in places where the object you are searching for is being created dynamically:

    for i in range(10):
            my_obj = self.app.select_single("MyObject")
            if my_obj is not None:
                    break
            time.sleep(1)
    else:
            self.fail("Object 'MyObject' was not found within 10 seconds.")

This makes the authors intent harder to discern. To improve this situation, two changes have been made:

1.  `select_single` raises a `StateNotFoundError` exception if the search terms returned no values, rather than returning `None`.

2.  If the object being searched for is likely to not exist, there is a new method: `wait_select_single` will try to retrieve an object for 10 seconds. If the object does not exist after that timeout, a `StateNotFoundError` exception is raised. This means that the above code example should now be written as:

        my_obj = self.app.wait_select_single("MyObject")

<span id="dbus-backends"></span>
### <a href="#id6" class="toc-backref">DBus backends and <code class="xref py py-class docutils literal">DBusIntrospectionObject</code> changes</a><a href="#dbus-backends-and-dbusintrospectionobject-changes" class="headerlink" title="Permalink to this headline"></a>

Due to a change in how `DBusIntrospectionObject` objects store their DBus backend a couple of classmethods have now become instance methods.

These affected methods are:

> -   `get_all_instances`
> -   `get_root_instance`
> -   `get_state_by_path`

For example, if your old code is something along the lines of:

    all_keys = KeyCustomProxy.get_all_instances()

You will instead need to have something like this instead:

    all_keys = app_proxy.select_many(KeyCustomProxy)

<span id="python3-support"></span>
### <a href="#id7" class="toc-backref">Python 3</a><a href="#python-3" class="headerlink" title="Permalink to this headline"></a>

Starting from version 1.4, autopilot supports python 3 as well as python 2. Test authors can choose to target either version of python.

<a href="#id8" class="toc-backref">Porting to Autopilot v1.3.x</a><a href="#porting-to-autopilot-v1-3-x" class="headerlink" title="Permalink to this headline"></a>
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The 1.3 release included many API breaking changes. Earlier versions of autopilot made several assumptions about where tests would be run, that turned out not to be correct. Autopilot 1.3 brought several much-needed features, including:

-   A system for building pluggable implementations for several core components. This system is used in several areas:

> -   The input stack can now generate events using either the X11 client libraries, or the UInput kernel driver. This is necessary for devices that do not use X11.
> -   The display stack can now report display information for systems that use both X11 and the mir display server.
> -   The process stack can now report details regarding running processes & their windows on both Desktop, tablet, and phone platforms.

-   A large code cleanup and reorganisation. In particular, lots of code that came from the Unity 3D codebase has been removed if it was deemed to not be useful to the majority of test authors. This code cleanup includes a flattening of the autopilot namespace. Previously, many useful classes lived under the `autopilot.emulators` namespace. These have now been moved into the `autopilot` namespace.

Note

There is an API breakage in autopilot 1.3. The changes outlined under the heading “<a href="#dbus-backends" class="reference internal"><em>DBus backends and DBusIntrospectionObject changes</em></a>” apply to version 1.3.1+13.10.20131003.1-0ubuntu1 and onwards .

### <a href="#id9" class="toc-backref"><code class="docutils literal">QtIntrospectionTestMixin</code> and <code class="docutils literal">GtkIntrospectionTestMixin</code> no longer exist</a><a href="#qtintrospectiontestmixin-and-gtkintrospectiontestmixin-no-longer-exist" class="headerlink" title="Permalink to this headline"></a>

In autopilot 1.2, tests enabled application introspection services by inheriting from one of two mixin classes: `QtIntrospectionTestMixin` to enable testing Qt4, Qt5, and Qml applications, and `GtkIntrospectionTestMixin` to enable testing Gtk 2 and Gtk3 applications. For example, a test case class in autopilot 1.2 might look like this:

    from autopilot.introspection.qt import QtIntrospectionTestMixin
    from autopilot.testcase import AutopilotTestCase


    class MyAppTestCase(AutopilotTestCase, QtIntrospectionTestMixin):

        def setUp(self):
            super(MyAppTestCase, self).setUp()
            self.app = self.launch_test_application("../../my-app")

In Autopilot 1.3, the <a href="../autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase" class="reference internal" title="autopilot.testcase.AutopilotTestCase"><code class="xref py py-class docutils literal">AutopilotTestCase</code></a> class contains this functionality directly, so the `QtIntrospectionTestMixin` and `GtkIntrospectionTestMixin` classes no longer exist. The above example becomes simpler:

    from autopilot.testcase import AutopilotTestCase


    class MyAppTestCase(AutopilotTestCase):

        def setUp(self):
            super(MyAppTestCase, self).setUp()
            self.app = self.launch_test_application("../../my-app")

Autopilot will try and determine the introspection type automatically. If this process fails, you can specify the application type manually:

    from autopilot.testcase import AutopilotTestCase


    class MyAppTestCase(AutopilotTestCase):

        def setUp(self):
            super(MyAppTestCase, self).setUp()
            self.app = self.launch_test_application("../../my-app", app_type='qt')

See also

Method <a href="../autopilot.testcase.AutopilotTestCase.md#autopilot.testcase.AutopilotTestCase.launch_test_application" class="reference internal" title="autopilot.testcase.AutopilotTestCase.launch_test_application"><code class="xref py py-meth docutils literal">autopilot.testcase.AutopilotTestCase.launch_test_application</code></a>  
Launch test applications.

### <a href="#id10" class="toc-backref"><code class="docutils literal">autopilot.emulators</code> namespace has been deprecated</a><a href="#autopilot-emulators-namespace-has-been-deprecated" class="headerlink" title="Permalink to this headline"></a>

In autopilot 1.2 and earlier, the `autopilot.emulators` package held several modules and classes that were used frequently in tests. This package has been removed, and it’s contents merged into the autopilot package. Below is a table showing the basic translations that need to be made:

<table>
<colgroup>
<col width="45%" />
<col width="55%" />
</colgroup>
<thead>
<tr class="header">
<th>Old module</th>
<th>New Module</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code class="docutils literal">autopilot.emulators.input</code></td>
<td><code class="xref py py-mod docutils literal">autopilot.input</code></td>
</tr>
<tr class="even">
<td><code class="docutils literal">autopilot.emulators.X11</code></td>
<td>Deprecated - use <code class="xref py py-mod docutils literal">autopilot.input</code> for input and <code class="xref py py-mod docutils literal">autopilot.display</code> for getting display information.</td>
</tr>
<tr class="odd">
<td><code class="docutils literal">autopilot.emulators.bamf</code></td>
<td>Deprecated - use <code class="xref py py-mod docutils literal">autopilot.process</code> instead.</td>
</tr>
</tbody>
</table>

