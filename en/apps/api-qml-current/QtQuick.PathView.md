---
Title: QtQuick.PathView
---
        
PathView
========

<span class="subtitle"></span>
Lays out model-provided items on a path More...

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
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[cacheItemCount](#cacheItemCount-prop)**** : int
-   ****[count](#count-prop)**** : int
-   ****[currentIndex](#currentIndex-prop)**** : int
-   ****[currentItem](#currentItem-prop)**** : Item
-   ****[delegate](#delegate-prop)**** : Component
-   ****[dragMargin](#dragMargin-prop)**** : real
-   ****[dragging](#dragging-prop)**** : bool
-   ****[flickDeceleration](#flickDeceleration-prop)**** : real
-   ****[flicking](#flicking-prop)**** : bool
-   ****[highlight](#highlight-prop)**** : Component
-   ****[highlightItem](#highlightItem-prop)**** : Item
-   ****[highlightMoveDuration](#highlightMoveDuration-prop)**** : int
-   ****[highlightRangeMode](#highlightRangeMode-prop)**** : enumeration
-   ****[interactive](#interactive-prop)**** : bool
-   ****[maximumFlickVelocity](#maximumFlickVelocity-prop)**** : real
-   ****[model](#model-prop)**** : model
-   ****[moving](#moving-prop)**** : bool
-   ****[offset](#offset-prop)**** : real
-   ****[path](#path-prop)**** : Path
-   ****[pathItemCount](#pathItemCount-prop)**** : int
-   ****[preferredHighlightBegin](#preferredHighlightBegin-prop)**** : real
-   ****[preferredHighlightEnd](#preferredHighlightEnd-prop)**** : real
-   ****[snapMode](#snapMode-prop)**** : enumeration

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[isCurrentItem](#isCurrentItem-attached-prop)**** : bool
-   ****[onPath](#onPath-attached-prop)**** : bool
-   ****[view](#view-attached-prop)**** : PathView

<span id="signals"></span>
Signals
-------

-   ****[dragEnded](#dragEnded-signal)****()
-   ****[dragStarted](#dragStarted-signal)****()
-   ****[flickEnded](#flickEnded-signal)****()
-   ****[flickStarted](#flickStarted-signal)****()
-   ****[movementEnded](#movementEnded-signal)****()
-   ****[movementStarted](#movementStarted-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[decrementCurrentIndex](#decrementCurrentIndex-method)****()
-   ****[incrementCurrentIndex](#incrementCurrentIndex-method)****()
-   int ****[indexAt](#indexAt-method)****(int *x*, int *y*)
-   Item ****[itemAt](#itemAt-method)****(int *x*, int *y*)
-   ****[positionViewAtIndex](#positionViewAtIndex-method)****(int *index*, PositionMode *mode*)

<span id="details"></span>
Detailed Description
--------------------

A [PathView](index.html) displays data from models created from built-in QML types like [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel) and [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel), or custom model classes defined in C++ that inherit from QAbstractListModel.

The view has a [model](#model-prop), which defines the data to be displayed, and a [delegate](#delegate-prop), which defines how the data should be displayed. The [delegate](#delegate-prop) is instantiated for each item on the [path](#path-prop). The items may be flicked to move them along the path.

For example, if there is a simple list model defined in a file `ContactModel.qml` like this:

``` qml
import QtQuick 2.0
ListModel {
    ListElement {
        name: "Bill Jones"
        icon: "pics/qtlogo.png"
    }
    ListElement {
        name: "Jane Doe"
        icon: "pics/qtlogo.png"
    }
    ListElement {
        name: "John Smith"
        icon: "pics/qtlogo.png"
    }
}
```

This data can be represented as a [PathView](index.html), like this:

``` qml
import QtQuick 2.0
Rectangle {
    width: 240; height: 200
    Component {
        id: delegate
        Column {
            id: wrapper
            Image {
                anchors.horizontalCenter: nameText.horizontalCenter
                width: 64; height: 64
                source: icon
            }
            Text {
                id: nameText
                text: name
                font.pointSize: 16
                color: wrapper.PathView.isCurrentItem ? "red" : "black"
            }
        }
    }
    PathView {
        anchors.fill: parent
        model: ContactModel {}
        delegate: delegate
        path: Path {
            startX: 120; startY: 100
            PathQuad { x: 120; y: 25; controlX: 260; controlY: 75 }
            PathQuad { x: 120; y: 100; controlX: -20; controlY: 75 }
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/52014486-2259-4d17-b722-42706f8aeafe-api/apps/qml/sdk-15.04.5/QtQuick.PathView/images/pathview.gif)

(Note the above example uses [PathAttribute](../QtQuick.PathAttribute.md) to scale and modify the opacity of the items as they rotate. This additional code can be seen in the [PathAttribute](../QtQuick.PathAttribute.md) documentation.)

[PathView](index.html) does not automatically handle keyboard navigation. This is because the keys to use for navigation will depend upon the shape of the path. Navigation can be added quite simply by setting `focus` to `true` and calling [decrementCurrentIndex()](#decrementCurrentIndex-method) or [incrementCurrentIndex()](#incrementCurrentIndex-method), for example to navigate using the left and right arrow keys:

``` qml
PathView {
    // ...
    focus: true
    Keys.onLeftPressed: decrementCurrentIndex()
    Keys.onRightPressed: incrementCurrentIndex()
}
```

The path view itself is a focus scope (see [Keyboard Focus in Qt Quick](../QtQuick.qtquick-input-focus.md) for more details).

Delegates are instantiated as needed and may be destroyed at any time. State should *never* be stored in a delegate.

[PathView](index.html) attaches a number of properties to the root item of the delegate, for example `PathView.isCurrentItem`. In the following example, the root delegate item can access this attached property directly as `PathView.isCurrentItem`, while the child `nameText` object must refer to this property as `wrapper.PathView.isCurrentItem`.

``` qml
    Component {
        id: delegate
        Column {
            id: wrapper
            Image {
                anchors.horizontalCenter: nameText.horizontalCenter
                width: 64; height: 64
                source: icon
            }
            Text {
                id: nameText
                text: name
                font.pointSize: 16
                color: wrapper.PathView.isCurrentItem ? "red" : "black"
            }
        }
    }
```

**Note** that views do not enable *clip* automatically. If the view is not clipped by another item or the screen, it will be necessary to set *clip: true* in order to have the out of view items clipped nicely.

**See also** [Path](../QtQuick.Path.md), [QML Data Models](../QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models), [ListView](../QtQuick.ListView.md), [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview), and [Qt Quick Examples - Views](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.views/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cacheItemCount-prop"></span><span class="name">cacheItemCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum number of items to cache off the path.

For example, a [PathView](index.html) with a model containing 20 items, a [pathItemCount](#pathItemCount-prop) of 10, and an cacheItemCount of 4 will create up to 14 items, with 10 visible on the path and 4 invisible cached items.

The cached delegates are created asynchronously, allowing creation to occur across multiple frames and reducing the likelihood of skipping frames.

Setting this value can improve the smoothness of scrolling behavior at the expense of additional memory usage. It is not a substitute for creating efficient delegates; the fewer objects and bindings in a delegate, the faster a view can be moved.

**See also** [pathItemCount](#pathItemCount-prop).

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

This property holds the number of items in the model.

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

This property holds the index of the current item.

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

This property holds the current item in the view.

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

The number of objects and bindings in the delegate has a direct effect on the flicking performance of the view when [pathItemCount](#pathItemCount-prop) is specified. If at all possible, place functionality that is not needed for the normal display of the delegate in a [Loader](../QtQuick.Loader.md) which can load additional components when needed.

Note that the [PathView](index.html) will layout the items based on the size of the root item in the delegate.

Here is an example delegate:

``` qml
    Component {
        id: delegate
        Column {
            id: wrapper
            Image {
                anchors.horizontalCenter: nameText.horizontalCenter
                width: 64; height: 64
                source: icon
            }
            Text {
                id: nameText
                text: name
                font.pointSize: 16
                color: wrapper.PathView.isCurrentItem ? "red" : "black"
            }
        }
    }
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragMargin-prop"></span><span class="name">dragMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum distance from the path that initiate mouse dragging.

By default the path can only be dragged by clicking on an item. If dragMargin is greater than zero, a drag can be initiated by clicking within dragMargin pixels of the path.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragging-prop"></span><span class="name">dragging</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the view is currently moving due to the user dragging the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickDeceleration-prop"></span><span class="name">flickDeceleration</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the rate at which a flick will decelerate.

The default is 100.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flicking-prop"></span><span class="name">flicking</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the view is currently moving due to the user flicking the view.

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

An instance of the highlight component will be created for each view. The geometry of the resultant component instance will be managed by the view so as to stay with the current item.

The below example demonstrates how to make a simple highlight. Note the use of the [PathView.onPath](#onPath-attached-prop) attached property to ensure that the highlight is hidden when flicked away from the path.

``` qml
Component {
    Rectangle {
        visible: PathView.onPath
        // ...
    }
}
```

**See also** [highlightItem](#highlightItem-prop) and [highlightRangeMode](#highlightRangeMode-prop).

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

`highlightItem` holds the highlight item, which was created from the [highlight](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.views/#highlight) component.

**See also** [highlight](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.views/#highlight).

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

If the [highlightRangeMode](#highlightRangeMode-prop) is StrictlyEnforceRange then this property determines the speed that the items move along the path.

The default value for the duration is 300ms.

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

These properties set the preferred range of the highlight (current item) within the view. The preferred values must be in the range 0.0-1.0.

Valid values for `highlightRangeMode` are:

-   *PathView.NoHighlightRange* - no range is applied and the highlight will move freely within the view.
-   *PathView.ApplyRange* - the view will attempt to maintain the highlight within the range, however the highlight can move outside of the range at the ends of the path or due to a mouse interaction.
-   *PathView.StrictlyEnforceRange* - the highlight will never move outside of the range. This means that the current item will change if a keyboard or mouse action would cause the highlight to move outside of the range.

The default value is *PathView.StrictlyEnforceRange*.

Defining a highlight range is the correct way to influence where the current item ends up when the view moves. For example, if you want the currently selected item to be in the middle of the path, then set the highlight range to be 0.5,0.5 and highlightRangeMode to *PathView.StrictlyEnforceRange*. Then, when the path scrolls, the currently selected item will be the item at that position. This also applies to when the currently selected item changes - it will scroll to within the preferred highlight range. Furthermore, the behaviour of the current item index will occur whether or not a highlight exists.

**Note:** A valid range requires `preferredHighlightEnd` to be greater than or equal to `preferredHighlightBegin`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="interactive-prop"></span><span class="name">interactive</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

A user cannot drag or flick a [PathView](index.html) that is not interactive.

This property is useful for temporarily disabling flicking. This allows special interaction with [PathView](index.html)'s children.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumFlickVelocity-prop"></span><span class="name">maximumFlickVelocity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the approximate maximum velocity that the user can flick the view in pixels/second.

The default value is platform dependent.

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

This property holds the model providing data for the view.

The model provides a set of data that is used to create the items for the view. For large or dynamic datasets the model is usually provided by a C++ model object. Models can also be created directly in QML, using the [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel) type.

**Note:** changing the model will reset the offset and [currentIndex](#currentIndex-prop) to 0.

**See also** [Data Models](../QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moving-prop"></span><span class="name">moving</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the view is currently moving due to the user either dragging or flicking the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="offset-prop"></span><span class="name">offset</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The offset specifies how far along the path the items are from their initial positions. This is a real number that ranges from 0.0 to the count of items in the model.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="path-prop"></span><span class="name">path</span> : <span class="type"><a href="QtQuick.Path.md">Path</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the path used to lay out the items. For more information see the [Path](../QtQuick.Path.md) documentation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pathItemCount-prop"></span><span class="name">pathItemCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of items visible on the path at any one time.

Setting pathItemCount to undefined will show all items on the path.

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

These properties set the preferred range of the highlight (current item) within the view. The preferred values must be in the range 0.0-1.0.

Valid values for `highlightRangeMode` are:

-   *PathView.NoHighlightRange* - no range is applied and the highlight will move freely within the view.
-   *PathView.ApplyRange* - the view will attempt to maintain the highlight within the range, however the highlight can move outside of the range at the ends of the path or due to a mouse interaction.
-   *PathView.StrictlyEnforceRange* - the highlight will never move outside of the range. This means that the current item will change if a keyboard or mouse action would cause the highlight to move outside of the range.

The default value is *PathView.StrictlyEnforceRange*.

Defining a highlight range is the correct way to influence where the current item ends up when the view moves. For example, if you want the currently selected item to be in the middle of the path, then set the highlight range to be 0.5,0.5 and [highlightRangeMode](#highlightRangeMode-prop) to *PathView.StrictlyEnforceRange*. Then, when the path scrolls, the currently selected item will be the item at that position. This also applies to when the currently selected item changes - it will scroll to within the preferred highlight range. Furthermore, the behaviour of the current item index will occur whether or not a highlight exists.

**Note:** A valid range requires `preferredHighlightEnd` to be greater than or equal to `preferredHighlightBegin`.

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

These properties set the preferred range of the highlight (current item) within the view. The preferred values must be in the range 0.0-1.0.

Valid values for `highlightRangeMode` are:

-   *PathView.NoHighlightRange* - no range is applied and the highlight will move freely within the view.
-   *PathView.ApplyRange* - the view will attempt to maintain the highlight within the range, however the highlight can move outside of the range at the ends of the path or due to a mouse interaction.
-   *PathView.StrictlyEnforceRange* - the highlight will never move outside of the range. This means that the current item will change if a keyboard or mouse action would cause the highlight to move outside of the range.

The default value is *PathView.StrictlyEnforceRange*.

Defining a highlight range is the correct way to influence where the current item ends up when the view moves. For example, if you want the currently selected item to be in the middle of the path, then set the highlight range to be 0.5,0.5 and [highlightRangeMode](#highlightRangeMode-prop) to *PathView.StrictlyEnforceRange*. Then, when the path scrolls, the currently selected item will be the item at that position. This also applies to when the currently selected item changes - it will scroll to within the preferred highlight range. Furthermore, the behaviour of the current item index will occur whether or not a highlight exists.

**Note:** A valid range requires `preferredHighlightEnd` to be greater than or equal to `preferredHighlightBegin`.

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

This property determines how the items will settle following a drag or flick. The possible values are:

-   [PathView](index.html).NoSnap (default) - the items stop anywhere along the path.
-   [PathView](index.html).SnapToItem - the items settle with an item aligned with the [preferredHighlightBegin](#preferredHighlightBegin-prop).
-   [PathView](index.html).SnapOneItem - the items settle no more than one item away from the item nearest [preferredHighlightBegin](#preferredHighlightBegin-prop) at the time the press is released. This mode is particularly useful for moving one page at a time.

`snapMode` does not affect the [currentIndex](#currentIndex-prop). To update the [currentIndex](#currentIndex-prop) as the view is moved, set [highlightRangeMode](#highlightRangeMode-prop) to `PathView.StrictlyEnforceRange` (default for [PathView](index.html)).

**See also** [highlightRangeMode](#highlightRangeMode-prop).

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isCurrentItem-attached-prop"></span><span class="name">PathView.isCurrentItem</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This attached property is true if this delegate is the current item; otherwise false.

It is attached to each instance of the delegate.

This property may be used to adjust the appearance of the current item.

``` qml
    Component {
        id: delegate
        Column {
            id: wrapper
            Image {
                anchors.horizontalCenter: nameText.horizontalCenter
                width: 64; height: 64
                source: icon
            }
            Text {
                id: nameText
                text: name
                font.pointSize: 16
                color: wrapper.PathView.isCurrentItem ? "red" : "black"
            }
        }
    }
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onPath-attached-prop"></span><span class="name">PathView.onPath</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This attached property holds whether the item is currently on the path.

If a [pathItemCount](#pathItemCount-prop) has been set, it is possible that some items may be instantiated, but not considered to be currently on the path. Usually, these items would be set invisible, for example:

``` qml
Component {
    Rectangle {
        visible: PathView.onPath
        // ...
    }
}
```

It is attached to each instance of the delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="view-attached-prop"></span><span class="name">PathView.view</span> : <span class="type"><a href="index.html">PathView</a></span></p></td>
</tr>
</tbody>
</table>

This attached property holds the view that manages this delegate instance.

It is attached to each instance of the delegate.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragEnded-signal"></span><span class="name">dragEnded</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the user stops dragging the view.

If the velocity of the drag is suffient at the time the touch/mouse button is released then a flick will start.

The corresponding handler is `onDragEnded`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragStarted-signal"></span><span class="name">dragStarted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view starts to be dragged due to user interaction.

The corresponding handler is `onDragStarted`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickEnded-signal"></span><span class="name">flickEnded</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view stops moving due to a flick.

The corresponding handler is `onFlickEnded`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickStarted-signal"></span><span class="name">flickStarted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view is flicked. A flick starts from the point that the mouse or touch is released, while still in motion.

The corresponding handler is `onFlickStarted`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="movementEnded-signal"></span><span class="name">movementEnded</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view stops moving due to user interaction. If a flick was generated, this signal will be emitted once the flick stops. If a flick was not generated, this signal will be emitted when the user stops dragging - i.e. a mouse or touch release.

The corresponding handler is `onMovementEnded`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="movementStarted-signal"></span><span class="name">movementStarted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the view begins moving due to user interaction.

The corresponding handler is `onMovementStarted`.

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

Decrements the current index.

**Note**: methods should only be called after the Component has completed.

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

Increments the current index.

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

Returns the index of the item containing the point *x*, *y* in content coordinates. If there is no item at the point specified, -1 is returned.

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

Returns the item containing the point *x*, *y* in content coordinates. If there is no item at the point specified, null is returned.

**Note**: methods should only be called after the Component has completed.

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

-   [PathView](index.html).Beginning - position item at the beginning of the path.
-   [PathView](index.html).Center - position item in the center of the path.
-   [PathView](index.html).End - position item at the end of the path.
-   [PathView](index.html).Contain - ensure the item is positioned on the path.
-   [PathView](index.html).SnapPosition - position the item at [preferredHighlightBegin](#preferredHighlightBegin-prop). This mode is only valid if [highlightRangeMode](#highlightRangeMode-prop) is StrictlyEnforceRange or snapping is enabled via [snapMode](#snapMode-prop).

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end:

``` cpp
Component.onCompleted: positionViewAtIndex(count - 1, PathView.End)
```

