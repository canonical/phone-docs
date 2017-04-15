---
Title: QtMultimedia.qml-multimedia
---
        
Qt Multimedia QML API
=====================

<span class="subtitle"></span>
details
Overview
--------

The Qt Multimedia module gives developers a simplified way to use audio and video playback, and access camera functionality. The Multimedia QML API provides a QML friendly interface to these features.

<span id="types"></span>
Types
-----

<span id="audio"></span>
### Audio

[Audio](#audio) is an easy way to add audio playback to a Qt Quick scene. Qt Multimedia provides properties for control, methods (functions) and signals.

The code extract below shows the creation and use of an Audio instance.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
// ...
Item {
    width: 640
    height: 360
    Audio {
        id: playMusic
        source: "music.wav"
    }
    MouseArea {
        id: playArea
        anchors.fill: parent
        onPressed:  { playMusic.play() }
    }
}
```

The snippet above shows how the inclusion of *playMusic* enables audio features on the type that contains it. So that when the parent's MouseArea is clicked the [play()](../QtMultimedia.Audio.md#play-method) method of Audio is run. Other typical audio control methods are available such as [pause()](../QtMultimedia.Audio.md#pause-method) and [stop()](../QtMultimedia.Audio.md#stop-method).

Much of the getting / setting of [Audio](#audio) parameters is done through properties. These include

| Property                                                               | Description                                                            |
|------------------------------------------------------------------------|------------------------------------------------------------------------|
| [source](../QtMultimedia.Audio.md#source-prop)                 | The source URL of the media.                                           |
| [autoLoad](../QtMultimedia.Audio.md#autoLoad-prop)             | Indicates if loading of media should begin immediately.                |
| [playing](../QtMultimedia.Audio.md#playing-signal)             | Indicates that the media is playing.                                   |
| [paused](../QtMultimedia.Audio.md#paused-signal)               | The media is paused.                                                   |
| [status](../QtMultimedia.Audio.md#status-prop)                 | The status of media loading.                                           |
| [duration](../QtMultimedia.Audio.md#duration-prop)             | Amount of time in milliseconds the media will play.                    |
| [position](../QtMultimedia.Audio.md#position-prop)             | Current position in the media in milliseconds of play.                 |
| [volume](../QtMultimedia.Audio.md#volume-prop)                 | Audio output volume: from 0.0 (silent) to 1.0 (maximum)                |
| [muted](../QtMultimedia.Audio.md#muted-prop)                   | Indicates audio is muted.                                              |
| [bufferProgress](../QtMultimedia.Audio.md#bufferProgress-prop) | Indicates how full the data buffer is: 0.0 (empty) to 1.0 (full).      |
| [seekable](../QtMultimedia.Audio.md#seekable-prop)             | Indicates whether the audio position can be changed.                   |
| [playbackRate](../QtMultimedia.Audio.md#playbackRate-prop)     | The rate at which audio is played at as a multiple of the normal rate. |
| [error](../QtMultimedia.Audio.md#error-signal)                 | An error code for the error state including NoError                    |
| [errorString](../QtMultimedia.Audio.md#errorString-prop)       | A description of the current error condition.                          |

The set of signals available allow the developer to create custom behavior when the following events occur,

| Signal                                                     | Description                                                         |
|------------------------------------------------------------|---------------------------------------------------------------------|
| [playing](../QtMultimedia.Audio.md#playing-signal) | Called when playback is started, or when resumed from paused state. |
| [paused](../QtMultimedia.Audio.md#paused-signal)   | Called when playback is paused.                                     |
| [stopped](../QtMultimedia.Audio.md#stopped-signal) | Called when playback is stopped.                                    |
| [error](../QtMultimedia.Audio.md#error-signal)     | Called when the specified error occurs.                             |

<span id="camera"></span>
### Camera

[Camera](#camera) enables still image and video capture using QML. It has a number of properties that help setting it up.

The details of using a [Camera](#camera) are described in further depth in the [Camera Overview](../QtMultimedia.cameraoverview.md) and in the corresponding reference documentation.

<span id="video"></span>
### Video

Adding video playback, with sound, to a Qt Quick scene is also easy. The process is very similar to that of Audio above, in fact [Video](#video) shares many of the property names, methods and signals. Here is the equivalent sample code to implement video playback in a scene

``` qml
Video {
    id: video
    width : 800
    height : 600
    source: "video.avi"
    MouseArea {
        anchors.fill: parent
        onClicked: {
            video.play()
        }
    }
    focus: true
    Keys.onSpacePressed: video.paused = !video.paused
    Keys.onLeftPressed: video.position -= 5000
    Keys.onRightPressed: video.position += 5000
}
```

There are similar features like [play()](../QtMultimedia.Video.md#play-method) with new features specific to video.

In the above sample when the parent of MouseArea is clicked, an area of 800x600 pixels with an id of 'video', the source "video.avi" will play in that area. Notice also that signals for the Keys have been defined so that a spacebar will toggle the pause button; the left arrow will move the current position in the video to 5 seconds previously; and the right arrow will advance the current position in the video by 5 seconds.

Most of the differences will obviously be about video control and information. There are many properties associated with [Video](#video), most of them deal with meta-data, control of the video media and aspects of presentation.

<span id="soundeffect"></span>
### SoundEffect

[SoundEffect](#soundeffect) provides a way to play short sound effects, like in video games. Multiple sound effect instances can be played simultaneously. You should use [Audio](#audio) for music playback.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Item {
    width: 640
    height: 360
    SoundEffect {
        id: effect
        source: "test.wav"
    }
    MouseArea {
        id: playArea
        anchors.fill: parent
        onPressed:  { effect.play() }
    }
}
```

In the above sample the sound effect will be played when the MouseArea is clicked.

For a complete description of this type, see [SoundEffect](#soundeffect)

<span id="multimedia-qml-types"></span>
Multimedia QML Types
--------------------

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="QtMultimedia.Audio.md">Audio</a></p></td>
<td><p>Add audio playback to a scene</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.Camera.md">Camera</a></p></td>
<td><p>Access viewfinder frames, and take photos and movies</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtMultimedia.CameraCapture.md">CameraCapture</a></p></td>
<td><p>An interface for capturing camera images</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.CameraExposure.md">CameraExposure</a></p></td>
<td><p>An interface for exposure related camera settings</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtMultimedia.CameraFlash.md">CameraFlash</a></p></td>
<td><p>An interface for flash related camera settings</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.CameraFocus.md">CameraFocus</a></p></td>
<td><p>An interface for focus related camera settings</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtMultimedia.CameraImageProcessing.md">CameraImageProcessing</a></p></td>
<td><p>An interface for camera capture related settings</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.CameraRecorder.md">CameraRecorder</a></p></td>
<td><p>Controls video recording with the Camera</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a></p></td>
<td><p>Add media playback to a scene</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.Playlist.md">Playlist</a></p></td>
<td><p>For specifying a list of media to be played</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtMultimedia.PlaylistItem.md">PlaylistItem</a></p></td>
<td><p>Defines an item in a Playlist</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.QtMultimedia.md">QtMultimedia</a></p></td>
<td><p>Provides a global object with useful functions from Qt Multimedia</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtMultimedia.Radio.md">Radio</a></p></td>
<td><p>Access radio functionality from a QML application</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.RadioData.md">RadioData</a></p></td>
<td><p>Access RDS data from a QML application</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtMultimedia.SoundEffect.md">SoundEffect</a></p></td>
<td><p>Type provides a way to play sound effects in QML</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.Torch.md">Torch</a></p></td>
<td><p>Simple control over torch functionality</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtMultimedia.Video.md">Video</a></p></td>
<td><p>A convenience type for showing a specified video</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></p></td>
<td><p>Render video or camera viewfinder</p></td>
</tr>
</tbody>
</table>

