---
Title: QtMultimedia.CameraFocus
---
        
CameraFocus
===========

<span class="subtitle"></span>
An interface for focus related camera settings. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[customFocusPoint](#customFocusPoint-prop)**** : point
-   ****[focusMode](#focusMode-prop)**** : enumeration
-   ****[focusPointMode](#focusPointMode-prop)**** : enumeration
-   ****[focusZones](#focusZones-prop)**** : list&lt;focusZone&gt;

<span id="methods"></span>
Methods
-------

-   bool ****[isFocusModeSupported](#isFocusModeSupported-method)****(mode)
-   bool ****[isFocusPointModeSupported](#isFocusPointModeSupported-method)****(mode)

<span id="details"></span>
Detailed Description
--------------------

CameraFocus is part of the **QtMultimedia 5.0** module.

This type allows control over manual and automatic focus settings, including information about any parts of the camera frame that are selected for autofocusing.

It should not be constructed separately, instead the `focus` property of a [Camera](../QtMultimedia.qml-multimedia.md#camera) should be used.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Item {
    width: 640
    height: 360
    Camera {
        id: camera
        focus {
            focusMode: Camera.FocusMacro
            focusPointMode: Camera.FocusPointCustom
            customFocusPoint: Qt.point(0.2, 0.2) // Focus relative to top-left corner
        }
    }
    VideoOutput {
        source: camera
        anchors.fill: parent
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
<td><p><span id="customFocusPoint-prop"></span><span class="name">customFocusPoint</span> : <span class="type">point</span></p></td>
</tr>
</tbody>
</table>

This property holds the position of custom focus point, in relative frame coordinates: QPointF(0,0) points to the left top frame point, QPointF(0.5,0.5) points to the frame center.

Custom focus point is used only in FocusPointCustom focus mode.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focusMode-prop"></span><span class="name">focusMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the current camera focus mode, which can be one of the following values:

| Value           | Description                                                                                                                                                           |
|-----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| FocusManual     | Manual or fixed focus mode.                                                                                                                                           |
| FocusHyperfocal | Focus to hyperfocal distance, with the maximum depth of field achieved. All objects at distances from half of this distance out to infinity will be acceptably sharp. |
| FocusInfinity   | Focus strictly to infinity.                                                                                                                                           |
| FocusAuto       | One-shot auto focus mode.                                                                                                                                             |
| FocusContinuous | Continuous auto focus mode.                                                                                                                                           |
| FocusMacro      | One shot auto focus to objects close to camera.                                                                                                                       |

It's possible to combine multiple Camera::FocusMode values, for example Camera.FocusMacro + Camera.FocusContinuous.

In automatic focusing modes, the [focusPointMode](#focusPointMode-prop) property and [focusZones](#focusZones-prop) property provide information and control over how automatic focusing is performed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focusPointMode-prop"></span><span class="name">focusPointMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the current camera focus point mode. It is used in automatic focusing modes to determine what to focus on. If the current focus point mode is `Camera.FocusPointCustom`, the [customFocusPoint](#customFocusPoint-prop) property allows you to specify which part of the frame to focus on.

The property can take one of the following values:

| Value                   | Description                                                                                              |
|-------------------------|----------------------------------------------------------------------------------------------------------|
| FocusPointAuto          | Automatically select one or multiple focus points.                                                       |
| FocusPointCenter        | Focus to the frame center.                                                                               |
| FocusPointFaceDetection | Focus on faces in the frame.                                                                             |
| FocusPointCustom        | Focus to the custom point, defined by the [customFocusPoint](#customFocusPoint-prop) property. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focusZones-prop"></span><span class="name">focusZones</span> : <span class="type">list</span>&lt;<span class="type">focusZone</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of current camera focus zones, each including `area` specified in the same coordinates as [customFocusPoint](#customFocusPoint-prop), and zone `status` as one of the following values:

| Value                    | Description                                                         |
|--------------------------|---------------------------------------------------------------------|
| Camera.FocusAreaUnused   | This focus point area is currently unused in autofocusing.          |
| Camera.FocusAreaSelected | This focus point area is used in autofocusing, but is not in focus. |
| Camera.FocusAreaFocused  | This focus point is used in autofocusing, and is in focus.          |

``` qml
VideoOutput {
    id: viewfinder
    source: camera
    //display focus areas on camera viewfinder:
    Repeater {
          model: camera.focus.focusZones
          Rectangle {
              border {
                  width: 2
                  color: status == Camera.FocusAreaFocused ? "green" : "white"
              }
              color: "transparent"
              // Map from the relative, normalized frame coordinates
              property variant mappedRect: viewfinder.mapNormalizedRectToItem(area);
              x: mappedRect.x
              y: mappedRect.y
              width: mappedRect.width
              height: mappedRect.height
          }
    }
}
```

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isFocusModeSupported-method"></span><span class="type">bool</span> <span class="name">isFocusModeSupported</span>(<span class="type">mode</span>) const</p></td>
</tr>
</tbody>
</table>

Returns true if the supplied *mode* is a supported focus mode, and false otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isFocusPointModeSupported-method"></span><span class="type">bool</span> <span class="name">isFocusPointModeSupported</span>(<span class="type">mode</span>) const</p></td>
</tr>
</tbody>
</table>

Returns true if the supplied *mode* is a supported focus point mode, and false otherwise.

