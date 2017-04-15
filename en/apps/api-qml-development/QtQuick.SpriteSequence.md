---
Title: QtQuick.SpriteSequence
---
        
SpriteSequence
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

-   ****[currentSprite](#currentSprite-prop)**** : string
-   ****[goalSprite](#goalSprite-prop)**** : string
-   ****[interpolate](#interpolate-prop)**** : bool
-   ****[running](#running-prop)**** : bool
-   ****[sprites](#sprites-prop)**** : list&lt;Sprite&gt;

<span id="methods"></span>
Methods
-------

-   ****[jumpTo](#jumpTo-method)****(string *sprite*)

<span id="details"></span>
Detailed Description
--------------------

[SpriteSequence](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#spritesequence) renders and controls a list of animations defined by [Sprite](../QtQuick.Sprite.md) types.

For full details, see the [Sprite Animations](../QtQuick.qtquick-effects-sprites.md) overview.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentSprite-prop"></span><span class="name">currentSprite</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The name of the Sprite which is currently animating.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="goalSprite-prop"></span><span class="name">goalSprite</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The name of the Sprite which the animation should move to.

Sprite states have defined durations and transitions between them, setting goalState will cause it to disregard any path weightings (including 0) and head down the path which will reach the goalState quickest (fewest animations). It will pass through intermediate states on that path, and animate them for their duration.

If it is possible to return to the goalState from the starting point of the goalState it will continue to do so until goalState is set to "" or an unreachable state.

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
<td><p><span id="sprites-prop"></span><span class="name">sprites</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The sprite or sprites to draw. Sprites will be scaled to the size of this item.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="jumpTo-method"></span><span class="name">jumpTo</span>(<span class="type">string</span> <em>sprite</em>)</p></td>
</tr>
</tbody>
</table>

This function causes the [SpriteSequence](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#spritesequence) to jump to the specified sprite immediately, intermediate sprites are not played. The *sprite* argument is the name of the sprite you wish to jump to.

