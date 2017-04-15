---
Title: autopilot.introspection.types.Size
---
        
Size
====

 *class* `autopilot.introspection.types.``Size`(*\*args*, *\*\*kwargs*)<a href="#Size" class="reference internal"></a><a href="#autopilot.introspection.types.Size" class="headerlink" title="Permalink to this definition"></a>  
The Size class represents a 2D size in cartesian space.

To construct a Size, pass in the width, height parameters to the class constructor:

    >>> my_size = Size(50,100)

These attributes can be accessed either using named attributes, or via sequence indexes:

    >>> my_size.width == my_size.w == my_size[0] == 50
    True
    >>> my_size.height == my_size.h == my_size[1] == 100
    True

Size instances can be compared using `==` and `!=`, either to another Size instance, or to any mutable sequence type with the correct number of items:

    >>> my_size == [50, 100]
    True
    >>> my_size != Size(5, 10)
    True

