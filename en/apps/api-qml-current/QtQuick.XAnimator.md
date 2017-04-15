---
Title: QtQuick.XAnimator
---
        
XAnimator
=========

<span class="subtitle"></span>
The XAnimator type animates the x position of an Item. More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.2             |

<span id="details"></span>
Detailed Description
--------------------

[Animator](../QtQuick.Animator.md) types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of [Item::x](../QtQuick.Item.md#x-prop) is updated after the animation has finished.

The following snippet shows how to use a [XAnimator](index.html) together with a Rectangle item.

``` qml
Rectangle {
    id: xmovingBox
    width: 50
    height: 50
    color: "lightsteelblue"
    XAnimator {
        target: xmovingBox;
        from: 10;
        to: 0;
        duration: 1000
        running: true
    }
}
```

It is also possible to use the `on` keyword to tie the [XAnimator](index.html) directly to an Item instance.

``` qml
Rectangle {
    width: 50
    height: 50
    color: "lightsteelblue"
    XAnimator on x {
        from: 10;
        to: 0;
        duration: 1000
    }
}
```

