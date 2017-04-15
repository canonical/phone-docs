---
Title: Ubuntu.Components.OrientationHelper
---
        
OrientationHelper
=================

<span class="subtitle"></span>
The OrientationHelper automatically rotates its children following the orientation of the device. More...

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
<td><p><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.Popups.PopupBase.md">PopupBase</a>.</p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[anchorToKeyboard](#anchorToKeyboard-prop)**** : bool
-   ****[automaticOrientation](#automaticOrientation-prop)**** : bool
-   ****[orientationAngle](#orientationAngle-prop)**** : int
-   ****[rotating](#rotating-prop)**** : bool
-   ****[transitionEnabled](#transitionEnabled-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

Any Item placed inside an Orientation Helper will be automatically rotated following the orientation of the device.

Note that [OrientationHelper](index.html) is always filling its parent (anchors.parent: fill).

Example:

``` qml
Item {
    OrientationHelper {
        Label {
            text: "Automatically rotated"
        }
        Button {
            text: "Automatically rotated"
        }
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="anchorToKeyboard-prop"></span><span class="name">anchorToKeyboard</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property holds if the [OrientationHelper](index.html) should automatically resize the contents when the input method appears

The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="automaticOrientation-prop"></span><span class="name">automaticOrientation</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether it will be automatically rotating when the device is.

The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientationAngle-prop"></span><span class="name">orientationAngle</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Calculates the current orientation angle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotating-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">rotating</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Exposes whether the orientationTransition is running.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="transitionEnabled-prop"></span><span class="name">transitionEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether the rotation transition is performed.

The default value is true.

