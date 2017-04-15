---
Title: QtQuick.Sprite
---
        
Sprite
======

<span class="subtitle"></span>
Specifies sprite animations More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[duration](#duration-prop)**** : int
-   ****[durationVariation](#durationVariation-prop)**** : int
-   ****[frameCount](#frameCount-prop)**** : int
-   ****[frameDuration](#frameDuration-prop)**** : int
-   ****[frameDurationVariation](#frameDurationVariation-prop)**** : int
-   ****[frameHeight](#frameHeight-prop)**** : int
-   ****[frameRate](#frameRate-prop)**** : qreal
-   ****[frameRateVariation](#frameRateVariation-prop)**** : qreal
-   ****[frameSync](#frameSync-prop)**** : bool
-   ****[frameWidth](#frameWidth-prop)**** : int
-   ****[frameX](#frameX-prop)**** : int
-   ****[frameY](#frameY-prop)**** : int
-   ****[name](#name-prop)**** : string
-   ****[randomStart](#randomStart-prop)**** : bool
-   ****[reverse](#reverse-prop)**** : bool
-   ****[source](#source-prop)**** : url
-   ****[to](#to-prop)**** : QVariantMap

<span id="details"></span>
Detailed Description
--------------------

QQuickSprite renders sprites of one or more frames and animates them. The sprites can be in the middle of an image file, or split along multiple rows, as long as they form a contiguous line wrapping to the next row of the file from the left edge of the file.

For full details, see the [Sprite Animations](../QtQuick.qtquick-effects-sprites.md) overview.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="duration-prop"></span><span class="name">duration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Duration of the animation. Values below 0 are invalid.

If [frameRate](#frameRate-prop) is valid then it will be used to calculate the duration of the frames. If not, and [frameDuration](#frameDuration-prop) is valid, then [frameDuration](#frameDuration-prop) will be used. Otherwise duration is used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="durationVariation-prop"></span><span class="name">durationVariation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The duration of the animation can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.

durationVariation will only take effect if duration is used to calculate the duration of frames.

Default is 0.

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

Number of frames in this sprite.

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

Duration of each frame of the animation. Values below 0 are invalid.

If [frameRate](#frameRate-prop) is valid then it will be used to calculate the duration of the frames. If not, and frameDuration is valid, then frameDuration will be used. Otherwise duration is used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameDurationVariation-prop"></span><span class="name">frameDurationVariation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The duration of a frame in the animation can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.

frameDurationVariation will only take effect if [frameDuration](#frameDuration-prop) is used to calculate the duration of frames.

Default is 0.

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

Height of a single frame in this sprite.

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

Frames per second to show in the animation. Values below 0 are invalid.

If frameRate is valid then it will be used to calculate the duration of the frames. If not, and [frameDuration](#frameDuration-prop) is valid , then [frameDuration](#frameDuration-prop) will be used. Otherwise duration is used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameRateVariation-prop"></span><span class="name">frameRateVariation</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

The frame rate between animations can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.

frameRateVariation will only take effect if [frameRate](#frameRate-prop) is used to calculate the duration of frames.

Default is 0.

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

If frameSync is set to true, it overrides all of duration, [frameRate](#frameRate-prop) and [frameDuration](#frameDuration-prop).

Default is false.

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

Width of a single frame in this sprite.

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

The X coordinate in the image file of the first frame of the sprite.

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

The Y coordinate in the image file of the first frame of the sprite.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The name of this sprite, for use in the to property of other sprites.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="randomStart-prop"></span><span class="name">randomStart</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, then the animation will start its first animation with a random amount of its duration skipped. This allows them to not look like they all just started when the animation begins.

This only affects the very first animation played. Transitioning to another animation, or the same animation again, will not trigger this.

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
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

The image source for the animation.

If [frameHeight](#frameHeight-prop) and [frameWidth](#frameWidth-prop) are not specified, it is assumed to be a single long row of square frames. Otherwise, it can be multiple contiguous rows or rectangluar frames, when one row runs out the next will be used.

If [frameX](#frameX-prop) and [frameY](#frameY-prop) are specified, the row of frames will be taken with that x/y coordinate as the upper left corner.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">QVariantMap</span></p></td>
</tr>
</tbody>
</table>

A list of other sprites and weighted transitions to them, for example {"a":1, "b":2, "c":0} would specify that one-third should transition to sprite "a" when this sprite is done, and two-thirds should transition to sprite "b" when this sprite is done. As the transitions are chosen randomly, these proportions will not be exact. With "c":0 in the list, no sprites will randomly transition to "c", but it wll be a valid path if a sprite goal is set.

If no list is specified, or the sum of weights in the list is zero, then the sprite will repeat itself after completing.

