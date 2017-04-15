---
Title: autopilot.input
---
        
<span id="autopilot-input-generate-keyboard-mouse-and-touch-input-events"></span>
Autopilot unified input system.<a href="#autopilot-unified-input-system" class="headerlink" title="Permalink to this headline"></a>
---------------------------------------------------------------------------------------------------------------------------------------------

This package provides input methods for various platforms. Autopilot aims to provide an appropriate implementation for the currently running system. For example, not all systems have an X11 stack running: on those systems, autopilot will instantiate input classes class that use something other than X11 to generate events (possibly UInput).

Test authors should instantiate the appropriate class using the `create` method on each class. Calling `create()` with no arguments will get an instance of the specified class that suits the current platform. In this case, autopilot will do it’s best to pick a suitable backend. Calling `create` with a backend name will result in that specific backend type being returned, or, if it cannot be created, an exception will be raised. For more information on creating backends, see <a href="../../1.5.0/tutorial-advanced_autopilot.md#tut-picking-backends" class="reference internal"><em>Advanced Backend Picking</em></a>

There are three basic input types available:

> -   <a href="../../1.5.0/autopilot.input.Keyboard.md#autopilot.input.Keyboard" class="reference internal" title="autopilot.input.Keyboard"><code class="xref py py-class docutils literal">Keyboard</code></a> - traditional keyboard devices.
>
> -   <a href="../../1.5.0/autopilot.input.Mouse.md#autopilot.input.Mouse" class="reference internal" title="autopilot.input.Mouse"><code class="xref py py-class docutils literal">Mouse</code></a> - traditional mouse devices (Currently only avaialble on the  
>     desktop).
>
> -   <a href="../../1.5.0/autopilot.input.Touch.md#autopilot.input.Touch" class="reference internal" title="autopilot.input.Touch"><code class="xref py py-class docutils literal">Touch</code></a> - single point-of-contact touch device.
>
The <a href="../../1.5.0/autopilot.input.Pointer.md#autopilot.input.Pointer" class="reference internal" title="autopilot.input.Pointer"><code class="xref py py-class docutils literal">Pointer</code></a> class is a wrapper that unifies the API of the <a href="../../1.5.0/autopilot.input.Mouse.md#autopilot.input.Mouse" class="reference internal" title="autopilot.input.Mouse"><code class="xref py py-class docutils literal">Mouse</code></a> and <a href="../../1.5.0/autopilot.input.Touch.md#autopilot.input.Touch" class="reference internal" title="autopilot.input.Touch"><code class="xref py py-class docutils literal">Touch</code></a> classes, which can be helpful if you want to write a test that can use either a mouse of a touch device. A common pattern is to use a Touch device when running on a mobile device, and a Mouse device when running on a desktop.

See also

Module `autopilot.gestures`  
Multitouch and gesture support for touch devices.

### Elements

[Keyboard](../autopilot.input.Keyboard.md)  
A simple keyboard device class.

[Mouse](../autopilot.input.Mouse.md)  
A simple mouse device class.

[Pointer](../autopilot.input.Pointer.md)  
A wrapper class that represents a pointing device which can either

[Touch](../autopilot.input.Touch.md)  
A simple touch driver class.

