---
Title: autopilot.platform
---
        
<span id="autopilot-platform-functions-for-platform-detection"></span>
 `autopilot.platform.``model`()<a href="#autopilot.platform.model" class="headerlink" title="Permalink to this definition"></a>  
Get the model name of the current platform.

For desktop / laptop installations, this will return “Desktop”. Otherwise, the current hardware model will be returned. For example:

    platform.model()

    ... "Galaxy Nexus"

<!-- -->

 `autopilot.platform.``image_codename`()<a href="#autopilot.platform.image_codename" class="headerlink" title="Permalink to this definition"></a>  
Get the image codename.

For desktop / laptop installations this will return “Desktop”. Otherwise, the codename of the image that was installed will be returned. For example:

platform.image\_codename()

... “maguro”

<!-- -->

 `autopilot.platform.``is_tablet`()<a href="#autopilot.platform.is_tablet" class="headerlink" title="Permalink to this definition"></a>  
Indicate whether system is a tablet.

The ‘ro.build.characteristics’ property is checked for ‘tablet’. For example:

platform.tablet()

... True

|          |                                             |
|----------|---------------------------------------------|
| Returns: | boolean indicating whether this is a tablet |

<!-- -->

 `autopilot.platform.``get_display_server`()<a href="#autopilot.platform.get_display_server" class="headerlink" title="Permalink to this definition"></a>  
Returns display server type.

|          |                                                                         |
|----------|-------------------------------------------------------------------------|
| Returns: | string indicating display server type. Either “X11”, “MIR” or “UNKNOWN” |

