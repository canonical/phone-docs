---
Title: QtQuick.Positioner
---
        
Positioner
==========

<span class="subtitle"></span>
Provides attached properties that contain details on where an item exists in a positioner More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[index](#index-attached-prop)**** : int
-   ****[isFirstItem](#isFirstItem-attached-prop)**** : bool
-   ****[isLastItem](#isLastItem-attached-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

An object of type Positioner is attached to the top-level child item within a Column, Row, Flow or Grid. It provides properties that allow a child item to determine where it exists within the layout of its parent Column, Row, Flow or Grid.

For example, below is a [Grid](../QtQuick.qtquick-positioning-layouts.md#grid) with 16 child rectangles, as created through a [Repeater](../QtQuick.Repeater.md). Each [Rectangle](../QtQuick.Rectangle.md) displays its index in the Grid using [Positioner.index](#index-attached-prop), and the first item is colored differently by taking [Positioner.isFirstItem](#isFirstItem-attached-prop) into account:

``` cpp
Grid {
    Repeater {
        model: 16
        Rectangle {
            id: rect
            width: 30; height: 30
            border.width: 1
            color: Positioner.isFirstItem ? "yellow" : "lightsteelblue"
            Text { text: rect.Positioner.index }
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/3a7f04b4-e553-4e35-8797-9bdf1fbe29ef-api/apps/qml/sdk-15.04.5/QtQuick.Positioner/images/positioner-example.png)

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="index-attached-prop"></span><span class="name">Positioner.index</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property allows the item to determine its index within the positioner.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isFirstItem-attached-prop"></span><span class="name">Positioner.isFirstItem</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties allow the item to determine if it is the first or last item in the positioner, respectively.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isLastItem-attached-prop"></span><span class="name">Positioner.isLastItem</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties allow the item to determine if it is the first or last item in the positioner, respectively.

