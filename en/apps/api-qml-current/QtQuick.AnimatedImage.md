---
Title: QtQuick.AnimatedImage
---
        
AnimatedImage
=============

<span class="subtitle"></span>
Plays animations stored as a series of images More...

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
<td><p><a href="QtQuick.Image.md">Image</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[currentFrame](#currentFrame-prop)**** : int
-   ****[frameCount](#frameCount-prop)**** : int
-   ****[paused](#paused-prop)**** : bool
-   ****[playing](#playing-prop)**** : bool
-   ****[source](#source-prop)**** : url

<span id="details"></span>
Detailed Description
--------------------

The [AnimatedImage](index.html) type extends the features of the [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.imageelements/#image) type, providing a way to play animations stored as images containing a series of frames, such as those stored in GIF files.

Information about the current frame and total length of the animation can be obtained using the [currentFrame](#currentFrame-prop) and [frameCount](#frameCount-prop) properties. You can start, pause and stop the animation by changing the values of the [playing](#playing-prop) and [paused](#paused-prop) properties.

The full list of supported formats can be determined with QMovie::supportedFormats().

<span id="example-usage"></span>
Example Usage
-------------

![](https://developer.ubuntu.com/static/devportal_uploaded/ab1028a8-0d54-49d0-b7c4-30c3f25e2f3a-api/apps/qml/sdk-15.04.5/QtQuick.AnimatedImage/images/animatedimageitem.gif)

The following QML shows how to display an animated image and obtain information about its state, such as the current frame and total number of frames. The result is an animated image with a simple progress indicator underneath it.

**Note**: Unlike images, animated images are not cached or shared internally.

``` qml
import QtQuick 2.0
Rectangle {
    width: animation.width; height: animation.height + 8
    AnimatedImage { id: animation; source: "animation.gif" }
    Rectangle {
        property int frames: animation.frameCount
        width: 4; height: 8
        x: (animation.width - width) * animation.currentFrame / frames
        y: animation.height
        color: "red"
    }
}
```

**See also** [BorderImage](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.imageelements/#borderimage) and [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.imageelements/#image).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentFrame-prop"></span><span class="name">currentFrame</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

currentFrame is the frame that is currently visible. By monitoring this property for changes, you can animate other items at the same time as the image.

[frameCount](#frameCount-prop) is the number of frames in the animation. For some animation formats, [frameCount](#frameCount-prop) is unknown and has a value of zero.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameCount-prop"></span><span class="name">frameCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

[currentFrame](#currentFrame-prop) is the frame that is currently visible. By monitoring this property for changes, you can animate other items at the same time as the image.

frameCount is the number of frames in the animation. For some animation formats, frameCount is unknown and has a value of zero.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paused-prop"></span><span class="name">paused</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the animated image is paused.

By default, this property is false. Set it to true when you want to pause the animation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playing-prop"></span><span class="name">playing</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the animated image is playing.

By default, this property is true, meaning that the animation will start playing immediately.

**Note**: this property is affected by changes to the actual playing state of [AnimatedImage](index.html). If non-animated images are used, *playing* will need to be manually set to *true* in order to animate following images.

``` qml
AnimatedImage {
    onStatusChanged: playing = (status == AnimatedImage.Ready)
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property holds the URL that refers to the source image.

[AnimatedImage](index.html) can handle any image format supported by Qt, loaded from any URL scheme supported by Qt.

**See also** QQuickImageProvider.

