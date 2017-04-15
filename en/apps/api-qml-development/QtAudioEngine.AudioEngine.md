---
Title: QtAudioEngine.AudioEngine
---
        
AudioEngine
===========

<span class="subtitle"></span>
Organize all your 3d audio content in one place. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[categories](#categories-prop)**** : map
-   ****[dopplerFactor](#dopplerFactor-prop)**** : real
-   ****[listener](#listener-prop)**** : QtAudioEngine::AudioListener
-   ****[liveInstances](#liveInstances-prop)**** : int
-   ****[loading](#loading-prop)**** : bool
-   ****[samples](#samples-prop)**** : map
-   ****[sounds](#sounds-prop)**** : map
-   ****[speedOfSound](#speedOfSound-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[finishedLoading](#finishedLoading-signal)****()
-   ****[isLoadingChanged](#isLoadingChanged-signal)****()
-   ****[liveInstanceCountChanged](#liveInstanceCountChanged-signal)****()
-   ****[ready](#ready-signal)****()

<span id="details"></span>
Detailed Description
--------------------

`AudioEngine` is part of the **QtAudioEngine 1.0** module.

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
        Sound {
            name:"explosion"
            PlayVariation {
                sample:"explosion"
            }
        }
        dopplerFactor: 1
        speedOfSound: 343.33 // Approximate speed of sound in air at 20 degrees Celsius
        listener.up:"0,0,1"
        listener.position:"0,0,0"
        listener.velocity:"0,0,0"
        listener.direction:"0,1,0"
    }
    MouseArea {
        anchors.fill: parent
        onPressed: {
            audioengine.sounds["explosion"].play();
        }
    }
}
```

`AudioEngine` acts as a central library for configuring all 3d audio content in an app, so you should define only one in your app.

It is mostly used as a container to access other types such as [AudioCategory](../QtAudioEngine.AudioCategory.md), [AudioSample](../QtAudioEngine.AudioSample.md) and Sound.

**See also** [AudioCategory](../QtAudioEngine.AudioCategory.md), [AudioSample](../QtAudioEngine.AudioSample.md), [Sound](../QtAudioEngine.Sound.md), [SoundInstance](../QtAudioEngine.SoundInstance.md), [AttenuationModelLinear](../QtAudioEngine.AttenuationModelLinear.md), and [AttenuationModelInverse](../QtAudioEngine.AttenuationModelInverse.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="categories-prop"></span><span class="name">categories</span> : <span class="type">map</span></p></td>
</tr>
</tbody>
</table>

Container of all [AudioCategory](../QtAudioEngine.AudioCategory.md) instances.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dopplerFactor-prop"></span><span class="name">dopplerFactor</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds a simple scaling for the effect of doppler shift.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="listener-prop"></span><span class="name">listener</span> : <span class="type"><a href="QtAudioEngine.AudioListener.md">QtAudioEngine::AudioListener</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the listener object. You can change various properties to affect the 3D positioning of sounds.

**See also** [AudioListener](../QtAudioEngine.AudioListener.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="liveInstances-prop"></span><span class="name">liveInstances</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property indicates how many live sound instances there are at the moment.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loading-prop"></span><span class="name">loading</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates if the audio engine is loading any audio sample at the moment. This may be useful if you specified the preloaded property in [AudioSample](../QtAudioEngine.AudioSample.md) and would like to show a loading screen to the user before all audio samples are loaded.

/sa [finishedLoading](#finishedLoading-signal), [AudioSample::preloaded](../QtAudioEngine.AudioSample.md#preloaded-prop)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="samples-prop"></span><span class="name">samples</span> : <span class="type">map</span></p></td>
</tr>
</tbody>
</table>

Container of all [AudioSample](../QtAudioEngine.AudioSample.md) instances.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sounds-prop"></span><span class="name">sounds</span> : <span class="type">map</span></p></td>
</tr>
</tbody>
</table>

Container of all Sound instances.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="speedOfSound-prop"></span><span class="name">speedOfSound</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the reference value of the sound speed (in meters per second) which will be used in doppler shift calculation. The doppler shift calculation is used to emulate the change in frequency in sound that is perceived by an observer when the sound source is travelling towards or away from the observer. The speed of sound depends on the medium the sound is propagating through.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="finishedLoading-signal"></span><span class="name">finishedLoading</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when [loading](#loading-prop) has completed.

The corresponding handler is `onFinishedLoading`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isLoadingChanged-signal"></span><span class="name">isLoadingChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the [loading](#loading-prop) property changes.

The corresponding handler is `onIsLoadingChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="liveInstanceCountChanged-signal"></span><span class="name">liveInstanceCountChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the number of live instances managed by the [AudioEngine](index.html) is changed.

The corresponding handler is `onLiveInstanceCountChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ready-signal"></span><span class="name">ready</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the [AudioEngine](index.html) is ready to use.

The corresponding handler is `onReady`.

