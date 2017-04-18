---
Title: autopilot.display
---

# autopilot.display

<!-- Start Namespace Content -->
<span id="autopilot-display-get-information-about-the-current-display-s"></span>
<p>The display module contaions support for getting screen information.</p>
<dl class="function">
<dt id="autopilot.display.is_rect_on_screen">
<tt class="descclassname">autopilot.display.</tt><tt class="descname">is_rect_on_screen</tt><big>(</big><em>screen_number</em>, <em>rect</em><big>)</big><a class="headerlink" href="#autopilot.display.is_rect_on_screen" title="Permalink to this definition"></a></dt>
<dd><p>Return True if <em>rect</em> is <strong>entirely</strong> on the specified screen, with no
overlap.</p>
</dd></dl>
<dl class="function">
<dt id="autopilot.display.is_point_on_screen">
<tt class="descclassname">autopilot.display.</tt><tt class="descname">is_point_on_screen</tt><big>(</big><em>screen_number</em>, <em>point</em><big>)</big><a class="headerlink" href="#autopilot.display.is_point_on_screen" title="Permalink to this definition"></a></dt>
<dd><p>Return True if <em>point</em> is on the specified screen.</p>
<p><em>point</em> must be an iterable type with two elements: (x, y)</p>
</dd></dl>
<dl class="function">
<dt id="autopilot.display.is_point_on_any_screen">
<tt class="descclassname">autopilot.display.</tt><tt class="descname">is_point_on_any_screen</tt><big>(</big><em>point</em><big>)</big><a class="headerlink" href="#autopilot.display.is_point_on_any_screen" title="Permalink to this definition"></a></dt>
<dd><p>Return true if <em>point</em> is on any currently configured screen.</p>
</dd></dl>
<dl class="function">
<dt id="autopilot.display.move_mouse_to_screen">
<tt class="descclassname">autopilot.display.</tt><tt class="descname">move_mouse_to_screen</tt><big>(</big><em>screen_number</em><big>)</big><a class="headerlink" href="#autopilot.display.move_mouse_to_screen" title="Permalink to this definition"></a></dt>
<dd><p>Move the mouse to the center of the specified screen.</p>
</dd></dl>
<!-- End Namespace Content -->
<h3>Elements</h3>
<dl>
<dt><a href="autopilot.display.Display.md">Display</a></dt><dd>The base class/inteface for the display devices.</dd>
</dl>
