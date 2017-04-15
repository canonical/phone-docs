---
Title: QtQuick.RotationAnimator
---
        
RotationAnimator
================

<span class="subtitle"></span>
The RotationAnimator type animates the rotation of an Item. More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.2             |

<span id="properties"></span>
Properties
----------

-   ****[direction](#direction-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

[Animator](../QtQuick.Animator.md) types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of [Item::rotation](../QtQuick.Item.md#rotation-prop) is updated after the animation has finished.

The following snippet shows how to use a [RotationAnimator](index.html) together with a Rectangle item.

``` qml
Rectangle {
    id: rotatingBox
    width: 50
    height: 50
    color: "lightsteelblue"
    RotationAnimator {
        target: rotatingBox;
        from: 0;
        to: 360;
        duration: 1000
        running: true
    }
}
```

It is also possible to use the `on` keyword to tie the [RotationAnimator](index.html) directly to the `rotation` property of an Item instance.

``` qml
Rectangle {
    width: 50
    height: 50
    color: "lightsteelblue"
    RotationAnimator on rotation {
        from: 0;
        to: 360;
        duration: 1000
    }
}
```

**See also** [Item::transformOrigin](../QtQuick.Item.md#transformOrigin-prop) and [ScaleAnimator](../QtQuick.ScaleAnimator.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the direction of the rotation.

Possible values are:

-   [RotationAnimator](index.html).Numerical (default) - Rotate by linearly interpolating between the two numbers. A rotation from 10 to 350 will rotate 340 degrees clockwise.
-   [RotationAnimator](index.html).Clockwise - Rotate clockwise between the two values
-   [RotationAnimator](index.html).Counterclockwise - Rotate counterclockwise between the two values
-   [RotationAnimator](index.html).Shortest - Rotate in the direction that produces the shortest animation path. A rotation from 10 to 350 will rotate 20 degrees counterclockwise.

