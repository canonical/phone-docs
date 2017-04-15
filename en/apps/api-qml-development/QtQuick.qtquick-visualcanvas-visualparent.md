---
Title: QtQuick.qtquick-visualcanvas-visualparent
---
        
Concepts - Visual Parent in Qt Quick
====================================

<span class="subtitle"></span>
details
Visual Parent
-------------

When creating visual scenes with Qt Quick, it is important to understand the concept of the *visual parent*.

The concept of the visual parent in Qt Quick is separate from, but related to, the concept of the *object parent* within the QObject parent hierarchy. All QML objects have an *object parent*, which is determined by the object hierarchy in which the object is declared. When working with the `QtQuick` module, the [Item](../QtQuick.Item.md) type is the base type for all visual items provided by this module, and it provides the concept of an additional *visual parent*, as defined by an item's [parent](../QtQuick.Item.md#parent-prop) property. Every item has a visual parent; if an item's [parent](../QtQuick.Item.md#parent-prop) property value is `null`, the item will not be rendered in the scene.

Any object assigned to an item's [data](../QtQuick.Item.md#data-prop) property becomes a child of the item within its QObject hierarchy, for memory management purposes. Additionally, if an object added to the data property is of the [Item](../QtQuick.Item.md) type, it is also assigned to the [Item::children](../QtQuick.Item.md#children-prop) property and becomes a child of the item within the visual scene hierarchy. (Most Qt Quick hierarchy crawling algorithms, especially the rendering algorithms, only consider the visual parent hierarchy.)

For convenience, the Item [data](../QtQuick.Item.md#data-prop) property is its default property. This means that any child item declared within an [Item](../QtQuick.Item.md) object without being assigned to a specific property is automatically assigned to the [data](../QtQuick.Item.md#data-prop) property and becomes a child of the item as described above. So, the two code blocks below produce the same result, and you will almost always see the form shown below left, rather than the explicit `data` assignment shown below right:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="cpp"><code>import QtQuick 2.0
Item {
    width: 100; height: 100
    Rectangle { width: 50; height: 50; color: &quot;red&quot; }
}</code></pre></td>
<td><pre class="cpp"><code>import QtQuick 2.0
Item {
    width: 100; height: 100
    data: [
        Rectangle { width: 50; height: 50; color: &quot;red&quot; }
    ]
}</code></pre></td>
</tr>
</tbody>
</table>

An item's visual parent can be changed at any time by setting its [parent](../QtQuick.Item.md#parent-prop) property. Thus, an item's visual parent may not necessarily be the same as its object parent.

When an item becomes the child of another item:

-   The child's [parent](../QtQuick.Item.md#parent-prop) refers to its parent item
-   The parent's [children](../QtQuick.Item.md#children-prop) and [childrenRect](../QtQuick.Item.md#childrenRect.x-prop) properties takes that child into account

Declaring an item as a child of another does not automatically mean that the child item will be appropriately positioned or sized to fit within its parent. Some QML types may have in-built behaviors that affect the positioning of child items — for example, a [Row](../QtQuick.qtquick-positioning-layouts.md#row) object automatically re-positions its children into a horizontal formation — but these are behaviors enforced by the types' own specific implementations. Additionally, a parent item will not automatically clip its children to visually contain them within the parent's visual bounds, unless its [clip](../QtQuick.Item.md#clip-prop) property is set to true.

The visual parent of an item may come under consideration in particular circumstances, as described in the sections below.

<span id="item-coordinates"></span>
### Item Coordinates

As item coordinates are relative to the visual parent, they can be affected by changes to the visual hierarchy. See the [Visual Coordinates](../QtQuick.qtquick-visualcanvas-coordinates.md) concept page for more detail.

<span id="stacking-order"></span>
### Stacking Order

Qt Quick items use a recursive drawing algorithm for determining which items are drawn on top in case of collisions. In general items are drawn on top of their parent items, in the order they were created (or specified in the QML file). So in the following example, the blue rectangle will be drawn on top of the green rectangle:

``` qml
Rectangle {
    color: "#272822"
    width: 320
    height: 480
    Rectangle {
        y: 64
        width: 256
        height: 256
        color: "green"
    }
    Rectangle {
        x: 64
        y: 172
        width: 256
        height: 256
        color: "blue"
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/53b2c0b3-9631-475c-bb3b-c485c528414c-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-visualparent/images/visual-parent-example.png)

Because the algorithm recurses through the visual item hierarchy, any children of the green rectangle will also be drawn beneath the blue rectangle and beneath any of the blue rectangle's children.

Stacking order can be influenced with the [Item::z](../QtQuick.Item.md#z-prop) property. Z values below 0 will stack below the parent, and if z values are assigned then siblings will stack in z-order (with creation order used to break ties). Z values only affect stacking compared to siblings and the parent item. If you have an item who is obscured by a subtree rooted above its parent item, no z value on that item will increase its stacking order to stack above that subtree. To stack that item above the other subtree you'll have to alter z values farther up in the hierarchy, or re-arrange the visual item hierarchy.

``` qml
Rectangle {
    color: "#272822"
    width: 320
    height: 480
    Rectangle {
        y: 64
        z: 1
        width: 256
        height: 256
        color: "green"
        Rectangle {
            x: 192
            y: 64
            z: 2000
            width: 128
            height: 128
            color: "red"
        }
    }
    Rectangle {
        x: 64
        y: 192
        z: 2
        width: 256
        height: 256
        color: "blue"
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/d8392b0e-111d-4aca-9e82-de2125a5efe3-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-visualparent/images/visual-parent-example2.png)

In the above example, the red rectangle has a high z value, but is still stacked below the blue rectangle. This is because it is a child of the green rectangle, and the green rectangle is a sibling of the blue rectangle. The z value of the green rectangle is lower than that of the blue rectangle, so the green rectangle and all children will be stacked beneath the blue rectangle.

<span id="canvas-ownership"></span>
### Canvas Ownership

The definition of what is rendered in a Qt Quick scene is the visual item tree rooted at QQuickWindow::contentItem. Therefore to add an Item to a specific Qt Quick scene for rendering it needs to become a visual hierarchy child of an Item already in the visual item hierarchy, such as QQuickWindow::contentItem.

