---
Title: autopilot.input.Pointer
---
        
Pointer
=======

 *class* `autopilot.input.``Pointer`(*device*)<a href="../../1.5.0/autopilot.input.Pointer.md#Pointer" class="reference internal"></a><a href="#autopilot.input.Pointer" class="headerlink" title="Permalink to this definition"></a>  
A wrapper class that represents a pointing device which can either be a mouse or a touch, and provides a unified API.

This class is useful if you want to run tests with either a mouse or a touch device, and want to write your tests to use a single API. Create this wrapper by passing it either a mouse or a touch device, like so:

    pointer_device = Pointer(Mouse.create())

or, like so:

    pointer_device = Pointer(Touch.create())

Warning

Some operations only make sense for certain devices. This class attempts to minimise the differences between the Mouse and Touch APIs, but there are still some operations that will cause exceptions to be raised. These are documented in the specific methods below.

 `x`<a href="../../1.5.0/autopilot.input.Pointer.md#Pointer.x" class="reference internal"></a><a href="#autopilot.input.Pointer.x" class="headerlink" title="Permalink to this definition"></a>  
Pointer X coordinate.

If the wrapped device is a <a href="../../1.5.0/autopilot.input.Touch.md#autopilot.input.Touch" class="reference internal" title="autopilot.input.Touch"><code class="xref py py-class docutils literal">Touch</code></a> device, this will return the last known X coordinate, which may not be a sensible value.

 `y`<a href="../../1.5.0/autopilot.input.Pointer.md#Pointer.y" class="reference internal"></a><a href="#autopilot.input.Pointer.y" class="headerlink" title="Permalink to this definition"></a>  
Pointer Y coordinate.

If the wrapped device is a <a href="../../1.5.0/autopilot.input.Touch.md#autopilot.input.Touch" class="reference internal" title="autopilot.input.Touch"><code class="xref py py-class docutils literal">Touch</code></a> device, this will return the last known Y coordinate, which may not be a sensible value.

 `press`(*button=1*)<a href="../../1.5.0/autopilot.input.Pointer.md#Pointer.press" class="reference internal"></a><a href="#autopilot.input.Pointer.press" class="headerlink" title="Permalink to this definition"></a>  
Press the pointer at it’s current location.

If the wrapped device is a mouse, you may pass a button specification. If it is a touch device, passing anything other than 1 will raise a ValueError exception.

 `release`(*button=1*)<a href="../../1.5.0/autopilot.input.Pointer.md#Pointer.release" class="reference internal"></a><a href="#autopilot.input.Pointer.release" class="headerlink" title="Permalink to this definition"></a>  
Releases the pointer at it’s current location.

If the wrapped device is a mouse, you may pass a button specification. If it is a touch device, passing anything other than 1 will raise a ValueError exception.

 `click`(*button=1*, *press\_duration=0.1*, *time\_between\_events=0.1*)<a href="../../1.5.0/autopilot.input.Pointer.md#Pointer.click" class="reference internal"></a><a href="#autopilot.input.Pointer.click" class="headerlink" title="Permalink to this definition"></a>  
Press and release at the current pointer location.

If the wrapped device is a mouse, the button specification is used. If it is a touch device, passing anything other than 1 will raise a ValueError exception.

|             |                                                                                                                                                              |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **time\_between\_events** – takes floating point to represent the delay time between subsequent clicks/taps. Default value 0.1 represents tenth of a second. |

 `move`(*x*, *y*)<a href="../../1.5.0/autopilot.input.Pointer.md#Pointer.move" class="reference internal"></a><a href="#autopilot.input.Pointer.move" class="headerlink" title="Permalink to this definition"></a>  
Moves the pointer to the specified coordinates.

If the wrapped device is a mouse, the mouse will animate to the specified coordinates. If the wrapped device is a touch device, this method will determine where the next <a href="../../1.5.0/autopilot.input.Pointer.md#autopilot.input.Pointer.press" class="reference internal" title="autopilot.input.Pointer.press"><code class="xref py py-meth docutils literal">press</code></a>, <a href="../../1.5.0/autopilot.input.Pointer.md#autopilot.input.Pointer.release" class="reference internal" title="autopilot.input.Pointer.release"><code class="xref py py-meth docutils literal">release</code></a> or <a href="../../1.5.0/autopilot.input.Pointer.md#autopilot.input.Pointer.click" class="reference internal" title="autopilot.input.Pointer.click"><code class="xref py py-meth docutils literal">click</code></a> will occur.

 `click_object`(*object\_proxy*, *button=1*, *press\_duration=0.1*, *time\_between\_events=0.1*)<a href="../../1.5.0/autopilot.input.Pointer.md#Pointer.click_object" class="reference internal"></a><a href="#autopilot.input.Pointer.click_object" class="headerlink" title="Permalink to this definition"></a>  
Attempts to move the pointer to ‘object\_proxy’s centre point. and click a button

It does this by looking for several attributes, in order. The first attribute found will be used. The attributes used are (in order):

> -   globalRect (x,y,w,h)
> -   center\_x, center\_y
> -   x, y, w, h

If the wrapped device is a mouse, the button specification is used. If it is a touch device, passing anything other than 1 will raise a ValueError exception.

|             |                                                                                                                                                              |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **time\_between\_events** – takes floating point to represent the delay time between subsequent clicks/taps. Default value 0.1 represents tenth of a second. |

 `move_to_object`(*object\_proxy*)<a href="../../1.5.0/autopilot.input.Pointer.md#Pointer.move_to_object" class="reference internal"></a><a href="#autopilot.input.Pointer.move_to_object" class="headerlink" title="Permalink to this definition"></a>  
Attempts to move the pointer to ‘object\_proxy’s centre point.

It does this by looking for several attributes, in order. The first attribute found will be used. The attributes used are (in order):

> -   globalRect (x,y,w,h)
> -   center\_x, center\_y
> -   x, y, w, h

|         |                                                                                                   |
|---------|---------------------------------------------------------------------------------------------------|
| Raises: | **ValueError** if none of these attributes are found, or if an attribute is of an incorrect type. |

 `position`()<a href="../../1.5.0/autopilot.input.Pointer.md#Pointer.position" class="reference internal"></a><a href="#autopilot.input.Pointer.position" class="headerlink" title="Permalink to this definition"></a>  
Returns the current position of the pointer.

|          |             |
|----------|-------------|
| Returns: | (x,y) tuple |

 `drag`(*x1*, *y1*, *x2*, *y2*, *rate=10*, *time\_between\_events=0.01*)<a href="../../1.5.0/autopilot.input.Pointer.md#Pointer.drag" class="reference internal"></a><a href="#autopilot.input.Pointer.drag" class="headerlink" title="Permalink to this definition"></a>  
Perform a press, move and release.

This is to keep a common API between Mouse and Finger as long as possible.

The pointer will be dragged from the starting point to the ending point with multiple moves. The number of moves, and thus the time that it will take to complete the drag can be altered with the rate parameter.

|             |                                                                                                                                                                               |
|-------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **x1** – The point on the x axis where the drag will start from.                                                                                                          
  -   **y1** – The point on the y axis where the drag will starts from.                                                                                                          
  -   **x2** – The point on the x axis where the drag will end at.                                                                                                               
  -   **y2** – The point on the y axis where the drag will end at.                                                                                                               
  -   **rate** – The number of pixels the mouse will be moved per iteration. Default is 10 pixels. A higher rate will make the drag faster, and lower rate will make it slower.  
  -   **time\_between\_events** – The number of seconds that the drag will wait between iterations.                                                                              |

