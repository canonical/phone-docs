---
Title: autopilot.introspection.types.Time
---
        
Time
====

 *class* `autopilot.introspection.types.``Time`(*\*args*, *\*\*kwargs*)<a href="#Time" class="reference internal"></a><a href="#autopilot.introspection.types.Time" class="headerlink" title="Permalink to this definition"></a>  
The Time class represents a time, without a date component.

You can construct a Time instnace by passing the hours, minutes, seconds, and milliseconds to the class constructor:

    >>> my_time = Time(12, 34, 01, 23)

The values passed in must be valid for their positions (ie..- 0-23 for hours, 0-59 for minutes and seconds, and 0-999 for milliseconds). Passing invalid values will cause a ValueError to be raised.

The hours, minutes, seconds, and milliseconds can be accessed using either index access or named properties:

    >>> my_time.hours == my_time[0] == 12
    True
    >>> my_time.minutes == my_time[1] == 34
    True
    >>> my_time.seconds == my_time[2] == 01
    True
    >>> my_time.milliseconds == my_time[3] == 23
    True

Time instances can be compared to other time instances, any mutable sequence containing four integers, or datetime.time instances:

    >>> my_time == Time(12, 34, 01, 23)
    True
    >>> my_time == Time(1,2,3,4)
    False

    >>> my_time == [12, 34, 01, 23]
    True

    >>> my_time == datetime.time(12, 34, 01, 23000)
    True

Note that the Time class stores milliseconds, while the `datettime.time` class stores microseconds.

Finally, you can get a `datetime.time` instance from a Time instance:

    >>> isinstance(my_time.time, datetime.time)
    True

