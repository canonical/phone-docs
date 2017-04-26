---
Title: autopilot.input.Mouse
---

# autopilot.input.Mouse

<dl class="class">
<dt id="autopilot.input.Mouse">
<em class="property">class </em><tt class="descclassname">autopilot.input.</tt><tt class="descname">Mouse</tt><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse"></a><a class="headerlink" href="#autopilot.input.Mouse" title="Permalink to this definition"></a></dt>
<dd><p>A simple mouse device class.</p>
<p>The mouse class is used to generate mouse events while in an autopilot
test. This class should not be instantiated directly however. To get an
instance of the mouse class, call <a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#autopilot.input.Mouse.create" title="autopilot.input.Mouse.create"><tt class="xref py py-meth docutils literal"><span class="pre">create</span></tt></a> instead.</p>
<p>For example, to create a mouse object and click at (100,50):</p>
<pre><span class="n">mouse</span> <span class="o">=</span> <span class="n">Mouse</span><span class="o">.</span><span class="n">create</span><span class="p">()</span>
<span class="n">mouse</span><span class="o">.</span><span class="n">move</span><span class="p">(</span><span class="mi">100</span><span class="p">,</span> <span class="mi">50</span><span class="p">)</span>
<span class="n">mouse</span><span class="o">.</span><span class="n">click</span><span class="p">()</span>
</pre>
<dl class="staticmethod">
<dt id="autopilot.input.Mouse.create">
<em class="property">static </em><tt class="descname">create</tt><big>(</big><em>preferred_backend=''</em><big>)</big><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse.create"></a><a class="headerlink" href="#autopilot.input.Mouse.create" title="Permalink to this definition"></a></dt>
<dd><p>Get an instance of the <a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#autopilot.input.Mouse" title="autopilot.input.Mouse"><tt class="xref py py-class docutils literal"><span class="pre">Mouse</span></tt></a> class.</p>
<p>For more infomration on picking specific backends, see
<a class="reference internal" href="../1.5.0/tutorial-advanced_autopilot.md#tut-picking-backends"><em>Advanced Backend Picking</em></a></p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>preferred_backend</strong> &#8211; <p>A string containing a hint as to which
backend you would like. Possible backends are:</p>
<ul class="simple">
<li><tt class="docutils literal"><span class="pre">X11</span></tt> - Generate mouse events using the X11 client libraries.</li>
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
<dl class="attribute">
<dt id="autopilot.input.Mouse.x">
<tt class="descname">x</tt><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse.x"></a><a class="headerlink" href="#autopilot.input.Mouse.x" title="Permalink to this definition"></a></dt>
<dd><p>Mouse position X coordinate.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.input.Mouse.y">
<tt class="descname">y</tt><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse.y"></a><a class="headerlink" href="#autopilot.input.Mouse.y" title="Permalink to this definition"></a></dt>
<dd><p>Mouse position Y coordinate.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Mouse.press">
<tt class="descname">press</tt><big>(</big><em>button=1</em><big>)</big><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse.press"></a><a class="headerlink" href="#autopilot.input.Mouse.press" title="Permalink to this definition"></a></dt>
<dd><p>Press mouse button at current mouse location.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Mouse.release">
<tt class="descname">release</tt><big>(</big><em>button=1</em><big>)</big><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse.release"></a><a class="headerlink" href="#autopilot.input.Mouse.release" title="Permalink to this definition"></a></dt>
<dd><p>Releases mouse button at current mouse location.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Mouse.click">
<tt class="descname">click</tt><big>(</big><em>button=1</em>, <em>press_duration=0.1</em>, <em>time_between_events=0.1</em><big>)</big><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse.click"></a><a class="headerlink" href="#autopilot.input.Mouse.click" title="Permalink to this definition"></a></dt>
<dd><p>Click mouse at current location.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>time_between_events</strong> &#8211; takes floating point to represent the
delay time between subsequent clicks. Default value 0.1 represents
tenth of a second.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Mouse.click_object">
<tt class="descname">click_object</tt><big>(</big><em>object_proxy</em>, <em>button=1</em>, <em>press_duration=0.1</em>, <em>time_between_events=0.1</em><big>)</big><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse.click_object"></a><a class="headerlink" href="#autopilot.input.Mouse.click_object" title="Permalink to this definition"></a></dt>
<dd><p>Click the center point of a given object.</p>
<p>It does this by looking for several attributes, in order. The first
attribute found will be used. The attributes used are (in order):</p>
<blockquote>
<li>globalRect (x,y,w,h)</li>
<li>center_x, center_y</li>
<li>x, y, w, h</li>
</ul>
</blockquote>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>time_between_events</strong> &#8211; takes floating point to represent the
delay time between subsequent clicks. Default value 0.1 represents
tenth of a second.</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><strong>ValueError</strong> if none of these attributes are found, or if an
attribute is of an incorrect type.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Mouse.move">
<tt class="descname">move</tt><big>(</big><em>x</em>, <em>y</em>, <em>animate=True</em>, <em>rate=10</em>, <em>time_between_events=0.01</em><big>)</big><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse.move"></a><a class="headerlink" href="#autopilot.input.Mouse.move" title="Permalink to this definition"></a></dt>
<dd><p>Moves mouse to location (x,y).</p>
<p>Callers should avoid specifying the <em>rate</em> or <em>time_between_events</em>
parameters unless they need a specific rate of movement.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Mouse.move_to_object">
<tt class="descname">move_to_object</tt><big>(</big><em>object_proxy</em><big>)</big><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse.move_to_object"></a><a class="headerlink" href="#autopilot.input.Mouse.move_to_object" title="Permalink to this definition"></a></dt>
<dd><p>Attempts to move the mouse to &#8216;object_proxy&#8217;s centre point.</p>
<p>It does this by looking for several attributes, in order. The first
attribute found will be used. The attributes used are (in order):</p>
<blockquote>
<li>globalRect (x,y,w,h)</li>
<li>center_x, center_y</li>
<li>x, y, w, h</li>
</ul>
</blockquote>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Raises:</th><td class="field-body"><strong>ValueError</strong> if none of these attributes are found, or if an
attribute is of an incorrect type.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Mouse.position">
<tt class="descname">position</tt><big>(</big><big>)</big><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse.position"></a><a class="headerlink" href="#autopilot.input.Mouse.position" title="Permalink to this definition"></a></dt>
<dd><p>Returns the current position of the mouse pointer.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body">(x,y) tuple</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Mouse.drag">
<tt class="descname">drag</tt><big>(</big><em>x1</em>, <em>y1</em>, <em>x2</em>, <em>y2</em>, <em>rate=10</em>, <em>time_between_events=0.01</em><big>)</big><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#Mouse.drag"></a><a class="headerlink" href="#autopilot.input.Mouse.drag" title="Permalink to this definition"></a></dt>
<dd><p>Perform a press, move and release.</p>
<p>This is to keep a common API between Mouse and Finger as long as
possible.</p>
<p>The pointer will be dragged from the starting point to the ending point
with multiple moves. The number of moves, and thus the time that it
will take to complete the drag can be altered with the <cite>rate</cite>
parameter.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first last simple">
<li><strong>x1</strong> &#8211; The point on the x axis where the drag will start from.</li>
<li><strong>y1</strong> &#8211; The point on the y axis where the drag will starts from.</li>
<li><strong>x2</strong> &#8211; The point on the x axis where the drag will end at.</li>
<li><strong>y2</strong> &#8211; The point on the y axis where the drag will end at.</li>
<li><strong>rate</strong> &#8211; The number of pixels the mouse will be moved per
iteration. Default is 10 pixels. A higher rate will make the drag
faster, and lower rate will make it slower.</li>
<li><strong>time_between_events</strong> &#8211; The number of seconds that the drag will
wait between iterations.</li>
</ul>
</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Mouse.on_test_end">
<tt class="descname">on_test_end</tt><big>(</big><em>*args</em><big>)</big><a class="headerlink" href="#autopilot.input.Mouse.on_test_end" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="autopilot.input.Mouse.on_test_start">
<tt class="descname">on_test_start</tt><big>(</big><em>*args</em><big>)</big><a class="headerlink" href="#autopilot.input.Mouse.on_test_start" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
</dd></dl>
