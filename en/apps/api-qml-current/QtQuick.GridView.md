---
Title: QtQuick.GridView
---
        
GridView
========

<span class="subtitle"></span>
For specifying a grid view of items provided by a model More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Flickable.md">Flickable</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[add](#add-prop)**** : Transition
-   ****[addDisplaced](#addDisplaced-prop)**** : Transition
-   ****[cacheBuffer](#cacheBuffer-prop)**** : int
-   ****[cellHeight](#cellHeight-prop)**** : real
-   ****[cellWidth](#cellWidth-prop)**** : real
-   ****[count](#count-prop)**** : int
-   ****[currentIndex](#currentIndex-prop)**** : int
-   ****[currentItem](#currentItem-prop)**** : Item
-   ****[delegate](#delegate-prop)**** : Component
-   ****[displaced](#displaced-prop)**** : Transition
-   ****[displayMarginBeginning](#displayMarginBeginning-prop)**** : int
-   ****[displayMarginEnd](#displayMarginEnd-prop)**** : int
-   ****[effectiveLayoutDirection](#effectiveLayoutDirection-prop)**** : enumeration
-   ****[flow](#flow-prop)**** : enumeration
-   ****[footer](#footer-prop)**** : Component
-   ****[footerItem](#footerItem-prop)**** : Item
-   ****[header](#header-prop)**** : Component
-   ****[headerItem](#headerItem-prop)**** : Item
-   ****[highlight](#highlight-prop)**** : Component
-   ****[highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop)**** : bool
-   ****[highlightItem](#highlightItem-prop)**** : Item
-   ****[highlightMoveDuration](#highlightMoveDuration-prop)**** : int
-   ****[highlightRangeMode](#highlightRangeMode-prop)**** : enumeration
-   ****[keyNavigationWraps](#keyNavigationWraps-prop)**** : bool
-   ****[layoutDirection](#layoutDirection-prop)**** : enumeration
-   ****[model](#model-prop)**** : model
-   ****[move](#move-prop)**** : Transition
-   ****[moveDisplaced](#moveDisplaced-prop)**** : Transition
-   ****[populate](#populate-prop)**** : Transition
-   ****[preferredHighlightBegin](#preferredHighlightBegin-prop)**** : real
-   ****[preferredHighlightEnd](#preferredHighlightEnd-prop)**** : real
-   ****[remove](#remove-prop)**** : Transition
-   ****[removeDisplaced](#removeDisplaced-prop)**** : Transition
-   ****[snapMode](#snapMode-prop)**** : enumeration
-   ****[verticalLayoutDirection](#verticalLayoutDirection-prop)**** : enumeration

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[delayRemove](#delayRemove-attached-prop)**** : bool
-   ****[isCurrentItem](#isCurrentItem-attached-prop)**** : bool
-   ****[view](#view-attached-prop)**** : GridView

<span id="attached-signals"></span>
Attached Signals
----------------

-   ****[add](#add-signal)****()
-   ****[remove](#remove-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[forceLayout](#forceLayout-method)****()
-   int ****[indexAt](#indexAt-method)****(int *x*, int *y*)
-   Item ****[itemAt](#itemAt-method)****(int *x*, int *y*)
-   ****[moveCurrentIndexDown](#moveCurrentIndexDown-method)****()
-   ****[moveCurrentIndexLeft](#moveCurrentIndexLeft-method)****()
-   ****[moveCurrentIndexRight](#moveCurrentIndexRight-method)****()
-   ****[moveCurrentIndexUp](#moveCurrentIndexUp-method)****()
-   ****[positionViewAtBeginning](#positionViewAtBeginning-method)****()
-   ****[positionViewAtEnd](#positionViewAtEnd-method)****()
-   ****[positionViewAtIndex](#positionViewAtIndex-method)****(int *index*, PositionMode *mode*)

<span id="details"></span>
Detailed Description
--------------------

A [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) displays data from models created from built-in QML types like [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel) and [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel), or custom model classes defined in C++ that inherit from QAbstractListModel.

A [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) has a [model](#model-prop), which defines the data to be displayed, and a [delegate](#delegate-prop), which defines how the data should be displayed. Items in a [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) are laid out horizontally or vertically. Grid views are inherently flickable as [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) inherits from [Flickable](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.touchinteraction/#flickable).

<span id="example-usage"></span>
Example Usage
-------------

The following example shows the definition of a simple list model defined in a file called `ContactModel.qml`:

``` qml
import QtQuick 2.0
ListModel {
    ListElement {
        name: "Jim Williams"
        portrait: "pics/portrait.png"
    }
    ListElement {
        name: "John Brown"
        portrait: "pics/portrait.png"
    }
    ListElement {
        name: "Bill Smyth"
        portrait: "pics/portrait.png"
    }
    ListElement {
        name: "Sam Wise"
        portrait: "pics/portrait.png"
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/6601e9af-e549-48bf-bb21-3f92aba8b1ba-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-simple.png)

This model can be referenced as `ContactModel` in other QML files. See QML Modules for more information about creating reusable components like this.

Another component can display this model data in a [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview), as in the following example, which creates a `ContactModel` component for its model, and a [Column](../QtQuick.qtquick-positioning-layouts.md#column) (containing [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.imageelements/#image) and [Text](../QtQuick.qtquick-releasenotes.md#text) items) for its delegate.

``` qml
import QtQuick 2.0
GridView {
    width: 300; height: 200
    model: ContactModel {}
    delegate: Column {
        Image { source: portrait; anchors.horizontalCenter: parent.horizontalCenter }
        Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/71fb1e58-da12-4823-a1fb-92da08a819b8-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-highlight.png)

The view will create a new delegate for each item in the model. Note that the delegate is able to access the model's `name` and `portrait` data directly.

An improved grid view is shown below. The delegate is visually improved and is moved into a separate `contactDelegate` component.

``` qml
Rectangle {
    width: 300; height: 200
    Component {
        id: contactDelegate
        Item {
            width: grid.cellWidth; height: grid.cellHeight
            Column {
                anchors.fill: parent
                Image { source: portrait; anchors.horizontalCenter: parent.horizontalCenter }
                Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
            }
        }
    }
    GridView {
        id: grid
        anchors.fill: parent
        cellWidth: 80; cellHeight: 80
        model: ContactModel {}
        delegate: contactDelegate
        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        focus: true
    }
}
```

The currently selected item is highlighted with a blue [Rectangle](../QtQuick.Rectangle.md) using the [highlight](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.views/#highlight) property, and `focus` is set to `true` to enable keyboard navigation for the grid view. The grid view itself is a focus scope (see [Keyboard Focus in Qt Quick](../QtQuick.qtquick-input-focus.md) for more details).

Delegates are instantiated as needed and may be destroyed at any time. State should *never* be stored in a delegate.

[GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) attaches a number of properties to the root item of the delegate, for example `GridView.isCurrentItem`. In the following example, the root delegate item can access this attached property directly as `GridView.isCurrentItem`, while the child `contactInfo` object must refer to this property as `wrapper.GridView.isCurrentItem`.

``` qml
GridView {
    width: 300; height: 200
    cellWidth: 80; cellHeight: 80
    Component {
        id: contactsDelegate
        Rectangle {
            id: wrapper
            width: 80
            height: 80
            color: GridView.isCurrentItem ? "black" : "red"
            Text {
                id: contactInfo
                text: name + ": " + number
                color: wrapper.GridView.isCurrentItem ? "red" : "black"
            }
        }
    }
    model: ContactModel {}
    delegate: contactsDelegate
    focus: true
}
```

**Note:** Views do not set the [clip](../QtQuick.Item.md#clip-prop) property automatically. If the view is not clipped by another item or the screen, it will be necessary to set this property to true in order to clip the items that are partially or fully outside the view.

<span id="gridview-layouts"></span>
GridView Layouts
----------------

The layout of the items in a [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) can be controlled by these properties:

-   [flow](../QtQuick.qtquick-positioning-layouts.md#flow) - controls whether items flow from left to right (as a series of rows) or from top to bottom (as a series of columns). This value can be either [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).FlowLeftToRight or [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).FlowTopToBottom.
-   [layoutDirection](#layoutDirection-prop) - controls the horizontal layout direction: that is, whether items are laid out from the left side of the view to the right, or vice-versa. This value can be either Qt.LeftToRight or Qt.RightToLeft.
-   [verticalLayoutDirection](#verticalLayoutDirection-prop) - controls the vertical layout direction: that is, whether items are laid out from the top of the view down towards the bottom of the view, or vice-versa. This value can be either [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).TopToBottom or [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).BottomToTop.

By default, a [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) flows from left to right, and items are laid out from left to right horizontally, and from top to bottom vertically.

These properties can be combined to produce a variety of layouts, as shown in the table below. The GridViews in the first row all have a [flow](../QtQuick.qtquick-positioning-layouts.md#flow) value of [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).FlowLeftToRight, but use different combinations of horizontal and vertical layout directions (specified by [layoutDirection](#layoutDirection-prop) and [verticalLayoutDirection](#verticalLayoutDirection-prop) respectively). Similarly, the GridViews in the second row below all have a [flow](../QtQuick.qtquick-positioning-layouts.md#flow) value of [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).FlowTopToBottom, but use different combinations of horizontal and vertical layout directions to lay out their items in different ways.

**GridViews** with [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).FlowLeftToRight flow
**(H)** Left to right **(V)** Top to bottom
![](https://developer.ubuntu.com/static/devportal_uploaded/1419befb-0174-4e06-be9b-1e17e0fef8c4-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-layout-lefttoright-ltr-ttb.png)

**(H)** Right to left **(V)** Top to bottom
![](https://developer.ubuntu.com/static/devportal_uploaded/7e9cec9c-e25e-488b-9c19-4bf9c4f53e87-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-layout-lefttoright-rtl-ttb.png)

**(H)** Left to right **(V)** Bottom to top
![](https://developer.ubuntu.com/static/devportal_uploaded/214d7807-4be8-468e-a660-68e7e8b645c6-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-layout-lefttoright-ltr-btt.png)

**(H)** Right to left **(V)** Bottom to top
![](https://developer.ubuntu.com/static/devportal_uploaded/bd7bfc61-6be5-44a8-a080-b68f02c0acb8-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-layout-lefttoright-rtl-btt.png)

**GridViews** with [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).FlowTopToBottom flow
**(H)** Left to right **(V)** Top to bottom
![](https://developer.ubuntu.com/static/devportal_uploaded/7aa48677-f27c-4860-b841-0044cba38e7f-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-layout-toptobottom-ltr-ttb.png)

**(H)** Right to left **(V)** Top to bottom
![](https://developer.ubuntu.com/static/devportal_uploaded/f0110cbf-2d72-4757-bfd9-f8976eb4aa81-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-layout-toptobottom-rtl-ttb.png)

**(H)** Left to right **(V)** Bottom to top
![](https://developer.ubuntu.com/static/devportal_uploaded/05f22e21-8296-496d-8243-545c002325cd-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-layout-toptobottom-ltr-btt.png)

**(H)** Right to left **(V)** Bottom to top
![](https://developer.ubuntu.com/static/devportal_uploaded/1b4d3f4d-6ad6-49b7-8b7a-aff11f097c1d-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-layout-toptobottom-rtl-btt.png)

**See also** [QML Data Models](../QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models), [ListView](../QtQuick.ListView.md), [PathView](../QtQuick.PathView.md), and [Qt Quick Examples - Views](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.views/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="add-prop"></span><span class="name">add</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to apply to items that are added to the view.

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    add: Transition {
        NumberAnimation { properties: "x,y"; from: 100; duration: 1000 }
    }
}
```

Whenever an item is added to the above view, the item will be animated from the position (100,100) to its final x,y position within the view, over one second. The transition only applies to the new items that are added to the view; it does not apply to the items below that are displaced by the addition of the new items. To animate the displaced items, set the [displaced](#displaced-prop) or [addDisplaced](#addDisplaced-prop) properties.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition.md) documentation.

**Note:** This transition is not applied to the items that are created when the view is initially populated, or when the view's [model](#model-prop) changes. (In those cases, the [populate](#populate-prop) transition is applied instead.) Additionally, this transition should *not* animate the height of the new item; doing so will cause any items beneath the new item to be laid out at the wrong position. Instead, the height can be animated within the onAdd handler in the delegate.

**See also** [addDisplaced](#addDisplaced-prop), [populate](#populate-prop), and [ViewTransition](../QtQuick.ViewTransition.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addDisplaced-prop"></span><span class="name">addDisplaced</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to apply to items within the view that are displaced by the addition of other items to the view.

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    addDisplaced: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

Whenever an item is added to the above view, all items beneath the new item are displaced, causing them to move down (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a [NumberAnimation](../QtQuick.NumberAnimation.md) over one second, as specified. This transition is not applied to the new item that has been added to the view; to animate the added items, set the [add](#add-prop) property.

If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the addDisplaced, [moveDisplaced](#moveDisplaced-prop) or [removeDisplaced](#removeDisplaced-prop) transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the [displaced](#displaced-prop) property instead.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition.md) documentation.

**Note:** This transition is not applied to the items that are created when the view is initially populated, or when the view's [model](#model-prop) changes. In those cases, the [populate](#populate-prop) transition is applied instead.

**See also** [displaced](#displaced-prop), [add](#add-prop), [populate](#populate-prop), and [ViewTransition](../QtQuick.ViewTransition.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cacheBuffer-prop"></span><span class="name">cacheBuffer</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property determines whether delegates are retained outside the visible area of the view.

If this value is greater than zero, the view may keep as many delegates instantiated as will fit within the buffer specified. For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns and `cacheBuffer` is set to 40, then up to 6 delegates above and 6 delegates below the visible area may be created/retained. The buffered delegates are created asynchronously, allowing creation to occur across multiple frames and reducing the likelihood of skipping frames. In order to improve painting performance delegates outside the visible area are not painted.

The default value of this property is platform dependent, but will usually be a value greater than zero. Negative values are ignored.

Note that cacheBuffer is not a pixel buffer - it only maintains additional instantiated delegates.

Setting this value can make scrolling the list smoother at the expense of additional memory usage. It is not a substitute for creating efficient delegates; the fewer objects and bindings in a delegate, the faster a view may be scrolled.

The cacheBuffer operates outside of any display margins specified by [displayMarginBeginning](#displayMarginBeginning-prop) or [displayMarginEnd](#displayMarginEnd-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cellHeight-prop"></span><span class="name">cellHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties holds the width and height of each cell in the grid.

The default cell size is 100x100.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cellWidth-prop"></span><span class="name">cellWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties holds the width and height of each cell in the grid.

The default cell size is 100x100.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of items in the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentIndex-prop"></span><span class="name">currentIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The `currentIndex` property holds the index of the current item, and `currentItem` holds the current item. Setting the currentIndex to -1 will clear the highlight and set [currentItem](#currentItem-prop) to null.

If [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop) is `true`, setting either of these properties will smoothly scroll the [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) so that the current item becomes visible.

Note that the position of the current item may only be approximate until it becomes visible in the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentItem-prop"></span><span class="name">currentItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The `currentIndex` property holds the index of the current item, and `currentItem` holds the current item. Setting the [currentIndex](#currentIndex-prop) to -1 will clear the highlight and set currentItem to null.

If [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop) is `true`, setting either of these properties will smoothly scroll the [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) so that the current item becomes visible.

Note that the position of the current item may only be approximate until it becomes visible in the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="name">delegate</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

The delegate provides a template defining each item instantiated by the view. The index is exposed as an accessible `index` property. Properties of the model are also available depending upon the type of [Data Model](../QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models).

The number of objects and bindings in the delegate has a direct effect on the flicking performance of the view. If at all possible, place functionality that is not needed for the normal display of the delegate in a [Loader](../QtQuick.Loader.md) which can load additional components when needed.

The item size of the [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) is determined by [cellHeight](#cellHeight-prop) and [cellWidth](#cellWidth-prop). It will not resize the items based on the size of the root item in the delegate.

The default stacking order of delegate instances is `1`.

**Note:** Delegates are instantiated as needed and may be destroyed at any time. State should *never* be stored in a delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displaced-prop"></span><span class="name">displaced</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the generic transition to apply to items that have been displaced by any model operation that affects the view.

This is a convenience for specifying a generic transition for items that are displaced by add, move or remove operations, without having to specify the individual [addDisplaced](#addDisplaced-prop), [moveDisplaced](#moveDisplaced-prop) and [removeDisplaced](#removeDisplaced-prop) properties. For example, here is a view that specifies a displaced transition:

``` cpp
GridView {
    ...
    displaced: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

When any item is added, moved or removed within the above view, the items below it are displaced, causing them to move down (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a [NumberAnimation](../QtQuick.NumberAnimation.md) over one second, as specified.

If a view specifies this generic displaced transition as well as a specific [addDisplaced](#addDisplaced-prop), [moveDisplaced](#moveDisplaced-prop) or [removeDisplaced](#removeDisplaced-prop) transition, the more specific transition will be used instead of the generic displaced transition when the relevant operation occurs, providing that the more specific transition has not been disabled (by setting [enabled](../QtQuick.Transition.md#enabled-prop) to false). If it has indeed been disabled, the generic displaced transition is applied instead.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition.md) documentation.

**See also** [addDisplaced](#addDisplaced-prop), [moveDisplaced](#moveDisplaced-prop), [removeDisplaced](#removeDisplaced-prop), and [ViewTransition](../QtQuick.ViewTransition.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayMarginBeginning-prop"></span><span class="name">displayMarginBeginning</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property allows delegates to be displayed outside of the view geometry.

If this value is non-zero, the view will create extra delegates before the start of the view, or after the end. The view will create as many delegates as it can fit into the pixel size specified.

For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns, and `displayMarginBeginning` and `displayMarginEnd` are both set to 40, then 6 delegates above and 6 delegates below will be created and shown.

The default value is 0.

This property is meant for allowing certain UI configurations, and not as a performance optimization. If you wish to create delegates outside of the view geometry for performance reasons, you probably want to use the [cacheBuffer](#cacheBuffer-prop) property instead.

This QML property was introduced in QtQuick 2.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayMarginEnd-prop"></span><span class="name">displayMarginEnd</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property allows delegates to be displayed outside of the view geometry.

If this value is non-zero, the view will create extra delegates before the start of the view, or after the end. The view will create as many delegates as it can fit into the pixel size specified.

For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns, and `displayMarginBeginning` and `displayMarginEnd` are both set to 40, then 6 delegates above and 6 delegates below will be created and shown.

The default value is 0.

This property is meant for allowing certain UI configurations, and not as a performance optimization. If you wish to create delegates outside of the view geometry for performance reasons, you probably want to use the [cacheBuffer](#cacheBuffer-prop) property instead.

This QML property was introduced in QtQuick 2.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="effectiveLayoutDirection-prop"></span><span class="name">effectiveLayoutDirection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the effective layout direction of the grid.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) for locale layouts, the visual layout direction of the grid will be mirrored. However, the property [layoutDirection](#layoutDirection-prop) will remain unchanged.

**See also** [GridView::layoutDirection](#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flow-prop"></span><span class="name">flow</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the flow of the grid.

Possible values:

-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).FlowLeftToRight (default) - Items are laid out from left to right, and the view scrolls vertically
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).FlowTopToBottom - Items are laid out from top to bottom, and the view scrolls horizontally

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="footer-prop"></span><span class="name">footer</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

This property holds the component to use as the footer.

An instance of the footer component is created for each view. The footer is positioned at the end of the view, after any items. The default stacking order of the footer is `1`.

**See also** [header](#header-prop) and [footerItem](#footerItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="footerItem-prop"></span><span class="name">footerItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This holds the footer item created from the [footer](#footer-prop) component.

An instance of the footer component is created for each view. The footer is positioned at the end of the view, after any items. The default stacking order of the footer is `1`.

**See also** [footer](#footer-prop) and [headerItem](#headerItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="header-prop"></span><span class="name">header</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

This property holds the component to use as the header.

An instance of the header component is created for each view. The header is positioned at the beginning of the view, before any items. The default stacking order of the header is `1`.

**See also** [footer](#footer-prop) and [headerItem](#headerItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="headerItem-prop"></span><span class="name">headerItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This holds the header item created from the [header](#header-prop) component.

An instance of the header component is created for each view. The header is positioned at the beginning of the view, before any items. The default stacking order of the header is `1`.

**See also** [header](#header-prop) and [footerItem](#footerItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlight-prop"></span><span class="name">highlight</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

This property holds the component to use as the highlight.

An instance of the highlight component is created for each view. The geometry of the resulting component instance will be managed by the view so as to stay with the current item, unless the highlightFollowsCurrentItem property is false. The default stacking order of the highlight item is `0`.

**See also** [highlightItem](#highlightItem-prop) and [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightFollowsCurrentItem-prop"></span><span class="name">highlightFollowsCurrentItem</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property sets whether the highlight is managed by the view.

If this property is true (the default value), the highlight is moved smoothly to follow the current item. Otherwise, the highlight is not moved by the view, and any movement must be implemented by the highlight.

Here is a highlight with its motion defined by a [SpringAnimation](../QtQuick.SpringAnimation.md) item:

``` qml
Component {
    id: highlight
    Rectangle {
        width: view.cellWidth; height: view.cellHeight
        color: "lightsteelblue"; radius: 5
        x: view.currentItem.x
        y: view.currentItem.y
        Behavior on x { SpringAnimation { spring: 3; damping: 0.2 } }
        Behavior on y { SpringAnimation { spring: 3; damping: 0.2 } }
    }
}
GridView {
    id: view
    width: 300; height: 200
    cellWidth: 80; cellHeight: 80
    model: ContactModel {}
    delegate: Column {
        Image { source: portrait; anchors.horizontalCenter: parent.horizontalCenter }
        Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
    }
    highlight: highlight
    highlightFollowsCurrentItem: false
    focus: true
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightItem-prop"></span><span class="name">highlightItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This holds the highlight item created from the [highlight](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.views/#highlight) component.

The highlightItem is managed by the view unless highlightFollowsCurrentItem is set to false. The default stacking order of the highlight item is `0`.

**See also** [highlight](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.views/#highlight) and [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightMoveDuration-prop"></span><span class="name">highlightMoveDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the move animation duration of the highlight delegate.

[highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop) must be true for this property to have effect.

The default value for the duration is 150ms.

**See also** [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightRangeMode-prop"></span><span class="name">highlightRangeMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

These properties define the preferred range of the highlight (for the current item) within the view. The `preferredHighlightBegin` value must be less than the `preferredHighlightEnd` value.

These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the `preferredHighlightBegin` and `preferredHighlightEnd` values to the top and bottom coordinates of where the middle item would be. If the `currentItem` is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for `highlightRangeMode` are:

-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).NoHighlightRange - this is the default value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keyNavigationWraps-prop"></span><span class="name">keyNavigationWraps</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the grid wraps key navigation

If this is true, key navigation that would move the current item selection past one end of the view instead wraps around and moves the selection to the other end of the view.

By default, key navigation is not wrapped.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layoutDirection-prop"></span><span class="name">layoutDirection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the layout direction of the grid.

Possible values:

-   Qt.LeftToRight (default) - Items will be laid out starting in the top, left corner. The flow is dependent on the [GridView::flow](#flow-prop) property.
-   Qt.RightToLeft - Items will be laid out starting in the top, right corner. The flow is dependent on the [GridView::flow](#flow-prop) property.

**Note**: If [GridView::flow](#flow-prop) is set to [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).FlowLeftToRight, this is not to be confused if GridView::layoutDirection is set to Qt.RightToLeft. The [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).FlowLeftToRight flow value simply indicates that the flow is horizontal.

**See also** [GridView::effectiveLayoutDirection](#effectiveLayoutDirection-prop) and [GridView::verticalLayoutDirection](#verticalLayoutDirection-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type"><a href="#model-prop">model</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the model providing data for the grid.

The model provides the set of data that is used to create the items in the view. Models can be created directly in QML using [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel), [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel) or [VisualItemModel](../QtQuick.qtquick-modelviewsdata-modelview.md#visualitemmodel), or provided by C++ model classes. If a C++ model class is used, it must be a subclass of [QAbstractItemModel](../QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel) or a simple list.

**See also** [Data Models](../QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="move-prop"></span><span class="name">move</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to apply to items in the view that are being moved due to a move operation in the view's [model](#model-prop).

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    move: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

Whenever the [model](#model-prop) performs a move operation to move a particular set of indexes, the respective items in the view will be animated to their new positions in the view over one second. The transition only applies to the items that are the subject of the move operation in the model; it does not apply to items below them that are displaced by the move operation. To animate the displaced items, set the [displaced](#displaced-prop) or [moveDisplaced](#moveDisplaced-prop) properties.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition.md) documentation.

**See also** [moveDisplaced](#moveDisplaced-prop) and [ViewTransition](../QtQuick.ViewTransition.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveDisplaced-prop"></span><span class="name">moveDisplaced</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to apply to items that are displaced by a move operation in the view's [model](#model-prop).

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    moveDisplaced: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

Whenever the [model](#model-prop) performs a move operation to move a particular set of indexes, the items between the source and destination indexes of the move operation are displaced, causing them to move upwards or downwards (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a [NumberAnimation](../QtQuick.NumberAnimation.md) over one second, as specified. This transition is not applied to the items that are the actual subjects of the move operation; to animate the moved items, set the [move](#move-prop) property.

If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the [addDisplaced](#addDisplaced-prop), moveDisplaced or [removeDisplaced](#removeDisplaced-prop) transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the [displaced](#displaced-prop) property instead.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition.md) documentation.

**See also** [displaced](#displaced-prop), [move](#move-prop), and [ViewTransition](../QtQuick.ViewTransition.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="populate-prop"></span><span class="name">populate</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to apply to the items that are initially created for a view.

It is applied to all items that are created when:

-   The view is first created
-   The view's [model](#model-prop) changes
-   The view's [model](#model-prop) is reset, if the model is a [QAbstractItemModel](../QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel) subclass

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    populate: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

When the view is initialized, the view will create all the necessary items for the view, then animate them to their correct positions within the view over one second.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition.md) documentation.

**See also** [add](#add-prop) and [ViewTransition](../QtQuick.ViewTransition.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preferredHighlightBegin-prop"></span><span class="name">preferredHighlightBegin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties define the preferred range of the highlight (for the current item) within the view. The `preferredHighlightBegin` value must be less than the `preferredHighlightEnd` value.

These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the `preferredHighlightBegin` and `preferredHighlightEnd` values to the top and bottom coordinates of where the middle item would be. If the `currentItem` is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for `highlightRangeMode` are:

-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).NoHighlightRange - this is the default value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preferredHighlightEnd-prop"></span><span class="name">preferredHighlightEnd</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties define the preferred range of the highlight (for the current item) within the view. The `preferredHighlightBegin` value must be less than the `preferredHighlightEnd` value.

These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the `preferredHighlightBegin` and `preferredHighlightEnd` values to the top and bottom coordinates of where the middle item would be. If the `currentItem` is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for `highlightRangeMode` are:

-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).NoHighlightRange - this is the default value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-prop"></span><span class="name">remove</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to apply to items that are removed from the view.

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    remove: Transition {
        ParallelAnimation {
            NumberAnimation { property: "opacity"; to: 0; duration: 1000 }
            NumberAnimation { properties: "x,y"; to: 100; duration: 1000 }
        }
    }
}
```

Whenever an item is removed from the above view, the item will be animated to the position (100,100) over one second, and in parallel will also change its opacity to 0. The transition only applies to the items that are removed from the view; it does not apply to the items below them that are displaced by the removal of the items. To animate the displaced items, set the [displaced](#displaced-prop) or [removeDisplaced](#removeDisplaced-prop) properties.

Note that by the time the transition is applied, the item has already been removed from the model; any references to the model data for the removed index will not be valid.

Additionally, if the [delayRemove](#delayRemove-attached-prop) attached property has been set for a delegate item, the remove transition will not be applied until [delayRemove](#delayRemove-attached-prop) becomes false again.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition.md) documentation.

**See also** [removeDisplaced](#removeDisplaced-prop) and [ViewTransition](../QtQuick.ViewTransition.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeDisplaced-prop"></span><span class="name">removeDisplaced</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to apply to items in the view that are displaced by the removal of other items in the view.

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    removeDisplaced: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

Whenever an item is removed from the above view, all items beneath it are displaced, causing them to move upwards (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a [NumberAnimation](../QtQuick.NumberAnimation.md) over one second, as specified. This transition is not applied to the item that has actually been removed from the view; to animate the removed items, set the [remove](#remove-prop) property.

If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the [addDisplaced](#addDisplaced-prop), [moveDisplaced](#moveDisplaced-prop) or removeDisplaced transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the [displaced](#displaced-prop) property instead.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition.md) documentation.

**See also** [displaced](#displaced-prop), [remove](#remove-prop), and [ViewTransition](../QtQuick.ViewTransition.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="snapMode-prop"></span><span class="name">snapMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property determines how the view scrolling will settle following a drag or flick. The possible values are:

-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).NoSnap (default) - the view stops anywhere within the visible area.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).SnapToRow - the view settles with a row (or column for `GridView.FlowTopToBottom` flow) aligned with the start of the view.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).SnapOneRow - the view will settle no more than one row (or column for `GridView.FlowTopToBottom` flow) away from the first visible row at the time the mouse button is released. This mode is particularly useful for moving one page at a time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="verticalLayoutDirection-prop"></span><span class="name">verticalLayoutDirection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the vertical layout direction of the grid.

Possible values:

-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).TopToBottom (default) - Items are laid out from the top of the view down to the bottom of the view.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).BottomToTop - Items are laid out from the bottom of the view up to the top of the view.

**See also** [GridView::layoutDirection](#layoutDirection-prop).

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delayRemove-attached-prop"></span><span class="name">GridView.delayRemove</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This attached property holds whether the delegate may be destroyed. It is attached to each instance of the delegate. The default value is false.

It is sometimes necessary to delay the destruction of an item until an animation completes. The example delegate below ensures that the animation completes before the item is removed from the list.

``` qml
Component {
    id: delegate
    Item {
        GridView.onRemove: SequentialAnimation {
            PropertyAction { target: wrapper; property: "GridView.delayRemove"; value: true }
            NumberAnimation { target: wrapper; property: "scale"; to: 0; duration: 250; easing.type: Easing.InOutQuad }
            PropertyAction { target: wrapper; property: "GridView.delayRemove"; value: false }
        }
    }
}
```

If a [remove](#remove-prop) transition has been specified, it will not be applied until delayRemove is returned to `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isCurrentItem-attached-prop"></span><span class="name">GridView.isCurrentItem</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This attached property is true if this delegate is the current item; otherwise false.

It is attached to each instance of the delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="view-attached-prop"></span><span class="name">GridView.view</span> : <span class="type"><a href="index.html">GridView</a></span></p></td>
</tr>
</tbody>
</table>

This attached property holds the view that manages this delegate instance.

It is attached to each instance of the delegate and also to the header, the footer and the highlight delegates.

``` qml
GridView {
    width: 300; height: 200
    cellWidth: 80; cellHeight: 80
    Component {
        id: contactsDelegate
        Rectangle {
            id: wrapper
            width: 80
            height: 80
            color: GridView.isCurrentItem ? "black" : "red"
            Text {
                id: contactInfo
                text: name + ": " + number
                color: wrapper.GridView.isCurrentItem ? "red" : "black"
            }
        }
    }
    model: ContactModel {}
    delegate: contactsDelegate
    focus: true
}
```

Attached Signal Documentation
-----------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="add-signal"></span><span class="name">add</span>()</p></td>
</tr>
</tbody>
</table>

This attached signal is emitted immediately after an item is added to the view.

The corresponding handler is `onAdd`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-signal"></span><span class="name">remove</span>()</p></td>
</tr>
</tbody>
</table>

This attached signal is emitted immediately before an item is removed from the view.

If a [remove](#remove-prop) transition has been specified, it is applied after this signal is handled, providing that [delayRemove](#delayRemove-attached-prop) is false.

The corresponding handler is `onRemove`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="forceLayout-method"></span><span class="name">forceLayout</span>()</p></td>
</tr>
</tbody>
</table>

Responding to changes in the model is usually batched to happen only once per frame. This means that inside script blocks it is possible for the underlying model to have changed, but the [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) has not caught up yet.

This method forces the [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) to immediately respond to any outstanding changes in the model.

**Note**: methods should only be called after the Component has completed.

This QML method was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="indexAt-method"></span><span class="type">int</span> <span class="name">indexAt</span>(<span class="type">int</span> <em>x</em>, <span class="type">int</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns the index of the visible item containing the point *x*, *y* in content coordinates. If there is no item at the point specified, or the item is not visible -1 is returned.

If the item is outside the visible area, -1 is returned, regardless of whether an item will exist at that point when scrolled into view.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemAt-method"></span><span class="type"><a href="QtQuick.Item.md">Item</a></span> <span class="name">itemAt</span>(<span class="type">int</span> <em>x</em>, <span class="type">int</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns the visible item containing the point *x*, *y* in content coordinates. If there is no item at the point specified, or the item is not visible null is returned.

If the item is outside the visible area, null is returned, regardless of whether an item will exist at that point when scrolled into view.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCurrentIndexDown-method"></span><span class="name">moveCurrentIndexDown</span>()</p></td>
</tr>
</tbody>
</table>

Move the [currentIndex](#currentIndex-prop) down one item in the view. The current index will wrap if [keyNavigationWraps](#keyNavigationWraps-prop) is true and it is currently at the end. This method has no effect if the [count](#count-prop) is zero.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCurrentIndexLeft-method"></span><span class="name">moveCurrentIndexLeft</span>()</p></td>
</tr>
</tbody>
</table>

Move the [currentIndex](#currentIndex-prop) left one item in the view. The current index will wrap if [keyNavigationWraps](#keyNavigationWraps-prop) is true and it is currently at the end. This method has no effect if the [count](#count-prop) is zero.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCurrentIndexRight-method"></span><span class="name">moveCurrentIndexRight</span>()</p></td>
</tr>
</tbody>
</table>

Move the [currentIndex](#currentIndex-prop) right one item in the view. The current index will wrap if [keyNavigationWraps](#keyNavigationWraps-prop) is true and it is currently at the end. This method has no effect if the [count](#count-prop) is zero.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCurrentIndexUp-method"></span><span class="name">moveCurrentIndexUp</span>()</p></td>
</tr>
</tbody>
</table>

Move the [currentIndex](#currentIndex-prop) up one item in the view. The current index will wrap if [keyNavigationWraps](#keyNavigationWraps-prop) is true and it is currently at the end. This method has no effect if the [count](#count-prop) is zero.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionViewAtBeginning-method"></span><span class="name">positionViewAtBeginning</span>()</p></td>
</tr>
</tbody>
</table>

Positions the view at the beginning or end, taking into account any header or footer.

It is not recommended to use [contentX](../QtQuick.Flickable.md#contentX-prop) or [contentY](../QtQuick.Flickable.md#contentY-prop) to position the view at a particular index. This is unreliable since removing items from the start of the list does not cause all other items to be repositioned, and because the actual start of the view can vary based on the size of the delegates.

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end on startup:

``` cpp
Component.onCompleted: positionViewAtEnd()
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionViewAtEnd-method"></span><span class="name">positionViewAtEnd</span>()</p></td>
</tr>
</tbody>
</table>

Positions the view at the beginning or end, taking into account any header or footer.

It is not recommended to use [contentX](../QtQuick.Flickable.md#contentX-prop) or [contentY](../QtQuick.Flickable.md#contentY-prop) to position the view at a particular index. This is unreliable since removing items from the start of the list does not cause all other items to be repositioned, and because the actual start of the view can vary based on the size of the delegates.

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end on startup:

``` cpp
Component.onCompleted: positionViewAtEnd()
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionViewAtIndex-method"></span><span class="name">positionViewAtIndex</span>(<span class="type">int</span> <em>index</em>, <span class="type">PositionMode</span> <em>mode</em>)</p></td>
</tr>
</tbody>
</table>

Positions the view such that the *index* is at the position specified by *mode*:

-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).Beginning - position item at the top (or left for `GridView.FlowTopToBottom` flow) of the view.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).Center - position item in the center of the view.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).End - position item at bottom (or right for horizontal orientation) of the view.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).Visible - if any part of the item is visible then take no action, otherwise bring the item into view.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).Contain - ensure the entire item is visible. If the item is larger than the view the item is positioned at the top (or left for `GridView.FlowTopToBottom` flow) of the view.
-   [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).SnapPosition - position the item at [preferredHighlightBegin](#preferredHighlightBegin-prop). This mode is only valid if [highlightRangeMode](#highlightRangeMode-prop) is StrictlyEnforceRange or snapping is enabled via [snapMode](#snapMode-prop).

If positioning the view at the index would cause empty space to be displayed at the beginning or end of the view, the view will be positioned at the boundary.

It is not recommended to use [contentX](../QtQuick.Flickable.md#contentX-prop) or [contentY](../QtQuick.Flickable.md#contentY-prop) to position the view at a particular index. This is unreliable since removing items from the start of the view does not cause all other items to be repositioned. The correct way to bring an item into view is with `positionViewAtIndex`.

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end:

``` cpp
Component.onCompleted: positionViewAtIndex(count - 1, GridView.Beginning)
```

