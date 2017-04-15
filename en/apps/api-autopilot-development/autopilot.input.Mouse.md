---
Title: autopilot.input.Mouse
---
        
Mouse
=====

 *class* `autopilot.input.``Mouse`<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse" class="reference internal"></a><a href="#autopilot.input.Mouse" class="headerlink" title="Permalink to this definition"></a>  
A simple mouse device class.

The mouse class is used to generate mouse events while in an autopilot test. This class should not be instantiated directly however. To get an instance of the mouse class, call <a href="../../1.5.0/autopilot.input.Mouse.md#autopilot.input.Mouse.create" class="reference internal" title="autopilot.input.Mouse.create"><code class="xref py py-meth docutils literal">create</code></a> instead.

For example, to create a mouse object and click at (100,50):

    mouse = Mouse.create()
    mouse.move(100, 50)
    mouse.click()

 *static* `create`(*preferred\_backend=''*)<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse.create" class="reference internal"></a><a href="#autopilot.input.Mouse.create" class="headerlink" title="Permalink to this definition"></a>  
Get an instance of the <a href="../../1.5.0/autopilot.input.Mouse.md#autopilot.input.Mouse" class="reference internal" title="autopilot.input.Mouse"><code class="xref py py-class docutils literal">Mouse</code></a> class.

For more infomration on picking specific backends, see <a href="../../1.5.0/tutorial-advanced_autopilot.md#tut-picking-backends" class="reference internal"><em>Advanced Backend Picking</em></a>

|             |                                                                                                                    |
|-------------|--------------------------------------------------------------------------------------------------------------------|
| Parameters: | **preferred\_backend** –                                                                                           
  A string containing a hint as to which backend you would like. Possible backends are:                               
                                                                                                                      
  -   `X11` - Generate mouse events using the X11 client libraries.                                                   |
| Raises:     | RuntimeError if autopilot cannot instantate any of the possible backends.                                          |
| Raises:     | RuntimeError if the preferred\_backend is specified and is not one of the possible backends for this device class. |
| Raises:     | `BackendException` if the preferred\_backend is set, but that backend could not be instantiated.                   |

 `x`<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse.x" class="reference internal"></a><a href="#autopilot.input.Mouse.x" class="headerlink" title="Permalink to this definition"></a>  
Mouse position X coordinate.

 `y`<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse.y" class="reference internal"></a><a href="#autopilot.input.Mouse.y" class="headerlink" title="Permalink to this definition"></a>  
Mouse position Y coordinate.

 `press`(*button=1*)<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse.press" class="reference internal"></a><a href="#autopilot.input.Mouse.press" class="headerlink" title="Permalink to this definition"></a>  
Press mouse button at current mouse location.

 `release`(*button=1*)<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse.release" class="reference internal"></a><a href="#autopilot.input.Mouse.release" class="headerlink" title="Permalink to this definition"></a>  
Releases mouse button at current mouse location.

 `click`(*button=1*, *press\_duration=0.1*, *time\_between\_events=0.1*)<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse.click" class="reference internal"></a><a href="#autopilot.input.Mouse.click" class="headerlink" title="Permalink to this definition"></a>  
Click mouse at current location.

|             |                                                                                                                                                         |
|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **time\_between\_events** – takes floating point to represent the delay time between subsequent clicks. Default value 0.1 represents tenth of a second. |

 `click_object`(*object\_proxy*, *button=1*, *press\_duration=0.1*, *time\_between\_events=0.1*)<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse.click_object" class="reference internal"></a><a href="#autopilot.input.Mouse.click_object" class="headerlink" title="Permalink to this definition"></a>  
Click the center point of a given object.

It does this by looking for several attributes, in order. The first attribute found will be used. The attributes used are (in order):

> -   globalRect (x,y,w,h)
> -   center\_x, center\_y
> -   x, y, w, h

|             |                                                                                                                                                         |
|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **time\_between\_events** – takes floating point to represent the delay time between subsequent clicks. Default value 0.1 represents tenth of a second. |
| Raises:     | **ValueError** if none of these attributes are found, or if an attribute is of an incorrect type.                                                       |

 `move`(*x*, *y*, *animate=True*, *rate=10*, *time\_between\_events=0.01*)<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse.move" class="reference internal"></a><a href="#autopilot.input.Mouse.move" class="headerlink" title="Permalink to this definition"></a>  
Moves mouse to location (x,y).

Callers should avoid specifying the *rate* or *time\_between\_events* parameters unless they need a specific rate of movement.

 `move_to_object`(*object\_proxy*)<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse.move_to_object" class="reference internal"></a><a href="#autopilot.input.Mouse.move_to_object" class="headerlink" title="Permalink to this definition"></a>  
Attempts to move the mouse to ‘object\_proxy’s centre point.

It does this by looking for several attributes, in order. The first attribute found will be used. The attributes used are (in order):

> -   globalRect (x,y,w,h)
> -   center\_x, center\_y
> -   x, y, w, h

|         |                                                                                                   |
|---------|---------------------------------------------------------------------------------------------------|
| Raises: | **ValueError** if none of these attributes are found, or if an attribute is of an incorrect type. |

 `position`()<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse.position" class="reference internal"></a><a href="#autopilot.input.Mouse.position" class="headerlink" title="Permalink to this definition"></a>  
Returns the current position of the mouse pointer.

|          |             |
|----------|-------------|
| Returns: | (x,y) tuple |

 `drag`(*x1*, *y1*, *x2*, *y2*, *rate=10*, *time\_between\_events=0.01*)<a href="../../1.5.0/autopilot.input.Mouse.md#Mouse.drag" class="reference internal"></a><a href="#autopilot.input.Mouse.drag" class="headerlink" title="Permalink to this definition"></a>  
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

 `on_test_end`(*\*args*)<a href="#autopilot.input.Mouse.on_test_end" class="headerlink" title="Permalink to this definition"></a>  

 `on_test_start`(*\*args*)<a href="#autopilot.input.Mouse.on_test_start" class="headerlink" title="Permalink to this definition"></a>  

