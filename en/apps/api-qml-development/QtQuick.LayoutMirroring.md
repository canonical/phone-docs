---
Title: QtQuick.LayoutMirroring
---
        
LayoutMirroring
===============

<span class="subtitle"></span>
Property used to mirror layout behavior More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[childrenInherit](#childrenInherit-prop)**** : bool
-   ****[enabled](#enabled-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

The [LayoutMirroring](index.html) attached property is used to horizontally mirror [Item anchors](../QtQuick.qtquick-positioning-anchors.md#anchor-layout), [positioner](../QtQuick.qtquick-positioning-layouts.md) types (such as [Row](../QtQuick.qtquick-positioning-layouts.md#row) and [Grid](../QtQuick.qtquick-positioning-layouts.md#grid)) and views (such as [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview) and horizontal [ListView](../QtQuick.ListView.md)). Mirroring is a visual change: left anchors become right anchors, and positioner types like [Grid](../QtQuick.qtquick-positioning-layouts.md#grid) and [Row](../QtQuick.qtquick-positioning-layouts.md#row) reverse the horizontal layout of child items.

Mirroring is enabled for an item by setting the [enabled](#enabled-prop) property to true. By default, this only affects the item itself; setting the [childrenInherit](#childrenInherit-prop) property to true propagates the mirroring behavior to all child items as well. If the `LayoutMirroring` attached property has not been defined for an item, mirroring is not enabled.

The following example shows mirroring in action. The [Row](../QtQuick.qtquick-positioning-layouts.md#row) below is specified as being anchored to the left of its parent. However, since mirroring has been enabled, the anchor is horizontally reversed and it is now anchored to the right. Also, since items in a [Row](../QtQuick.qtquick-positioning-layouts.md#row) are positioned from left to right by default, they are now positioned from right to left instead, as demonstrated by the numbering and opacity of the items:

``` qml
import QtQuick 2.0
Rectangle {
    LayoutMirroring.enabled: true
    LayoutMirroring.childrenInherit: true
    width: 300; height: 50
    color: "yellow"
    border.width: 1
    Row {
        anchors { left: parent.left; margins: 5 }
        y: 5; spacing: 5
        Repeater {
            model: 5
            Rectangle {
                color: "red"
                opacity: (5 - index) / 5
                width: 40; height: 40
                Text {
                    text: index + 1
                    anchors.centerIn: parent
                }
            }
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/78cfad02-1ec3-4309-9aaa-803202d0bf5c-api/apps/qml/sdk-15.04.6/QtQuick.LayoutMirroring/images/layoutmirroring.png)

Layout mirroring is useful when it is necessary to support both left-to-right and right-to-left layout versions of an application to target different language areas. The [childrenInherit](#childrenInherit-prop) property allows layout mirroring to be applied without manually setting layout configurations for every item in an application. Keep in mind, however, that mirroring does not affect any positioning that is defined by the [Item](../QtQuick.Item.md) [x](../QtQuick.Item.md#x-prop) coordinate value, so even with mirroring enabled, it will often be necessary to apply some layout fixes to support the desired layout direction. Also, it may be necessary to disable the mirroring of individual child items (by setting [LayoutMirroring.enabled](#enabled-prop) to false for such items) if mirroring is not the desired behavior, or if the child item already implements mirroring in some custom way.

See [Right-to-left User Interfaces](../QtQuick.qtquick-positioning-righttoleft.md) for further details on using `LayoutMirroring` and other related features to implement right-to-left support for an application.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="childrenInherit-prop"></span><span class="name">childrenInherit</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the [LayoutMirroring.enabled](#enabled-prop) value for this item is inherited by its children.

The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the item's layout is mirrored horizontally. Setting this to true horizontally reverses [anchor](../QtQuick.qtquick-positioning-anchors.md#anchor-layout) settings such that left anchors become right, and right anchors become left. For [positioner](../QtQuick.qtquick-positioning-layouts.md) types (such as [Row](../QtQuick.qtquick-positioning-layouts.md#row) and [Grid](../QtQuick.qtquick-positioning-layouts.md#grid)) and view types (such as [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview) and [ListView](../QtQuick.ListView.md)) this also mirrors the horizontal layout direction of the item.

The default value is false.

