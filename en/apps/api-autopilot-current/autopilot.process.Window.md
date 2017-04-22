---
Title: autopilot.process.Window
---

# autopilot.process.Window

<dl class="class">
<dt id="autopilot.process.Window">
<em class="property">class </em><tt class="descclassname">autopilot.process.</tt><tt class="descname">Window</tt><a class="reference internal" href="#Window"></a><a class="headerlink" href="#autopilot.process.Window" title="Permalink to this definition"></a></dt>
<dd><dl class="attribute">
<dt id="autopilot.process.Window.x_id">
<tt class="descname">x_id</tt><a class="reference internal" href="#Window.x_id"></a><a class="headerlink" href="#autopilot.process.Window.x_id" title="Permalink to this definition"></a></dt>
<dd><p>Get the X11 Window Id.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.x_win">
<tt class="descname">x_win</tt><a class="reference internal" href="#Window.x_win"></a><a class="headerlink" href="#autopilot.process.Window.x_win" title="Permalink to this definition"></a></dt>
<dd><p>Get the X11 window object of the underlying window.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.get_wm_state">
<tt class="descname">get_wm_state</tt><a class="reference internal" href="#Window.get_wm_state"></a><a class="headerlink" href="#autopilot.process.Window.get_wm_state" title="Permalink to this definition"></a></dt>
<dd><p>Get the state of the underlying window.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.name">
<tt class="descname">name</tt><a class="reference internal" href="#Window.name"></a><a class="headerlink" href="#autopilot.process.Window.name" title="Permalink to this definition"></a></dt>
<dd><p>Get the window name.</p>
<p class="first admonition-title">Note</p>
<p class="last">This may change according to the current locale. If you want
a unique string to match windows against, use the x_id instead.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.title">
<tt class="descname">title</tt><a class="reference internal" href="#Window.title"></a><a class="headerlink" href="#autopilot.process.Window.title" title="Permalink to this definition"></a></dt>
<dd><p>Get the window title.</p>
<p>This may be different from the application name.</p>
<p class="first admonition-title">Note</p>
<p class="last">This may change depending on the current locale.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.geometry">
<tt class="descname">geometry</tt><a class="reference internal" href="#Window.geometry"></a><a class="headerlink" href="#autopilot.process.Window.geometry" title="Permalink to this definition"></a></dt>
<dd><p>Get the geometry for this window.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body">Tuple containing (x, y, width, height).</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.is_maximized">
<tt class="descname">is_maximized</tt><a class="reference internal" href="#Window.is_maximized"></a><a class="headerlink" href="#autopilot.process.Window.is_maximized" title="Permalink to this definition"></a></dt>
<dd><p>Is the window maximized?</p>
<p>Maximized in this case means both maximized vertically and
horizontally. If a window is only maximized in one direction it is not
considered maximized.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.application">
<tt class="descname">application</tt><a class="reference internal" href="#Window.application"></a><a class="headerlink" href="#autopilot.process.Window.application" title="Permalink to this definition"></a></dt>
<dd><p>Get the application that owns this window.</p>
<p>This method may return None if the window does not have an associated
application. The &#8216;desktop&#8217; window is one such example.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.user_visible">
<tt class="descname">user_visible</tt><a class="reference internal" href="#Window.user_visible"></a><a class="headerlink" href="#autopilot.process.Window.user_visible" title="Permalink to this definition"></a></dt>
<dd><p>Is this window visible to the user in the switcher?</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.is_hidden">
<tt class="descname">is_hidden</tt><a class="reference internal" href="#Window.is_hidden"></a><a class="headerlink" href="#autopilot.process.Window.is_hidden" title="Permalink to this definition"></a></dt>
<dd><p>Is this window hidden?</p>
<p>Windows are hidden when the &#8216;Show Desktop&#8217; mode is activated.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.is_focused">
<tt class="descname">is_focused</tt><a class="reference internal" href="#Window.is_focused"></a><a class="headerlink" href="#autopilot.process.Window.is_focused" title="Permalink to this definition"></a></dt>
<dd><p>Is this window focused?</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.is_valid">
<tt class="descname">is_valid</tt><a class="reference internal" href="#Window.is_valid"></a><a class="headerlink" href="#autopilot.process.Window.is_valid" title="Permalink to this definition"></a></dt>
<dd><p>Is this window object valid?</p>
<p>Invalid windows are caused by windows closing during the construction
of this object instance.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.monitor">
<tt class="descname">monitor</tt><a class="reference internal" href="#Window.monitor"></a><a class="headerlink" href="#autopilot.process.Window.monitor" title="Permalink to this definition"></a></dt>
<dd><p>Returns the monitor to which the windows belongs to</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Window.closed">
<tt class="descname">closed</tt><a class="reference internal" href="#Window.closed"></a><a class="headerlink" href="#autopilot.process.Window.closed" title="Permalink to this definition"></a></dt>
<dd><p>Returns True if the window has been closed</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.process.Window.close">
<tt class="descname">close</tt><big>(</big><big>)</big><a class="reference internal" href="#Window.close"></a><a class="headerlink" href="#autopilot.process.Window.close" title="Permalink to this definition"></a></dt>
<dd><p>Close the window.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.process.Window.set_focus">
<tt class="descname">set_focus</tt><big>(</big><big>)</big><a class="reference internal" href="#Window.set_focus"></a><a class="headerlink" href="#autopilot.process.Window.set_focus" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
</dd></dl>
