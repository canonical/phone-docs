---
Title: QtQuick.Keys
---
        
Keys
====

<span class="subtitle"></span>
Provides key handling to Items More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[enabled](#enabled-prop)**** : bool
-   ****[forwardTo](#forwardTo-prop)**** : list&lt;Object&gt;
-   ****[priority](#priority-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[asteriskPressed](#asteriskPressed-signal)****(KeyEvent *event*)
-   ****[backPressed](#backPressed-signal)****(KeyEvent *event*)
-   ****[backtabPressed](#backtabPressed-signal)****(KeyEvent *event*)
-   ****[callPressed](#callPressed-signal)****(KeyEvent *event*)
-   ****[cancelPressed](#cancelPressed-signal)****(KeyEvent *event*)
-   ****[context1Pressed](#context1Pressed-signal)****(KeyEvent *event*)
-   ****[context2Pressed](#context2Pressed-signal)****(KeyEvent *event*)
-   ****[context3Pressed](#context3Pressed-signal)****(KeyEvent *event*)
-   ****[context4Pressed](#context4Pressed-signal)****(KeyEvent *event*)
-   ****[deletePressed](#deletePressed-signal)****(KeyEvent *event*)
-   ****[digit0Pressed](#digit0Pressed-signal)****(KeyEvent *event*)
-   ****[digit1Pressed](#digit1Pressed-signal)****(KeyEvent *event*)
-   ****[digit2Pressed](#digit2Pressed-signal)****(KeyEvent *event*)
-   ****[digit3Pressed](#digit3Pressed-signal)****(KeyEvent *event*)
-   ****[digit4Pressed](#digit4Pressed-signal)****(KeyEvent *event*)
-   ****[digit5Pressed](#digit5Pressed-signal)****(KeyEvent *event*)
-   ****[digit6Pressed](#digit6Pressed-signal)****(KeyEvent *event*)
-   ****[digit7Pressed](#digit7Pressed-signal)****(KeyEvent *event*)
-   ****[digit8Pressed](#digit8Pressed-signal)****(KeyEvent *event*)
-   ****[digit9Pressed](#digit9Pressed-signal)****(KeyEvent *event*)
-   ****[downPressed](#downPressed-signal)****(KeyEvent *event*)
-   ****[enterPressed](#enterPressed-signal)****(KeyEvent *event*)
-   ****[escapePressed](#escapePressed-signal)****(KeyEvent *event*)
-   ****[flipPressed](#flipPressed-signal)****(KeyEvent *event*)
-   ****[hangupPressed](#hangupPressed-signal)****(KeyEvent *event*)
-   ****[leftPressed](#leftPressed-signal)****(KeyEvent *event*)
-   ****[menuPressed](#menuPressed-signal)****(KeyEvent *event*)
-   ****[noPressed](#noPressed-signal)****(KeyEvent *event*)
-   ****[pressed](#pressed-signal)****(KeyEvent *event*)
-   ****[released](#released-signal)****(KeyEvent *event*)
-   ****[returnPressed](#returnPressed-signal)****(KeyEvent *event*)
-   ****[rightPressed](#rightPressed-signal)****(KeyEvent *event*)
-   ****[selectPressed](#selectPressed-signal)****(KeyEvent *event*)
-   ****[spacePressed](#spacePressed-signal)****(KeyEvent *event*)
-   ****[tabPressed](#tabPressed-signal)****(KeyEvent *event*)
-   ****[upPressed](#upPressed-signal)****(KeyEvent *event*)
-   ****[volumeDownPressed](#volumeDownPressed-signal)****(KeyEvent *event*)
-   ****[volumeUpPressed](#volumeUpPressed-signal)****(KeyEvent *event*)
-   ****[yesPressed](#yesPressed-signal)****(KeyEvent *event*)

<span id="details"></span>
Detailed Description
--------------------

All visual primitives support key handling via the Keys attached property. Keys can be handled via the onPressed and onReleased signal properties.

The signal properties have a [KeyEvent](../QtQuick.KeyEvent.md) parameter, named *event* which contains details of the event. If a key is handled *event.accepted* should be set to true to prevent the event from propagating up the item hierarchy.

<span id="example-usage"></span>
Example Usage
-------------

The following example shows how the general onPressed handler can be used to test for a certain key; in this case, the left cursor key:

``` qml
Item {
    anchors.fill: parent
    focus: true
    Keys.onPressed: {
        if (event.key == Qt.Key_Left) {
            console.log("move left");
            event.accepted = true;
        }
    }
}
```

Some keys may alternatively be handled via specific signal properties, for example *onSelectPressed*. These handlers automatically set *event.accepted* to true.

``` qml
Item {
    anchors.fill: parent
    focus: true
    Keys.onLeftPressed: console.log("move left")
}
```

See Qt.Key for the list of keyboard codes.

<span id="key-handling-priorities"></span>
Key Handling Priorities
-----------------------

The Keys attached property can be configured to handle key events before or after the item it is attached to. This makes it possible to intercept events in order to override an item's default behavior, or act as a fallback for keys not handled by the item.

If [priority](#priority-prop) is Keys.BeforeItem (default) the order of key event processing is:

1.  Items specified in `forwardTo`
2.  specific key handlers, e.g. onReturnPressed
3.  onPressed, onReleased handlers
4.  Item specific key handling, e.g. [TextInput](../QtQuick.TextInput.md) key handling
5.  parent item

If priority is Keys.AfterItem the order of key event processing is:

1.  Item specific key handling, e.g. [TextInput](../QtQuick.TextInput.md) key handling
2.  Items specified in `forwardTo`
3.  specific key handlers, e.g. onReturnPressed
4.  onPressed, onReleased handlers
5.  parent item

If the event is accepted during any of the above steps, key propagation stops.

**See also** [KeyEvent](../QtQuick.KeyEvent.md) and [KeyNavigation attached property](../QtQuick.KeyNavigation.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This flags enables key handling if true (default); otherwise no key handlers will be called.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="forwardTo-prop"></span><span class="name">forwardTo</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property provides a way to forward key presses, key releases, and keyboard input coming from input methods to other items. This can be useful when you want one item to handle some keys (e.g. the up and down arrow keys), and another item to handle other keys (e.g. the left and right arrow keys). Once an item that has been forwarded keys accepts the event it is no longer forwarded to items later in the list.

This example forwards key events to two lists:

``` qml
Item {
    ListView {
        id: list1
        // ...
    }
    ListView {
        id: list2
        // ...
    }
    Keys.forwardTo: [list1, list2]
    focus: true
}
```

To see the order in which events are received when using forwardTo, see [Key Handling Priorities](#key-handling-priorities).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="priority-prop"></span><span class="name">priority</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property determines whether the keys are processed before or after the attached item's own key handling.

-   Keys.BeforeItem (default) - process the key events before normal item key processing. If the event is accepted it will not be passed on to the item.
-   Keys.AfterItem - process the key events after normal item key handling. If the item accepts the key event it will not be handled by the Keys attached property handler.

**See also** [Key Handling Priorities](#key-handling-priorities).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="asteriskPressed-signal"></span><span class="name">asteriskPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Asterisk '\*' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onAsteriskPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backPressed-signal"></span><span class="name">backPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Back key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onBackPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backtabPressed-signal"></span><span class="name">backtabPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Shift+Tab key combination (Backtab) has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onBacktabPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="callPressed-signal"></span><span class="name">callPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Call key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onCallPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelPressed-signal"></span><span class="name">cancelPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Cancel key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onCancelPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="context1Pressed-signal"></span><span class="name">context1Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Context1 key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onContext1Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="context2Pressed-signal"></span><span class="name">context2Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Context2 key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onContext2Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="context3Pressed-signal"></span><span class="name">context3Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Context3 key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onContext3Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="context4Pressed-signal"></span><span class="name">context4Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Context4 key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onContext4Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="deletePressed-signal"></span><span class="name">deletePressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Delete key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDeletePressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digit0Pressed-signal"></span><span class="name">digit0Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the digit '0' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDigit0Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digit1Pressed-signal"></span><span class="name">digit1Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the digit '1' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDigit1Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digit2Pressed-signal"></span><span class="name">digit2Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the digit '2' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDigit2Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digit3Pressed-signal"></span><span class="name">digit3Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the digit '3' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDigit3Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digit4Pressed-signal"></span><span class="name">digit4Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the digit '4' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDigit4Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digit5Pressed-signal"></span><span class="name">digit5Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the digit '5' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDigit5Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digit6Pressed-signal"></span><span class="name">digit6Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the digit '6' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDigit6Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digit7Pressed-signal"></span><span class="name">digit7Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the digit '7' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDigit7Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digit8Pressed-signal"></span><span class="name">digit8Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the digit '8' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDigit8Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="digit9Pressed-signal"></span><span class="name">digit9Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the digit '9' has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDigit9Pressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downPressed-signal"></span><span class="name">downPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Down arrow has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onDownPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enterPressed-signal"></span><span class="name">enterPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Enter key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onEnterPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="escapePressed-signal"></span><span class="name">escapePressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Escape key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onEscapePressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flipPressed-signal"></span><span class="name">flipPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Flip key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onFlipPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hangupPressed-signal"></span><span class="name">hangupPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Hangup key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onHangupPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="leftPressed-signal"></span><span class="name">leftPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Left arrow has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onLeftPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="menuPressed-signal"></span><span class="name">menuPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Menu key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onMenuPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="noPressed-signal"></span><span class="name">noPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the No key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onNoPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-signal"></span><span class="name">pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="released-signal"></span><span class="name">released</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a key has been released. The *event* parameter provides information about the event.

The corresponding handler is `onReleased`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="returnPressed-signal"></span><span class="name">returnPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Return key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onReturnPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rightPressed-signal"></span><span class="name">rightPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Right arrow has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onRightPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectPressed-signal"></span><span class="name">selectPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Select key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onSelectPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spacePressed-signal"></span><span class="name">spacePressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Space key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onSpacePressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tabPressed-signal"></span><span class="name">tabPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Tab key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onTabPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="upPressed-signal"></span><span class="name">upPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Up arrow has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onUpPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="volumeDownPressed-signal"></span><span class="name">volumeDownPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the VolumeDown key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onVolumeDownPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="volumeUpPressed-signal"></span><span class="name">volumeUpPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the VolumeUp key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onVolumeUpPressed`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="yesPressed-signal"></span><span class="name">yesPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Yes key has been pressed. The *event* parameter provides information about the event.

The corresponding handler is `onYesPressed`.

