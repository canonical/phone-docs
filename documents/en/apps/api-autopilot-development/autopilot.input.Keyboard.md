---
Title: autopilot.input.Keyboard
---

# autopilot.input.Keyboard

<dl class="class">
<dt id="autopilot.input.Keyboard">
<em class="property">class </em><tt class="descclassname">autopilot.input.</tt><tt class="descname">Keyboard</tt><a class="reference internal" href="#Keyboard"></a><a class="headerlink" href="#autopilot.input.Keyboard" title="Permalink to this definition"></a></dt>
<dd><p>A simple keyboard device class.</p>
<p>The keyboard class is used to generate key events while in an autopilot
test. This class should not be instantiated directly. To get an
instance of the keyboard class, call <a class="reference internal" href="#autopilot.input.Keyboard.create" title="autopilot.input.Keyboard.create"><tt class="xref py py-meth docutils literal"><span class="pre">create</span></tt></a> instead.</p>
<dl class="staticmethod">
<dt id="autopilot.input.Keyboard.create">
<em class="property">static </em><tt class="descname">create</tt><big>(</big><em>preferred_backend=''</em><big>)</big><a class="reference internal" href="#Keyboard.create"></a><a class="headerlink" href="#autopilot.input.Keyboard.create" title="Permalink to this definition"></a></dt>
<dd><p>Get an instance of the <a class="reference internal" href="#autopilot.input.Keyboard" title="autopilot.input.Keyboard"><tt class="xref py py-class docutils literal"><span class="pre">Keyboard</span></tt></a> class.</p>
<p>For more infomration on picking specific backends, see
<a class="reference internal" href="tutorial-advanced_autopilot.md#tut-picking-backends"><em>Advanced Backend Picking</em></a></p>
<p>For details regarding backend limitations please see:
<a class="reference internal" href="tutorial-advanced_autopilot.md#keyboard-backend-limitations"><em>Keyboard backend limitations</em></a></p>
<p class="first admonition-title">Warning</p>
<p class="last">The <strong>OSK</strong> (On Screen Keyboard) backend option does not
implement either <a class="reference internal" href="#autopilot.input.Keyboard.release" title="autopilot.input.Keyboard.release"><tt class="xref py py-meth docutils literal"><span class="pre">release</span></tt></a> methods due to
technical implementation details and will raise a NotImplementedError
exception if used.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>preferred_backend</strong> &#8211; <p>A string containing a hint as to which
backend you would like. Possible backends are:</p>
<ul>
<li><dl class="first docutils">
<dt><tt class="docutils literal"><span class="pre">X11</span></tt> - Generate keyboard events using the X11 client</dt>
<dd>libraries.</dd>
</dl>
</li>
<li><tt class="docutils literal"><span class="pre">UInput</span></tt> - Use UInput kernel-level device driver.</li>
<li><tt class="docutils literal"><span class="pre">OSK</span></tt> - Use the graphical On Screen Keyboard as a backend.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body">RuntimeError if autopilot cannot instantate any of the
possible backends.</td>
</tr>
<tr class="field-odd field"><th class="field-name">Raises:</th><td class="field-body">RuntimeError if the preferred_backend is specified and is not
one of the possible backends for this device class.</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><tt class="xref py py-class docutils literal"><span class="pre">BackendException</span></tt> if the preferred_backend
is set, but that backend could not be instantiated.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Keyboard.focused_type">
<tt class="descname">focused_type</tt><big>(</big><em>input_target</em>, <em>pointer=None</em><big>)</big><a class="reference internal" href="#Keyboard.focused_type"></a><a class="headerlink" href="#autopilot.input.Keyboard.focused_type" title="Permalink to this definition"></a></dt>
<dd><p>Type into an input widget.</p>
<p>This context manager takes care of making sure a particular
<em>input_target</em> UI control is selected before any text is entered.</p>
<p>Some backends extend this method to perform cleanup actions at the end
of the context manager block. For example, the OSK backend dismisses
the keyboard.</p>
<p>If the <em>pointer</em> argument is None (default) then either a Mouse or
Touch pointer will be created based on the current platform.</p>
<p>An example of using the context manager (with an OSK backend):</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.input</span> <span class="kn">import</span> <span class="n">Keyboard</span>
<span class="n">text_area</span> <span class="o">=</span> <span class="bp">self</span><span class="o">.</span><span class="n">_launch_test_input_area</span><span class="p">()</span>
<span class="n">keyboard</span> <span class="o">=</span> <span class="n">Keyboard</span><span class="o">.</span><span class="n">create</span><span class="p">(</span><span class="s">&#39;OSK&#39;</span><span class="p">)</span>
<span class="k">with</span> <span class="n">keyboard</span><span class="o">.</span><span class="n">focused_type</span><span class="p">(</span><span class="n">text_area</span><span class="p">)</span> <span class="k">as</span> <span class="n">kb</span><span class="p">:</span>
<span class="n">kb</span><span class="o">.</span><span class="n">type</span><span class="p">(</span><span class="s">&quot;Hello World.&quot;</span><span class="p">)</span>
<span class="bp">self</span><span class="o">.</span><span class="n">assertThat</span><span class="p">(</span><span class="n">text_area</span><span class="o">.</span><span class="n">text</span><span class="p">,</span> <span class="n">Equals</span><span class="p">(</span><span class="s">&quot;Hello World&quot;</span><span class="p">))</span>
<span class="c"># Upon leaving the context managers scope the keyboard is dismissed</span>
<span class="c"># with a swipe</span>
</pre>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Keyboard.press">
<tt class="descname">press</tt><big>(</big><em>keys</em>, <em>delay=0.2</em><big>)</big><a class="reference internal" href="#Keyboard.press"></a><a class="headerlink" href="#autopilot.input.Keyboard.press" title="Permalink to this definition"></a></dt>
<dd><p>Send key press events only.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>keys</strong> &#8211; Keys you want pressed.</li>
<li><strong>delay</strong> &#8211; The delay (in Seconds) after pressing the keys before
returning control to the caller.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><p class="first last">NotImplementedError If called when using the OSK Backend.</p>
</td>
</tr>
</tbody>
</table>
<p class="first admonition-title">Warning</p>
<p class="last">The <strong>OSK</strong> backend does not implement the press method
and will raise a NotImplementedError if called.</p>
<p>Example:</p>
<pre><span class="n">press</span><span class="p">(</span><span class="s">&#39;Alt+F2&#39;</span><span class="p">)</span>
</pre>
<p>presses the &#8216;Alt&#8217; and &#8216;F2&#8217; keys, but does not release them.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Keyboard.release">
<tt class="descname">release</tt><big>(</big><em>keys</em>, <em>delay=0.2</em><big>)</big><a class="reference internal" href="#Keyboard.release"></a><a class="headerlink" href="#autopilot.input.Keyboard.release" title="Permalink to this definition"></a></dt>
<dd><p>Send key release events only.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>keys</strong> &#8211; Keys you want released.</li>
<li><strong>delay</strong> &#8211; The delay (in Seconds) after releasing the keys before
returning control to the caller.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><p class="first last">NotImplementedError If called when using the OSK Backend.</p>
</td>
</tr>
</tbody>
</table>
<p class="first admonition-title">Warning</p>
<p class="last">The <strong>OSK</strong> backend does not implement the press method
and will raise a NotImplementedError if called.</p>
<p>Example:</p>
<pre><span class="n">release</span><span class="p">(</span><span class="s">&#39;Alt+F2&#39;</span><span class="p">)</span>
</pre>
<p>releases the &#8216;Alt&#8217; and &#8216;F2&#8217; keys.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Keyboard.press_and_release">
<tt class="descname">press_and_release</tt><big>(</big><em>keys</em>, <em>delay=0.2</em><big>)</big><a class="reference internal" href="#Keyboard.press_and_release"></a><a class="headerlink" href="#autopilot.input.Keyboard.press_and_release" title="Permalink to this definition"></a></dt>
<dd><p>Press and release all items in &#8216;keys&#8217;.</p>
<p>This is the same as calling &#8216;press(keys);release(keys)&#8217;.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first last simple">
<li><strong>keys</strong> &#8211; Keys you want pressed and released.</li>
<li><strong>delay</strong> &#8211; The delay (in Seconds) after pressing and releasing each
key.</li>
</ul>
</td>
</tr>
</tbody>
</table>
<p>Example:</p>
<pre><span class="n">press_and_release</span><span class="p">(</span><span class="s">&#39;Alt+F2&#39;</span><span class="p">)</span>
</pre>
<p>presses both the &#8216;Alt&#8217; and &#8216;F2&#8217; keys, and then releases both keys.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Keyboard.type">
<tt class="descname">type</tt><big>(</big><em>string</em>, <em>delay=0.1</em><big>)</big><a class="reference internal" href="#Keyboard.type"></a><a class="headerlink" href="#autopilot.input.Keyboard.type" title="Permalink to this definition"></a></dt>
<dd><p>Simulate a user typing a string of text.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first last simple">
<li><strong>string</strong> &#8211; The string to text to type.</li>
<li><strong>delay</strong> &#8211; The delay (in Seconds) after pressing and releasing each
key. Note that the default value here is shorter than for the
press, release and press_and_release methods.</li>
</ul>
</td>
</tr>
</tbody>
</table>
<p class="first admonition-title">Note</p>
<p class="last">Only &#8216;normal&#8217; keys can be typed with this method. Control
characters (such as &#8216;Alt&#8217; will be interpreted as an &#8216;A&#8217;, and &#8216;l&#8217;,
and a &#8216;t&#8217;).</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Keyboard.on_test_end">
<tt class="descname">on_test_end</tt><big>(</big><em>*args</em><big>)</big><a class="headerlink" href="#autopilot.input.Keyboard.on_test_end" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="autopilot.input.Keyboard.on_test_start">
<tt class="descname">on_test_start</tt><big>(</big><em>*args</em><big>)</big><a class="headerlink" href="#autopilot.input.Keyboard.on_test_start" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
</dd></dl>
