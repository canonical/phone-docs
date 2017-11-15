---
Title: guides-page_object
---

# guides-page_object

<p class="topic-title first">Contents</p>
<ul class="simple">
<li><a class="reference internal" href="#page-object-pattern" id="id1">Page Object Pattern</a><ul>
<li><a class="reference internal" href="#introducing-the-page-object-pattern" id="id2">Introducing the Page Object Pattern</a><ul>
<li><a class="reference internal" href="#the-public-methods-represent-the-services-that-the-page-offers" id="id3">1. The public methods represent the services that the page offers.</a></li>
<li><a class="reference internal" href="#try-not-to-expose-the-internals-of-the-page" id="id4">2. Try not to expose the internals of the page.</a></li>
<li><a class="reference internal" href="#methods-return-other-pageobjects" id="id5">3. Methods return other PageObjects</a></li>
<li><a class="reference internal" href="#assertions-should-exist-only-in-tests" id="id6">4. Assertions should exist only in tests</a></li>
<li><a class="reference internal" href="#need-not-represent-an-entire-page" id="id7">5. Need not represent an entire page</a></li>
<li><a class="reference internal" href="#actions-which-produce-multiple-results-should-have-a-test-for-each-result" id="id8">6. Actions which produce multiple results should have a test for each result</a></li>
</ul>
</li>
</ul>
</li>
</ul>
<h2><a class="toc-backref" href="#id2">Introducing the Page Object Pattern</a><a class="headerlink" href="#introducing-the-page-object-pattern" title="Permalink to this headline"></a></h2>
<p>Automated testing of an application through the Graphical User Interface (GUI) is inherently fragile.
These tests require regular review and attention during the development cycle. This is known as Interface Sensitivity (<a class="reference external" href="https://books.google.com/books?isbn=0132797461">&#8220;even minor changes to the interface can cause tests to fail&#8221;</a>).
Utilizing the page-object pattern, alleviates some of the problems stemming from this fragility, allowing us to do automated user acceptance testing (UAT) in a sustainable manner.</p>
<p>The Page Object Pattern comes from the <a class="reference external" href="https://code.google.com/p/selenium/wiki/PageObjects">Selenium community</a> and is the best way to turn a flaky and unmaintainable user acceptance test into a stable and useful
part of your release process. A page is what&#8217;s visible on the screen at a single moment.
A user story consists of a user jumping from page to page until they achieve their goal.
Thus pages are modeled as objects following these guidelines:</p>
<ol class="arabic simple">
<li>The public methods represent the services that the page offers.</li>
<li>Try not to expose the internals of the page.</li>
<li>Methods return other PageObjects.</li>
<li>Assertions should exist only in tests</li>
<li>Objects need not represent the entire page.</li>
<li>Actions which produce multiple results should have a test for each result</li>
</ol>
<p>Lets take the page objects of the <a class="reference external" href="http://bazaar.launchpad.net/~ubuntu-clock-dev/ubuntu-clock-app/trunk/view/399/tests/autopilot/ubuntu_clock_app/emulators.py">Ubuntu Clock App</a> as an example, with some simplifications. This application is written in
QML and Javascript using the <a class="reference external" href="../../platform/sdk/index.md">Ubuntu SDK</a>.</p>
<h3><a class="toc-backref" href="#id3">1. The public methods represent the services that the page offers.</a><a class="headerlink" href="#the-public-methods-represent-the-services-that-the-page-offers" title="Permalink to this headline"></a></h3>
<p>This application has a stopwatch page that lets users measure elapsed
time. It offers services to start, stop and reset the watch, so we start
by defining the stop watch page object as follows:</p>
<pre><span class="k">class</span> <span class="nc">Stopwatch</span><span class="p">(</span><span class="nb">object</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">start</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="k">raise</span> <span class="ne">NotImplementedError</span><span class="p">()</span>
<span class="k">def</span> <span class="nf">stop</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="k">raise</span> <span class="ne">NotImplementedError</span><span class="p">()</span>
<span class="k">def</span> <span class="nf">reset</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="k">raise</span> <span class="ne">NotImplementedError</span><span class="p">()</span>
</pre>
<h3><a class="toc-backref" href="#id4">2. Try not to expose the internals of the page.</a><a class="headerlink" href="#try-not-to-expose-the-internals-of-the-page" title="Permalink to this headline"></a></h3>
<p>The internals of the page are more likely to change than the services it
offers. A stopwatch will keep the same three services we defined above
even if the whole design changes. In this case, we reset the stop watch
by clicking a button on the bottom-left of the window, but we hide that
as an implementation detail behind the public methods. In Python, we can
indicate that a method is for internal use only by adding a single
leading underscore to its name. So, lets implement the reset_stopwatch
method:</p>
<pre><span class="k">def</span> <span class="nf">reset</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">_click_reset_button</span><span class="p">()</span>
<span class="k">def</span> <span class="nf">_click_reset_button</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="n">reset_button</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span>
<span class="s">&#39;ImageButton&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;resetButton&#39;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">pointing_device</span><span class="o">.</span><span class="n">click_object</span><span class="p">(</span><span class="n">reset_button</span><span class="p">)</span>
</pre>
<p>Now if the designers go crazy and decide that it&#8217;s better to reset the
stop watch in a different way, we will have to make the change only in
one place to keep all the tests working. Remember that this type of
tests has Interface Sensitivity, that&#8217;s unavoidable; but we can reduce
the impact of interface changes with proper encapsulation and turn these
tests into a useful way to verify that a change in the GUI didn&#8217;t
introduce any regressions.</p>
<span id="page-object-guide-guideline-3"></span><h3><a class="toc-backref" href="#id5">3. Methods return other PageObjects</a><a class="headerlink" href="#methods-return-other-pageobjects" title="Permalink to this headline"></a></h3>
<p>An UAT checks a user story. It will involve the journey of the user
through the system, so he will move from one page to another. Lets take
a look at how a journey to reset the stop watch will look like:</p>
<pre><span class="n">stopwatch</span> <span class="o">=</span> <span class="n">clock_page</span><span class="o">.</span><span class="n">open_stopwatch</span><span class="p">()</span>
<span class="n">stopwatch</span><span class="o">.</span><span class="n">start</span><span class="p">()</span>
<span class="n">stopwatch</span><span class="o">.</span><span class="n">reset</span><span class="p">()</span>
</pre>
<p>In our sample application, the first page that the user will encounter
is the Clock. One of the things the user can do from this page is to
open the stopwatch page, so we model that as a service that the Clock
page provides. Then return the new page object that will be visible to
the user after completing that step.</p>
<pre><span class="k">class</span> <span class="nc">Clock</span><span class="p">(</span><span class="nb">object</span><span class="p">):</span>
<span class="o">...</span>
<span class="k">def</span> <span class="nf">open_stopwatch</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="bp">self</span><span class="o">.</span><span class="n">_switch_to_tab</span><span class="p">(</span><span class="s">&#39;StopwatchTab&#39;</span><span class="p">)</span>
<span class="k">return</span> <span class="bp">self</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span><span class="n">Stopwatch</span><span class="p">)</span>
</pre>
<p>Now the return value of open_stopwatch will make available to the
caller all the available services that the stopwatch exposes to the
user. Thus it can be chained as a user journey from one page to the
other.</p>
<h3><a class="toc-backref" href="#id6">4. Assertions should exist only in tests</a><a class="headerlink" href="#assertions-should-exist-only-in-tests" title="Permalink to this headline"></a></h3>
<p>A well written UAT consists of a sequence of
steps or user actions and ends with one single assertion that verifies
that the user achieved its goal. The page objects are the helpers for
the user actions part of the test, so it&#8217;s better to leave the check for
success out of them. With that in mind, a test for the reset of the
stopwatch would look like this:</p>
<pre><span class="k">def</span> <span class="nf">test_restart_button_must_restart_stopwatch_time</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="c"># Set up.</span>
<span class="n">stopwatch</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">clock_page</span><span class="o">.</span><span class="n">open_stopwatch</span><span class="p">()</span>
<span class="n">stopwatch</span><span class="o">.</span><span class="n">start</span><span class="p">()</span>
<span class="n">stopwatch</span><span class="o">.</span><span class="n">reset_stopwatch</span><span class="p">()</span>
<span class="c"># Check that the stopwatch has been reset.</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span>
<span class="n">stopwatch</span><span class="o">.</span><span class="n">get_time</span><span class="p">,</span>
<span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="s">&#39;00:00.0&#39;</span><span class="p">)))</span>
</pre>
<p>We have to add a new method to the stopwatch page object: get_time. But
it only returns the state of the GUI as the user sees it. We leave in
the test method the assertion that checks it&#8217;s the expected value.</p>
<pre><span class="k">class</span> <span class="nc">Stopwatch</span><span class="p">(</span><span class="nb">object</span><span class="p">):</span>
<span class="o">...</span>
<span class="k">def</span> <span class="nf">get_time</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="k">return</span> <span class="bp">self</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span>
<span class="s">&#39;Label&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;time&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">text</span>
</pre>
<h3><a class="toc-backref" href="#id7">5. Need not represent an entire page</a><a class="headerlink" href="#need-not-represent-an-entire-page" title="Permalink to this headline"></a></h3>
<p>The objects we are modeling here can just represent a part of the page.
Then we build the entire page that the user is seeing by composition of
page parts. This way we can reuse test code for parts of the GUI that
are reused in the application or between different applications. As an
example, take the _switch_to_tab(&#8216;StopwatchTab&#8217;) method that we are
using to open the stopwatch page. The Clock application is using the
Header component provided by the Ubuntu SDK, as all the other Ubuntu
applications are doing too. So, the Ubuntu SDK also provides helpers to
make it easier the user acceptance testing of the applications, and you
will find an object like this:</p>
<pre><span class="k">class</span> <span class="nc">Header</span><span class="p">(</span><span class="nb">object</span><span class="p">):</span>
<span class="k">def</span> <span class="nf">switch_to_tab</span><span class="p">(</span><span class="n">tab_object_name</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;Open a tab.</span>
<span class="sd">        :parameter tab_object_name: The QML objectName property of the tab.</span>
<span class="sd">        :return: The newly opened tab.</span>
<span class="sd">        :raise ToolkitException: If there is no tab with that object</span>
<span class="sd">            name.</span>
<span class="sd">        &quot;&quot;&quot;</span>
<span class="o">...</span>
</pre>
<p>This object just represents the header of the page, and inside the
object we define the services that the header provides to the users. If
you dig into the full implementation of the Clock test class you will
find that in order to open the stopwatch page we end up calling Header
methods.</p>
<h3><a class="toc-backref" href="#id8">6. Actions which produce multiple results should have a test for each result</a><a class="headerlink" href="#actions-which-produce-multiple-results-should-have-a-test-for-each-result" title="Permalink to this headline"></a></h3>
<p>According to the guideline <a class="reference internal" href="#page-object-guide-guideline-3"><em>3. Methods return other PageObjects</em></a>, we are returning page objects every time
that a user action opens the option for new actions to execute.
Sometimes the same action has different results depending on the context
or the values used for the action. For example, the Clock app has an
Alarm page. In this page you can add new alarms, but if you try to add
an alarm for sometime in the past, it will result in an error. So, we
will have two different tests that will look something like this:</p>
<pre><span class="k">def</span> <span class="nf">test_add_alarm_for_tomorrow_must_add_to_alarm_list</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="n">tomorrow</span> <span class="o">=</span> <span class="o">...</span>
<span class="n">test_alarm_name</span> <span class="o">=</span> <span class="s">&#39;Test alarm for tomorrow&#39;</span>
<span class="n">alarm_page</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">alarm_page</span><span class="o">.</span><span class="n">add_alarm</span><span class="p">(</span>
<span class="n">test_alarm_name</span><span class="p">,</span> <span class="n">tomorrow</span><span class="p">)</span>
<span class="n">saved_alarms</span> <span class="o">=</span> <span class="n">alarm_page</span><span class="o">.</span><span class="n">get_saved_alarms</span><span class="p">()</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertIn</span><span class="p">(</span>
<span class="p">(</span><span class="n">test_alarm_name</span><span class="p">,</span> <span class="n">tomorrow</span><span class="p">),</span>
<span class="n">saved_alarms</span><span class="p">)</span>
<span class="k">def</span> <span class="nf">test_add_alarm_for_earlier_today_must_display_error</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="n">earlier_today</span> <span class="o">=</span> <span class="o">...</span>
<span class="n">test_alarm_name</span> <span class="o">=</span> <span class="s">&#39;Test alarm for earlier_today&#39;</span>
<span class="n">error_dialog</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">alarm_page</span><span class="o">.</span><span class="n">add_alarm_with_error</span><span class="p">(</span>
<span class="n">test_alarm_name</span><span class="p">,</span> <span class="n">earlier_today</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertEqual</span><span class="p">(</span>
<span class="n">error_dialog</span><span class="o">.</span><span class="n">text</span><span class="p">,</span>
<span class="s">&#39;Please select a time in the future.&#39;</span><span class="p">)</span>
</pre>
<p>Take a look at the methods add_alarm and add_alarm_with_error. The
first one returns the Alarm page again, where the user can continue his
journey or finish the test checking the result. The second one returns
the error dialog that&#8217;s expected when you try to add an alarm with the
wrong values.</p>
