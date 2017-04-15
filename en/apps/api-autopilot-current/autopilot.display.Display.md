---
Title: autopilot.display.Display
---
        
Display
=======

 *class* `autopilot.display.``Display`<a href="#Display" class="reference internal"></a><a href="#autopilot.display.Display" class="headerlink" title="Permalink to this definition"></a>  
The base class/inteface for the display devices.

 *static* `create`(*preferred\_backend=''*)<a href="#Display.create" class="reference internal"></a><a href="#autopilot.display.Display.create" class="headerlink" title="Permalink to this definition"></a>  
Get an instance of the Display class.

For more infomration on picking specific backends, see <a href="../tutorial-advanced_autopilot.md#tut-picking-backends" class="reference internal"><em>Advanced Backend Picking</em></a>

|             |                                                                                                                    |
|-------------|--------------------------------------------------------------------------------------------------------------------|
| Parameters: | **preferred\_backend** –                                                                                           
  A string containing a hint as to which backend you would like.                                                      
                                                                                                                      
  possible backends are:                                                                                              
                                                                                                                      
  -   `X11` - Get display information from X11.                                                                       
  -   `UPA` - Get display information from the ubuntu platform API.                                                   |
| Raises:     | RuntimeError if autopilot cannot instantate any of the possible backends.                                          |
| Raises:     | RuntimeError if the preferred\_backend is specified and is not one of the possible backends for this device class. |
| Raises:     | `BackendException` if the preferred\_backend is set, but that backend could not be instantiated.                   |
| Returns:    | Instance of Display with appropriate backend.                                                                      |

 *exception* `BlacklistedDriverError`<a href="#Display.BlacklistedDriverError" class="reference internal"></a><a href="#autopilot.display.Display.BlacklistedDriverError" class="headerlink" title="Permalink to this definition"></a>  
Cannot set primary monitor when running drivers listed in the driver blacklist.

 `Display.``get_num_screens`()<a href="#Display.get_num_screens" class="reference internal"></a><a href="#autopilot.display.Display.get_num_screens" class="headerlink" title="Permalink to this definition"></a>  
Get the number of screens attached to the PC.

 `Display.``get_primary_screen`()<a href="#Display.get_primary_screen" class="reference internal"></a><a href="#autopilot.display.Display.get_primary_screen" class="headerlink" title="Permalink to this definition"></a>  

 `Display.``get_screen_width`(*screen\_number=0*)<a href="#Display.get_screen_width" class="reference internal"></a><a href="#autopilot.display.Display.get_screen_width" class="headerlink" title="Permalink to this definition"></a>  

 `Display.``get_screen_height`(*screen\_number=0*)<a href="#Display.get_screen_height" class="reference internal"></a><a href="#autopilot.display.Display.get_screen_height" class="headerlink" title="Permalink to this definition"></a>  

 `Display.``get_screen_geometry`(*monitor\_number*)<a href="#Display.get_screen_geometry" class="reference internal"></a><a href="#autopilot.display.Display.get_screen_geometry" class="headerlink" title="Permalink to this definition"></a>  
Get the geometry for a particular monitor.

|          |                                         |
|----------|-----------------------------------------|
| Returns: | Tuple containing (x, y, width, height). |

<!-- -->

 `autopilot.display.``get_screenshot_data`(*display\_type*)<a href="#autopilot.display.get_screenshot_data" class="headerlink" title="Permalink to this definition"></a>  
Return a BytesIO object of the png data for the screenshot image.

*display\_type* is the display server type. supported values are:  
-   “X11”
-   “MIR”

|         |                                                                                            |
|---------|--------------------------------------------------------------------------------------------|
| Raises: | -   **RuntimeError** – If attempting to capture an image on an unsupported display server. 
  -   **RuntimeError** – If saving image data to file-object fails.                           |

