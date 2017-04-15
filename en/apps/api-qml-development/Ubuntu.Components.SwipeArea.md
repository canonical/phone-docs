---
Title: Ubuntu.Components.SwipeArea
---
        
SwipeArea
=========

<span class="subtitle"></span>
An area which detects axis-aligned single-finger drag gestures. More...

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
<td>Since:</td>
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[direction](#direction-prop)**** : enum
-   ****[distance](#distance-prop)**** : real
-   ****[dragging](#dragging-prop)**** : bool
-   ****[grabGesture](#grabGesture-prop)**** : bool
-   ****[immediateRecognition](#immediateRecognition-prop)**** : bool
-   ****[pressed](#pressed-prop)**** : bool
-   ****[touchPosition](#touchPosition-prop)**** : point

<span id="details"></span>
Detailed Description
--------------------

The component can be used to detect gestures of a certain direction, and can grab gestures started on a component placed behind of the [SwipeArea](index.html). The gesture is detected on the [SwipeArea](index.html), therefore the size must be chosen carefully so it can properly detect the gesture.

The gesture direction is specified by the [direction](#direction-prop) property. The recognized and captured gesture is reported through the [dragging](#dragging-prop) property, which becomes `true` when the gesture is detected. If there was a component under the [SwipeArea](index.html), the gesture will be cancelled on that component.

The drag recognition is performed within the component area in the specified direction. If the drag deviates too much from this, recognition will fail, as well as if the drag or the flick is too short. Once the drag is intercepted, the gesture will be followed even after it leaves the detection area.

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(70)
    Page {
        title: "SwipeArea sample"
        SwipeArea {
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            height: units.gu(5)
            direction: SwipeArea.Upwards
            Label {
                text: "Drag upwards"
                anchors {
                    centerIn: parent
                    verticalOffset: parent.dragging ? parent.distance : 0
                }
            }
        }
    }
}
```

**Note:** When used with a Flickable (or [ListView](../QtQuick.ListView.md), [GridView](../../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview)) always put the [SwipeArea](index.html) next to the Flickable as sibling.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

The direction in which the gesture should move in order to be recognized.

| Direction  | Description                                |
|------------|--------------------------------------------|
| Rightwards | Along the positive direction of the X axis |
| Leftwards  | Along the negative direction of the X axis |
| Downwards  | Along the positive direction of the Y axis |
| Upwards    | Along the negative direction of the Y axis |
| Horizontal | Along the X axis, in any direction         |
| Vertical   | Along the Y axis, in any direction         |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="distance-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">distance</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the distance of the swipe from the beginning of the gesture recognition to the current touch position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragging-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">dragging</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Reports whether a drag gesture is taking place.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="grabGesture-prop"></span><span class="name">grabGesture</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, any gestures will be grabbed and owned by the [SwipeArea](index.html) as usual. If false, gestures will still be reported, but events may be grabbed by another Qml object.

Defaults to true. In most cases this should not be unset.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="immediateRecognition-prop"></span><span class="name">immediateRecognition</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Drives whether the gesture should be recognized as soon as the touch lands on the area. With this property set it will work the same way as a [MultiPointTouchArea](../QtQuick.MultiPointTouchArea.md),

Defaults to false. In most cases this should not be set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Reports whether the drag area is pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchPosition-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">touchPosition</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span></p></td>
</tr>
</tbody>
</table>

Position of the touch point performing the drag relative to this item.

