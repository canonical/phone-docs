---
Title: autopilot.display
---
        
<span id="autopilot-display-get-information-about-the-current-display-s"></span>
The display module contaions support for getting screen information.

 `autopilot.display.``is_rect_on_screen`(*screen\_number*, *rect*)<a href="#autopilot.display.is_rect_on_screen" class="headerlink" title="Permalink to this definition"></a>  
Return True if *rect* is **entirely** on the specified screen, with no overlap.

<!-- -->

 `autopilot.display.``is_point_on_screen`(*screen\_number*, *point*)<a href="#autopilot.display.is_point_on_screen" class="headerlink" title="Permalink to this definition"></a>  
Return True if *point* is on the specified screen.

*point* must be an iterable type with two elements: (x, y)

<!-- -->

 `autopilot.display.``is_point_on_any_screen`(*point*)<a href="#autopilot.display.is_point_on_any_screen" class="headerlink" title="Permalink to this definition"></a>  
Return true if *point* is on any currently configured screen.

<!-- -->

 `autopilot.display.``move_mouse_to_screen`(*screen\_number*)<a href="#autopilot.display.move_mouse_to_screen" class="headerlink" title="Permalink to this definition"></a>  
Move the mouse to the center of the specified screen.

### Elements

[Display](../autopilot.display.Display.md)  
The base class/inteface for the display devices.

