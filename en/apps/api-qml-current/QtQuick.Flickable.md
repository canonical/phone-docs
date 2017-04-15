---
Title: QtQuick.Flickable
---
        
Flickable
=========

<span class="subtitle"></span>
Provides a surface that can be "flicked" More...

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
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="QtQuick.GridView.md">GridView</a> and <a href="QtQuick.ListView.md">ListView</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[atXBeginning](#atXBeginning-prop)**** : bool
-   ****[atXEnd](#atXEnd-prop)**** : bool
-   ****[atYBeginning](#atYBeginning-prop)**** : bool
-   ****[atYEnd](#atYEnd-prop)**** : bool
-   ****[bottomMargin](#bottomMargin-prop)**** : real
-   ****[boundsBehavior](#boundsBehavior-prop)**** : enumeration
-   ****[contentHeight](#contentHeight-prop)**** : real
-   ****[contentItem](#contentItem-prop)**** : Item
-   ****[contentWidth](#contentWidth-prop)**** : real
-   ****[contentX](#contentX-prop)**** : real
-   ****[contentY](#contentY-prop)**** : real
-   ****[dragging](#dragging-prop)**** : bool
-   ****[draggingHorizontally](#draggingHorizontally-prop)**** : bool
-   ****[draggingVertically](#draggingVertically-prop)**** : bool
-   ****[flickDeceleration](#flickDeceleration-prop)**** : real
-   ****[flickableDirection](#flickableDirection-prop)**** : enumeration
-   ****[flicking](#flicking-prop)**** : bool
-   ****[flickingHorizontally](#flickingHorizontally-prop)**** : bool
-   ****[flickingVertically](#flickingVertically-prop)**** : bool
-   ****[horizontalVelocity](#horizontalVelocity-prop)**** : real
-   ****[interactive](#interactive-prop)**** : bool
-   ****[leftMargin](#leftMargin-prop)**** : real
-   ****[maximumFlickVelocity](#maximumFlickVelocity-prop)**** : real
-   ****[moving](#moving-prop)**** : bool
-   ****[movingHorizontally](#movingHorizontally-prop)**** : bool
-   ****[movingVertically](#movingVertically-prop)**** : bool
-   ****[originX](#originX-prop)**** : real
-   ****[originY](#originY-prop)**** : real
-   ****[pixelAligned](#pixelAligned-prop)**** : bool
-   ****[pressDelay](#pressDelay-prop)**** : int
-   ****[rebound](#rebound-prop)**** : Transition
-   ****[rightMargin](#rightMargin-prop)**** : real
-   ****[topMargin](#topMargin-prop)**** : real
-   ****[verticalVelocity](#verticalVelocity-prop)**** : real
-   ****[visibleArea](#visibleArea-prop)****
    -   ****[visibleArea.xPosition](#visibleArea.xPosition-prop)**** : real
    -   ****[visibleArea.widthRatio](#visibleArea.widthRatio-prop)**** : real
    -   ****[visibleArea.yPosition](#visibleArea.yPosition-prop)**** : real
    -   ****[visibleArea.heightRatio](#visibleArea.heightRatio-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[flickEnded](#flickEnded-signal)****()
-   ****[flickStarted](#flickStarted-signal)****()
-   ****[movementEnded](#movementEnded-signal)****()
-   ****[movementStarted](#movementStarted-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[cancelFlick](#cancelFlick-method)****()
-   ****[flick](#flick-method)****(qreal *xVelocity*, qreal *yVelocity*)
-   ****[resizeContent](#resizeContent-method)****(real *width*, real *height*, QPointF *center*)
-   ****[returnToBounds](#returnToBounds-method)****()

<span id="details"></span>
Detailed Description
--------------------

The Flickable item places its children on a surface that can be dragged and flicked, causing the view onto the child items to scroll. This behavior forms the basis of Items that are designed to show large numbers of child items, such as [ListView](../QtQuick.ListView.md) and [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview).

In traditional user interfaces, views can be scrolled using standard controls, such as scroll bars and arrow buttons. In some situations, it is also possible to drag the view directly by pressing and holding a mouse button while moving the cursor. In touch-based user interfaces, this dragging action is often complemented with a flicking action, where scrolling continues after the user has stopped touching the view.

Flickable does not automatically clip its contents. If it is not used as a full-screen item, you should consider setting the [clip](../QtQuick.Item.md#clip-prop) property to true.

<span id="example-usage"></span>
Example Usage
-------------

![](https://developer.ubuntu.com/static/devportal_uploaded/1041e547-cde8-42f8-a6f7-2e343a3ccb46-api/apps/qml/sdk-15.04.5/QtQuick.Flickable/images/flickable.gif)

The following example shows a small view onto a large image in which the user can drag or flick the image in order to view different parts of it.

``` qml
import QtQuick 2.0
Flickable {
    width: 200; height: 200
    contentWidth: image.width; contentHeight: image.height
    Image { id: image; source: "bigImage.png" }
}
```

Items declared as children of a Flickable are automatically parented to the Flickable's [contentItem](#contentItem-prop). This should be taken into account when operating on the children of the Flickable; it is usually the children of `contentItem` that are relevant. For example, the bound of Items added to the Flickable will be available by `contentItem.childrenRect`

<span id="limitations"></span>
Limitations
-----------

**Note:** Due to an implementation detail, items placed inside a Flickable cannot anchor to it by `id`. Use `parent` instead.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="atXBeginning-prop"></span><span class="name">atXBeginning</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties are true if the flickable view is positioned at the beginning, or end respectively.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="atXEnd-prop"></span><span class="name">atXEnd</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties are true if the flickable view is positioned at the beginning, or end respectively.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="atYBeginning-prop"></span><span class="name">atYBeginning</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties are true if the flickable view is positioned at the beginning, or end respectively.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="atYEnd-prop"></span><span class="name">atYEnd</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties are true if the flickable view is positioned at the beginning, or end respectively.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bottomMargin-prop"></span><span class="name">bottomMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the margins around the content. This space is reserved in addition to the [contentWidth](#contentWidth-prop) and [contentHeight](#contentHeight-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="boundsBehavior-prop"></span><span class="name">boundsBehavior</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the surface may be dragged beyond the Flickable's boundaries, or overshoot the Flickable's boundaries when flicked.

This enables the feeling that the edges of the view are soft, rather than a hard physical boundary.

The `boundsBehavior` can be one of:

-   Flickable.StopAtBounds - the contents can not be dragged beyond the boundary of the flickable, and flicks will not overshoot.
-   Flickable.DragOverBounds - the contents can be dragged beyond the boundary of the Flickable, but flicks will not overshoot.
-   Flickable.DragAndOvershootBounds (default) - the contents can be dragged beyond the boundary of the Flickable, and can overshoot the boundary when flicked.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentHeight-prop"></span><span class="name">contentHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The dimensions of the content (the surface controlled by Flickable). This should typically be set to the combined size of the items placed in the Flickable.

The following snippet shows how these properties are used to display an image that is larger than the Flickable item itself:

``` qml
import QtQuick 2.0
Flickable {
    width: 200; height: 200
    contentWidth: image.width; contentHeight: image.height
    Image { id: image; source: "bigImage.png" }
}
```

In some cases, the content dimensions can be automatically set based on the [childrenRect.width](../QtQuick.Item.md#childrenRect.width-prop) and [childrenRect.height](../QtQuick.Item.md#childrenRect.height-prop) properties of the [contentItem](#contentItem-prop). For example, the previous snippet could be rewritten with:

``` cpp
contentWidth: contentItem.childrenRect.width; contentHeight: contentItem.childrenRect.height
```

Though this assumes that the origin of the childrenRect is 0,0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentItem-prop"></span><span class="name">contentItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The internal item that contains the Items to be moved in the Flickable.

Items declared as children of a Flickable are automatically parented to the Flickable's contentItem.

Items created dynamically need to be explicitly parented to the *contentItem*:

``` cpp
Flickable {
    id: myFlickable
    function addItem(file) {
        var component = Qt.createComponent(file)
        component.createObject(myFlickable.contentItem);
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentWidth-prop"></span><span class="name">contentWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The dimensions of the content (the surface controlled by Flickable). This should typically be set to the combined size of the items placed in the Flickable.

The following snippet shows how these properties are used to display an image that is larger than the Flickable item itself:

``` qml
import QtQuick 2.0
Flickable {
    width: 200; height: 200
    contentWidth: image.width; contentHeight: image.height
    Image { id: image; source: "bigImage.png" }
}
```

In some cases, the content dimensions can be automatically set based on the [childrenRect.width](../QtQuick.Item.md#childrenRect.width-prop) and [childrenRect.height](../QtQuick.Item.md#childrenRect.height-prop) properties of the [contentItem](#contentItem-prop). For example, the previous snippet could be rewritten with:

``` cpp
contentWidth: contentItem.childrenRect.width; contentHeight: contentItem.childrenRect.height
```

Though this assumes that the origin of the childrenRect is 0,0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentX-prop"></span><span class="name">contentX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the surface coordinate currently at the top-left corner of the Flickable. For example, if you flick an image up 100 pixels, `contentY` will be 100.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentY-prop"></span><span class="name">contentY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the surface coordinate currently at the top-left corner of the Flickable. For example, if you flick an image up 100 pixels, `contentY` will be 100.

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

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user dragging the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="draggingHorizontally-prop"></span><span class="name">draggingHorizontally</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user dragging the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="draggingVertically-prop"></span><span class="name">draggingVertically</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user dragging the view.

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

The default value is platform dependent.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickableDirection-prop"></span><span class="name">flickableDirection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property determines which directions the view can be flicked.

-   Flickable.AutoFlickDirection (default) - allows flicking vertically if the *contentHeight* is not equal to the *height* of the Flickable. Allows flicking horizontally if the *contentWidth* is not equal to the *width* of the Flickable.
-   Flickable.HorizontalFlick - allows flicking horizontally.
-   Flickable.VerticalFlick - allows flicking vertically.
-   Flickable.HorizontalAndVerticalFlick - allows flicking in both directions.

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

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user flicking the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickingHorizontally-prop"></span><span class="name">flickingHorizontally</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user flicking the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickingVertically-prop"></span><span class="name">flickingVertically</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user flicking the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="horizontalVelocity-prop"></span><span class="name">horizontalVelocity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The instantaneous velocity of movement along the x and y axes, in pixels/sec.

The reported velocity is smoothed to avoid erratic output.

Note that for views with a large content size (more than 10 times the view size), the velocity of the flick may exceed the velocity of the touch in the case of multiple quick consecutive flicks. This allows the user to flick faster through large content.

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

This property describes whether the user can interact with the Flickable. A user cannot drag or flick a Flickable that is not interactive.

By default, this property is true.

This property is useful for temporarily disabling flicking. This allows special interaction with Flickable's children; for example, you might want to freeze a flickable map while scrolling through a pop-up dialog that is a child of the Flickable.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="leftMargin-prop"></span><span class="name">leftMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the margins around the content. This space is reserved in addition to the [contentWidth](#contentWidth-prop) and [contentHeight](#contentHeight-prop).

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

This property holds the maximum velocity that the user can flick the view in pixels/second.

The default value is platform dependent.

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

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user either dragging or flicking the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="movingHorizontally-prop"></span><span class="name">movingHorizontally</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user either dragging or flicking the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="movingVertically-prop"></span><span class="name">movingVertically</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

These properties describe whether the view is currently moving horizontally, vertically or in either direction, due to the user either dragging or flicking the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="originX-prop"></span><span class="name">originX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the origin of the content. This value always refers to the top-left position of the content regardless of layout direction.

This is usually (0,0), however [ListView](../QtQuick.ListView.md) and [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) may have an arbitrary origin due to delegate size variation, or item insertion/removal outside the visible region.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="originY-prop"></span><span class="name">originY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the origin of the content. This value always refers to the top-left position of the content regardless of layout direction.

This is usually (0,0), however [ListView](../QtQuick.ListView.md) and [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview) may have an arbitrary origin due to delegate size variation, or item insertion/removal outside the visible region.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pixelAligned-prop"></span><span class="name">pixelAligned</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property sets the alignment of [contentX](#contentX-prop) and [contentY](#contentY-prop) to pixels (`true`) or subpixels (`false`).

Enable pixelAligned to optimize for still content or moving content with high constrast edges, such as one-pixel-wide lines, text or vector graphics. Disable pixelAligned when optimizing for animation quality.

The default is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressDelay-prop"></span><span class="name">pressDelay</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the time to delay (ms) delivering a press to children of the Flickable. This can be useful where reacting to a press before a flicking action has undesirable effects.

If the flickable is dragged/flicked before the delay times out the press event will not be delivered. If the button is released within the timeout, both the press and release will be delivered.

Note that for nested Flickables with pressDelay set, the pressDelay of outer Flickables is overridden by the innermost Flickable. If the drag exceeds the platform drag threshold, the press event will be delivered regardless of this property.

**See also** QStyleHints.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rebound-prop"></span><span class="name">rebound</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This holds the transition to be applied to the content view when it snaps back to the bounds of the flickable. The transition is triggered when the view is flicked or dragged past the edge of the content area, or when [returnToBounds()](#returnToBounds-method) is called.

``` qml
import QtQuick 2.0
Flickable {
    width: 150; height: 150
    contentWidth: 300; contentHeight: 300
    rebound: Transition {
        NumberAnimation {
            properties: "x,y"
            duration: 1000
            easing.type: Easing.OutBounce
        }
    }
    Rectangle {
        width: 300; height: 300
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "blue" }
        }
    }
}
```

When the above view is flicked beyond its bounds, it will return to its bounds using the transition specified:

![](https://developer.ubuntu.com/static/devportal_uploaded/fd6ce376-3b69-40cd-b583-5bb8358e8cc8-api/apps/qml/sdk-15.04.5/QtQuick.Flickable/images/flickable-rebound.gif)

If this property is not set, a default animation is applied.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rightMargin-prop"></span><span class="name">rightMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the margins around the content. This space is reserved in addition to the [contentWidth](#contentWidth-prop) and [contentHeight](#contentHeight-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="topMargin-prop"></span><span class="name">topMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the margins around the content. This space is reserved in addition to the [contentWidth](#contentWidth-prop) and [contentHeight](#contentHeight-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="verticalVelocity-prop"></span><span class="name">verticalVelocity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The instantaneous velocity of movement along the x and y axes, in pixels/sec.

The reported velocity is smoothed to avoid erratic output.

Note that for views with a large content size (more than 10 times the view size), the velocity of the flick may exceed the velocity of the touch in the case of multiple quick consecutive flicks. This allows the user to flick faster through large content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="visibleArea-prop"></span><strong>visibleArea group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="visibleArea.xPosition-prop"></span><span class="name">visibleArea.xPosition</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="visibleArea.widthRatio-prop"></span><span class="name">visibleArea.widthRatio</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="visibleArea.yPosition-prop"></span><span class="name">visibleArea.yPosition</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="visibleArea.heightRatio-prop"></span><span class="name">visibleArea.heightRatio</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties describe the position and size of the currently viewed area. The size is defined as the percentage of the full view currently visible, scaled to 0.0 - 1.0. The page position is usually in the range 0.0 (beginning) to 1.0 minus size ratio (end), i.e. `yPosition` is in the range 0.0 to 1.0-`heightRatio`. However, it is possible for the contents to be dragged outside of the normal range, resulting in the page positions also being outside the normal range.

These properties are typically used to draw a scrollbar. For example:

``` qml
Rectangle {
    width: 200; height: 200
    Flickable {
        id: flickable
        ...
    }
    Rectangle {
        id: scrollbar
        anchors.right: flickable.right
        y: flickable.visibleArea.yPosition * flickable.height
        width: 10
        height: flickable.visibleArea.heightRatio * flickable.height
        color: "black"
    }
}
```

**See also** [UI Components: Scrollbar Example](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.customitems-scrollbar/).

Signal Documentation
--------------------

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
<td><p><span id="cancelFlick-method"></span><span class="name">cancelFlick</span>()</p></td>
</tr>
</tbody>
</table>

Cancels the current flick animation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flick-method"></span><span class="name">flick</span>(<span class="type">qreal</span> <em>xVelocity</em>, <span class="type">qreal</span> <em>yVelocity</em>)</p></td>
</tr>
</tbody>
</table>

Flicks the content with *xVelocity* horizontally and *yVelocity* vertically in pixels/sec.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resizeContent-method"></span><span class="name">resizeContent</span>(<span class="type">real</span> <em>width</em>, <span class="type">real</span> <em>height</em>, <span class="type">QPointF</span> <em>center</em>)</p></td>
</tr>
</tbody>
</table>

Resizes the content to *width* x *height* about *center*.

This does not scale the contents of the Flickable - it only resizes the [contentWidth](#contentWidth-prop) and [contentHeight](#contentHeight-prop).

Resizing the content may result in the content being positioned outside the bounds of the Flickable. Calling [returnToBounds()](#returnToBounds-method) will move the content back within legal bounds.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="returnToBounds-method"></span><span class="name">returnToBounds</span>()</p></td>
</tr>
</tbody>
</table>

Ensures the content is within legal bounds.

This may be called to ensure that the content is within legal bounds after manually positioning the content.

