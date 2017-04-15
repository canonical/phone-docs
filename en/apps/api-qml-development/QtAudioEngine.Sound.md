---
Title: QtAudioEngine.Sound
---
        
Sound
=====

<span class="subtitle"></span>
Define a variety of samples and parameters to be used for SoundInstance. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[attenuationModel](#attenuationModel-prop)**** : string
-   ****[category](#category-prop)**** : string
-   ****[name](#name-prop)**** : string
-   ****[playType](#playType-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[play](#play-method-12)****(position, velocity, direction, gain, pitch)
-   ****[play](#play-method-11)****(position, velocity, gain, pitch)
-   ****[play](#play-method-10)****(position, gain, pitch)
-   ****[play](#play-method-9)****(position, velocity, direction, gain)
-   ****[play](#play-method-8)****(position, velocity, gain)
-   ****[play](#play-method-7)****(position, gain)
-   ****[play](#play-method-6)****(position, velocity, direction)
-   ****[play](#play-method-5)****(position, velocity)
-   ****[play](#play-method-4)****(position)
-   ****[play](#play-method-3)****(gain, pitch)
-   ****[play](#play-method-2)****(gain)
-   ****[play](#play-method)****()

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

Sound can be accessed through [QtAudioEngine::AudioEngine::sounds](../QtAudioEngine.AudioEngine.md#sounds-prop) with its unique name and must be defined inside [AudioEngine](../QtAudioEngine.AudioEngine.md).

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        AudioSample {
            name:"explosion01"
            source: "explosion-01.wav"
        }
        AudioSample {
            name:"explosion02"
            source: "explosion-02.wav"
        }
        Sound {
            name:"explosion"
            PlayVariation {
                sample:"explosion01"
                minPitch: 0.8
                maxPitch: 1.1
            }
            PlayVariation {
                sample:"explosion01"
                minGain: 1.1
                maxGain: 1.5
            }
        }
    }
    MouseArea {
        anchors.fill: parent
        onPressed: {
            audioengine.sounds["explosion"].play();
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
<td><p><span id="attenuationModel-prop"></span><span class="name">attenuationModel</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property specifies which attenuation model this sound will apply.

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

This property specifies which [AudioCategory](../QtAudioEngine.AudioCategory.md) this sound belongs to.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of Sound, must be unique among all sounds and only defined once.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playType-prop"></span><span class="name">playType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the playType. It can be one of:

-   Random - randomly picks up a play variation when playback is triggered
-   Sequential - plays each variation in sequence when playback is triggered

The default value is Random.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-12"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">direction</span>, <span class="type">gain</span>, <span class="type">pitch</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing with specified *position*, *velocity*, *direction*, adjusted *gain* and *pitch*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-11"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">gain</span>, <span class="type">pitch</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing with specified *position*, *velocity*, adjusted *gain* and *pitch*. Direction is set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-10"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">gain</span>, <span class="type">pitch</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing with specified *position*, adjusted *gain* and *pitch*. Direction and velocity are all set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-9"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">direction</span>, <span class="type">gain</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing with specified *position*, *velocity*, *direction* and adjusted *gain*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-8"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">gain</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing with specified *position*, *velocity* and adjusted *gain*. Direction is set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-7"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">gain</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing with specified *position* and adjusted *gain*. Direction and velocity are all set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-6"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">direction</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing with specified *position*, *velocity* and *direction*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-5"></span><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing with specified *position* and *velocity*. Direction is set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-4"></span><span class="name">play</span>(<span class="type">position</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing with specified *position*. Direction and velocity are all set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-3"></span><span class="name">play</span>(<span class="type">gain</span>, <span class="type">pitch</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing with the adjusted *gain* and *pitch*. Position, direction and velocity are all set to `"0,0,0"`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method-2"></span><span class="name">play</span>(<span class="type">gain</span>)</p></td>
</tr>
</tbody>
</table>

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing with the adjusted *gain*. Position, direction and velocity are all set to `"0,0,0"`.

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

Creates a new [SoundInstance](../QtAudioEngine.SoundInstance.md) and starts playing. Position, direction and velocity are all set to `"0,0,0"`.

