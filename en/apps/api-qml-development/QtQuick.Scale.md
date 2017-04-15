---
Title: QtQuick.Scale
---
        
Scale
=====

<span class="subtitle"></span>
Provides a way to scale an Item More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[origin](#origin-prop)****
    -   ****[origin.x](#origin.x-prop)**** : real
    -   ****[origin.y](#origin.y-prop)**** : real
-   ****[xScale](#xScale-prop)**** : real
-   ****[yScale](#yScale-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The Scale type provides a way to scale an [Item](../QtQuick.Item.md) through a scale-type transform.

It allows different scaling values for the x and y axes, and allows the scale to be relative to an arbitrary point. This gives more control over item scaling than the [scale](../QtQuick.Item.md#scale-prop) property.

The following example scales the X axis of the Rectangle, relative to its interior point (25, 25):

``` qml
Rectangle {
    width: 100; height: 100
    color: "blue"
    transform: Scale { origin.x: 25; origin.y: 25; xScale: 3}
}
```

**See also** [Rotation](../QtQuick.Rotation.md) and [Translate](../QtQuick.Translate.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="origin-prop"></span><strong>origin group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="origin.x-prop"></span><span class="name">origin.x</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="origin.y-prop"></span><span class="name">origin.y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the point that the item is scaled from (that is, the point that stays fixed relative to the parent as the rest of the item grows).

The default value of the origin is (0, 0).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="xScale-prop"></span><span class="name">xScale</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The scaling factor for the X axis.

The default value is 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="yScale-prop"></span><span class="name">yScale</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The scaling factor for the Y axis.

The default value is 1.0.

