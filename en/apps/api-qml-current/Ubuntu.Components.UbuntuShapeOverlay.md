---
Title: Ubuntu.Components.UbuntuShapeOverlay
---
        
UbuntuShapeOverlay
==================

<span class="subtitle"></span>
Extended UbuntuShape adding a colored overlay layer. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[overlayColor](#overlayColor-prop)**** : color
-   ****[overlayRect](#overlayRect-prop)**** : rect

<span id="details"></span>
Detailed Description
--------------------

The [UbuntuShapeOverlay](index.html) is a rounded rectangle (based on a [squircle](https://en.wikipedia.org/wiki/Squircle)) containing a set of layers composed, from top to bottom, of a colored rectangle overlay, an optional source image and a background color (solid or linear gradient). Different properties allow to change the look of the shape.

Example:

``` qml
import Ubuntu.Components 1.2
UbuntuShapeOverlay {
    backgroundColor: "white"
    overlayColor: "black"
    overlayRect: Qt.rect(0.25, 0.25, 0.5, 0.5)
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
<td><p><span id="overlayColor-prop"></span><span class="name">overlayColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property sets the color of the overlay rectangle defined by [overlayRect](#overlayRect-prop). The default value is transparent black.

This QML property was introduced in Ubuntu.Components 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="overlayRect-prop"></span><span class="name">overlayRect</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-rect.html">rect</a></span></p></td>
</tr>
</tbody>
</table>

This property sets the overlay rectangle. The default value is the empty rectangle.

It is defined by a position and a size in normalized item coordinates (in the range between 0 and 1) with the origin at the top-left corner. An overlay covering the bottom part and starting at the vertical center can be done like that:

``` qml
UbuntuShapeOverlay {
    width: 200; height: 200
    overlayColor: Qt.rgba(0.0, 0.0, 0.5, 0.5)
    overlayRect: Qt.rect(0.0, 0.5, 1.0, 0.5)
}
```

Converting a position and a size in pixels to normalized item coordinates can be done with a division by the size. Here is an equivalent of the previous code sample:

``` qml
UbuntuShapeOverlay {
    width: 200; height: 200
    overlayColor: Qt.rgba(0.0, 0.0, 0.5, 0.5)
    overlayRect: Qt.rect(100.0/width, 100.0/height, 200.0/width, 100.0/height)
}
```

A geometry exceeding the item area is cropped.

This QML property was introduced in Ubuntu.Components 1.2.

