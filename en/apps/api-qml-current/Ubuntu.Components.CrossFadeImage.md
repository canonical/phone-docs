---
Title: Ubuntu.Components.CrossFadeImage
---
        
CrossFadeImage
==============

<span class="subtitle"></span>
An Image like component which smoothly fades when its source is updated. More...

|                   |          |
|-------------------|----------|
| Import Statement: | import . |

<span id="properties"></span>
Properties
----------

-   ****[fadeDuration](#fadeDuration-prop)**** : int
-   ****[fadeStyle](#fadeStyle-prop)**** : string
-   ****[fillMode](#fillMode-prop)**** : enumeration
-   ****[running](#running-prop)**** : bool
-   ****[source](#source-prop)**** : url
-   ****[sourceSize](#sourceSize-prop)**** : size
-   ****[status](#status-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
CrossFadeImage {
    width: units.gu(100)
    height: units.gu(75)
    source: "http://design.ubuntu.com/wp-content/uploads/ubuntu-logo14.png"
    fadeDuration: 1000
    MouseArea {
        anchors.fill: parent
        onClicked: parent.source = "http://design.ubuntu.com/wp-content/uploads/canonical-logo1.png"
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
<td><p><span id="fadeDuration-prop"></span><span class="name">fadeDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The time over which to fade between images. Defaults to `UbuntuAnimation.FastDuration`.

**See also** [UbuntuAnimation](../Ubuntu.Components.UbuntuAnimation.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fadeStyle-prop"></span><span class="name">fadeStyle</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Style of the fade effect

Defaults to `overlay`

-   overlay - the new fading image overlays the current one
-   cross - the current one fades out while the new image fades in

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fillMode-prop"></span><span class="name">fillMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Defaults to `Image.PreserveAspectFit`

-   Image.Stretch - the image is scaled to fit
-   Image.PreserveAspectFit - the image is scaled uniformly to fit without cropping
-   Image.PreserveAspectCrop - the image is scaled uniformly to fill, cropping if necessary
-   Image.Tile - the image is duplicated horizontally and vertically
-   Image.TileVertically - the image is stretched horizontally and tiled vertically
-   Image.TileHorizontally - the image is stretched vertically and tiled horizontally
-   Image.Pad - the image is not transformed

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the animation is running

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The image being displayed. Can be a URL to any image format supported by Qt.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceSize-prop"></span><span class="name">sourceSize</span> : <span class="type">size</span></p></td>
</tr>
</tbody>
</table>

The actual width and height of the loaded image This property holds the actual width and height of the loaded image.

Unlike the width and height properties, which scale the painting of the image, this property sets the actual number of pixels stored for the loaded image so that large images do not use more memory than necessary.

Note: Changing this property dynamically causes the image source to be reloaded, potentially even from the network, if it is not in the disk cache.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of image loading. It can be one of:

-   Image.Null - no image has been set
-   Image.Ready - the image has been loaded
-   Image.Loading - the image is currently being loaded
-   Image.Error - an error occurred while loading the image

