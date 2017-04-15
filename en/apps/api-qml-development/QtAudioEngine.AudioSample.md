---
Title: QtAudioEngine.AudioSample
---
        
AudioSample
===========

<span class="subtitle"></span>
Load audio samples, mostly .wav. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[loaded](#loaded-prop)**** : bool
-   ****[name](#name-prop)**** : string
-   ****[preloaded](#preloaded-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[loadedChanged](#loadedChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   void ****[load](#load-method)****()

<span id="details"></span>
Detailed Description
--------------------

`AudioSample` is part of the **QtAudioEngine 1.0** module.

It can be accessed through [QtAudioEngine::AudioEngine::samples](../QtAudioEngine.AudioEngine.md#samples-prop) with its unique name and must be defined inside [AudioEngine](../QtAudioEngine.AudioEngine.md).

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
            name:"explosion"
            source: "explosion-02.wav"
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
<td><p><span id="loaded-prop"></span><span class="name">loaded</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether this sample has been loaded into memory or not.

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

This property holds the name of the sample, which must be unique among all samples and only defined once.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preloaded-prop"></span><span class="name">preloaded</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether this sample needs to be preloaded or not. If `true`, the audio engine will start loading the sample file immediately when the application starts, otherwise the sample will not be loaded until explicitly requested.

Signal Documentation
--------------------

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

This signal is emitted when [loaded](#loaded-prop) is changed.

The corresponding handler is `onLoadedChanged`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="load-method"></span><span class="type">void</span> <span class="name">load</span>()</p></td>
</tr>
</tbody>
</table>

Starts loading the sample into memory if not loaded.

