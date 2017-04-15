---
Title: Ubuntu.Components.Scrollbar
---
        
Scrollbar
=========

<span class="subtitle"></span>
The Scrollbar component provides scrolling functionality for scrollable views (i.e. Flickable, ListView). More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[align](#align-prop)**** : int
-   ****[flickableItem](#flickableItem-prop)**** : Flickable

<span id="details"></span>
Detailed Description
--------------------

**NOTE**: the Scrollbar component was revamped for OTA9 and used for the implementation of [ScrollView](../Ubuntu.Components.ScrollView.md). Apps targeting system version OTA9 (or newer) should use [ScrollView](../Ubuntu.Components.ScrollView.md) instead of Scrollbar, as it features convergent-ready features, such as (but not limited to) keyboard input handling.

The Scrollbar can be set to any flickable and has built-in anchoring setup to the attached flickable's front, rear, top or bottom. The scrollbar can also be aligned using anchors, however the built-in align functionality makes sure to have the proper alignemt applied based on theme and layout direction (RTL or LTR).

The content position is driven through the attached Flickable. Therefore every style implementation should drive the position through contentX/contentY properties, depending on whether the orientation is vertical or horizontal.

Example:

``` qml
Item {
    ListView {
        id: list
        width: units.gu(37)
        height: units.gu(37)
        model: 30
        delegate: Rectangle {
            width: ListView.view.width
            height: units.gu(5)
            Text {
                anchors.fill: parent
                text: "Item " + modelData
            }
        }
    }
    Scrollbar {
        flickableItem: list
        align: Qt.AlignTrailing
    }
}
```

<span id="vertical-scrollbar-and-flickable-behaviour"></span>
Vertical Scrollbar and Flickable behaviour
------------------------------------------

Since Flickable's topMargin and bottomMargin are modified by Ubuntu components such as [BottomEdgeHint](../Ubuntu.Components.BottomEdgeHint.md) and [Header](../Ubuntu.Components.Header.md) in their positioning logic, the Scrollbar component uses the value of those properties to its top and bottom anchors margins, by default. This is to prevent any overlap with [BottomEdgeHint](../Ubuntu.Components.BottomEdgeHint.md) or Header (see [Vertical Scrollbar and Header behaviour](#vertical-scrollbar-and-header-behaviour) for more info about that). In case you need to specify custom Flickable content margins (note: we're talking about content margins, not anchors ones), you will also have to override the top and bottom anchors margins of the Scrollbar accordingly.

<span id="vertical-scrollbar-and-header-behaviour"></span>
Vertical Scrollbar and Header behaviour
---------------------------------------

The thumb of the Scrollbar should not move or resize unexpectedly. It would be confusing, for instance, if it moved under the user's finger (or pointer) while he's dragging it.

Because the size and position of the thumb in a scrollbar is related to the size of the trough (or track) it slides in, it is important that the trough does not resize or move while the user is interacting with the component.

In the context of a [Page](../Ubuntu.Components.Page.md) with a [Header](../Ubuntu.Components.Header.md) that slides in and out dynamically when the user flicks the surface (see [Header::flickable](../Ubuntu.Components.Header.md#flickable-prop)), a vertical Scrollbar that is linked to the same flickable surface as the Header behaves as described below:

-   - when the Header is exposed, the Scrollbar component sits right below it, thus avoiding overlaps;
-   - when the Header hides due to the user either flicking the surface or dragging the thumb, the trough of the Scrollbar does not resize or move, thus avoiding unexpected changes in thumb's position or size. As a side effect, the space above the Scrollbar, previously occupied by Header, stays empty until the Header is exposed again.

This behaviour is intended and makes for a less confusing User Experience.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="align-prop"></span><span class="name">align</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property defines the alignment of the scrollbar to the [flickableItem](#flickableItem-prop). The implementation handles the alignment as follows:

-   Qt.AlignLeading anchors to the left on LTR and to the right on RTL layouts
-   Qt.AlignTrailing anchors to the right on LTR and to the left on RTL layouts
-   Qt.AlignTop anchors to the top
-   Qt.AlignBottom anchors to the bottom

The default value is **Qt.AlignTrailing**.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickableItem-prop"></span><span class="name">flickableItem</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the flickable item (Flickable, [ListView](../../sdk-14.10/QtQuick.ListView.md) or [GridView](../../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview)) the Scrollbar is attached to.

