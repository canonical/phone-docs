---
Title: QtAudioEngine.AttenuationModelInverse
---
        
AttenuationModelInverse
=======================

<span class="subtitle"></span>
Defines a non-linear attenuation curve for a Sound. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[end](#end-prop)**** : real
-   ****[name](#name-prop)**** : string
-   ****[rolloff](#rolloff-prop)**** : real
-   ****[start](#start-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

[AttenuationModelInverse](index.html) must be defined inside [AudioEngine](../QtAudioEngine.AudioEngine.md).

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        AttenuationModelInverse {
           name:"linear"
           start: 20
           end: 500
           rolloff: 1.5
        }
        AudioSample {
            name:"explosion"
            source: "explosion-02.wav"
        }
        Sound {
            name:"explosion"
            attenuationModel: "linear"
            PlayVariation {
                sample:"explosion"
            }
        }
    }
}
```

Attenuation factor is calculated as below:

distance: distance from sound to listener d = min(max(distance, start), end); attenuation = start / (start + (d - start) \* rolloff);

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="end-prop"></span><span class="name">end</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the end distance. There will be no further attenuation if the distance from sound to listener is larger than this. The default value is 1000.

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

This property holds the name of [AttenuationModelInverse](index.html), must be unique among all attenuation models and only defined once.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rolloff-prop"></span><span class="name">rolloff</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the rolloff factor. The bigger the value is, the faster the sound attenuates. The default value is 1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-prop"></span><span class="name">start</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the start distance. There will be no attenuation if the distance from sound to listener is within this range. The default value is 1.

