---
Title: faq-contribute
---

# faq-contribute

<p class="topic-title first">Contents</p>
<ul class="simple">
<li><a class="reference internal" href="#contribute" id="id1">Contribute</a><ul>
<li><a class="reference internal" href="#autopilot-contributing" id="id2">Autopilot: Contributing</a><ul>
<li><a class="reference internal" href="#q-how-can-i-contribute-to-autopilot" id="id3">Q. How can I contribute to autopilot?</a></li>
<li><a class="reference internal" href="#q-where-can-i-get-help-support" id="id4">Q. Where can I get help / support?</a></li>
<li><a class="reference internal" href="#q-how-do-i-download-the-code" id="id5">Q. How do I download the code?</a></li>
<li><a class="reference internal" href="#q-how-do-i-submit-the-code-for-a-merge-proposal" id="id6">Q. How do I submit the code for a merge proposal?</a></li>
<li><a class="reference internal" href="#q-how-do-i-list-or-run-the-tests-for-the-autopilot-source-code" id="id7">Q. How do I list or run the tests for the autopilot source code?</a></li>
<li><a class="reference internal" href="#q-which-version-of-python-can-autopilot-use" id="id8">Q. Which version of Python can Autopilot use?</a></li>
</ul>
</li>
</ul>
</li>
</ul>
<h2><a class="toc-backref" href="#id2">Autopilot: Contributing</a><a class="headerlink" href="#autopilot-contributing" title="Permalink to this headline"></a></h2>
<h3><a class="toc-backref" href="#id3">Q. How can I contribute to autopilot?</a><a class="headerlink" href="#q-how-can-i-contribute-to-autopilot" title="Permalink to this headline"></a></h3>
<ul>
<li><dl class="first docutils">
<dt>Documentation: We can always use more documentation.</dt>
<dd><ul class="first last simple">
<li>if you don&#8217;t know how to submit a merge proposal on launchpad, you can write a <a class="reference external" href="https://bugs.launchpad.net/autopilot/+filebug">bug</a> with new documentation and someone will submit a merge proposal for you. They will give you credit for your documentation in the merge proposal.</li>
</ul>
</dd>
</dl>
</li>
<li><p class="first">New Features: Check out our existing <a class="reference external" href="https://blueprints.launchpad.net/autopilot">Blueprints</a> or create some yourself... Then code!</p>
</li>
<li><p class="first">Test and Fix: No project is perfect, log some <a class="reference external" href="https://bugs.launchpad.net/autopilot/+filebug">bugs</a> or <a class="reference external" href="https://bugs.launchpad.net/autopilot">fix some bugs</a>.</p>
</li>
</ul>
<h3><a class="toc-backref" href="#id4">Q. Where can I get help / support?</a><a class="headerlink" href="#q-where-can-i-get-help-support" title="Permalink to this headline"></a></h3>
<p>The developers hang out in the #ubuntu-autopilot IRC channel on irc.freenode.net.</p>
<h3><a class="toc-backref" href="#id5">Q. How do I download the code?</a><a class="headerlink" href="#q-how-do-i-download-the-code" title="Permalink to this headline"></a></h3>
<p>Autopilot is using Launchpad and Bazaar for source code hosting. If you&#8217;re new to Bazaar, or distributed version control in general, take a look at the <a class="reference external" href="http://doc.bazaar.canonical.com/bzr.dev/en/mini-tutorial/">Bazaar mini-tutorial first.</a></p>
<p>Install bzr open a terminal and type:</p>
<pre>$ sudo apt-get install bzr
</pre>
<p>Download the code:</p>
<pre>$ bzr branch lp:autopilot
</pre>
<p>This will create an autopilot directory and place the latest code there. You can also view the autopilot code <a class="reference external" href="https://launchpad.net/autopilot">on the web</a>.</p>
<h3><a class="toc-backref" href="#id6">Q. How do I submit the code for a merge proposal?</a><a class="headerlink" href="#q-how-do-i-submit-the-code-for-a-merge-proposal" title="Permalink to this headline"></a></h3>
<p>After making the desired changes to the code or documentation and making sure the tests still run type:</p>
<pre>$ bzr commit
</pre>
<p>Write a quick one line description of the bug that was fixed or the documentation that was written.</p>
<p>Signup for a <a class="reference external" href="https://help.launchpad.net/YourAccount/NewAccount">launchpad account</a>, if you don&#8217;t have one. Then using your launchpad id type:</p>
<pre>$ bzr push lp:~&lt;launchpad-id&gt;/autopilot/&lt;text about merge here&gt;
</pre>
<p>Example:</p>
<pre>$ bzr push lp:~chris.gagnon/autopilot/bug-fix-lp234567
</pre>
<p>All new features should have unit and/or functional test to make sure someone doesn&#8217;t remove or break your new code with a future commit.</p>
<span id="listing-source-tests"></span><h3><a class="toc-backref" href="#id7">Q. How do I list or run the tests for the autopilot source code?</a><a class="headerlink" href="#q-how-do-i-list-or-run-the-tests-for-the-autopilot-source-code" title="Permalink to this headline"></a></h3>
<p>Running autopilot from the source code root directory (the directory containing
the autopilot/ bin/ docs/ debian/ etc. directories) will use the local copy and
not the system installed version.</p>
<p>An example from branching to running:</p>
<pre>$ bzr branch lp:autopilot ~/src/autopilot/trunk
$ cd ~/src/autopilot/trunk
$ python3 -m autopilot.run list autopilot.tests
Loading tests from: /home/example/src/autopilot/trunk
autopilot.tests.functional.test_ap_apps.ApplicationLaunchTests.test_creating_app_for_non_running_app_fails
autopilot.tests.functional.test_ap_apps.ApplicationLaunchTests.test_creating_app_proxy_for_running_app_not_on_dbus_fails
# .. snip ..
autopilot.tests.unit.test_version_utility_fns.VersionFnTests.test_package_version_returns_none_when_running_from_source
255 total tests.
</pre>
<p class="first admonition-title">Note</p>
<p class="last">The &#8216;Loading tests from:&#8217; or &#8216;Running tests from:&#8217; line will inform
you where autopilot is loading the tests from.</p>
<p>To run a specific suite or a single test in a suite, be more specific with the
tests path.</p>
<p>For example, running all unit tests:</p>
<pre>$ python3 -m autopilot.run run autopilot.tests.unit
</pre>
<p>For example, running just the &#8216;InputStackKeyboardTypingTests&#8217; suite:</p>
<pre>$ python3 -m autopilot.run run autopilot.tests.functional.test_input_stack.InputStackKeyboardTypingTests
</pre>
<p>Or running a single test in the &#8216;test_version_utility_fns&#8217; suite:</p>
<pre>$ python3 -m autopilot.run run autopilot.tests.unit.test_version_utility_fns.VersionFnTests.test_package_version_returns_none_when_running_from_source
</pre>
<h3><a class="toc-backref" href="#id8">Q. Which version of Python can Autopilot use?</a><a class="headerlink" href="#q-which-version-of-python-can-autopilot-use" title="Permalink to this headline"></a></h3>
<p>Autopilot supports Python 3.4.</p>
