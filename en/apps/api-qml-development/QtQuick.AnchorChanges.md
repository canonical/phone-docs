---
Title: QtQuick.AnchorChanges
---
        
AnchorChanges
=============

<span class="subtitle"></span>
Specifies how to change the anchors of an item in a state More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[anchors](#anchors-prop)****
    -   ****[anchors.left](#anchors.left-prop)**** : AnchorLine
    -   ****[anchors.right](#anchors.right-prop)**** : AnchorLine
    -   ****[anchors.horizontalCenter](#anchors.horizontalCenter-prop)**** : AnchorLine
    -   ****[anchors.top](#anchors.top-prop)**** : AnchorLine
    -   ****[anchors.bottom](#anchors.bottom-prop)**** : AnchorLine
    -   ****[anchors.verticalCenter](#anchors.verticalCenter-prop)**** : AnchorLine
    -   ****[anchors.baseline](#anchors.baseline-prop)**** : AnchorLine
-   ****[target](#target-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

The [AnchorChanges](index.html) type is used to modify the anchors of an item in a [State](../QtQuick.State.md).

[AnchorChanges](index.html) cannot be used to modify the margins on an item. For this, use [PropertyChanges](../QtQuick.PropertyChanges.md) intead.

In the following example we change the top and bottom anchors of an item using [AnchorChanges](index.html), and the top and bottom anchor margins using [PropertyChanges](../QtQuick.PropertyChanges.md):

``` qml
import QtQuick 2.0
Rectangle {
    id: window
    width: 120; height: 120
    color: "black"
    Rectangle { id: myRect; width: 50; height: 50; color: "red" }
    states: State {
        name: "reanchored"
        AnchorChanges {
            target: myRect
            anchors.top: window.top
            anchors.bottom: window.bottom
        }
        PropertyChanges {
            target: myRect
            anchors.topMargin: 10
            anchors.bottomMargin: 10
        }
    }
    MouseArea { anchors.fill: parent; onClicked: window.state = "reanchored" }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/903bb5b0-ff69-425d-80cb-408c2871b379-api/apps/qml/sdk-15.04.6/QtQuick.AnchorChanges/images/anchorchanges.png)

[AnchorChanges](index.html) can be animated using [AnchorAnimation](../QtQuick.AnchorAnimation.md).

``` qml
//animate our anchor changes
Transition {
    AnchorAnimation {}
}
```

Changes to anchor margins can be animated using [NumberAnimation](../QtQuick.NumberAnimation.md).

For more information on anchors see [Anchor Layouts](../QtQuick.qtquick-positioning-anchors.md#anchor-layout).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="anchors-prop"></span><strong>anchors group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="anchors.left-prop"></span><span class="name">anchors.left</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.right-prop"></span><span class="name">anchors.right</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.horizontalCenter-prop"></span><span class="name">anchors.horizontalCenter</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.top-prop"></span><span class="name">anchors.top</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.bottom-prop"></span><span class="name">anchors.bottom</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.verticalCenter-prop"></span><span class="name">anchors.verticalCenter</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.baseline-prop"></span><span class="name">anchors.baseline</span> : <span class="type">AnchorLine</span></p></td>
</tr>
</tbody>
</table>

These properties change the respective anchors of the item.

To reset an anchor you can assign `undefined`:

``` qml
AnchorChanges {
    target: myItem
    anchors.left: undefined          //remove myItem's left anchor
    anchors.right: otherItem.right
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the [Item](../QtQuick.Item.md) for which the anchor changes will be applied.

