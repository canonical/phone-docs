---
Title: autopilot.introspection.types.PlainType
---
        
PlainType
=========

 *class* `autopilot.introspection.types.``PlainType`<a href="#PlainType" class="reference internal"></a><a href="#autopilot.introspection.types.PlainType" class="headerlink" title="Permalink to this definition"></a>  
Plain type support in autopilot proxy objects.

Instances of this class will be used for all plain attrubites. The word “plain” in this context means anything that’s marshalled as a string, boolean or integer type across dbus.

Instances of these classes can be used just like the underlying type. For example, given an object property called ‘length’ that is marshalled over dbus as an integer value, the following will be true:

    >>> isinstance(object.length, PlainType)
    True
    >>> isinstance(object.length, int)
    True
    >>> print(object.length)
    123
    >>> print(object.length + 32)
    155

However, a special case exists for boolean values: because you cannot subclass from the ‘bool’ type, the following check will fail ( `object.visible` is a boolean property):

    >>> isinstance(object.visible, bool)
    False

However boolean values will behave exactly as you expect them to.

