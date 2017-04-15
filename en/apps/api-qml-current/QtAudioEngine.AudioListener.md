---
Title: QtAudioEngine.AudioListener
---
        
AudioListener
=============

<span class="subtitle"></span>
Control global listener parameters. More...

|                   |                          |
|-------------------|--------------------------|
| Import Statement: | import QtAudioEngine 1.0 |
| Since:            | Qt 5.0                   |

<span id="properties"></span>
Properties
----------

-   ****[direction](#direction-prop)**** : vector3d
-   ****[engine](#engine-prop)**** : QtAudioEngine::AudioEngine
-   ****[gain](#gain-prop)**** : real
-   ****[position](#position-prop)**** : vector3d
-   ****[up](#up-prop)**** : vector3d
-   ****[velocity](#velocity-prop)**** : vector3d

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtAudioEngine 1.0** module.

[AudioListener](index.html) will have only one global instance and you can either access it through the listener property of [AudioEngine](../QtAudioEngine.AudioEngine.md):

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        listener.up:"0,0,1"
        listener.velocity:"0,0,0"
        listener.direction:"0,1,0"
        listener.position:Qt.vector3d(observer.x, observer.y, 0);
    }
    Item {
        id: observer
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
}
```

or alternatively, by defining an [AudioListener](index.html) outside [AudioEngine](../QtAudioEngine.AudioEngine.md):

``` qml
import QtQuick 2.0
import QtAudioEngine 1.0
Rectangle {
    color:"white"
    width: 300
    height: 500
    AudioEngine {
        id:audioengine
        listener.up:"0,0,1"
        listener.velocity:"0,0,0"
        listener.direction:"0,1,0"
    }
    AudioListener {
        engine:audioengine
        position: Qt.vector3d(observer.x, observer.y, 0);
    }
    Item {
        id: observer
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
}
```

This separate [AudioListener](index.html) definition is allowed to make QML bindings easier in some cases.

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

This property holds the normalized 3D direction vector of the listener.

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

This property holds the reference to [AudioEngine](../QtAudioEngine.AudioEngine.md), and must only be set once.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gain-prop"></span><span class="name">gain</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property will modulate all audio output from audio engine instances.

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

This property holds the 3D position of the listener.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="up-prop"></span><span class="name">up</span> : <span class="type">vector3d</span></p></td>
</tr>
</tbody>
</table>

This property holds the normalized 3D up vector of the listener.

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

This property holds the 3D velocity vector of the listener.

