---
Title: autopilot.introspection.types.Point
---
        
Point
=====

 *class* `autopilot.introspection.types.``Point`(*\*args*, *\*\*kwargs*)<a href="#Point" class="reference internal"></a><a href="#autopilot.introspection.types.Point" class="headerlink" title="Permalink to this definition"></a>  
The Point class represents a 2D point in cartesian space.

To construct a Point, pass in the x, y parameters to the class constructor:

    >>> my_point = Point(50,100)

These attributes can be accessed either using named attributes, or via sequence indexes:

    >>> my_point.x == my_point[0] == 50
    True
    >>> my_point.y == my_point[1] == 100
    True

Point instances can be compared using `==` and `!=`, either to another Point instance, or to any mutable sequence type with the correct number of items:

    >>> my_point == [50, 100]
    True
    >>> my_point != Point(5, 10)
    True

