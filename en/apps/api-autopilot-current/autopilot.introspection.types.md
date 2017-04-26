---
Title: autopilot.introspection.types
---

# autopilot.introspection.types

<!-- Start Namespace Content -->
<span id="autopilot-introspection-types-introspection-type-details"></span>
<h2>Autopilot proxy type support.<a class="headerlink" href="#autopilot-proxy-type-support" title="Permalink to this headline"></a></h2>
<p>This module defines the classes that are used for all attributes on proxy
objects. All proxy objects contain attributes that transparently mirror the
values present in the application under test. Autopilot takes care of keeping
these values up to date.</p>
<p>Object attributes fall into two categories. Attributes that are a single
string, boolean, or integer property are sent directly across DBus. These are
called &#8220;plain&#8221; types, and are stored in autopilot as instnaces of the
<a class="reference internal" href="autopilot.introspection.types.PlainType.md#autopilot.introspection.types.PlainType" title="autopilot.introspection.types.PlainType"><tt class="xref py py-class docutils literal"><span class="pre">PlainType</span></tt></a> class. Attributes that are more complex (a rectangle, for
example) are called &#8220;complex&#8221; types, and are split into several component
values, sent across dbus, and are then reconstituted in autopilot into useful
objects.</p>
<!-- End Namespace Content -->
<h3>Elements</h3>
<dl>
<dt><a href="autopilot.introspection.types.DateTime.md">DateTime</a></dt><dd>The DateTime class represents a date and time in the UTC timezone.</dd>
<dt><a href="autopilot.introspection.types.PlainType.md">PlainType</a></dt><dd>Plain type support in autopilot proxy objects.</dd>
<dt><a href="autopilot.introspection.types.Point.md">Point</a></dt><dd>The Point class represents a 2D point in cartesian space.</dd>
<dt><a href="autopilot.introspection.types.Rectangle.md">Rectangle</a></dt><dd>The RectangleType class represents a rectangle in cartesian space.</dd>
<dt><a href="autopilot.introspection.types.Size.md">Size</a></dt><dd>The Size class represents a 2D size in cartesian space.</dd>
<dt><a href="autopilot.introspection.types.Time.md">Time</a></dt><dd>The Time class represents a time, without a date component.</dd>
</dl>
