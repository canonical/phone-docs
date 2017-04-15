---
Title: autopilot.gestures
---
        
<span id="autopilot-gestures-gestural-and-multi-touch-support"></span>
Gestural support for autopilot.

This module contains functions that can generate touch and multi-touch gestures for you. This is a convenience for the test author - there is nothing to prevent you from generating your own gestures!

 `autopilot.gestures.``pinch`(*center*, *vector\_start*, *vector\_end*)<a href="#autopilot.gestures.pinch" class="headerlink" title="Permalink to this definition"></a>  
Perform a two finger pinch (zoom) gesture.

|             |                                                                                      |
|-------------|--------------------------------------------------------------------------------------|
| Parameters: | -   **center** – The coordinates (x,y) of the center of the pinch gesture.           
  -   **vector\_start** – The (x,y) values to move away from the center for the start.  
  -   **vector\_end** – The (x,y) values to move away from the center for the end.      |

The fingers will move in 100 steps between the start and the end points. If start is smaller than end, the gesture will zoom in, otherwise it will zoom out.

