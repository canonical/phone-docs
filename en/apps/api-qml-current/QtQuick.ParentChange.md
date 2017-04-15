---
Title: QtQuick.ParentChange
---
        
ParentChange
============

<span class="subtitle"></span>
Specifies how to reparent an Item in a state change More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[height](#height-prop)**** : real
-   ****[parent](#parent-prop)**** : Item
-   ****[rotation](#rotation-prop)**** : real
-   ****[scale](#scale-prop)**** : real
-   ****[target](#target-prop)**** : Item
-   ****[width](#width-prop)**** : real
-   ****[x](#x-prop)**** : real
-   ****[y](#y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[ParentChange](index.html) reparents an item while preserving its visual appearance (position, size, rotation, and scale) on screen. You can then specify a transition to move/resize/rotate/scale the item to its final intended appearance.

[ParentChange](index.html) can only preserve visual appearance if no complex transforms are involved. More specifically, it will not work if the transform property has been set for any items involved in the reparenting (i.e. items in the common ancestor tree for the original and new parent).

The example below displays a large red rectangle and a small blue rectangle, side by side. When the `blueRect` is clicked, it changes to the "reparented" state: its parent is changed to `redRect` and it is positioned at (10, 10) within the red rectangle, as specified in the [ParentChange](index.html).

``` qml
import QtQuick 2.0
Item {
    width: 200; height: 100
    Rectangle {
        id: redRect
        width: 100; height: 100
        color: "red"
    }
    Rectangle {
        id: blueRect
        x: redRect.width
        width: 50; height: 50
        color: "blue"
        states: State {
            name: "reparented"
            ParentChange { target: blueRect; parent: redRect; x: 10; y: 10 }
        }
        MouseArea { anchors.fill: parent; onClicked: blueRect.state = "reparented" }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/43e88446-7043-4916-855c-abc09022dc90-api/apps/qml/sdk-15.04.5/QtQuick.ParentChange/images/parentchange.png)

You can specify at which point in a transition you want a [ParentChange](index.html) to occur by using a [ParentAnimation](../QtQuick.ParentAnimation.md).

Note that unlike [PropertyChanges](../QtQuick.PropertyChanges.md), [ParentChange](index.html) expects an Item-based target; it will not work with arbitrary objects (for example, you couldn't use it to reparent a Timer).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="height-prop"></span><span class="name">height</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parent-prop"></span><span class="name">parent</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the new parent for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotation-prop"></span><span class="name">rotation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scale-prop"></span><span class="name">scale</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the item to be reparented

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="width-prop"></span><span class="name">width</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

