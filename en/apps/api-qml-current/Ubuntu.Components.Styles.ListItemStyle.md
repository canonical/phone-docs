---
Title: Ubuntu.Components.Styles.ListItemStyle
---
        
ListItemStyle
=============

<span class="subtitle"></span>
Style API for ListItem component. More...

|                   |                                     |
|-------------------|-------------------------------------|
| Import Statement: | import Ubuntu.Components.Styles 1.3 |
| Since:            | Ubuntu.Components.Styles 1.2        |

<span id="properties"></span>
Properties
----------

-   ****[animatePanels](#animatePanels-prop)**** : bool
-   ****[dragPanel](#dragPanel-prop)**** : Item
-   ****[dropAnimation](#dropAnimation-prop)**** : PropertyAnimation
-   ****[flickable](#flickable-prop)**** : Flickable
-   ****[listItemIndex](#listItemIndex-prop)**** : in
-   ****[snapAnimation](#snapAnimation-prop)**** : Animation

<span id="methods"></span>
Methods
-------

-   ****[rebound](#rebound-method)****()
-   ****[swipeEvent](#swipeEvent-method)****(SwipeEvent *event*)

<span id="details"></span>
Detailed Description
--------------------

Style API for the [ListItem](../Ubuntu.Components.ListItem.md) component which provides actions, select and drag handler delegates, and snap animation via its properties. [ListItem](../Ubuntu.Components.ListItem.md) treats the style differently compared to the other components, as it loads the style only when needed and not upon component creation.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="animatePanels-prop"></span><span class="name">animatePanels</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property drives the different panel animations in the style. Panels should not be animated when created upon scrolling a view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragPanel-prop"></span><span class="name">dragPanel</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the item visualizing the drag handler. [ListItem](../Ubuntu.Components.ListItem.md)'s dragging mechanism uses this property to detect the area the dragging can be initiated from. If not set, the [ListItem](../Ubuntu.Components.ListItem.md) will assume the dragging can be initiated from the entire area of the [ListItem](../Ubuntu.Components.ListItem.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dropAnimation-prop"></span><span class="name">dropAnimation</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.PropertyAnimation.md">PropertyAnimation</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the animation executed on [ListItem](../Ubuntu.Components.ListItem.md) dropping.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickable-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">flickable</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the Flickable (or [ListView](../../sdk-14.10/QtQuick.ListView.md)) holding the [ListItem](../Ubuntu.Components.ListItem.md) styled.

This QML property was introduced in Ubuntu.Components.Styles 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="listItemIndex-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">listItemIndex</span> : <span class="type">in</span></p></td>
</tr>
</tbody>
</table>

The property proxies the [ListItem](../Ubuntu.Components.ListItem.md)'s index context property to the style, which is either the index of the list item in a [ListView](../../sdk-14.10/QtQuick.ListView.md) or the child index. Use this property rather than the `index` context property as that may not be defined in situations where the [ListItem](../Ubuntu.Components.ListItem.md) is not a delegate of a [ListView](../../sdk-14.10/QtQuick.ListView.md) or Repeater.

This QML property was introduced in Ubuntu.Components.Styles 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="snapAnimation-prop"></span><span class="name">snapAnimation</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Animation.md">Animation</a></span></p></td>
</tr>
</tbody>
</table>

Holds the behavior used in animating when snapped in or out.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rebound-method"></span><span class="name">rebound</span>()</p></td>
</tr>
</tbody>
</table>

Function called by the [ListItem](../Ubuntu.Components.ListItem.md) when a rebounding action is requested from the style. This usually happens when the list item's content is swiped and there is a press event happening outside of the [ListItem](../Ubuntu.Components.ListItem.md)'s boundary or when the view embedding the [ListItem](../Ubuntu.Components.ListItem.md) starts scrolling.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="swipeEvent-method"></span><span class="name">swipeEvent</span>(<span class="type">SwipeEvent</span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

The function is called by the [ListItem](../Ubuntu.Components.ListItem.md) when a swipe action is performed, i.e. when the swipe is started, the position is updated or the swipe ends. The **event** object provides information about the swipe status, positions and the updated [ListItem.contentItem](../Ubuntu.Components.ListItem.md#contentItem-prop) position. The style implementation can override the contentItem position by setting the `event.content.x` or `event.content.y` properties to the desired value.

The `event` object properties are:

-   `status` - enumeration of `Started, Updated, Finished` values representing the swipe event status
-   `to` - (x, y) coordinates of the current mouse/touch point - read-only
-   `from` - (x, y) coordinates of the previous mouse/touch point - read-only
-   `content` - (x, y) updated coordinates of the [ListItem.contentItem](../Ubuntu.Components.ListItem.md#contentItem-prop), read-write

