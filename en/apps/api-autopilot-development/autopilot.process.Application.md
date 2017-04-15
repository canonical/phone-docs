---
Title: autopilot.process.Application
---
        
Application
===========

 *class* `autopilot.process.``Application`<a href="#Application" class="reference internal"></a><a href="#autopilot.process.Application" class="headerlink" title="Permalink to this definition"></a>  
 `desktop_file`<a href="#Application.desktop_file" class="reference internal"></a><a href="#autopilot.process.Application.desktop_file" class="headerlink" title="Permalink to this definition"></a>  
Get the application desktop file.

This returns just the filename, not the full path. If the application no longer exists, this returns an empty string.

 `name`<a href="#Application.name" class="reference internal"></a><a href="#autopilot.process.Application.name" class="headerlink" title="Permalink to this definition"></a>  
Get the application name.

Note

This may change according to the current locale. If you want a unique string to match applications against, use desktop\_file instead.

 `icon`<a href="#Application.icon" class="reference internal"></a><a href="#autopilot.process.Application.icon" class="headerlink" title="Permalink to this definition"></a>  
Get the application icon.

|          |                       |
|----------|-----------------------|
| Returns: | The name of the icon. |

 `is_active`<a href="#Application.is_active" class="reference internal"></a><a href="#autopilot.process.Application.is_active" class="headerlink" title="Permalink to this definition"></a>  
Is the application active (i.e. has keyboard focus)?

 `is_urgent`<a href="#Application.is_urgent" class="reference internal"></a><a href="#autopilot.process.Application.is_urgent" class="headerlink" title="Permalink to this definition"></a>  
Is the application currently signalling urgency?

 `user_visible`<a href="#Application.user_visible" class="reference internal"></a><a href="#autopilot.process.Application.user_visible" class="headerlink" title="Permalink to this definition"></a>  
Is this application visible to the user?

Note

Some applications (such as the panel) are hidden to the user but may still be returned.

 `get_windows`()<a href="#Application.get_windows" class="reference internal"></a><a href="#autopilot.process.Application.get_windows" class="headerlink" title="Permalink to this definition"></a>  
Get a list of the application windows.

