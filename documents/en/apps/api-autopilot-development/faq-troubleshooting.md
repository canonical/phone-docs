---
Title: faq-troubleshooting
---

# faq-troubleshooting

<p class="topic-title first">Contents</p>
<ul class="simple">
<li><a class="reference internal" href="#troubleshooting" id="id1">Troubleshooting</a><ul>
<li><a class="reference internal" href="#general-techniques" id="id2">General Techniques</a></li>
<li><a class="reference internal" href="#common-questions-regarding-failing-tests" id="id3">Common Questions regarding Failing Tests</a><ul>
<li><a class="reference internal" href="#q-why-is-my-test-failing-it-works-some-of-the-time-what-causes-flakyness" id="id4">Q. Why is my test failing? It works some of the time. What causes &#8220;flakyness?&#8221;</a></li>
<li><a class="reference internal" href="#statenotfounderror-exception" id="id5">StateNotFoundError Exception</a></li>
</ul>
</li>
</ul>
</li>
</ul>
<span id="troubleshooting-general-techniques"></span><h2><a class="toc-backref" href="#id2">General Techniques</a><a class="headerlink" href="#general-techniques" title="Permalink to this headline"></a></h2>
<p>The single hardest thing to do while writing autopilot tests is to understand the state of the application&#8217;s object tree. This is especially important for applications that change their object tree during the lifetime of the test. There are three techniques you can use to discover the state of the object tree:</p>
<p><strong>Using Autopilot Vis</strong></p>
<p>The <a class="reference internal" href="guides-running_ap.md#visualise-introspection-tree"><em>Autopilot vis tool</em></a> is a useful tool for exploring the entire structure of an application, and allows you to search for a particular node in the object tree. If you want to find out what parts of the application to select to gain access to certain information, the vis tool is probably the best way to do that.</p>
<p><strong>Using print_tree</strong></p>
<p>The <a class="reference internal" href="autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.print_tree" title="autopilot.introspection.ProxyBase.print_tree"><tt class="xref py py-meth docutils literal"><span class="pre">print_tree</span></tt></a> method is available on every proxy class. This method will print every child of the proxy object recursively, either to <tt class="docutils literal"><span class="pre">stdout</span></tt> or a file on disk. This technique can be useful when:</p>
<ul class="simple">
<li>The application cannot easily be put into the state required before launching autopilot vis, so the vis tool is no longer an option.</li>
<li>The application state that has to be captured only exists for a short amount of time.</li>
<li>The application only runs on platforms where the vis tool isn&#8217;t available.</li>
</ul>
<p>The <a class="reference internal" href="autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.print_tree" title="autopilot.introspection.ProxyBase.print_tree"><tt class="xref py py-meth docutils literal"><span class="pre">print_tree</span></tt></a> method often produces a lot of output. There are two ways this information overload can be handled:</p>
<ol class="arabic simple">
<li>Specify a file path to write to, so the console log doesn&#8217;t get flooded. This log file can then be searched with tools such as <tt class="docutils literal"><span class="pre">grep</span></tt>.</li>
<li>Specify a <tt class="docutils literal"><span class="pre">maxdepth</span></tt> limit. This controls how many levels deep the recursive search will go.</li>
</ol>
<p>Of course, these techniques can be used in combination.</p>
<p><strong>Using get_properties</strong></p>
<p>The <a class="reference internal" href="autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.get_properties" title="autopilot.introspection.ProxyBase.get_properties"><tt class="xref py py-meth docutils literal"><span class="pre">get_properties</span></tt></a> method can be used on any proxy object, and will return a python dictionary containing all the properties of that proxy object. This is useful when you want to explore what information is provided by a single proxy object. The information returned by this method is exactly the same as is shown in the right-hand pane of <tt class="docutils literal"><span class="pre">autopilot</span> <span class="pre">vis</span></tt>.</p>
<h2><a class="toc-backref" href="#id3">Common Questions regarding Failing Tests</a><a class="headerlink" href="#common-questions-regarding-failing-tests" title="Permalink to this headline"></a></h2>
<span id="failing-tests"></span><h3><a class="toc-backref" href="#id4">Q. Why is my test failing? It works some of the time. What causes &#8220;flakyness?&#8221;</a><a class="headerlink" href="#q-why-is-my-test-failing-it-works-some-of-the-time-what-causes-flakyness" title="Permalink to this headline"></a></h3>
<p>Sometimes a tests fails because the application under tests has issues, but what happens when the failing test can&#8217;t be reproduced manually? It means the test itself has an issue.</p>
<p>Here is a troubleshooting guide you can use with some of the common problems that developers can overlook while writing tests.</p>
<h3><a class="toc-backref" href="#id5">StateNotFoundError Exception</a><a class="headerlink" href="#statenotfounderror-exception" title="Permalink to this headline"></a></h3>
<ol class="arabic" id="state-not-found">
<li><p class="first">Not waiting for an animation to finish before looking for an object. Did you add animations to your app recently?</p>
<blockquote>
<li><p class="first">problem:</p>
<pre><span class="bp">self</span><span class="o">.</span><span class="n">main_view</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;Button&#39;</span><span class="p">,</span> <span class="n">text</span><span class="o">=</span><span class="s">&#39;click_this&#39;</span><span class="p">)</span>
</pre>
</li>
<li><p class="first">solution:</p>
<pre><span class="n">page</span><span class="o">.</span><span class="n">animationRunning</span><span class="o">.</span><span class="n">wait_for</span><span class="p">(</span><span class="bp">False</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">main_view</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;Button&#39;</span><span class="p">,</span> <span class="n">text</span><span class="o">=</span><span class="s">&#39;click_this&#39;</span><span class="p">)</span>
</pre>
</li>
</ul>
</blockquote>
</li>
<li><p class="first">Not waiting for an object to become visible before trying to select it. Is your app slower than it used to be for some reason? Does its properties have null values? Do you see errors in stdout/stderr while using your app, if you run it from the commandline?</p>
</li>
</ol>
<blockquote>
Python code is executed in series which takes milliseconds, whereas the actions (clicking a button etc.) will take longer as well as the dbus query time. This is why wait_select_* is useful i.e. click a button and wait for that click to happen (including the dbus query times taken).</p>
<blockquote>
<li><p class="first">problem:</p>
<pre><span class="bp">self</span><span class="o">.</span><span class="n">main_view</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;clickme&#39;</span><span class="p">)</span>
</pre>
</li>
<li><p class="first">solution:</p>
<pre><span class="bp">self</span><span class="o">.</span><span class="n">main_view</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;clickme&#39;</span><span class="p">)</span>
</pre>
</li>
</ul>
</blockquote>
</blockquote>
<ol class="arabic" start="3">
<li><dl class="first docutils">
<dt>Waiting for an item that is destroyed to be not visible, sometimes the objects is destroyed before it returns false:</dt>
<dd><ul class="first last">
<li><p class="first">problem:</p>
<pre><span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">dialogButton</span><span class="o">.</span><span class="n">visible</span><span class="p">,</span> <span class="n">Eventually</span><span class="p">(</span><span class="n">Equals</span><span class="p">(</span><span class="bp">False</span><span class="p">)))</span>
</pre>
</li>
<li><p class="first">problem:</p>
<pre><span class="bp">self</span><span class="o">.</span><span class="n">_get_activity_indicator</span><span class="p">()</span><span class="o">.</span><span class="n">running</span><span class="o">.</span><span class="n">wait_for</span><span class="p">(</span><span class="bp">False</span><span class="p">)</span>
</pre>
</li>
<li><p class="first">solution:</p>
<pre><span class="n">dialogButton</span><span class="o">.</span><span class="n">wait_for_destroyed</span><span class="p">()</span>
</pre>
</li>
<li><p class="first">solution:</p>
<pre><span class="bp">self</span><span class="o">.</span><span class="n">_get_activity_indicator</span><span class="p">()</span><span class="o">.</span><span class="n">running</span><span class="o">.</span><span class="n">wait_for_destroyed</span><span class="p">()</span>
</pre>
</li>
</ul>
</dd>
</dl>
</li>
<li><dl class="first docutils">
<dt>Trying to use select_many like a list. The order in which the objects are returned are non-deterministic.</dt>
<dd><ul class="first last">
<li><p class="first">problem:</p>
<pre><span class="k">def</span> <span class="nf">get_first_photo</span><span class="p">(</span><span class="bp">self</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;Returns first photo&quot;&quot;&quot;</span>
<span class="k">return</span> <span class="n">event</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span>
<span class="s">&#39;OrganicItemInteraction&#39;</span><span class="p">,</span>
<span class="n">objectName</span><span class="o">=</span><span class="s">&#39;eventsViewPhoto&#39;</span>
<span class="p">)[</span><span class="mi">0</span><span class="p">]</span>
</pre>
</li>
<li><p class="first">solution:</p>
<pre><span class="k">def</span> <span class="nf">_get_named_photo_element</span><span class="p">(</span><span class="bp">self</span><span class="p">,</span> <span class="n">photo_name</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;Return the ShapeItem container object for the named photo</span>
<span class="sd">    This object can be clicked to enable the photo to be selected.</span>
<span class="sd">    &quot;&quot;&quot;</span>
<span class="n">photo_element</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">grid_view</span><span class="p">()</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span>
<span class="s">&#39;QQuickImage&#39;</span><span class="p">,</span>
<span class="n">source</span><span class="o">=</span><span class="n">photo_name</span>
<span class="p">)</span>
<span class="k">return</span> <span class="n">photo_element</span><span class="o">.</span><span class="n">get_parent</span><span class="p">()</span>
<span class="k">def</span> <span class="nf">select_named_photo</span><span class="p">(</span><span class="bp">self</span><span class="p">,</span> <span class="n">photo_name</span><span class="p">):</span>
<span class="sd">&quot;&quot;&quot;Select the named photo from the picker view.&quot;&quot;&quot;</span>
<span class="n">photo_element</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">_get_named_photo_element</span><span class="p">(</span><span class="n">photo_name</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">pointing_device</span><span class="o">.</span><span class="n">click_object</span><span class="p">(</span><span class="n">photo_element</span><span class="p">)</span>
</pre>
</li>
</ul>
</dd>
</dl>
</li>
</ol>
