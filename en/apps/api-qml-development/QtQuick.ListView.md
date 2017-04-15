---
Title: QtQuick.ListView
---
        
ListView
========

<span class="subtitle"></span>
Provides a list view of items provided by a model More...

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
-   ****[count](#count-prop)**** : int
-   ****[currentIndex](#currentIndex-prop)**** : int
-   ****[currentItem](#currentItem-prop)**** : Item
-   ****[currentSection](#currentSection-prop)**** : string
-   ****[delegate](#delegate-prop)**** : Component
-   ****[displaced](#displaced-prop)**** : Transition
-   ****[displayMarginBeginning](#displayMarginBeginning-prop)**** : int
-   ****[displayMarginEnd](#displayMarginEnd-prop)**** : int
-   ****[effectiveLayoutDirection](#effectiveLayoutDirection-prop)**** : enumeration
-   ****[footer](#footer-prop)**** : Component
-   ****[footerItem](#footerItem-prop)**** : Item
-   ****[footerPositioning](#footerPositioning-prop)**** : enumeration
-   ****[header](#header-prop)**** : Component
-   ****[headerItem](#headerItem-prop)**** : Item
-   ****[headerPositioning](#headerPositioning-prop)**** : enumeration
-   ****[highlight](#highlight-prop)**** : Component
-   ****[highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop)**** : bool
-   ****[highlightItem](#highlightItem-prop)**** : Item
-   ****[highlightMoveDuration](#highlightMoveDuration-prop)**** : int
-   ****[highlightMoveVelocity](#highlightMoveVelocity-prop)**** : real
-   ****[highlightRangeMode](#highlightRangeMode-prop)**** : enumeration
-   ****[highlightResizeDuration](#highlightResizeDuration-prop)**** : int
-   ****[highlightResizeVelocity](#highlightResizeVelocity-prop)**** : real
-   ****[keyNavigationWraps](#keyNavigationWraps-prop)**** : bool
-   ****[layoutDirection](#layoutDirection-prop)**** : enumeration
-   ****[model](#model-prop)**** : model
-   ****[move](#move-prop)**** : Transition
-   ****[moveDisplaced](#moveDisplaced-prop)**** : Transition
-   ****[orientation](#orientation-prop)**** : enumeration
-   ****[populate](#populate-prop)**** : Transition
-   ****[preferredHighlightBegin](#preferredHighlightBegin-prop)**** : real
-   ****[preferredHighlightEnd](#preferredHighlightEnd-prop)**** : real
-   ****[remove](#remove-prop)**** : Transition
-   ****[removeDisplaced](#removeDisplaced-prop)**** : Transition
-   ****[section](#section-prop)****
    -   ****[section.property](#section.property-prop)**** : string
    -   ****[section.criteria](#section.criteria-prop)**** : enumeration
    -   ****[section.delegate](#section.delegate-prop)**** : Component
    -   ****[section.labelPositioning](#section.labelPositioning-prop)**** : enumeration
-   ****[snapMode](#snapMode-prop)**** : enumeration
-   ****[spacing](#spacing-prop)**** : real
-   ****[verticalLayoutDirection](#verticalLayoutDirection-prop)**** : enumeration

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[delayRemove](#delayRemove-attached-prop)**** : bool
-   ****[isCurrentItem](#isCurrentItem-attached-prop)**** : bool
-   ****[nextSection](#nextSection-attached-prop)**** : string
-   ****[previousSection](#previousSection-attached-prop)**** : string
-   ****[section](#section-attached-prop)**** : string
-   ****[view](#view-attached-prop)**** : ListView

<span id="attached-signals"></span>
Attached Signals
----------------

-   ****[add](#add-signal)****()
-   ****[remove](#remove-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[decrementCurrentIndex](#decrementCurrentIndex-method)****()
-   ****[forceLayout](#forceLayout-method)****()
-   ****[incrementCurrentIndex](#incrementCurrentIndex-method)****()
-   int ****[indexAt](#indexAt-method)****(int *x*, int *y*)
-   Item ****[itemAt](#itemAt-method)****(int *x*, int *y*)
-   ****[positionViewAtBeginning](#positionViewAtBeginning-method)****()
-   ****[positionViewAtEnd](#positionViewAtEnd-method)****()
-   ****[positionViewAtIndex](#positionViewAtIndex-method)****(int *index*, PositionMode *mode*)

<span id="details"></span>
Detailed Description
--------------------

A [ListView](index.html) displays data from models created from built-in QML types like [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel) and [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel), or custom model classes defined in C++ that inherit from [QAbstractItemModel](../QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel) or QAbstractListModel.

A [ListView](index.html) has a [model](#model-prop), which defines the data to be displayed, and a [delegate](#delegate-prop), which defines how the data should be displayed. Items in a [ListView](index.html) are laid out horizontally or vertically. List views are inherently flickable because [ListView](index.html) inherits from [Flickable](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.touchinteraction/#flickable).

<span id="example-usage"></span>
Example Usage
-------------

The following example shows the definition of a simple list model defined in a file called `ContactModel.qml`:

``` qml
import QtQuick 2.0
ListModel {
    ListElement {
        name: "Bill Smith"
        number: "555 3264"
    }
    ListElement {
        name: "John Brown"
        number: "555 8426"
    }
    ListElement {
        name: "Sam Wise"
        number: "555 0473"
    }
}
```

Another component can display this model data in a [ListView](index.html), like this:

``` qml
import QtQuick 2.0
ListView {
    width: 180; height: 200
    model: ContactModel {}
    delegate: Text {
        text: name + ": " + number
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/623f347a-c3b6-43cd-8d2a-2727e4ad9367-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-simple.png)

Here, the [ListView](index.html) creates a `ContactModel` component for its model, and a [Text](../QtQuick.qtquick-releasenotes.md#text) item for its delegate. The view will create a new [Text](../QtQuick.qtquick-releasenotes.md#text) component for each item in the model. Notice the delegate is able to access the model's `name` and `number` data directly.

An improved list view is shown below. The delegate is visually improved and is moved into a separate `contactDelegate` component.

``` qml
Rectangle {
    width: 180; height: 200
    Component {
        id: contactDelegate
        Item {
            width: 180; height: 40
            Column {
                Text { text: '<b>Name:</b> ' + name }
                Text { text: '<b>Number:</b> ' + number }
            }
        }
    }
    ListView {
        anchors.fill: parent
        model: ContactModel {}
        delegate: contactDelegate
        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        focus: true
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/9c47d771-e103-46ab-a9f3-856f60ac9913-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-highlight.png)

The currently selected item is highlighted with a blue [Rectangle](../QtQuick.Rectangle.md) using the [highlight](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.views/#highlight) property, and `focus` is set to `true` to enable keyboard navigation for the list view. The list view itself is a focus scope (see [Keyboard Focus in Qt Quick](../QtQuick.qtquick-input-focus.md) for more details).

Delegates are instantiated as needed and may be destroyed at any time. They are parented to [ListView](index.html)'s [contentItem](../QtQuick.Flickable.md#contentItem-prop), not to the view itself. State should *never* be stored in a delegate.

[ListView](index.html) attaches a number of properties to the root item of the delegate, for example `ListView:isCurrentItem`. In the following example, the root delegate item can access this attached property directly as `ListView.isCurrentItem`, while the child `contactInfo` object must refer to this property as `wrapper.ListView.isCurrentItem`.

``` qml
ListView {
    width: 180; height: 200
    Component {
        id: contactsDelegate
        Rectangle {
            id: wrapper
            width: 180
            height: contactInfo.height
            color: ListView.isCurrentItem ? "black" : "red"
            Text {
                id: contactInfo
                text: name + ": " + number
                color: wrapper.ListView.isCurrentItem ? "red" : "black"
            }
        }
    }
    model: ContactModel {}
    delegate: contactsDelegate
    focus: true
}
```

**Note:** Views do not enable *clip* automatically. If the view is not clipped by another item or the screen, it will be necessary to set *clip: true* in order to have the out of view items clipped nicely.

<span id="listview-layouts"></span>
ListView Layouts
----------------

The layout of the items in a [ListView](index.html) can be controlled by these properties:

-   [orientation](#orientation-prop) - controls whether items flow horizontally or vertically. This value can be either Qt.Horizontal or Qt.Vertical.
-   [layoutDirection](#layoutDirection-prop) - controls the horizontal layout direction for a horizontally-oriented view: that is, whether items are laid out from the left side of the view to the right, or vice-versa. This value can be either Qt.LeftToRight or Qt.RightToLeft.
-   [verticalLayoutDirection](#verticalLayoutDirection-prop) - controls the vertical layout direction for a vertically-oriented view: that is, whether items are laid out from the top of the view down towards the bottom of the view, or vice-versa. This value can be either [ListView](index.html).TopToBottom or [ListView](index.html).BottomToTop.

By default, a [ListView](index.html) has a vertical orientation, and items are laid out from top to bottom. The table below shows the different layouts that a [ListView](index.html) can have, depending on the values of the properties listed above.

**ListViews** with Qt.Vertical orientation
Top to bottom
![](https://developer.ubuntu.com/static/devportal_uploaded/b689120d-afd7-4202-942f-b1057b1b4738-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-layout-toptobottom.png)

Bottom to top
![](https://developer.ubuntu.com/static/devportal_uploaded/955ba826-a623-47ae-a968-60ff5061ab86-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-layout-bottomtotop.png)

**ListViews** with Qt.Horizontal orientation
Left to right
![](https://developer.ubuntu.com/static/devportal_uploaded/8670ec60-50da-42ed-8549-73ed143e358c-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-layout-lefttoright.png)

Right to left
![](https://developer.ubuntu.com/static/devportal_uploaded/a9939c1d-e6aa-4d05-a631-eb91dca96080-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-layout-righttoleft.png)

**See also** [QML Data Models](../QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models), [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview), [PathView](../QtQuick.PathView.md), and [Qt Quick Examples - Views](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.views/).

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
ListView {
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
ListView {
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

If this value is greater than zero, the view may keep as many delegates instantiated as it can fit within the buffer specified. For example, if in a vertical view the delegate is 20 pixels high and `cacheBuffer` is set to 40, then up to 2 delegates above and 2 delegates below the visible area may be created/retained. The buffered delegates are created asynchronously, allowing creation to occur across multiple frames and reducing the likelihood of skipping frames. In order to improve painting performance delegates outside the visible area are not painted.

The default value of this property is platform dependent, but will usually be a value greater than zero. Negative values are ignored.

Note that cacheBuffer is not a pixel buffer - it only maintains additional instantiated delegates.

Setting this value can improve the smoothness of scrolling behavior at the expense of additional memory usage. It is not a substitute for creating efficient delegates; the fewer objects and bindings in a delegate, the faster a view can be scrolled.

The cacheBuffer operates outside of any display margins specified by [displayMarginBeginning](#displayMarginBeginning-prop) or [displayMarginEnd](#displayMarginEnd-prop).

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

If [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop) is `true`, setting either of these properties will smoothly scroll the [ListView](index.html) so that the current item becomes visible.

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

If [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop) is `true`, setting either of these properties will smoothly scroll the [ListView](index.html) so that the current item becomes visible.

Note that the position of the current item may only be approximate until it becomes visible in the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentSection-prop"></span><span class="name">currentSection</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the section that is currently at the beginning of the view.

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

The [ListView](index.html) will lay out the items based on the size of the root item in the delegate.

It is recommended that the delegate's size be a whole number to avoid sub-pixel alignment of items.

The default stacking order of delegate instances is `1`.

**Note:** Delegates are instantiated as needed and may be destroyed at any time. They are parented to [ListView](index.html)'s [contentItem](../QtQuick.Flickable.md#contentItem-prop), not to the view itself. State should *never* be stored in a delegate.

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

This is a convenience for specifying the generic transition to be applied to any items that are displaced by an add, move or remove operation, without having to specify the individual [addDisplaced](#addDisplaced-prop), [moveDisplaced](#moveDisplaced-prop) and [removeDisplaced](#removeDisplaced-prop) properties. For example, here is a view that specifies a displaced transition:

``` cpp
ListView {
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

For example, if in a vertical view the delegate is 20 pixels high and `displayMarginBeginning` and `displayMarginEnd` are both set to 40, then 2 delegates above and 2 delegates below will be created and shown.

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

For example, if in a vertical view the delegate is 20 pixels high and `displayMarginBeginning` and `displayMarginEnd` are both set to 40, then 2 delegates above and 2 delegates below will be created and shown.

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

This property holds the effective layout direction of a horizontally-oriented list.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) for locale layouts, the visual layout direction of the horizontal list will be mirrored. However, the property [layoutDirection](#layoutDirection-prop) will remain unchanged.

**See also** [ListView::layoutDirection](#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring.md).

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
<td><p><span id="footerPositioning-prop"></span><span class="name">footerPositioning</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property determines the positioning of the [footer item](#footerItem-prop).

The possible values are:

-   [ListView](index.html).InlineFooter (default) - the footer is positioned in the end of the content and moves together with the content like an ordinary item.
-   [ListView](index.html).OverlayFooter - the footer is positioned in the end of the view.
-   [ListView](index.html).PullBackFooter - the footer is positioned in the end of the view. The footer can be pushed away by moving the content backwards, and pulled back by moving the content forwards.

This QML property was introduced in Qt 5.4.

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
<td><p><span id="headerPositioning-prop"></span><span class="name">headerPositioning</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property determines the positioning of the [header item](#headerItem-prop).

The possible values are:

-   [ListView](index.html).InlineHeader (default) - the header is positioned in the beginning of the content and moves together with the content like an ordinary item.
-   [ListView](index.html).OverlayHeader - the header is positioned in the beginning of the view.
-   [ListView](index.html).PullBackHeader - the header is positioned in the beginning of the view. The header can be pushed away by moving the content forwards, and pulled back by moving the content backwards.

This QML property was introduced in Qt 5.4.

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

An instance of the highlight component is created for each list. The geometry of the resulting component instance is managed by the list so as to stay with the current item, unless the highlightFollowsCurrentItem property is false. The default stacking order of the highlight item is `0`.

**See also** [highlightItem](#highlightItem-prop), [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop), and [ListView highlight example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.views/#highlight).

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

This property holds whether the highlight is managed by the view.

If this property is true (the default value), the highlight is moved smoothly to follow the current item. Otherwise, the highlight is not moved by the view, and any movement must be implemented by the highlight.

Here is a highlight with its motion defined by a [SpringAnimation](../QtQuick.SpringAnimation.md) item:

``` qml
Component {
    id: highlight
    Rectangle {
        width: 180; height: 40
        color: "lightsteelblue"; radius: 5
        y: list.currentItem.y
        Behavior on y {
            SpringAnimation {
                spring: 3
                damping: 0.2
            }
        }
    }
}
ListView {
    id: list
    width: 180; height: 200
    model: ContactModel {}
    delegate: Text { text: name }
    highlight: highlight
    highlightFollowsCurrentItem: false
    focus: true
}
```

Note that the highlight animation also affects the way that the view is scrolled. This is because the view moves to maintain the highlight within the preferred highlight range (or visible viewport).

**See also** [highlight](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.views/#highlight) and [highlightMoveVelocity](#highlightMoveVelocity-prop).

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

This holds the highlight item created from the [highlight](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.views/#highlight) component.

The `highlightItem` is managed by the view unless highlightFollowsCurrentItem is set to false. The default stacking order of the highlight item is `0`.

**See also** [highlight](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.views/#highlight) and [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop).

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

These properties control the speed of the move and resize animations for the highlight delegate.

[highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop) must be true for these properties to have effect.

The default value for the velocity properties is 400 pixels/second. The default value for the duration properties is -1, i.e. the highlight will take as much time as necessary to move at the set speed.

These properties have the same characteristics as a [SmoothedAnimation](../QtQuick.SmoothedAnimation.md).

**See also** [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightMoveVelocity-prop"></span><span class="name">highlightMoveVelocity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties control the speed of the move and resize animations for the highlight delegate.

[highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop) must be true for these properties to have effect.

The default value for the velocity properties is 400 pixels/second. The default value for the duration properties is -1, i.e. the highlight will take as much time as necessary to move at the set speed.

These properties have the same characteristics as a [SmoothedAnimation](../QtQuick.SmoothedAnimation.md).

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

These properties affect the position of the current item when the list is scrolled. For example, if the currently selected item should stay in the middle of the list when the view is scrolled, set the `preferredHighlightBegin` and `preferredHighlightEnd` values to the top and bottom coordinates of where the middle item would be. If the `currentItem` is changed programmatically, the list will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for `highlightRangeMode` are:

-   [ListView](index.html).ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the list or due to mouse interaction.
-   [ListView](index.html).StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-   [ListView](index.html).NoHighlightRange - this is the default value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightResizeDuration-prop"></span><span class="name">highlightResizeDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

These properties control the speed of the move and resize animations for the highlight delegate.

[highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop) must be true for these properties to have effect.

The default value for the velocity properties is 400 pixels/second. The default value for the duration properties is -1, i.e. the highlight will take as much time as necessary to move at the set speed.

These properties have the same characteristics as a [SmoothedAnimation](../QtQuick.SmoothedAnimation.md).

**See also** [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightResizeVelocity-prop"></span><span class="name">highlightResizeVelocity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties control the speed of the move and resize animations for the highlight delegate.

[highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop) must be true for these properties to have effect.

The default value for the velocity properties is 400 pixels/second. The default value for the duration properties is -1, i.e. the highlight will take as much time as necessary to move at the set speed.

These properties have the same characteristics as a [SmoothedAnimation](../QtQuick.SmoothedAnimation.md).

**See also** [highlightFollowsCurrentItem](#highlightFollowsCurrentItem-prop).

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

This property holds whether the list wraps key navigation.

If this is true, key navigation that would move the current item selection past the end of the list instead wraps around and moves the selection to the start of the list, and vice-versa.

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

This property holds the layout direction of a horizontally-oriented list.

Possible values:

-   Qt.LeftToRight (default) - Items will be laid out from left to right.
-   Qt.RightToLeft - Items will be laid out from right to let.

Setting this property has no effect if the [orientation](#orientation-prop) is Qt.Vertical.

**See also** [ListView::effectiveLayoutDirection](#effectiveLayoutDirection-prop) and [ListView::verticalLayoutDirection](#verticalLayoutDirection-prop).

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

This property holds the model providing data for the list.

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
ListView {
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
ListView {
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
<td><p><span id="orientation-prop"></span><span class="name">orientation</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the orientation of the list.

Possible values:

-   [ListView](index.html).Horizontal - Items are laid out horizontally
-   [ListView](index.html).Vertical (default) - Items are laid out vertically

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Horizontal orientation:
<p><img src="https://developer.ubuntu.com/static/devportal_uploaded/92b0d421-739a-4190-9c90-7b7f5ee18df9-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/ListViewHorizontal.png" /></p></td>
</tr>
<tr class="even">
<td>Vertical orientation:
<p><img src="https://developer.ubuntu.com/static/devportal_uploaded/7d9f1bcb-7b2e-42c9-9db6-0a07627451bb-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-highlight.png" /></p></td>
</tr>
</tbody>
</table>

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
ListView {
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

These properties affect the position of the current item when the list is scrolled. For example, if the currently selected item should stay in the middle of the list when the view is scrolled, set the `preferredHighlightBegin` and `preferredHighlightEnd` values to the top and bottom coordinates of where the middle item would be. If the `currentItem` is changed programmatically, the list will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for `highlightRangeMode` are:

-   [ListView](index.html).ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the list or due to mouse interaction.
-   [ListView](index.html).StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-   [ListView](index.html).NoHighlightRange - this is the default value.

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

These properties affect the position of the current item when the list is scrolled. For example, if the currently selected item should stay in the middle of the list when the view is scrolled, set the `preferredHighlightBegin` and `preferredHighlightEnd` values to the top and bottom coordinates of where the middle item would be. If the `currentItem` is changed programmatically, the list will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for `highlightRangeMode` are:

-   [ListView](index.html).ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the list or due to mouse interaction.
-   [ListView](index.html).StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-   [ListView](index.html).NoHighlightRange - this is the default value.

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
ListView {
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
ListView {
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
<thead>
<tr class="header">
<th><p><span id="section-prop"></span><strong>section group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="section.property-prop"></span><span class="name">section.property</span> : <span class="type">string</span></p></td>
</tr>
<tr class="even">
<td><p><span id="section.criteria-prop"></span><span class="name">section.criteria</span> : <span class="type">enumeration</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="section.delegate-prop"></span><span class="name">section.delegate</span> : <span class="type">Component</span></p></td>
</tr>
<tr class="even">
<td><p><span id="section.labelPositioning-prop"></span><span class="name">section.labelPositioning</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

These properties determine the expression to be evaluated and appearance of the section labels.

`section.property` holds the name of the property that is the basis of each section.

`section.criteria` holds the criteria for forming each section based on `section.property`. This value can be one of:

-   ViewSection.FullString (default) - sections are created based on the `section.property` value.
-   ViewSection.FirstCharacter - sections are created based on the first character of the `section.property` value (for example, 'A', 'B', 'C' sections, etc. for an address book)

A case insensitive comparison is used when determining section boundaries.

`section.delegate` holds the delegate component for each section. The default stacking order of section delegate instances is `2`.

`section.labelPositioning` determines whether the current and/or next section labels stick to the start/end of the view, and whether the labels are shown inline. This value can be a combination of:

-   ViewSection.InlineLabels - section labels are shown inline between the item delegates separating sections (default).
-   ViewSection.CurrentLabelAtStart - the current section label sticks to the start of the view as it is moved.
-   ViewSection.NextLabelAtEnd - the next section label (beyond all visible sections) sticks to the end of the view as it is moved.

    **Note:** Enabling `ViewSection.NextLabelAtEnd` requires the view to scan ahead for the next section, which has performance implications, especially for slower models.

Each item in the list has attached properties named `ListView.section`, `ListView.previousSection` and `ListView.nextSection`.

For example, here is a [ListView](index.html) that displays a list of animals, separated into sections. Each item in the [ListView](index.html) is placed in a different section depending on the "size" property of the model item. The `sectionHeading` delegate component provides the light blue bar that marks the beginning of each section.

``` qml
    // The delegate for each section header
    Component {
        id: sectionHeading
        Rectangle {
            width: container.width
            height: childrenRect.height
            color: "lightsteelblue"
            Text {
                text: section
                font.bold: true
                font.pixelSize: 20
            }
        }
    }
    ListView {
        id: view
        anchors.top: parent.top
        anchors.bottom: buttonBar.top
        width: parent.width
        model: animalsModel
        delegate: Text { text: name; font.pixelSize: 18 }
        section.property: "size"
        section.criteria: ViewSection.FullString
        section.delegate: sectionHeading
    }
```

![](https://developer.ubuntu.com/static/devportal_uploaded/e431f34e-e84b-4da3-a0cd-c8e09407cf56-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/qml-listview-sections-example.png)

**Note:** Adding sections to a [ListView](index.html) does not automatically re-order the list items by the section criteria. If the model is not ordered by section, then it is possible that the sections created will not be unique; each boundary between differing sections will result in a section header being created even if that section exists elsewhere.

**See also** [ListView examples](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.views/).

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

-   [ListView](index.html).NoSnap (default) - the view stops anywhere within the visible area.
-   [ListView](index.html).SnapToItem - the view settles with an item aligned with the start of the view.
-   [ListView](index.html).SnapOneItem - the view settles no more than one item away from the first visible item at the time the mouse button is released. This mode is particularly useful for moving one page at a time.

`snapMode` does not affect the [currentIndex](#currentIndex-prop). To update the [currentIndex](#currentIndex-prop) as the list is moved, set [highlightRangeMode](#highlightRangeMode-prop) to `ListView.StrictlyEnforceRange`.

**See also** [highlightRangeMode](#highlightRangeMode-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spacing-prop"></span><span class="name">spacing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the spacing between items.

The default value is 0.

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

This property holds the layout direction of a vertically-oriented list.

Possible values:

-   [ListView](index.html).TopToBottom (default) - Items are laid out from the top of the view down to the bottom of the view.
-   [ListView](index.html).BottomToTop - Items are laid out from the bottom of the view up to the top of the view.

Setting this property has no effect if the [orientation](#orientation-prop) is Qt.Horizontal.

**See also** [ListView::layoutDirection](#layoutDirection-prop).

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delayRemove-attached-prop"></span><span class="name">ListView.delayRemove</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This attached property holds whether the delegate may be destroyed. It is attached to each instance of the delegate. The default value is false.

It is sometimes necessary to delay the destruction of an item until an animation completes. The example delegate below ensures that the animation completes before the item is removed from the list.

``` qml
Component {
    id: delegate
    Item {
        ListView.onRemove: SequentialAnimation {
            PropertyAction { target: wrapper; property: "ListView.delayRemove"; value: true }
            NumberAnimation { target: wrapper; property: "scale"; to: 0; duration: 250; easing.type: Easing.InOutQuad }
            PropertyAction { target: wrapper; property: "ListView.delayRemove"; value: false }
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
<td><p><span id="isCurrentItem-attached-prop"></span><span class="name">ListView.isCurrentItem</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This attached property is true if this delegate is the current item; otherwise false.

It is attached to each instance of the delegate.

This property may be used to adjust the appearance of the current item, for example:

``` qml
ListView {
    width: 180; height: 200
    Component {
        id: contactsDelegate
        Rectangle {
            id: wrapper
            width: 180
            height: contactInfo.height
            color: ListView.isCurrentItem ? "black" : "red"
            Text {
                id: contactInfo
                text: name + ": " + number
                color: wrapper.ListView.isCurrentItem ? "red" : "black"
            }
        }
    }
    model: ContactModel {}
    delegate: contactsDelegate
    focus: true
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nextSection-attached-prop"></span><span class="name">ListView.nextSection</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This attached property holds the section of the next element.

It is attached to each instance of the delegate.

The section is evaluated using the [section](#section.property-prop) properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousSection-attached-prop"></span><span class="name">ListView.previousSection</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This attached property holds the section of the previous element.

It is attached to each instance of the delegate.

The section is evaluated using the [section](#section.property-prop) properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="section-attached-prop"></span><span class="name">ListView.section</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This attached property holds the section of this element.

It is attached to each instance of the delegate.

The section is evaluated using the [section](#section.property-prop) properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="view-attached-prop"></span><span class="name">ListView.view</span> : <span class="type"><a href="index.html">ListView</a></span></p></td>
</tr>
</tbody>
</table>

This attached property holds the view that manages this delegate instance.

It is attached to each instance of the delegate and also to the header, the footer, the section and the highlight delegates.

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

If an [add](#add-prop) transition is specified, it is applied immediately after this signal is handled.

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
<td><p><span id="decrementCurrentIndex-method"></span><span class="name">decrementCurrentIndex</span>()</p></td>
</tr>
</tbody>
</table>

Decrements the current index. The current index will wrap if [keyNavigationWraps](#keyNavigationWraps-prop) is true and it is currently at the beginning. This method has no effect if the [count](#count-prop) is zero.

**Note**: methods should only be called after the Component has completed.

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

Responding to changes in the model is usually batched to happen only once per frame. This means that inside script blocks it is possible for the underlying model to have changed, but the [ListView](index.html) has not caught up yet.

This method forces the [ListView](index.html) to immediately respond to any outstanding changes in the model.

**Note**: methods should only be called after the Component has completed.

This QML method was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="incrementCurrentIndex-method"></span><span class="name">incrementCurrentIndex</span>()</p></td>
</tr>
</tbody>
</table>

Increments the current index. The current index will wrap if [keyNavigationWraps](#keyNavigationWraps-prop) is true and it is currently at the end. This method has no effect if the [count](#count-prop) is zero.

**Note**: methods should only be called after the Component has completed.

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

-   [ListView](index.html).Beginning - position item at the top (or left for horizontal orientation) of the view.
-   [ListView](index.html).Center - position item in the center of the view.
-   [ListView](index.html).End - position item at bottom (or right for horizontal orientation) of the view.
-   [ListView](index.html).Visible - if any part of the item is visible then take no action, otherwise bring the item into view.
-   [ListView](index.html).Contain - ensure the entire item is visible. If the item is larger than the view the item is positioned at the top (or left for horizontal orientation) of the view.
-   [ListView](index.html).SnapPosition - position the item at [preferredHighlightBegin](#preferredHighlightBegin-prop). This mode is only valid if [highlightRangeMode](#highlightRangeMode-prop) is StrictlyEnforceRange or snapping is enabled via [snapMode](#snapMode-prop).

If positioning the view at *index* would cause empty space to be displayed at the beginning or end of the view, the view will be positioned at the boundary.

It is not recommended to use [contentX](../QtQuick.Flickable.md#contentX-prop) or [contentY](../QtQuick.Flickable.md#contentY-prop) to position the view at a particular index. This is unreliable since removing items from the start of the list does not cause all other items to be repositioned, and because the actual start of the view can vary based on the size of the delegates. The correct way to bring an item into view is with `positionViewAtIndex`.

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end:

``` cpp
Component.onCompleted: positionViewAtIndex(count - 1, ListView.Beginning)
```

