---
Title: QtQuick.qtquick-positioning-anchors
---
        
Positioning with Anchors
========================

<span class="subtitle"></span>
details
In addition to the more traditional [Grid](../QtQuick.qtquick-positioning-layouts.md#grid), [Row](../QtQuick.qtquick-positioning-layouts.md#row), and [Column](../QtQuick.qtquick-positioning-layouts.md#column), Qt Quick also provides a way to layout items using the concept of *anchors*. Each item can be thought of as having a set of 7 invisible "anchor lines": [left](../QtQuick.Item.md#anchors.left-prop), [horizontalCenter](../QtQuick.Item.md#anchors.horizontalCenter-prop), [right](../QtQuick.Item.md#anchors.right-prop), [top](../QtQuick.Item.md#anchors.top-prop), [verticalCenter](../QtQuick.Item.md#anchors.verticalCenter-prop), [baseline](../QtQuick.Item.md#anchors.baseline-prop), and [bottom](../QtQuick.Item.md#anchors.bottom-prop).

![](https://developer.ubuntu.com/static/devportal_uploaded/7ad550a8-a766-4fa2-927a-ceb8aa4ba8e9-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/edges_qml.png)

The baseline (not pictured above) corresponds to the imaginary line on which text would sit. For items with no text it is the same as *top*.

The Qt Quick anchoring system allows you to define relationships between the anchor lines of different items. For example, you can write:

``` cpp
Rectangle { id: rect1; ... }
Rectangle { id: rect2; anchors.left: rect1.right; ... }
```

In this case, the left edge of *rect2* is bound to the right edge of *rect1*, producing the following:

![](https://developer.ubuntu.com/static/devportal_uploaded/bd07f866-1c4a-498d-97a0-d35e1466c67a-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/edge1.png)

You can specify multiple anchors. For example:

``` cpp
Rectangle { id: rect1; ... }
Rectangle { id: rect2; anchors.left: rect1.right; anchors.top: rect1.bottom; ... }
```

![](https://developer.ubuntu.com/static/devportal_uploaded/968ce271-0c7c-43d2-9ed6-d5ca8962e711-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/edge3.png)

By specifying multiple horizontal or vertical anchors you can control the size of an item. Below, *rect2* is anchored to the right of *rect1* and the left of *rect3*. If either of the blue rectangles are moved, *rect2* will stretch and shrink as necessary:

``` cpp
Rectangle { id: rect1; x: 0; ... }
Rectangle { id: rect2; anchors.left: rect1.right; anchors.right: rect3.left; ... }
Rectangle { id: rect3; x: 150; ... }
```

![](https://developer.ubuntu.com/static/devportal_uploaded/0e68c534-6dca-4e75-b4b6-bc08604797d4-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/edge4.png)

There are also some convenience anchors. anchors.fill is a convenience that is the same as setting the left,right,top and bottom anchors to the left,right,top and bottom of the target item. anchors.centerIn is another convenience anchor, and is the same as setting the verticalCenter and horizontalCenter anchors to the verticalCenter and horizontalCenter of the target item.

<span id="anchor-margins-and-offsets"></span>
Anchor Margins and Offsets
--------------------------

The anchoring system also allows *margins* and *offsets* to be specified for an item's anchors. Margins specify the amount of empty space to leave to the outside of an item's anchor, while offsets allow positioning to be manipulated using the center anchor lines. An item can specify its anchor margins individually through [leftMargin](../QtQuick.Item.md#anchors.leftMargin-prop), [rightMargin](../QtQuick.Item.md#anchors.rightMargin-prop), [topMargin](../QtQuick.Item.md#anchors.topMargin-prop) and [bottomMargin](../QtQuick.Item.md#anchors.bottomMargin-prop), or use [anchors.margins](../QtQuick.Item.md#anchors.margins-prop) to specify the same margin value for all four edges. Anchor offsets are specified using [horizontalCenterOffset](../QtQuick.Item.md#anchors.horizontalCenterOffset-prop), [verticalCenterOffset](../QtQuick.Item.md#anchors.verticalCenterOffset-prop) and [baselineOffset](../QtQuick.Item.md#anchors.baselineOffset-prop).

![](https://developer.ubuntu.com/static/devportal_uploaded/9c78d10e-3171-4e33-a8f2-2e912fd54129-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/margins_qml.png)

The following example specifies a left margin:

``` cpp
Rectangle { id: rect1; ... }
Rectangle { id: rect2; anchors.left: rect1.right; anchors.leftMargin: 5; ... }
```

In this case, a margin of 5 pixels is reserved to the left of *rect2*, producing the following:

![](https://developer.ubuntu.com/static/devportal_uploaded/18a7e1dc-f5a5-4968-9134-8164ed356480-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/edge2.png)

**Note:** Anchor margins only apply to anchors; they are *not* a generic means of applying margins to an [Item](../QtQuick.Item.md). If an anchor margin is specified for an edge but the item is not anchored to any item on that edge, the margin is not applied.

<span id="changing-anchors"></span>
Changing Anchors
----------------

Qt Quick provides the [AnchorChanges](../QtQuick.AnchorChanges.md) type for specifying the anchors in a state.

``` qml
State {
    name: "anchorRight"
    AnchorChanges {
        target: rect2
        anchors.right: parent.right
        anchors.left: undefined  //remove the left anchor
    }
}
```

[AnchorChanges](../QtQuick.AnchorChanges.md) can be animated using the [AnchorAnimation](../QtQuick.AnchorAnimation.md) type.

``` qml
Transition {
    AnchorAnimation {}  //animates any AnchorChanges in the corresponding state change
}
```

Anchors can also be changed imperatively within JavaScript. However, these changes should be carefully ordered, or they may produce unexpected outcomes. The following example illustrates the issue:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="cpp"><code>    //bad code
    Rectangle {
        width: 50
        anchors.left: parent.left
        function reanchorToRight() {
            anchors.right = parent.right
            anchors.left = undefined
        }
    }</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/e4cb5d99-1151-46a9-8c71-8ce2d8c3c7fe-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/anchor_ordering_bad.png" /></p></td>
</tr>
</tbody>
</table>

When `reanchorToRight` is called, the function first sets the right anchor. At that point, both left and right anchors are set, and the item will be stretched horizontally to fill its parent. When the left anchor is unset, the new width will remain. Thus when updating anchors within JavaScript, you should first unset any anchors that are no longer required, and only then set any new anchors that are required, as shown below:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>    Rectangle {
        width: 50
        anchors.left: parent.left
        function reanchorToRight() {
            anchors.left = undefined
            anchors.right = parent.right
        }
    }</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/649e9a0c-31c8-4cad-abe5-e8fe9b8fa9ca-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/anchor_ordering.png" /></p></td>
</tr>
</tbody>
</table>

Because the evaluation order of bindings is not defined, it is not recommended to change anchors via conditional bindings, as this can lead to the ordering issue described above. In the following example the Rectangle will eventually grow to the full width of its parent, because both left and right anchors will be simultaneously set during binding update.

``` cpp
//bad code
Rectangle {
    width: 50; height: 50
    anchors.left: state == "right" ? undefined : parent.left;
    anchors.right: state == "right" ? parent.right : undefined;
}
```

This should be rewritten to use [AnchorChanges](../QtQuick.AnchorChanges.md) instead, as [AnchorChanges](../QtQuick.AnchorChanges.md) will automatically handle ordering issues internally.

<span id="restrictions"></span>
Restrictions
------------

For performance reasons, you can only anchor an item to its siblings and direct parent. For example, the following anchor is invalid and would produce a warning:

``` cpp
//bad code
Item {
    id: group1
    Rectangle { id: rect1; ... }
}
Item {
    id: group2
    Rectangle { id: rect2; anchors.left: rect1.right; ... }    // invalid anchor!
}
```

Also, anchor-based layouts cannot be mixed with absolute positioning. If an item specifies its [x](../QtQuick.Item.md#x-prop) position and also sets [anchors.left](../QtQuick.Item.md#anchors.left-prop), or anchors its left and right edges but additionally sets a [width](../QtQuick.Item.md#width-prop), the result is undefined, as it would not be clear whether the item should use anchoring or absolute positioning. The same can be said for setting an item's [y](../QtQuick.Item.md#y-prop) and [height](../QtQuick.Item.md#height-prop) with [anchors.top](../QtQuick.Item.md#anchors.top-prop) and [anchors.bottom](../QtQuick.Item.md#anchors.bottom-prop), or setting [anchors.fill](../QtQuick.Item.md#anchors.fill-prop) as well as [width](../QtQuick.Item.md#width-prop) or [height](../QtQuick.Item.md#height-prop). The same applies when using positioners such as Row and Grid, which may set the item's [x](../QtQuick.Item.md#x-prop) and [y](../QtQuick.Item.md#y-prop) properties. If you wish to change from using anchor-based to absolute positioning, you can clear an anchor value by setting it to `undefined`.

