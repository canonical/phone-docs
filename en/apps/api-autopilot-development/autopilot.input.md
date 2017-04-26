---
Title: autopilot.input
---

# autopilot.input

<!-- Start Namespace Content -->
<span id="autopilot-input-generate-keyboard-mouse-and-touch-input-events"></span>
<h2>Autopilot unified input system.<a class="headerlink" href="#autopilot-unified-input-system" title="Permalink to this headline"></a></h2>
<p>This package provides input methods for various platforms. Autopilot aims to
provide an appropriate implementation for the currently running system. For
example, not all systems have an X11 stack running: on those systems, autopilot
will instantiate input classes class that use something other than X11 to
generate events (possibly UInput).</p>
<p>Test authors should instantiate the appropriate class using the <tt class="docutils literal"><span class="pre">create</span></tt>
method on each class. Calling <tt class="docutils literal"><span class="pre">create()</span></tt> with  no arguments will get an
instance of the specified class that suits the current platform. In this case,
autopilot will do it&#8217;s best to pick a suitable backend. Calling <tt class="docutils literal"><span class="pre">create</span></tt>
with a backend name will result in that specific backend type being returned,
or, if it cannot be created, an exception will be raised. For more information
on creating backends, see <a class="reference internal" href="../1.5.0/tutorial-advanced_autopilot.md#tut-picking-backends"><em>Advanced Backend Picking</em></a></p>
<p>There are three basic input types available:</p>
<blockquote>
<li><p class="first"><a class="reference internal" href="../1.5.0/autopilot.input.Keyboard.md#autopilot.input.Keyboard" title="autopilot.input.Keyboard"><tt class="xref py py-class docutils literal"><span class="pre">Keyboard</span></tt></a> - traditional keyboard devices.</p>
</li>
<li><dl class="first docutils">
<dt><a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#autopilot.input.Mouse" title="autopilot.input.Mouse"><tt class="xref py py-class docutils literal"><span class="pre">Mouse</span></tt></a> - traditional mouse devices (Currently only avaialble on the</dt>
<dd><p class="first last">desktop).</p>
</dd>
</dl>
</li>
<li><p class="first"><a class="reference internal" href="../1.5.0/autopilot.input.Touch.md#autopilot.input.Touch" title="autopilot.input.Touch"><tt class="xref py py-class docutils literal"><span class="pre">Touch</span></tt></a> - single point-of-contact touch device.</p>
</li>
</ul>
</blockquote>
<p>The <a class="reference internal" href="../1.5.0/autopilot.input.Pointer.md#autopilot.input.Pointer" title="autopilot.input.Pointer"><tt class="xref py py-class docutils literal"><span class="pre">Pointer</span></tt></a> class is a wrapper that unifies the API of the
<a class="reference internal" href="../1.5.0/autopilot.input.Mouse.md#autopilot.input.Mouse" title="autopilot.input.Mouse"><tt class="xref py py-class docutils literal"><span class="pre">Mouse</span></tt></a> and <a class="reference internal" href="../1.5.0/autopilot.input.Touch.md#autopilot.input.Touch" title="autopilot.input.Touch"><tt class="xref py py-class docutils literal"><span class="pre">Touch</span></tt></a> classes, which can be helpful if you want to
write a test that can use either a mouse of a touch device. A common pattern is
to use a Touch device when running on a mobile device, and a Mouse device when
running on a desktop.</p>
<p class="first admonition-title">See also</p>
<dl class="last docutils">
<dt>Module <tt class="xref py py-mod docutils literal"><span class="pre">autopilot.gestures</span></tt></dt>
<dd>Multitouch and gesture support for touch devices.</dd>
</dl>
<!-- End Namespace Content -->
<h3>Elements</h3>
<dl>
<dt><a href="autopilot.input.Keyboard.md">Keyboard</a></dt><dd>A simple keyboard device class.</dd>
<dt><a href="autopilot.input.Mouse.md">Mouse</a></dt><dd>A simple mouse device class.</dd>
<dt><a href="autopilot.input.Pointer.md">Pointer</a></dt><dd>A wrapper class that represents a pointing device which can either </dd>
<dt><a href="autopilot.input.Touch.md">Touch</a></dt><dd>A simple touch driver class.</dd>
</dl>
