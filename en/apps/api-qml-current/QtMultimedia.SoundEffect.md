---
Title: QtMultimedia.SoundEffect
---
        
SoundEffect
===========

<span class="subtitle"></span>
The SoundEffect type provides a way to play sound effects in QML. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |
| Instantiates:     | QSoundEffect            |

<span id="properties"></span>
Properties
----------

-   ****[category](#category-prop)**** : string
-   ****[loops](#loops-prop)**** : int
-   ****[loopsRemaining](#loopsRemaining-prop)**** : int
-   ****[muted](#muted-prop)**** : bool
-   ****[playing](#playing-prop)**** : bool
-   ****[source](#source-prop)**** : url
-   ****[status](#status-prop)**** : enumeration
-   ****[volume](#volume-prop)**** : qreal

<span id="signals"></span>
Signals
-------

-   ****[categoryChanged](#categoryChanged-signal)****()
-   ****[loadedChanged](#loadedChanged-signal)****()
-   ****[loopCountChanged](#loopCountChanged-signal)****()
-   ****[loopsRemainingChanged](#loopsRemainingChanged-signal)****()
-   ****[mutedChanged](#mutedChanged-signal)****()
-   ****[playingChanged](#playingChanged-signal)****()
-   ****[sourceChanged](#sourceChanged-signal)****()
-   ****[statusChanged](#statusChanged-signal)****()
-   ****[volumeChanged](#volumeChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   bool ****[isLoaded](#isLoaded-method)****()
-   ****[play](#play-method)****()
-   ****[stop](#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

SoundEffect is part of the **QtMultimedia 5.0** module.

This type allows you to play uncompressed audio files (typically WAV files) in a generally lower latency way, and is suitable for "feedback" type sounds in response to user actions (e.g. virtual keyboard sounds, positive or negative feedback for popup dialogs, or game sounds). If low latency is not important, consider using the [MediaPlayer](../QtMultimedia.MediaPlayer.md) or Audio types instead, since they support a wider variety of media formats and are less resource intensive.

Typically the sound effect should be reused, which allows all the parsing and preparation to be done ahead of time, and only triggered when necessary. This is easy to achieve with QML, since you can declare your [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect) instance and refer to it elsewhere.

The following example plays a WAV file on mouse click.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Text {
    text: "Click Me!";
    font.pointSize: 24;
    width: 150; height: 50;
    SoundEffect {
        id: playSound
        source: "soundeffect.wav"
    }
    MouseArea {
        id: playArea
        anchors.fill: parent
        onPressed: { playSound.play() }
    }
}
```

Since [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect) requires slightly more resources to achieve lower latency playback, the platform may limit the number of simultaneously playing sound effects.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="category-prop"></span><span class="name">category</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property contains the *category* of this sound effect.

Some platforms can perform different audio routing for different categories, or may allow the user to set different volume levels for different categories.

This setting will be ignored on platforms that do not support audio categories.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loops-prop"></span><span class="name">loops</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of times the sound is played. A value of 0 or 1 means the sound will be played only once; set to [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect).Infinite to enable infinite looping.

The value can be changed while the sound effect is playing, in which case it will update the remaining loops to the new value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loopsRemaining-prop"></span><span class="name">loopsRemaining</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property contains the number of loops remaining before the sound effect stops by itself, or [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect).Infinite if that's what has been set in [loops](#loops-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="muted-prop"></span><span class="name">muted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property provides a way to control muting. A value of `true` will mute this effect. Otherwise, playback will occur with the currently specified [volume](#volume-prop).

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

This property indicates whether the sound effect is playing or not.

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

This property holds the url for the sound to play. For the [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect) to attempt to load the source, the URL must exist and the application must have read permission in the specified directory. If the desired source is a local file the URL may be specified using either absolute or relative (to the file that declared the [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect)) pathing.

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

This property indicates the current status of the [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect) as enumerated within [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect). Possible statuses are listed below.

| Value                                                                        | Description                                                                                            |
|------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect).Null    | No source has been set or the source is null.                                                          |
| [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect).Loading | The [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect) is trying to load the source. |
| [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect).Ready   | The source is loaded and ready for play.                                                               |
| [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect).Error   | An error occurred during operation, such as failure of loading the source.                             |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="volume-prop"></span><span class="name">volume</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the volume of the sound effect playback, from 0.0 (silent) to 1.0 (maximum volume).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="categoryChanged-signal"></span><span class="name">categoryChanged</span>()</p></td>
</tr>
</tbody>
</table>

The `categoryChanged` signal is emitted when the category property has changed.

The corresponding handler is `onCategoryChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loadedChanged-signal"></span><span class="name">loadedChanged</span>()</p></td>
</tr>
</tbody>
</table>

The `loadedChanged` signal is emitted when the loading state has changed.

The corresponding handler is `onLoadedChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loopCountChanged-signal"></span><span class="name">loopCountChanged</span>()</p></td>
</tr>
</tbody>
</table>

The `loopCountChanged` signal is emitted when the initial number of loops has changed.

The corresponding handler is `onLoopCountChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loopsRemainingChanged-signal"></span><span class="name">loopsRemainingChanged</span>()</p></td>
</tr>
</tbody>
</table>

The `loopsRemainingChanged` signal is emitted when the remaining number of loops has changed.

The corresponding handler is `onLoopsRemainingChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mutedChanged-signal"></span><span class="name">mutedChanged</span>()</p></td>
</tr>
</tbody>
</table>

The `mutedChanged` signal is emitted when the mute state has changed.

The corresponding handler is `onMutedChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playingChanged-signal"></span><span class="name">playingChanged</span>()</p></td>
</tr>
</tbody>
</table>

The `playingChanged` signal is emitted when the playing property has changed.

The corresponding handler is `onPlayingChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceChanged-signal"></span><span class="name">sourceChanged</span>()</p></td>
</tr>
</tbody>
</table>

The `sourceChanged` signal is emitted when the source has been changed.

The corresponding handler is `onSourceChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="statusChanged-signal"></span><span class="name">statusChanged</span>()</p></td>
</tr>
</tbody>
</table>

The `statusChanged` signal is emitted when the status property has changed.

The corresponding handler is `onStatusChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="volumeChanged-signal"></span><span class="name">volumeChanged</span>()</p></td>
</tr>
</tbody>
</table>

The `volumeChanged` signal is emitted when the volume has changed.

The corresponding handler is `onVolumeChanged`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isLoaded-method"></span><span class="type">bool</span> <span class="name">isLoaded</span>()</p></td>
</tr>
</tbody>
</table>

Returns whether the sound effect has finished loading the [source](#source-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method"></span><span class="name">play</span>()</p></td>
</tr>
</tbody>
</table>

Start playback of the sound effect, looping the effect for the number of times as specified in the loops property.

This is the default method for [SoundEffect](../QtMultimedia.qml-multimedia.md#soundeffect).

``` qml
SoundEffect {
    id: playSound
    source: "soundeffect.wav"
}
MouseArea {
    id: playArea
    anchors.fill: parent
    onPressed: { playSound.play() }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stop current playback.

