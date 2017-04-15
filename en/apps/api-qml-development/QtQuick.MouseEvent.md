---
Title: QtQuick.MouseEvent
---
        
MouseEvent
==========

<span class="subtitle"></span>
Provides information about a mouse event More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[accepted](#accepted-prop)**** : bool
-   ****[button](#button-prop)**** : enumeration
-   ****[buttons](#buttons-prop)**** : int
-   ****[modifiers](#modifiers-prop)**** : int
-   ****[wasHeld](#wasHeld-prop)**** : bool
-   ****[x](#x-prop)**** : int
-   ****[y](#y-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The position of the mouse can be found via the [x](#x-prop) and [y](#y-prop) properties. The button that caused the event is available via the [button](#button-prop) property.

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

Setting *accepted* to true prevents the mouse event from being propagated to items below this item.

Generally, if the item acts on the mouse event then it should be accepted so that items lower in the stacking order do not also respond to the same event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="button-prop"></span><span class="name">button</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the button that caused the event. It can be one of:

-   Qt.LeftButton
-   Qt.RightButton
-   Qt.MiddleButton

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

This property holds the mouse buttons pressed when the event was generated. For mouse move events, this is all buttons that are pressed down. For mouse press and double click events this includes the button that caused the event. For mouse release events this excludes the button that caused the event.

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

For example, to react to a Shift key + Left mouse button click:

``` qml
MouseArea {
    onClicked: {
        if ((mouse.button == Qt.LeftButton) && (mouse.modifiers & Qt.ShiftModifier))
            doSomething();
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="wasHeld-prop"></span><span class="name">wasHeld</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property is true if the mouse button has been held pressed longer the threshold (800ms).

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

These properties hold the coordinates of the position supplied by the mouse event.

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

These properties hold the coordinates of the position supplied by the mouse event.

