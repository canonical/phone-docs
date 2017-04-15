---
Title: QtQuick.Matrix4x4
---
        
Matrix4x4
=========

<span class="subtitle"></span>
Provides a way to apply a 4x4 tranformation matrix to an Item More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[matrix](#matrix-prop)**** : QMatrix4x4

<span id="details"></span>
Detailed Description
--------------------

The Matrix4x4 type provides a way to apply a transformation to an [Item](../QtQuick.Item.md) through a 4x4 matrix.

It allows for a combination of rotation, scale, translatation and shearing by using just one tranformation provided in a 4x4-matrix.

The following example rotates a Rectangle 45 degress (PI/4):

``` qml
Rectangle {
    width: 100
    height: 100
    color: "red"
    transform: Matrix4x4 {
        property real a: Math.PI / 4
        matrix: Qt.matrix4x4(Math.cos(a), -Math.sin(a), 0, 0,
                             Math.sin(a),  Math.cos(a), 0, 0,
                             0,           0,            1, 0,
                             0,           0,            0, 1)
    }
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
<td><p><span id="matrix-prop"></span><span class="name">matrix</span> : <span class="type">QMatrix4x4</span></p></td>
</tr>
</tbody>
</table>

4x4-matrix which will be used in the tranformation of an [Item](../QtQuick.Item.md)

