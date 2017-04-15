---
Title: QtQuick.OpacityAnimator
---
        
OpacityAnimator
===============

<span class="subtitle"></span>
The OpacityAnimator type animates the opacity of an Item. More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.2             |

<span id="details"></span>
Detailed Description
--------------------

[Animator](../QtQuick.Animator.md) types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of [Item::opacity](../QtQuick.Item.md#opacity-prop) is updated after the animation has finished.

The following snippet shows how to use a [OpacityAnimator](index.html) together with a Rectangle item.

``` qml
Rectangle {
    id: opacityBox
    width: 50
    height: 50
    color: "lightsteelblue"
    OpacityAnimator {
        target: opacityBox;
        from: 0;
        to: 1;
        duration: 1000
        running: true
    }
}
```

It is also possible to use the `on` keyword to tie the [OpacityAnimator](index.html) directly to an Item instance.

``` qml
Rectangle {
    width: 50
    height: 50
    color: "lightsteelblue"
    OpacityAnimator on opacity{
        from: 0;
        to: 1;
        duration: 1000
    }
}
```

