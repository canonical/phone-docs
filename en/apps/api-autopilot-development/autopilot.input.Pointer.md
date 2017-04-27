---
Title: autopilot.input.Pointer
---

# autopilot.input.Pointer

<dl class="class">
<dt id="autopilot.input.Pointer">
<em class="property">class </em><tt class="descclassname">autopilot.input.</tt><tt class="descname">Pointer</tt><big>(</big><em>device</em><big>)</big><a class="reference internal" href="#Pointer"></a><a class="headerlink" href="#autopilot.input.Pointer" title="Permalink to this definition"></a></dt>
<dd><p>A wrapper class that represents a pointing device which can either be a
mouse or a touch, and provides a unified API.</p>
<p>This class is useful if you want to run tests with either a mouse or a
touch device, and want to write your tests to use a single API. Create
this wrapper by passing it either a mouse or a touch device, like so:</p>
<pre><span class="n">pointer_device</span> <span class="o">=</span> <span class="n">Pointer</span><span class="p">(</span><span class="n">Mouse</span><span class="o">.</span><span class="n">create</span><span class="p">())</span>
</pre>
<p>or, like so:</p>
<pre><span class="n">pointer_device</span> <span class="o">=</span> <span class="n">Pointer</span><span class="p">(</span><span class="n">Touch</span><span class="o">.</span><span class="n">create</span><span class="p">())</span>
</pre>
<p class="first admonition-title">Warning</p>
<p class="last">Some operations only make sense for certain devices. This class
attempts to minimise the differences between the Mouse and Touch APIs,
but there are still some operations that will cause exceptions to be
raised. These are documented in the specific methods below.</p>
<dl class="attribute">
<dt id="autopilot.input.Pointer.x">
<tt class="descname">x</tt><a class="reference internal" href="#Pointer.x"></a><a class="headerlink" href="#autopilot.input.Pointer.x" title="Permalink to this definition"></a></dt>
<dd><p>Pointer X coordinate.</p>
<p>If the wrapped device is a <a class="reference internal" href="../1.5.0/autopilot.input.Touch.md#autopilot.input.Touch" title="autopilot.input.Touch"><tt class="xref py py-class docutils literal"><span class="pre">Touch</span></tt></a> device, this will return the
last known X coordinate, which may not be a sensible value.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.input.Pointer.y">
<tt class="descname">y</tt><a class="reference internal" href="#Pointer.y"></a><a class="headerlink" href="#autopilot.input.Pointer.y" title="Permalink to this definition"></a></dt>
<dd><p>Pointer Y coordinate.</p>
<p>If the wrapped device is a <a class="reference internal" href="../1.5.0/autopilot.input.Touch.md#autopilot.input.Touch" title="autopilot.input.Touch"><tt class="xref py py-class docutils literal"><span class="pre">Touch</span></tt></a> device, this will return the
last known Y coordinate, which may not be a sensible value.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Pointer.press">
<tt class="descname">press</tt><big>(</big><em>button=1</em><big>)</big><a class="reference internal" href="#Pointer.press"></a><a class="headerlink" href="#autopilot.input.Pointer.press" title="Permalink to this definition"></a></dt>
<dd><p>Press the pointer at it&#8217;s current location.</p>
<p>If the wrapped device is a mouse, you may pass a button specification.
If it is a touch device, passing anything other than 1 will raise a
ValueError exception.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Pointer.release">
<tt class="descname">release</tt><big>(</big><em>button=1</em><big>)</big><a class="reference internal" href="#Pointer.release"></a><a class="headerlink" href="#autopilot.input.Pointer.release" title="Permalink to this definition"></a></dt>
<dd><p>Releases the pointer at it&#8217;s current location.</p>
<p>If the wrapped device is a mouse, you may pass a button specification.
If it is a touch device, passing anything other than 1 will raise a
ValueError exception.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Pointer.click">
<tt class="descname">click</tt><big>(</big><em>button=1</em>, <em>press_duration=0.1</em>, <em>time_between_events=0.1</em><big>)</big><a class="reference internal" href="#Pointer.click"></a><a class="headerlink" href="#autopilot.input.Pointer.click" title="Permalink to this definition"></a></dt>
<dd><p>Press and release at the current pointer location.</p>
<p>If the wrapped device is a mouse, the button specification is used. If
it is a touch device, passing anything other than 1 will raise a
ValueError exception.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>time_between_events</strong> &#8211; takes floating point to represent the
delay time between subsequent clicks/taps. Default value 0.1
represents tenth of a second.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Pointer.move">
<tt class="descname">move</tt><big>(</big><em>x</em>, <em>y</em><big>)</big><a class="reference internal" href="#Pointer.move"></a><a class="headerlink" href="#autopilot.input.Pointer.move" title="Permalink to this definition"></a></dt>
<dd><p>Moves the pointer to the specified coordinates.</p>
<p>If the wrapped device is a mouse, the mouse will animate to the
specified coordinates. If the wrapped device is a touch device, this
method will determine where the next <a class="reference internal" href="#autopilot.input.Pointer.release" title="autopilot.input.Pointer.release"><tt class="xref py py-meth docutils literal"><span class="pre">release</span></tt></a> or
<a class="reference internal" href="#autopilot.input.Pointer.click" title="autopilot.input.Pointer.click"><tt class="xref py py-meth docutils literal"><span class="pre">click</span></tt></a> will occur.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Pointer.click_object">
<tt class="descname">click_object</tt><big>(</big><em>object_proxy</em>, <em>button=1</em>, <em>press_duration=0.1</em>, <em>time_between_events=0.1</em><big>)</big><a class="reference internal" href="#Pointer.click_object"></a><a class="headerlink" href="#autopilot.input.Pointer.click_object" title="Permalink to this definition"></a></dt>
<dd><p>Attempts to move the pointer to &#8216;object_proxy&#8217;s centre point.
and click a button</p>
<p>It does this by looking for several attributes, in order. The first
attribute found will be used. The attributes used are (in order):</p>
<blockquote>
<li>globalRect (x,y,w,h)</li>
<li>center_x, center_y</li>
<li>x, y, w, h</li>
</ul>
</blockquote>
<p>If the wrapped device is a mouse, the button specification is used. If
it is a touch device, passing anything other than 1 will raise a
ValueError exception.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>time_between_events</strong> &#8211; takes floating point to represent the
delay time between subsequent clicks/taps. Default value 0.1
represents tenth of a second.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Pointer.move_to_object">
<tt class="descname">move_to_object</tt><big>(</big><em>object_proxy</em><big>)</big><a class="reference internal" href="#Pointer.move_to_object"></a><a class="headerlink" href="#autopilot.input.Pointer.move_to_object" title="Permalink to this definition"></a></dt>
<dd><p>Attempts to move the pointer to &#8216;object_proxy&#8217;s centre point.</p>
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
<dt id="autopilot.input.Pointer.position">
<tt class="descname">position</tt><big>(</big><big>)</big><a class="reference internal" href="#Pointer.position"></a><a class="headerlink" href="#autopilot.input.Pointer.position" title="Permalink to this definition"></a></dt>
<dd><p>Returns the current position of the pointer.</p>
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
<dt id="autopilot.input.Pointer.drag">
<tt class="descname">drag</tt><big>(</big><em>x1</em>, <em>y1</em>, <em>x2</em>, <em>y2</em>, <em>rate=10</em>, <em>time_between_events=0.01</em><big>)</big><a class="reference internal" href="#Pointer.drag"></a><a class="headerlink" href="#autopilot.input.Pointer.drag" title="Permalink to this definition"></a></dt>
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
</dd></dl>
