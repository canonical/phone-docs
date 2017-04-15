---
Title: QtQuick.KeyEvent
---
        
KeyEvent
========

<span class="subtitle"></span>
Provides information about a key event More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[accepted](#accepted-prop)**** : bool
-   ****[count](#count-prop)**** : int
-   ****[isAutoRepeat](#isAutoRepeat-prop)**** : bool
-   ****[key](#key-prop)**** : int
-   ****[modifiers](#modifiers-prop)**** : int
-   ****[nativeScanCode](#nativeScanCode-prop)**** : quint32
-   ****[text](#text-prop)**** : string

<span id="methods"></span>
Methods
-------

-   bool ****[matches](#matches-method)****(StandardKey *key*)

<span id="details"></span>
Detailed Description
--------------------

For example, the following changes the Item's state property when the Enter key is pressed:

``` qml
Item {
    focus: true
    Keys.onPressed: { if (event.key == Qt.Key_Enter) state = 'ShowDetails'; }
}
```

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

Setting *accepted* to true prevents the key event from being propagated to the item's parent.

Generally, if the item acts on the key event then it should be accepted so that ancestor items do not also respond to the same event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of keys involved in this event. If [KeyEvent::text](#text-prop) is not empty, this is simply the length of the string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isAutoRepeat-prop"></span><span class="name">isAutoRepeat</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this event comes from an auto-repeating key.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="key-prop"></span><span class="name">key</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the code of the key that was pressed or released.

See Qt.Key for the list of keyboard codes. These codes are independent of the underlying window system. Note that this function does not distinguish between capital and non-capital letters; use the [text](#text-prop) property for this purpose.

A value of either 0 or Qt.Key\_Unknown means that the event is not the result of a known key; for example, it may be the result of a compose sequence, a keyboard macro, or due to key event compression.

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

For example, to react to a Shift key + Enter key combination:

``` qml
Item {
    focus: true
    Keys.onPressed: {
        if ((event.key == Qt.Key_Enter) && (event.modifiers & Qt.ShiftModifier))
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
<td><p><span id="nativeScanCode-prop"></span><span class="name">nativeScanCode</span> : <span class="type">quint32</span></p></td>
</tr>
</tbody>
</table>

This property contains the native scan code of the key that was pressed. It is passed through from QKeyEvent unchanged.

**See also** QKeyEvent::nativeScanCode().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the Unicode text that the key generated. The text returned can be an empty string in cases where modifier keys, such as Shift, Control, Alt, and Meta, are being pressed or released. In such cases `key` will contain a valid value

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="matches-method"></span><span class="type">bool</span> <span class="name">matches</span>(<span class="type">StandardKey</span> <em>key</em>)</p></td>
</tr>
</tbody>
</table>

Returns `true` if the key event matches the given standard *key*; otherwise returns `false`.

``` qml
Item {
    focus: true
    Keys.onPressed: {
        if (event.matches(StandardKey.Undo))
            myModel.undo();
        else if (event.matches(StandardKey.Redo))
            myModel.redo();
    }
}
```

This QML method was introduced in Qt 5.2.

**See also** QKeySequence::StandardKey.

