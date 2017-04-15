---
Title: autopilot.input.Touch
---
        
Touch
=====

 *class* `autopilot.input.``Touch`<a href="#Touch" class="reference internal"></a><a href="#autopilot.input.Touch" class="headerlink" title="Permalink to this definition"></a>  
A simple touch driver class.

This class can be used for any touch events that require a single active touch at once. If you want to do complex gestures (including multi-touch gestures), look at the `autopilot.gestures` module.

 *static* `create`(*preferred\_backend=''*)<a href="#Touch.create" class="reference internal"></a><a href="#autopilot.input.Touch.create" class="headerlink" title="Permalink to this definition"></a>  
Get an instance of the <a href="#autopilot.input.Touch" class="reference internal" title="autopilot.input.Touch"><code class="xref py py-class docutils literal">Touch</code></a> class.

|             |                                                                                                                                                                                                                                    |
|-------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **preferred\_backend** –                                                                                                                                                                                                           
  A string containing a hint as to which backend you would like. If left blank, autopilot will pick a suitable backend for you. Specifying a backend will guarantee that either that backend is returned, or an exception is raised.  
                                                                                                                                                                                                                                      
  possible backends are:                                                                                                                                                                                                              
                                                                                                                                                                                                                                      
  -   `UInput` - Use UInput kernel-level device driver.                                                                                                                                                                               |
| Raises:     | RuntimeError if autopilot cannot instantate any of the possible backends.                                                                                                                                                          |
| Raises:     | RuntimeError if the preferred\_backend is specified and is not one of the possible backends for this device class.                                                                                                                 |
| Raises:     | `BackendException` if the preferred\_backend is set, but that backend could not be instantiated.                                                                                                                                   |

 `pressed`<a href="#Touch.pressed" class="reference internal"></a><a href="#autopilot.input.Touch.pressed" class="headerlink" title="Permalink to this definition"></a>  
Return True if this touch is currently in use (i.e.- pressed on the ‘screen’).

 `tap`(*x*, *y*, *press\_duration=0.1*, *time\_between\_events=0.1*)<a href="#Touch.tap" class="reference internal"></a><a href="#autopilot.input.Touch.tap" class="headerlink" title="Permalink to this definition"></a>  
Click (or ‘tap’) at given x,y coordinates.

|             |                                                                                                                                                       |
|-------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **time\_between\_events** – takes floating point to represent the delay time between subsequent taps. Default value 0.1 represents tenth of a second. |

 `tap_object`(*object*, *press\_duration=0.1*, *time\_between\_events=0.1*)<a href="#Touch.tap_object" class="reference internal"></a><a href="#autopilot.input.Touch.tap_object" class="headerlink" title="Permalink to this definition"></a>  
Tap the center point of a given object.

It does this by looking for several attributes, in order. The first attribute found will be used. The attributes used are (in order):

> -   globalRect (x,y,w,h)
> -   center\_x, center\_y
> -   x, y, w, h

|             |                                                                                                                                                       |
|-------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | **time\_between\_events** – takes floating point to represent the delay time between subsequent taps. Default value 0.1 represents tenth of a second. |
| Raises:     | **ValueError** if none of these attributes are found, or if an attribute is of an incorrect type.                                                     |

 `press`(*x*, *y*)<a href="#Touch.press" class="reference internal"></a><a href="#autopilot.input.Touch.press" class="headerlink" title="Permalink to this definition"></a>  
Press and hold at the given x,y coordinates.

 `move`(*x*, *y*)<a href="#Touch.move" class="reference internal"></a><a href="#autopilot.input.Touch.move" class="headerlink" title="Permalink to this definition"></a>  
Move the pointer coords to (x,y).

Note

The touch ‘finger’ must be pressed for a call to this method to be successful. (see <a href="#autopilot.input.Touch.press" class="reference internal" title="autopilot.input.Touch.press"><code class="xref py py-meth docutils literal">press</code></a> for further details on touch presses.)

|         |                                                                  |
|---------|------------------------------------------------------------------|
| Raises: | **RuntimeError** if called and the touch ‘finger’ isn’t pressed. |

 `release`()<a href="#Touch.release" class="reference internal"></a><a href="#autopilot.input.Touch.release" class="headerlink" title="Permalink to this definition"></a>  
Release a previously pressed finger

 `drag`(*x1*, *y1*, *x2*, *y2*, *rate=10*, *time\_between\_events=0.01*)<a href="#Touch.drag" class="reference internal"></a><a href="#autopilot.input.Touch.drag" class="headerlink" title="Permalink to this definition"></a>  
Perform a drag gesture.

The finger will be dragged from the starting point to the ending point with multiple moves. The number of moves, and thus the time that it will take to complete the drag can be altered with the rate parameter.

|             |                                                                                                                                                                                |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **x1** – The point on the x axis where the drag will start from.                                                                                                           
  -   **y1** – The point on the y axis where the drag will starts from.                                                                                                           
  -   **x2** – The point on the x axis where the drag will end at.                                                                                                                
  -   **y2** – The point on the y axis where the drag will end at.                                                                                                                
  -   **rate** – The number of pixels the finger will be moved per iteration. Default is 10 pixels. A higher rate will make the drag faster, and lower rate will make it slower.  
  -   **time\_between\_events** – The number of seconds that the drag will wait between iterations.                                                                               |
| Raises:     | -   **RuntimeError** – if the finger is already pressed.                                                                                                                       
  -   **RuntimeError** – if no more finger slots are available.                                                                                                                   |

