---
Title: QtAudioEngine.SoundInstance
---
        
SoundInstance
=============

<span class="subtitle"></span>
Play 3d audio content. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[direction](#direction-prop)**** : vector3d
-   ****[engine](#engine-prop)**** : QtAudioEngine::AudioEngine
-   ****[gain](#gain-prop)**** : vector3d
-   ****[pitch](#pitch-prop)**** : vector3d
-   ****[position](#position-prop)**** : vector3d
-   ****[sound](#sound-prop)**** : string
-   ****[state](#state-prop)**** : enumeration
-   ****[velocity](#velocity-prop)**** : vector3d

<span id="signals"></span>
Signals
-------

-   ****[directionChanged](#directionChanged-signal)****()
-   ****[gainChanged](#gainChanged-signal)****()
-   ****[pitchChanged](#pitchChanged-signal)****()
-   ****[positionChanged](#positionChanged-signal)****()
-   ****[soundChanged](#soundChanged-signal)****()
-   ****[stateChanged](#stateChanged-signal)****(state)
-   ****[velocityChanged](#velocityChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[play](#play-method-3)****()
-   ****[play](#play-method-2)****()
-   ****[play](#play-method)****()

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

There are two ways to create [SoundInstance](index.html) objects. You can obtain it by calling newInstance method of a [Sound](../QtAudioEngine.Sound.md):

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    id:root
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        AudioSample {
            name:"explosion01"
            source: "explosion-01.wav"
        }
        Sound {
            name:"explosion"
            PlayVariation {
                sample:"explosion01"
            }
        }
    }
    property variant soundEffect: audioengine.sounds["explosion"].newInstance();
    MouseArea {
        anchors.fill: parent
        onPressed: {
            root.soundEffect.play();
        }
    }
}
```

Or alternatively, you can explicitly define [SoundInstance](index.html) outside of [AudioEngine](../QtAudioEngine.AudioEngine.md) for easier qml bindings:

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    id:root
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        AudioSample {
            name:"explosion01"
            source: "explosion-01.wav"
        }
        Sound {
            name:"explosion"
            PlayVariation {
                sample:"explosion01"
            }
        }
    }
    Item {
        id: animator
        x: 10 + observer.percent * 100
        y: 20 + observer.percent * 80
        property real percent: 0
        SequentialAnimation on percent {
            loops: Animation.Infinite
            running: true
            NumberAnimation {
            duration: 8000
            from: 0
            to: 1
            }
        }
    }
    SoundInstance {
        id:soundEffect
        engine:audioengine
        sound:"explosion"
        position:Qt.vector3d(animator.x, animator.y, 0);
    }
    MouseArea {
        anchors.fill: parent
        onPressed: {
            soundEffect.play();
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
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the current 3d direction.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="engine-prop"></span><span class="name">engine</span> : <span class="type"><a href="QtAudioEngine.AudioEngine.md">QtAudioEngine::AudioEngine</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the reference to [AudioEngine](../QtAudioEngine.AudioEngine.md), must be set only once.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gain-prop"></span><span class="name">gain</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the gain adjustment which will be used to modulate the audio output level from this [SoundInstance](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pitch-prop"></span><span class="name">pitch</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the pitch adjustment which will be used to modulate the audio pitch from this [SoundInstance](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="position-prop"></span><span class="name">position</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the current 3d position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sound-prop"></span><span class="name">sound</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property specifies which Sound this [SoundInstance](index.html) will use. Unlike some properties in other types, this property can be changed dynamically.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="state-prop"></span><span class="name">state</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the current playback state. It can be one of:

| Value         | Description                                                                                                                         |
|---------------|-------------------------------------------------------------------------------------------------------------------------------------|
| StopppedState | The [SoundInstance](index.html) is not playing, and when playback begins next it will play from position zero.                      |
| PlayingState  | The [SoundInstance](index.html) is playing the media.                                                                               |
| PausedState   | The [SoundInstance](index.html) is not playing, and when playback begins next it will play from the position that it was paused at. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocity-prop"></span><span class="name">velocity</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the current 3d velocity.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="directionChanged-signal"></span><span class="name">directionChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [direction](#direction-prop) is changed

The corresponding handler is `onDirectionChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gainChanged-signal"></span><span class="name">gainChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [gain](#gain-prop) is changed

The corresponding handler is `onGainChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pitchChanged-signal"></span><span class="name">pitchChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [pitch](#pitch-prop) is changed

The corresponding handler is `onPitchChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionChanged-signal"></span><span class="name">positionChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [position](#position-prop) is changed

The corresponding handler is `onPositionChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="soundChanged-signal"></span><span class="name">soundChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [sound](#sound-prop) is changed

The corresponding handler is `onSoundChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stateChanged-signal"></span><span class="name">stateChanged</span>(<span class="type">state</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [state](#state-prop) is changed

The corresponding handler is `onStateChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocityChanged-signal"></span><span class="name">velocityChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [velocity](#velocity-prop) is changed

The corresponding handler is `onVelocityChanged`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-3"></span><span class="name">play</span>()</p></td>
</tr>
</tbody>
</table>

Pauses current playback.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-2"></span><span class="name">play</span>()</p></td>
</tr>
</tbody>
</table>

Stops current playback.

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

Starts playback.

