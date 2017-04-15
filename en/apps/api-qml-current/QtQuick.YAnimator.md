---
Title: QtQuick.YAnimator
---
        
YAnimator
=========

<span class="subtitle"></span>
The YAnimator type animates the y position of an Item. More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.2             |

<span id="details"></span>
Detailed Description
--------------------

[Animator](../QtQuick.Animator.md) types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of [Item::y](../QtQuick.Item.md#y-prop) is updated after the animation has finished.

The following snippet shows how to use a [YAnimator](index.html) together with a Rectangle item.

``` qml
Rectangle {
    id: ymovingBox
    width: 50
    height: 50
    color: "lightsteelblue"
    YAnimator {
        target: ymovingBox;
        from: 10;
        to: 0;
        duration: 1000
        running: true
    }
}
```

It is also possible to use the `on` keyword to tie the [YAnimator](index.html) directly to an Item instance.

``` qml
Rectangle {
    width: 50
    height: 50
    color: "lightsteelblue"
    YAnimator on y {
        from: 10;
        to: 0;
        duration: 1000
    }
}
```

