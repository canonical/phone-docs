---
Title: QtQuick.AnimatedSprite
---
        
AnimatedSprite
==============

<span class="subtitle"></span>
Draws a sprite animation More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[currentFrame](#currentFrame-prop)**** : int
-   ****[frameCount](#frameCount-prop)**** : int
-   ****[frameDuration](#frameDuration-prop)**** : int
-   ****[frameHeight](#frameHeight-prop)**** : int
-   ****[frameRate](#frameRate-prop)**** : qreal
-   ****[frameSync](#frameSync-prop)**** : bool
-   ****[frameWidth](#frameWidth-prop)**** : int
-   ****[frameX](#frameX-prop)**** : int
-   ****[frameY](#frameY-prop)**** : int
-   ****[interpolate](#interpolate-prop)**** : bool
-   ****[loops](#loops-prop)**** : int
-   ****[paused](#paused-prop)**** : bool
-   ****[reverse](#reverse-prop)**** : bool
-   ****[running](#running-prop)**** : bool
-   ****[source](#source-prop)**** : url

<span id="methods"></span>
Methods
-------

-   int ****[advance](#advance-method)****()
-   int ****[pause](#pause-method)****()
-   int ****[restart](#restart-method)****()
-   int ****[resume](#resume-method)****()

<span id="details"></span>
Detailed Description
--------------------

[AnimatedSprite](../QtQuick.qtquick-effects-sprites.md#animatedsprite) provides rendering and control over animations which are provided as multiple frames in the same image file. You can play it at a fixed speed, at the frame rate of your display, or manually advance and control the progress.

For details of how a sprite animation is defined see the [Sprite Animations](../QtQuick.qtquick-effects-sprites.md) overview. Note that the [AnimatedSprite](../QtQuick.qtquick-effects-sprites.md#animatedsprite) type does not use Sprite types to define multiple animations, but instead encapsulates a single animation itself.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentFrame-prop"></span><span class="name">currentFrame</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

When paused, the current frame can be advanced manually by setting this property or calling [advance()](#advance-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameCount-prop"></span><span class="name">frameCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Number of frames in this [AnimatedSprite](../QtQuick.qtquick-effects-sprites.md#animatedsprite).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameDuration-prop"></span><span class="name">frameDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Duration of each frame of the animation. Values equal to or below 0 are invalid.

If [frameRate](#frameRate-prop) is valid then it will be used to calculate the duration of the frames. If not, and frameDuration is valid, then frameDuration will be used.

Changing this parameter will restart the animation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameHeight-prop"></span><span class="name">frameHeight</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Height of a single frame in this [AnimatedSprite](../QtQuick.qtquick-effects-sprites.md#animatedsprite).

May be omitted if it is the only sprite in the file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameRate-prop"></span><span class="name">frameRate</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Frames per second to show in the animation. Values equal to or below 0 are invalid.

If frameRate is valid then it will be used to calculate the duration of the frames. If not, and [frameDuration](#frameDuration-prop) is valid , then [frameDuration](#frameDuration-prop) will be used.

Changing this parameter will restart the animation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameSync-prop"></span><span class="name">frameSync</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, then the animation will have no duration. Instead, the animation will advance one frame each time a frame is rendered to the screen. This synchronizes it with the painting rate as opposed to elapsed time.

If frameSync is set to true, it overrides both [frameRate](#frameRate-prop) and [frameDuration](#frameDuration-prop).

Default is false.

Changing this parameter will restart the animation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameWidth-prop"></span><span class="name">frameWidth</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Width of a single frame in this [AnimatedSprite](../QtQuick.qtquick-effects-sprites.md#animatedsprite).

May be omitted if it is the only sprite in the file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameX-prop"></span><span class="name">frameX</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The X coordinate in the image file of the first frame of the [AnimatedSprite](../QtQuick.qtquick-effects-sprites.md#animatedsprite).

May be omitted if the first frame starts in the upper left corner of the file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameY-prop"></span><span class="name">frameY</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The Y coordinate in the image file of the first frame of the [AnimatedSprite](../QtQuick.qtquick-effects-sprites.md#animatedsprite).

May be omitted if the first frame starts in the upper left corner of the file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="interpolate-prop"></span><span class="name">interpolate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, interpolation will occur between sprite frames to make the animation appear smoother.

Default is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loops-prop"></span><span class="name">loops</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

After playing the animation this many times, the animation will automatically stop. Negative values are invalid.

If this is set to [AnimatedSprite](../QtQuick.qtquick-effects-sprites.md#animatedsprite).Infinite the animation will not stop playing on its own.

Default is [AnimatedSprite](../QtQuick.qtquick-effects-sprites.md#animatedsprite).Infinite

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paused-prop"></span><span class="name">paused</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

When paused, the current frame can be advanced manually.

Default is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reverse-prop"></span><span class="name">reverse</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, then the animation will be played in reverse.

Default is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the sprite is animating or not.

Default is true

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

The image source for the animation.

If [frameHeight](#frameHeight-prop) and [frameWidth](#frameWidth-prop) are not specified, it is assumed to be a single long row of square frames. Otherwise, it can be multiple contiguous rows or rectangluar frames, when one row runs out the next will be used.

If [frameX](#frameX-prop) and [frameY](#frameY-prop) are specified, the row of frames will be taken with that x/y coordinate as the upper left corner.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="advance-method"></span><span class="type">int</span> <span class="name">advance</span>()</p></td>
</tr>
</tbody>
</table>

Advances the sprite animation by one frame.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pause-method"></span><span class="type">int</span> <span class="name">pause</span>()</p></td>
</tr>
</tbody>
</table>

Pauses the sprite animation. This does nothing if [paused](#paused-prop) is true.

**See also** [resume()](#resume-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="restart-method"></span><span class="type">int</span> <span class="name">restart</span>()</p></td>
</tr>
</tbody>
</table>

Stops, then starts the sprite animation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resume-method"></span><span class="type">int</span> <span class="name">resume</span>()</p></td>
</tr>
</tbody>
</table>

Resumes the sprite animation if [paused](#paused-prop) is true; otherwise, this does nothing.

**See also** [pause()](#pause-method).

