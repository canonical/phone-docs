---
Title: autopilot.introspection.types
---
        
<span id="autopilot-introspection-types-introspection-type-details"></span>
Autopilot proxy type support.<a href="#autopilot-proxy-type-support" class="headerlink" title="Permalink to this headline"></a>
-----------------------------------------------------------------------------------------------------------------------------------------

This module defines the classes that are used for all attributes on proxy objects. All proxy objects contain attributes that transparently mirror the values present in the application under test. Autopilot takes care of keeping these values up to date.

Object attributes fall into two categories. Attributes that are a single string, boolean, or integer property are sent directly across DBus. These are called “plain” types, and are stored in autopilot as instnaces of the <a href="../autopilot.introspection.types.PlainType.md#autopilot.introspection.types.PlainType" class="reference internal" title="autopilot.introspection.types.PlainType"><code class="xref py py-class docutils literal">PlainType</code></a> class. Attributes that are more complex (a rectangle, for example) are called “complex” types, and are split into several component values, sent across dbus, and are then reconstituted in autopilot into useful objects.

### Elements

[DateTime](../autopilot.introspection.types.DateTime.md)  
The DateTime class represents a date and time in the UTC timezone.

[PlainType](../autopilot.introspection.types.PlainType.md)  
Plain type support in autopilot proxy objects.

[Point](../autopilot.introspection.types.Point.md)  
The Point class represents a 2D point in cartesian space.

[Rectangle](../autopilot.introspection.types.Rectangle.md)  
The RectangleType class represents a rectangle in cartesian space.

[Size](../autopilot.introspection.types.Size.md)  
The Size class represents a 2D size in cartesian space.

[Time](../autopilot.introspection.types.Time.md)  
The Time class represents a time, without a date component.

