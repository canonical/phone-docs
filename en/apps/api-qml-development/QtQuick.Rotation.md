---
Title: QtQuick.Rotation
---
        
Rotation
========

<span class="subtitle"></span>
Provides a way to rotate an Item More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[angle](#angle-prop)**** : real
-   ****[axis](#axis-prop)****
    -   ****[axis.x](#axis.x-prop)**** : real
    -   ****[axis.y](#axis.y-prop)**** : real
    -   ****[axis.z](#axis.z-prop)**** : real
-   ****[origin](#origin-prop)****
    -   ****[origin.x](#origin.x-prop)**** : real
    -   ****[origin.y](#origin.y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The Rotation type provides a way to rotate an [Item](../QtQuick.Item.md) through a rotation-type transform.

It allows (z axis) rotation to be relative to an arbitrary point, and also provides a way to specify 3D-like rotations for Items. This gives more control over item rotation than the [rotation](../QtQuick.Item.md#rotation-prop) property.

The following example rotates a Rectangle around its interior point (25, 25):

``` qml
Rectangle {
    width: 100; height: 100
    color: "blue"
    transform: Rotation { origin.x: 25; origin.y: 25; angle: 45}
}
```

For 3D-like item rotations, you must specify the axis of rotation in addition to the origin point. The following example shows various 3D-like rotations applied to an [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image).

``` qml
import QtQuick 2.0
Row {
    x: 10; y: 10
    spacing: 10
    Image { source: "pics/qt.png" }
    Image {
        source: "pics/qt.png"
        transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 18 }
    }
    Image {
        source: "pics/qt.png"
        transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 36 }
    }
    Image {
        source: "pics/qt.png"
        transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 54 }
    }
    Image {
        source: "pics/qt.png"
        transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 72 }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/0545d834-044c-4925-b340-3d816612e966-api/apps/qml/sdk-15.04.6/QtQuick.Rotation/images/axisrotation.png)

**See also** [Dial Control example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.customitems-dialcontrol/) and [Qt Quick Demo - Clocks](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.demos-clocks/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="angle-prop"></span><span class="name">angle</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The angle to rotate, in degrees clockwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="axis-prop"></span><strong>axis group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="axis.x-prop"></span><span class="name">axis.x</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="axis.y-prop"></span><span class="name">axis.y</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="axis.z-prop"></span><span class="name">axis.z</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The axis to rotate around. For simple (2D) rotation around a point, you do not need to specify an axis, as the default axis is the z axis (`axis { x: 0; y: 0; z: 1 }`).

For a typical 3D-like rotation you will usually specify both the origin and the axis.

![](https://developer.ubuntu.com/static/devportal_uploaded/f25ea7fc-26a0-4d59-bc80-395ed8d5ec4e-api/apps/qml/sdk-15.04.6/QtQuick.Rotation/images/3d-rotation-axis.png)

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

The origin point of the rotation (i.e., the point that stays fixed relative to the parent as the rest of the item rotates). By default the origin is (0, 0).

