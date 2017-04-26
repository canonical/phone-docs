---
Title: autopilot.display.Display
---

# autopilot.display.Display

<dl class="class">
<dt id="autopilot.display.Display">
<em class="property">class </em><tt class="descclassname">autopilot.display.</tt><tt class="descname">Display</tt><a class="reference internal" href="#Display"></a><a class="headerlink" href="#autopilot.display.Display" title="Permalink to this definition"></a></dt>
<dd><p>The base class/inteface for the display devices.</p>
<dl class="staticmethod">
<dt id="autopilot.display.Display.create">
<em class="property">static </em><tt class="descname">create</tt><big>(</big><em>preferred_backend=''</em><big>)</big><a class="reference internal" href="#Display.create"></a><a class="headerlink" href="#autopilot.display.Display.create" title="Permalink to this definition"></a></dt>
<dd><p>Get an instance of the Display class.</p>
<p>For more infomration on picking specific backends, see
<a class="reference internal" href="tutorial-advanced_autopilot.md#tut-picking-backends"><em>Advanced Backend Picking</em></a></p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>preferred_backend</strong> &#8211; <p>A string containing a hint as to which
backend you would like.</p>
<p>possible backends are:</p>
<ul class="simple">
<li><tt class="docutils literal"><span class="pre">X11</span></tt> - Get display information from X11.</li>
<li><tt class="docutils literal"><span class="pre">UPA</span></tt> - Get display information from the ubuntu platform API.</li>
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
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body">Instance of Display with appropriate backend.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="exception">
<dt id="autopilot.display.Display.BlacklistedDriverError">
<em class="property">exception </em><tt class="descname">BlacklistedDriverError</tt><a class="reference internal" href="#Display.BlacklistedDriverError"></a><a class="headerlink" href="#autopilot.display.Display.BlacklistedDriverError" title="Permalink to this definition"></a></dt>
<dd><p>Cannot set primary monitor when running drivers listed in the
driver blacklist.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.display.Display.get_num_screens">
<tt class="descclassname">Display.</tt><tt class="descname">get_num_screens</tt><big>(</big><big>)</big><a class="reference internal" href="#Display.get_num_screens"></a><a class="headerlink" href="#autopilot.display.Display.get_num_screens" title="Permalink to this definition"></a></dt>
<dd><p>Get the number of screens attached to the PC.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.display.Display.get_primary_screen">
<tt class="descclassname">Display.</tt><tt class="descname">get_primary_screen</tt><big>(</big><big>)</big><a class="reference internal" href="#Display.get_primary_screen"></a><a class="headerlink" href="#autopilot.display.Display.get_primary_screen" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="autopilot.display.Display.get_screen_width">
<tt class="descclassname">Display.</tt><tt class="descname">get_screen_width</tt><big>(</big><em>screen_number=0</em><big>)</big><a class="reference internal" href="#Display.get_screen_width"></a><a class="headerlink" href="#autopilot.display.Display.get_screen_width" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="autopilot.display.Display.get_screen_height">
<tt class="descclassname">Display.</tt><tt class="descname">get_screen_height</tt><big>(</big><em>screen_number=0</em><big>)</big><a class="reference internal" href="#Display.get_screen_height"></a><a class="headerlink" href="#autopilot.display.Display.get_screen_height" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="autopilot.display.Display.get_screen_geometry">
<tt class="descclassname">Display.</tt><tt class="descname">get_screen_geometry</tt><big>(</big><em>monitor_number</em><big>)</big><a class="reference internal" href="#Display.get_screen_geometry"></a><a class="headerlink" href="#autopilot.display.Display.get_screen_geometry" title="Permalink to this definition"></a></dt>
<dd><p>Get the geometry for a particular monitor.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body">Tuple containing (x, y, width, height).</td>
</tr>
</tbody>
</table>
</dd></dl>
</dd></dl>
<dl class="function">
<dt id="autopilot.display.get_screenshot_data">
<tt class="descclassname">autopilot.display.</tt><tt class="descname">get_screenshot_data</tt><big>(</big><em>display_type</em><big>)</big><a class="headerlink" href="#autopilot.display.get_screenshot_data" title="Permalink to this definition"></a></dt>
<dd><p>Return a BytesIO object of the png data for the screenshot image.</p>
<dl class="docutils">
<dt><em>display_type</em> is the display server type. supported values are:</dt>
<dd><ul class="first last simple">
<li>&#8220;X11&#8221;</li>
<li>&#8220;MIR&#8221;</li>
</ul>
</dd>
</dl>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Raises:</th><td class="field-body"><ul class="first last simple">
<li><strong>RuntimeError</strong> &#8211; If attempting to capture an image on an unsupported
display server.</li>
<li><strong>RuntimeError</strong> &#8211; If saving image data to file-object fails.</li>
</ul>
</td>
</tr>
</tbody>
</table>
</dd></dl>
