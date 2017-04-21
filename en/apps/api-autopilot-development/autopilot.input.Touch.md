---
Title: autopilot.input.Touch
---

# autopilot.input.Touch

<dl class="class">
<dt id="autopilot.input.Touch">
<em class="property">class </em><tt class="descclassname">autopilot.input.</tt><tt class="descname">Touch</tt><a class="reference internal" href="autopilot.input.Touch.md#Touch"></a><a class="headerlink" href="#autopilot.input.Touch" title="Permalink to this definition"></a></dt>
<dd><p>A simple touch driver class.</p>
<p>This class can be used for any touch events that require a single active
touch at once. If you want to do complex gestures (including multi-touch
gestures), look at the <tt class="xref py py-mod docutils literal"><span class="pre">autopilot.gestures</span></tt> module.</p>
<dl class="staticmethod">
<dt id="autopilot.input.Touch.create">
<em class="property">static </em><tt class="descname">create</tt><big>(</big><em>preferred_backend=''</em><big>)</big><a class="reference internal" href="autopilot.input.Touch.md#Touch.create"></a><a class="headerlink" href="#autopilot.input.Touch.create" title="Permalink to this definition"></a></dt>
<dd><p>Get an instance of the <a class="reference internal" href="autopilot.input.Touch.md#autopilot.input.Touch" title="autopilot.input.Touch"><tt class="xref py py-class docutils literal"><span class="pre">Touch</span></tt></a> class.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>preferred_backend</strong> &#8211; <p>A string containing a hint as to which
backend you would like. If left blank, autopilot will pick a
suitable backend for you. Specifying a backend will guarantee that
either that backend is returned, or an exception is raised.</p>
<p>possible backends are:</p>
<ul class="simple">
<li><tt class="docutils literal"><span class="pre">UInput</span></tt> - Use UInput kernel-level device driver.</li>
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
<dt id="autopilot.input.Touch.pressed">
<tt class="descname">pressed</tt><a class="reference internal" href="autopilot.input.Touch.md#Touch.pressed"></a><a class="headerlink" href="#autopilot.input.Touch.pressed" title="Permalink to this definition"></a></dt>
<dd><p>Return True if this touch is currently in use (i.e.- pressed on the
&#8216;screen&#8217;).</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Touch.tap">
<tt class="descname">tap</tt><big>(</big><em>x</em>, <em>y</em>, <em>press_duration=0.1</em>, <em>time_between_events=0.1</em><big>)</big><a class="reference internal" href="autopilot.input.Touch.md#Touch.tap"></a><a class="headerlink" href="#autopilot.input.Touch.tap" title="Permalink to this definition"></a></dt>
<dd><p>Click (or &#8216;tap&#8217;) at given x,y coordinates.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>time_between_events</strong> &#8211; takes floating point to represent the
delay time between subsequent taps. Default value 0.1 represents
tenth of a second.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Touch.tap_object">
<tt class="descname">tap_object</tt><big>(</big><em>object</em>, <em>press_duration=0.1</em>, <em>time_between_events=0.1</em><big>)</big><a class="reference internal" href="autopilot.input.Touch.md#Touch.tap_object"></a><a class="headerlink" href="#autopilot.input.Touch.tap_object" title="Permalink to this definition"></a></dt>
<dd><p>Tap the center point of a given object.</p>
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
delay time between subsequent taps. Default value 0.1 represents
tenth of a second.</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><strong>ValueError</strong> if none of these attributes are found, or if an
attribute is of an incorrect type.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Touch.press">
<tt class="descname">press</tt><big>(</big><em>x</em>, <em>y</em><big>)</big><a class="reference internal" href="autopilot.input.Touch.md#Touch.press"></a><a class="headerlink" href="#autopilot.input.Touch.press" title="Permalink to this definition"></a></dt>
<dd><p>Press and hold at the given x,y coordinates.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Touch.move">
<tt class="descname">move</tt><big>(</big><em>x</em>, <em>y</em><big>)</big><a class="reference internal" href="autopilot.input.Touch.md#Touch.move"></a><a class="headerlink" href="#autopilot.input.Touch.move" title="Permalink to this definition"></a></dt>
<dd><p>Move the pointer coords to (x,y).</p>
<p class="first admonition-title">Note</p>
<p class="last">The touch &#8216;finger&#8217; must be pressed for a call to this
method to be successful. (see <a class="reference internal" href="autopilot.input.Touch.md#autopilot.input.Touch.press" title="autopilot.input.Touch.press"><tt class="xref py py-meth docutils literal"><span class="pre">press</span></tt></a> for further details on
touch presses.)</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Raises:</th><td class="field-body"><strong>RuntimeError</strong> if called and the touch &#8216;finger&#8217; isn&#8217;t
pressed.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Touch.release">
<tt class="descname">release</tt><big>(</big><big>)</big><a class="reference internal" href="autopilot.input.Touch.md#Touch.release"></a><a class="headerlink" href="#autopilot.input.Touch.release" title="Permalink to this definition"></a></dt>
<dd><p>Release a previously pressed finger</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.input.Touch.drag">
<tt class="descname">drag</tt><big>(</big><em>x1</em>, <em>y1</em>, <em>x2</em>, <em>y2</em>, <em>rate=10</em>, <em>time_between_events=0.01</em><big>)</big><a class="reference internal" href="autopilot.input.Touch.md#Touch.drag"></a><a class="headerlink" href="#autopilot.input.Touch.drag" title="Permalink to this definition"></a></dt>
<dd><p>Perform a drag gesture.</p>
<p>The finger will be dragged from the starting point to the ending point
with multiple moves. The number of moves, and thus the time that it
will take to complete the drag can be altered with the <cite>rate</cite>
parameter.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>x1</strong> &#8211; The point on the x axis where the drag will start from.</li>
<li><strong>y1</strong> &#8211; The point on the y axis where the drag will starts from.</li>
<li><strong>x2</strong> &#8211; The point on the x axis where the drag will end at.</li>
<li><strong>y2</strong> &#8211; The point on the y axis where the drag will end at.</li>
<li><strong>rate</strong> &#8211; The number of pixels the finger will be moved per
iteration. Default is 10 pixels. A higher rate will make the drag
faster, and lower rate will make it slower.</li>
<li><strong>time_between_events</strong> &#8211; The number of seconds that the drag will
wait between iterations.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><ul class="first last simple">
<li><strong>RuntimeError</strong> &#8211; if the finger is already pressed.</li>
<li><strong>RuntimeError</strong> &#8211; if no more finger slots are available.</li>
</ul>
</td>
</tr>
</tbody>
</table>
</dd></dl>
</dd></dl>
