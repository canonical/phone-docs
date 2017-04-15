---
Title: faq-contribute
---
        
Contribute
==========

Contents

-   <a href="#contribute" id="id1" class="reference internal">Contribute</a>
    -   <a href="#autopilot-contributing" id="id2" class="reference internal">Autopilot: Contributing</a>
        -   <a href="#q-how-can-i-contribute-to-autopilot" id="id3" class="reference internal">Q. How can I contribute to autopilot?</a>
        -   <a href="#q-where-can-i-get-help-support" id="id4" class="reference internal">Q. Where can I get help / support?</a>
        -   <a href="#q-how-do-i-download-the-code" id="id5" class="reference internal">Q. How do I download the code?</a>
        -   <a href="#q-how-do-i-submit-the-code-for-a-merge-proposal" id="id6" class="reference internal">Q. How do I submit the code for a merge proposal?</a>
        -   <a href="#q-how-do-i-list-or-run-the-tests-for-the-autopilot-source-code" id="id7" class="reference internal">Q. How do I list or run the tests for the autopilot source code?</a>
        -   <a href="#q-which-version-of-python-can-autopilot-use" id="id8" class="reference internal">Q. Which version of Python can Autopilot use?</a>

<a href="#id2" class="toc-backref">Autopilot: Contributing</a><a href="#autopilot-contributing" class="headerlink" title="Permalink to this headline"></a>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### <a href="#id3" class="toc-backref">Q. How can I contribute to autopilot?</a><a href="#q-how-can-i-contribute-to-autopilot" class="headerlink" title="Permalink to this headline"></a>

-   Documentation: We can always use more documentation.  
    -   if you don’t know how to submit a merge proposal on launchpad, you can write a <a href="https://bugs.launchpad.net/autopilot/+filebug" class="reference external">bug</a> with new documentation and someone will submit a merge proposal for you. They will give you credit for your documentation in the merge proposal.

-   New Features: Check out our existing <a href="https://blueprints.launchpad.net/autopilot" class="reference external">Blueprints</a> or create some yourself... Then code!

-   Test and Fix: No project is perfect, log some <a href="https://bugs.launchpad.net/autopilot/+filebug" class="reference external">bugs</a> or <a href="https://bugs.launchpad.net/autopilot" class="reference external">fix some bugs</a>.

### <a href="#id4" class="toc-backref">Q. Where can I get help / support?</a><a href="#q-where-can-i-get-help-support" class="headerlink" title="Permalink to this headline"></a>

The developers hang out in the \#ubuntu-autopilot IRC channel on irc.freenode.net.

### <a href="#id5" class="toc-backref">Q. How do I download the code?</a><a href="#q-how-do-i-download-the-code" class="headerlink" title="Permalink to this headline"></a>

Autopilot is using Launchpad and Bazaar for source code hosting. If you’re new to Bazaar, or distributed version control in general, take a look at the <a href="http://doc.bazaar.canonical.com/bzr.dev/en/mini-tutorial.md" class="reference external">Bazaar mini-tutorial first.</a>

Install bzr open a terminal and type:

    $ sudo apt-get install bzr

Download the code:

    $ bzr branch lp:autopilot

This will create an autopilot directory and place the latest code there. You can also view the autopilot code <a href="https://launchpad.net/autopilot" class="reference external">on the web</a>.

### <a href="#id6" class="toc-backref">Q. How do I submit the code for a merge proposal?</a><a href="#q-how-do-i-submit-the-code-for-a-merge-proposal" class="headerlink" title="Permalink to this headline"></a>

After making the desired changes to the code or documentation and making sure the tests still run type:

    $ bzr commit

Write a quick one line description of the bug that was fixed or the documentation that was written.

Signup for a <a href="https://help.launchpad.net/YourAccount/NewAccount" class="reference external">launchpad account</a>, if you don’t have one. Then using your launchpad id type:

    $ bzr push lp:~<launchpad-id>/autopilot/<text about merge here>

Example:

    $ bzr push lp:~chris.gagnon/autopilot/bug-fix-lp234567

All new features should have unit and/or functional test to make sure someone doesn’t remove or break your new code with a future commit.

<span id="listing-source-tests"></span>
### <a href="#id7" class="toc-backref">Q. How do I list or run the tests for the autopilot source code?</a><a href="#q-how-do-i-list-or-run-the-tests-for-the-autopilot-source-code" class="headerlink" title="Permalink to this headline"></a>

Running autopilot from the source code root directory (the directory containing the autopilot/ bin/ docs/ debian/ etc. directories) will use the local copy and not the system installed version.

An example from branching to running:

    $ bzr branch lp:autopilot ~/src/autopilot/trunk
    $ cd ~/src/autopilot/trunk
    $ python3 -m autopilot.run list autopilot.tests

    Loading tests from: /home/example/src/autopilot/trunk

    autopilot.tests.functional.test_ap_apps.ApplicationLaunchTests.test_creating_app_for_non_running_app_fails
    autopilot.tests.functional.test_ap_apps.ApplicationLaunchTests.test_creating_app_proxy_for_running_app_not_on_dbus_fails

    # .. snip ..

    autopilot.tests.unit.test_version_utility_fns.VersionFnTests.test_package_version_returns_none_when_running_from_source

    255 total tests.

Note

The ‘Loading tests from:’ or ‘Running tests from:’ line will inform you where autopilot is loading the tests from.

To run a specific suite or a single test in a suite, be more specific with the tests path.

For example, running all unit tests:

    $ python3 -m autopilot.run run autopilot.tests.unit

For example, running just the ‘InputStackKeyboardTypingTests’ suite:

    $ python3 -m autopilot.run run autopilot.tests.functional.test_input_stack.InputStackKeyboardTypingTests

Or running a single test in the ‘test\_version\_utility\_fns’ suite:

    $ python3 -m autopilot.run run autopilot.tests.unit.test_version_utility_fns.VersionFnTests.test_package_version_returns_none_when_running_from_source

### <a href="#id8" class="toc-backref">Q. Which version of Python can Autopilot use?</a><a href="#q-which-version-of-python-can-autopilot-use" class="headerlink" title="Permalink to this headline"></a>

Autopilot supports Python 3.4.

