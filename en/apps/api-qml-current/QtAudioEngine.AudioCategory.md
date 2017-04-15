---
Title: QtAudioEngine.AudioCategory
---
        
AudioCategory
=============

<span class="subtitle"></span>
Control all active sound instances by group. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[name](#name-prop)**** : string
-   ****[volume](#volume-prop)**** : real

<span id="methods"></span>
Methods
-------

-   ****[pause](#pause-method-2)****()
-   ****[pause](#pause-method)****()
-   ****[stop](#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

An instance of [AudioCategory](index.html) can be accessed through [AudioEngine.categories](../QtAudioEngine.AudioEngine.md#categories-prop) with its unique name and must be defined inside [AudioEngine](../QtAudioEngine.AudioEngine.md).

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        AudioCategory {
            name: "sfx"
            volume: 0.8
        }
        AudioSample {
            name:"explosion"
            source: "explosion-02.wav"
        }
        Sound {
            name:"explosion"
            category: "sfx"
            PlayVariation {
                sample:"explosion"
            }
        }
    }
    MouseArea {
        anchors.fill: parent
        onPressed: {
            audioengine.categories["sfx"].volume = 0.5;
        }
    }
}
```

[Sound](../QtAudioEngine.Sound.md) instances can be grouped together by specifying the category property. When you change the volume of a category, all audio output from related instances will be affected as well.

Note: there will always be an [AudioCategory](index.html) named `default` whether you explicitly define it or not. If you do not specify any category for a [Sound](../QtAudioEngine.Sound.md), it will be grouped into the `default` category.

Property Documentation
----------------------

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

This property holds the name of [AudioCategory](index.html). The name must be unique among all categories and only defined once. The name cannot be changed after the instance has been initialized.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="volume-prop"></span><span class="name">volume</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the volume of the category and will modulate all audio output from the instances which belong to this category.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pause-method-2"></span><span class="name">pause</span>()</p></td>
</tr>
</tbody>
</table>

Resumes all active sound instances from paused state which belong to this category.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pause-method"></span><span class="name">pause</span>()</p></td>
</tr>
</tbody>
</table>

Pauses all active sound instances which belong to this category.

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

Stops all active sound instances which belong to this category.

