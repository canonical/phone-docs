---
Title: QtMultimedia.VideoOutput
---
        
VideoOutput
===========

<span class="subtitle"></span>
Render video or camera viewfinder. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[autoOrientation](#autoOrientation-prop)**** : bool
-   ****[contentRect](#contentRect-prop)**** : rectangle
-   ****[fillMode](#fillMode-prop)**** : enumeration
-   ****[orientation](#orientation-prop)**** : int
-   ****[source](#source-prop)**** : variant
-   ****[sourceRect](#sourceRect-prop)**** : rectangle

<span id="methods"></span>
Methods
-------

-   QPointF ****[mapNormalizedPointToItem](#mapNormalizedPointToItem-method)****(const QPointF & *point*)
-   QRectF ****[mapNormalizedRectToItem](#mapNormalizedRectToItem-method)****(const QRectF & *rectangle*)
-   QPointF ****[mapPointToItem](#mapPointToItem-method)****(const QPointF & *point*)
-   QPointF ****[mapPointToSource](#mapPointToSource-method)****(const QPointF & *point*)
-   QPointF ****[mapPointToSourceNormalized](#mapPointToSourceNormalized-method)****(const QPointF & *point*)
-   QRectF ****[mapRectToItem](#mapRectToItem-method)****(const QRectF & *rectangle*)
-   QRectF ****[mapRectToSource](#mapRectToSource-method)****(const QRectF & *rectangle*)
-   QRectF ****[mapRectToSourceNormalized](#mapRectToSourceNormalized-method)****(const QRectF & *rectangle*)

<span id="details"></span>
Detailed Description
--------------------

`VideoOutput` is part of the **QtMultimedia 5.0** module.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Rectangle {
    width: 800
    height: 600
    color: "black"
    MediaPlayer {
        id: player
        source: "file://video.webm"
        autoPlay: true
    }
    VideoOutput {
        id: videoOutput
        source: player
        anchors.fill: parent
    }
}
```

The [VideoOutput](index.html) item supports untransformed, stretched, and uniformly scaled video presentation. For a description of stretched uniformly scaled presentation, see the [fillMode](#fillMode-prop) property description.

The VideoOutput item works with backends that support either QVideoRendererControl or QVideoWindowControl. If the backend only supports QVideoWindowControl, the video is rendered onto an overlay window that is layered on top of the QtQuick window. Due to the nature of the video overlays, certain features are not available for these kind of backends:

-   Some transformations like rotations
-   Having other QtQuick items on top of the [VideoOutput](index.html) item

Most backends however do support QVideoRendererControl and therefore don't have the limitations listed above.

**See also** [MediaPlayer](../QtMultimedia.MediaPlayer.md) and [Camera](../QtMultimedia.qml-multimedia.md#camera).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoOrientation-prop"></span><span class="name">autoOrientation</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property allows you to enable and disable auto orientation of the video stream, so that its orientation always matches the orientation of the screen. If `autoOrientation` is enabled, the `orientation` property is overwritten.

By default `autoOrientation` is disabled.

This QML property was introduced in QtMultimedia 5.2.

**See also** [orientation](#orientation-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentRect-prop"></span><span class="name">contentRect</span> : <span class="type">rectangle</span></p></td>
</tr>
</tbody>
</table>

This property holds the item coordinates of the area that would contain video to render. With certain fill modes, this rectangle will be larger than the visible area of the `VideoOutput`.

This property is useful when other coordinates are specified in terms of the source dimensions - this applied for relative (normalized) frame coordinates in the range of 0 to 1.0.

Areas outside this will be transparent.

**See also** [mapRectToItem()](#mapRectToItem-method) and [mapPointToItem()](#mapPointToItem-method).

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

Set this property to define how the video is scaled to fit the target area.

-   Stretch - the video is scaled to fit.
-   PreserveAspectFit - the video is scaled uniformly to fit without cropping
-   PreserveAspectCrop - the video is scaled uniformly to fill, cropping if necessary

The default fill mode is PreserveAspectFit.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientation-prop"></span><span class="name">orientation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

In some cases the source video stream requires a certain orientation to be correct. This includes sources like a camera viewfinder, where the displayed viewfinder should match reality, no matter what rotation the rest of the user interface has.

This property allows you to apply a rotation (in steps of 90 degrees) to compensate for any user interface rotation, with positive values in the anti-clockwise direction.

The orientation change will also affect the mapping of coordinates from source to viewport.

**See also** [autoOrientation](#autoOrientation-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the source item providing the video frames like [MediaPlayer](../QtMultimedia.MediaPlayer.md) or Camera.

If you are extending your own C++ classes to interoperate with VideoOutput, you can either provide a QObject based class with a `mediaObject` property that exposes a QMediaObject derived class that has a QVideoRendererControl available, or you can provide a QObject based class with a writable `videoSurface` property that can accept a QAbstractVideoSurface based class and can follow the correct protocol to deliver QVideoFrames to it.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceRect-prop"></span><span class="name">sourceRect</span> : <span class="type">rectangle</span></p></td>
</tr>
</tbody>
</table>

This property holds the area of the source video content that is considered for rendering. The values are in source pixel coordinates, adjusted for the source's pixel aspect ratio.

Note that typically the top left corner of this rectangle will be `0,0` while the width and height will be the width and height of the input content. Only when the video source has a viewport set, these values will differ.

The orientation setting does not affect this rectangle.

**See also** QVideoSurfaceFormat::pixelAspectRatio() and QVideoSurfaceFormat::viewport().

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapNormalizedPointToItem-method"></span><span class="type">QPointF</span> <span class="name">mapNormalizedPointToItem</span>(const <span class="type">QPointF</span> &amp; <em>point</em>) const</p></td>
</tr>
</tbody>
</table>

Given normalized coordinates *point* (that is, each component in the range of 0 to 1.0), return the mapped point that it corresponds to (in item coordinates). This mapping is affected by the orientation.

Depending on the fill mode, this point may lie outside the rendered rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapNormalizedRectToItem-method"></span><span class="type">QRectF</span> <span class="name">mapNormalizedRectToItem</span>(const <span class="type">QRectF</span> &amp; <em>rectangle</em>) const</p></td>
</tr>
</tbody>
</table>

Given a rectangle *rectangle* in normalized coordinates (that is, each component in the range of 0 to 1.0), return the mapped rectangle that it corresponds to (in item coordinates). This mapping is affected by the orientation.

Depending on the fill mode, this rectangle may extend outside the rendered rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapPointToItem-method"></span><span class="type">QPointF</span> <span class="name">mapPointToItem</span>(const <span class="type">QPointF</span> &amp; <em>point</em>) const</p></td>
</tr>
</tbody>
</table>

Given a point *point* in source coordinates, return the corresponding point in item coordinates. This mapping is affected by the orientation.

Depending on the fill mode, this point may lie outside the rendered rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapPointToSource-method"></span><span class="type">QPointF</span> <span class="name">mapPointToSource</span>(const <span class="type">QPointF</span> &amp; <em>point</em>) const</p></td>
</tr>
</tbody>
</table>

Given a point *point* in item coordinates, return the corresponding point in source coordinates. This mapping is affected by the orientation.

If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapPointToSourceNormalized-method"></span><span class="type">QPointF</span> <span class="name">mapPointToSourceNormalized</span>(const <span class="type">QPointF</span> &amp; <em>point</em>) const</p></td>
</tr>
</tbody>
</table>

Given a point *point* in item coordinates, return the corresponding point in normalized source coordinates. This mapping is affected by the orientation.

If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle. No clamping is performed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapRectToItem-method"></span><span class="type">QRectF</span> <span class="name">mapRectToItem</span>(const <span class="type">QRectF</span> &amp; <em>rectangle</em>) const</p></td>
</tr>
</tbody>
</table>

Given a rectangle *rectangle* in source coordinates, return the corresponding rectangle in item coordinates. This mapping is affected by the orientation.

Depending on the fill mode, this rectangle may extend outside the rendered rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapRectToSource-method"></span><span class="type">QRectF</span> <span class="name">mapRectToSource</span>(const <span class="type">QRectF</span> &amp; <em>rectangle</em>) const</p></td>
</tr>
</tbody>
</table>

Given a rectangle *rectangle* in item coordinates, return the corresponding rectangle in source coordinates. This mapping is affected by the orientation.

This mapping is affected by the orientation.

If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mapRectToSourceNormalized-method"></span><span class="type">QRectF</span> <span class="name">mapRectToSourceNormalized</span>(const <span class="type">QRectF</span> &amp; <em>rectangle</em>) const</p></td>
</tr>
</tbody>
</table>

Given a rectangle *rectangle* in item coordinates, return the corresponding rectangle in normalized source coordinates. This mapping is affected by the orientation.

This mapping is affected by the orientation.

If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle. No clamping is performed.

