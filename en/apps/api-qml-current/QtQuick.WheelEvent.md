---
Title: QtQuick.WheelEvent
---
        
WheelEvent
==========

<span class="subtitle"></span>
Provides information about a mouse wheel event More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[accepted](#accepted-prop)**** : bool
-   ****[angleDelta](#angleDelta-prop)**** : point
-   ****[buttons](#buttons-prop)**** : int
-   ****[modifiers](#modifiers-prop)**** : int
-   ****[pixelDelta](#pixelDelta-prop)**** : point
-   ****[x](#x-prop)**** : int
-   ****[y](#y-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The position of the mouse can be found via the [x](#x-prop) and [y](#y-prop) properties.

**See also** [MouseArea](../QtQuick.MouseArea.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accepted-prop"></span><span class="name">accepted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Setting *accepted* to true prevents the wheel event from being propagated to items below this item.

Generally, if the item acts on the wheel event then it should be accepted so that items lower in the stacking order do not also respond to the same event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="angleDelta-prop"></span><span class="name">angleDelta</span> : <span class="type">point</span></p></td>
</tr>
</tbody>
</table>

This property holds the distance that the wheel is rotated in wheel degrees. The x and y cordinate of this property holds the delta in horizontal and vertical orientation.

A positive value indicates that the wheel was rotated up/right; a negative value indicates that the wheel was rotated down/left.

Most mouse types work in steps of 15 degrees, in which case the delta value is a multiple of 120; i.e., 120 units \* 1/8 = 15 degrees.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="buttons-prop"></span><span class="name">buttons</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the mouse buttons pressed when the wheel event was generated.

It contains a bitwise combination of:

-   Qt.LeftButton
-   Qt.RightButton
-   Qt.MiddleButton

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modifiers-prop"></span><span class="name">modifiers</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the keyboard modifier flags that existed immediately before the event occurred.

It contains a bitwise combination of:

-   Qt.NoModifier - No modifier key is pressed.
-   Qt.ShiftModifier - A Shift key on the keyboard is pressed.
-   Qt.ControlModifier - A Ctrl key on the keyboard is pressed.
-   Qt.AltModifier - An Alt key on the keyboard is pressed.
-   Qt.MetaModifier - A Meta key on the keyboard is pressed.
-   Qt.KeypadModifier - A keypad button is pressed.

For example, to react to a Control key pressed during the wheel event:

``` qml
MouseArea {
    onWheel: {
        if (wheel.modifiers & Qt.ControlModifier) {
            if (wheel.angleDelta.y > 0)
                zoomIn();
            else
                zoomOut();
        }
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pixelDelta-prop"></span><span class="name">pixelDelta</span> : <span class="type">point</span></p></td>
</tr>
</tbody>
</table>

This property holds the delta in screen pixels and is available in plataforms that have high-resolution trackpads, such as Mac OS X. The x and y cordinate of this property holds the delta in horizontal and vertical orientation. The value should be used directly to scroll content on screen.

For platforms without high-resolution trackpad support, pixelDelta will always be (0,0), and [angleDelta](#angleDelta-prop) should be used instead.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

These properties hold the coordinates of the position supplied by the wheel event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

These properties hold the coordinates of the position supplied by the wheel event.

