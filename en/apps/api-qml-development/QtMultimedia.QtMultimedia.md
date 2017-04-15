---
Title: QtMultimedia.QtMultimedia
---
        
QtMultimedia
============

<span class="subtitle"></span>
Provides a global object with useful functions from Qt Multimedia. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |
| Since:            | QtMultimedia 5.4        |

<span id="properties"></span>
Properties
----------

-   ****[availableCameras](#availableCameras-prop)**** : list&lt;object&gt;
-   ****[defaultCamera](#defaultCamera-prop)**** : object

<span id="details"></span>
Detailed Description
--------------------

The `QtMultimedia` object is a global object with utility functions and properties.

It is not instantiable; to use it, call the members of the global `QtMultimedia` object directly. For example:

``` qml
import QtQuick 2.0
import QtMultimedia 5.4
Camera {
    deviceId: QtMultimedia.defaultCamera.deviceId
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
<td><p><span id="availableCameras-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">availableCameras</span> : <span class="type">list</span>&lt;<span class="type">object</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property provides information about the cameras available on the system.

Each object in the list has the following properties:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code>deviceId</code></td>
<td>This read-only property holds the unique identifier of the camera.
<p>You can choose which device to use with a <a href="../QtMultimedia.qml-multimedia.md#camera">Camera</a> object by setting its <a href="../QtMultimedia.Camera.md#deviceId-prop">deviceId</a> property to this value.</p></td>
</tr>
<tr class="even">
<td><code>displayName</code></td>
<td>This read-only property holds the human-readable name of the camera. You can use this property to display the name of the camera in a user interface.</td>
</tr>
<tr class="odd">
<td><code>position</code></td>
<td>This read-only property holds the physical position of the camera on the hardware system. Please see <a href="../QtMultimedia.Camera.md#position-prop">Camera.position</a> for more information.</td>
</tr>
<tr class="even">
<td><code>orientation</code></td>
<td>This read-only property holds the physical orientation of the camera sensor. Please see <a href="../QtMultimedia.Camera.md#orientation-prop">Camera.orientation</a> for more information.</td>
</tr>
</tbody>
</table>

**Note:** This property is static; it is not updated when cameras are added or removed from the system, like USB cameras on a desktop platform.

The following example shows how to display a list of available cameras. The user can change the active camera by selecting one of the items in the list.

``` qml
import QtQuick 2.0
import QtMultimedia 5.4
Item {
    Camera {
        id: camera
    }
    VideoOutput {
        anchors.fill: parent
        source: camera
    }
    ListView {
        anchors.fill: parent
        model: QtMultimedia.availableCameras
        delegate: Text {
            text: modelData.displayName
            MouseArea {
                anchors.fill: parent
                onClicked: camera.deviceId = modelData.deviceId
            }
        }
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultCamera-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">defaultCamera</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

The `defaultCamera` object provides information about the default camera on the system.

Its properties are `deviceId`, `displayName`, `position` and `orientation`. See [availableCameras](#availableCameras-prop) for a description of each of them.

If there is no default camera, `defaultCamera.deviceId` will contain an empty string.

**Note:** This property is static; it is not updated if the system's default camera changes after the application started.

