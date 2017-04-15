---
Title: autopilot.process.Window
---
        
Window
======

 *class* `autopilot.process.``Window`<a href="#Window" class="reference internal"></a><a href="#autopilot.process.Window" class="headerlink" title="Permalink to this definition"></a>  
 `x_id`<a href="#Window.x_id" class="reference internal"></a><a href="#autopilot.process.Window.x_id" class="headerlink" title="Permalink to this definition"></a>  
Get the X11 Window Id.

 `x_win`<a href="#Window.x_win" class="reference internal"></a><a href="#autopilot.process.Window.x_win" class="headerlink" title="Permalink to this definition"></a>  
Get the X11 window object of the underlying window.

 `get_wm_state`<a href="#Window.get_wm_state" class="reference internal"></a><a href="#autopilot.process.Window.get_wm_state" class="headerlink" title="Permalink to this definition"></a>  
Get the state of the underlying window.

 `name`<a href="#Window.name" class="reference internal"></a><a href="#autopilot.process.Window.name" class="headerlink" title="Permalink to this definition"></a>  
Get the window name.

Note

This may change according to the current locale. If you want a unique string to match windows against, use the x\_id instead.

 `title`<a href="#Window.title" class="reference internal"></a><a href="#autopilot.process.Window.title" class="headerlink" title="Permalink to this definition"></a>  
Get the window title.

This may be different from the application name.

Note

This may change depending on the current locale.

 `geometry`<a href="#Window.geometry" class="reference internal"></a><a href="#autopilot.process.Window.geometry" class="headerlink" title="Permalink to this definition"></a>  
Get the geometry for this window.

|          |                                         |
|----------|-----------------------------------------|
| Returns: | Tuple containing (x, y, width, height). |

 `is_maximized`<a href="#Window.is_maximized" class="reference internal"></a><a href="#autopilot.process.Window.is_maximized" class="headerlink" title="Permalink to this definition"></a>  
Is the window maximized?

Maximized in this case means both maximized vertically and horizontally. If a window is only maximized in one direction it is not considered maximized.

 `application`<a href="#Window.application" class="reference internal"></a><a href="#autopilot.process.Window.application" class="headerlink" title="Permalink to this definition"></a>  
Get the application that owns this window.

This method may return None if the window does not have an associated application. The ‘desktop’ window is one such example.

 `user_visible`<a href="#Window.user_visible" class="reference internal"></a><a href="#autopilot.process.Window.user_visible" class="headerlink" title="Permalink to this definition"></a>  
Is this window visible to the user in the switcher?

 `is_hidden`<a href="#Window.is_hidden" class="reference internal"></a><a href="#autopilot.process.Window.is_hidden" class="headerlink" title="Permalink to this definition"></a>  
Is this window hidden?

Windows are hidden when the ‘Show Desktop’ mode is activated.

 `is_focused`<a href="#Window.is_focused" class="reference internal"></a><a href="#autopilot.process.Window.is_focused" class="headerlink" title="Permalink to this definition"></a>  
Is this window focused?

 `is_valid`<a href="#Window.is_valid" class="reference internal"></a><a href="#autopilot.process.Window.is_valid" class="headerlink" title="Permalink to this definition"></a>  
Is this window object valid?

Invalid windows are caused by windows closing during the construction of this object instance.

 `monitor`<a href="#Window.monitor" class="reference internal"></a><a href="#autopilot.process.Window.monitor" class="headerlink" title="Permalink to this definition"></a>  
Returns the monitor to which the windows belongs to

 `closed`<a href="#Window.closed" class="reference internal"></a><a href="#autopilot.process.Window.closed" class="headerlink" title="Permalink to this definition"></a>  
Returns True if the window has been closed

 `close`()<a href="#Window.close" class="reference internal"></a><a href="#autopilot.process.Window.close" class="headerlink" title="Permalink to this definition"></a>  
Close the window.

 `set_focus`()<a href="#Window.set_focus" class="reference internal"></a><a href="#autopilot.process.Window.set_focus" class="headerlink" title="Permalink to this definition"></a>  

