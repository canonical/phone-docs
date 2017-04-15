---
Title: QtAudioEngine.PlayVariation
---
        
PlayVariation
=============

<span class="subtitle"></span>
Define a playback variation for sounds. So each time the playback of the same sound can be a slightly different even with the same AudioSample. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[looping](#looping-prop)**** : bool
-   ****[maxGain](#maxGain-prop)**** : real
-   ****[maxPitch](#maxPitch-prop)**** : real
-   ****[minGain](#minGain-prop)**** : real
-   ****[minPitch](#minPitch-prop)**** : real
-   ****[sample](#sample-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

[PlayVariation](index.html) must be defined inside a [Sound](../QtAudioEngine.Sound.md).

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
<td><p><span id="looping-prop"></span><span class="name">looping</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether the playback will be looped or not.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maxGain-prop"></span><span class="name">maxGain</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property specifies the maximum gain adjustment that can be applied in any playback.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maxPitch-prop"></span><span class="name">maxPitch</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property specifies the maximum pitch adjustment that can be applied in any playback.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minGain-prop"></span><span class="name">minGain</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property specifies the minimum gain adjustment that can be applied in any playback.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minPitch-prop"></span><span class="name">minPitch</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property specifies the minimum pitch adjustment that can be applied in any playback.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sample-prop"></span><span class="name">sample</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property specifies which [AudioSample](../QtAudioEngine.AudioSample.md) this variation will use.

