---
Title: QtMultimedia.CameraExposure
---
        
CameraExposure
==============

<span class="subtitle"></span>
An interface for exposure related camera settings. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[aperture](#aperture-prop)**** : real
-   ****[exposureCompensation](#exposureCompensation-prop)**** : real
-   ****[exposureMode](#exposureMode-prop)**** : enumeration
-   ****[iso](#iso-prop)**** : int
-   ****[manualAperture](#manualAperture-prop)**** : real
-   ****[manualIso](#manualIso-prop)**** : real
-   ****[manualShutterSpeed](#manualShutterSpeed-prop)**** : real
-   ****[meteringMode](#meteringMode-prop)**** : enumeration
-   ****[shutterSpeed](#shutterSpeed-prop)**** : real
-   ****[spotMeteringPoint](#spotMeteringPoint-prop)**** : QPointF

<span id="methods"></span>
Methods
-------

-   ****[setAutoAperture](#setAutoAperture-method)****()
-   ****[setAutoIsoSensitivity](#setAutoIsoSensitivity-method)****()
-   ****[setAutoShutterSpeed](#setAutoShutterSpeed-method)****()

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtMultimedia 5.0** module.

[CameraExposure](index.html) allows you to adjust exposure related settings like aperture and shutter speed, metering and ISO speed.

It should not be constructed separately, instead the `exposure` property of the a [Camera](../QtMultimedia.qml-multimedia.md#camera) should be used.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Camera {
    id: camera
    exposure.exposureCompensation: -1.0
    exposure.exposureMode: Camera.ExposurePortrait
}
```

Several settings have both an automatic and a manual mode. In the automatic modes the camera software itself will decide what a reasonable setting is, but in most cases these settings can be overridden with a specific manual setting.

For example, to select automatic shutter speed selection:

``` cpp
    camera.exposure.setAutoShutterSpeed()
```

Or for a specific shutter speed:

``` cpp
    camera.exposure.manualShutterSpeed = 0.01 // 10ms
```

You can only choose one or the other mode.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="aperture-prop"></span><span class="name">aperture</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the current lens aperture as an F number (the ratio of the focal length to effective aperture diameter).

**See also** [manualAperture](#manualAperture-prop) and [setAutoAperture()](#setAutoAperture-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exposureCompensation-prop"></span><span class="name">exposureCompensation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the adjustment value for the automatically calculated exposure. The value is in EV units.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exposureMode-prop"></span><span class="name">exposureMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the camera exposure mode.

The mode can be one of the following:

| Value                        | Description                                        |
|------------------------------|----------------------------------------------------|
| Camera.ExposureManual        | Manual mode.                                       |
| Camera.ExposureAuto          | Automatic mode.                                    |
| Camera.ExposureNight         | Night mode.                                        |
| Camera.ExposureBacklight     | Backlight exposure mode.                           |
| Camera.ExposureSpotlight     | Spotlight exposure mode.                           |
| Camera.ExposureSports        | Spots exposure mode.                               |
| Camera.ExposureSnow          | Snow exposure mode.                                |
| Camera.ExposureBeach         | Beach exposure mode.                               |
| Camera.ExposureLargeAperture | Use larger aperture with small depth of field.     |
| Camera.ExposureSmallAperture | Use smaller aperture.                              |
| Camera.ExposurePortrait      | Portrait exposure mode.                            |
| Camera.ExposureModeVendor    | The base value for device specific exposure modes. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iso-prop"></span><span class="name">iso</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the sensor's ISO sensitivity value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manualAperture-prop"></span><span class="name">manualAperture</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the aperture (F number) value for capturing photos.

If the value is less than zero, the camera automatically determines an appropriate aperture value.

[aperture](#aperture-prop), [setAutoAperture()](#setAutoAperture-method)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manualIso-prop"></span><span class="name">manualIso</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the ISO settings for capturing photos.

If a negative value is specified, the camera will automatically determine an appropriate value.

**See also** [iso](#iso-prop) and [setAutoIsoSensitivity()](#setAutoIsoSensitivity-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manualShutterSpeed-prop"></span><span class="name">manualShutterSpeed</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the shutter speed value (in seconds). If the value is less than zero, the camera automatically determines an appropriate shutter speed.

[shutterSpeed](#shutterSpeed-prop), [setAutoShutterSpeed()](#setAutoShutterSpeed-method)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="meteringMode-prop"></span><span class="name">meteringMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the camera metering mode (how exposure is balanced).

The mode can be one of the following:

| Value                  | Description                                                                                               |
|------------------------|-----------------------------------------------------------------------------------------------------------|
| Camera.MeteringMatrix  | A matrix of sample points is used to measure exposure.                                                    |
| Camera.MeteringAverage | An average is used to measure exposure.                                                                   |
| Camera.MeteringSpot    | A specific location ([spotMeteringPoint](#spotMeteringPoint-prop)) is used to measure exposure. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shutterSpeed-prop"></span><span class="name">shutterSpeed</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the camera's current shutter speed value in seconds. To affect the shutter speed you can use the [manualShutterSpeed](#manualShutterSpeed-prop) property and [setAutoShutterSpeed()](#setAutoShutterSpeed-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spotMeteringPoint-prop"></span><span class="name">spotMeteringPoint</span> : <span class="type">QPointF</span></p></td>
</tr>
</tbody>
</table>

The property holds the frame coordinates of the point to use for exposure metering. This point is only used in spot metering mode, and it typically defaults to the center `(0.5, 0.5)`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setAutoAperture-method"></span><span class="name">setAutoAperture</span>()</p></td>
</tr>
</tbody>
</table>

Turn on auto aperture selection. The manual aperture value is reset to -1.0

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setAutoIsoSensitivity-method"></span><span class="name">setAutoIsoSensitivity</span>()</p></td>
</tr>
</tbody>
</table>

Turn on auto ISO sensitivity selection. The manual ISO value is reset to -1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setAutoShutterSpeed-method"></span><span class="name">setAutoShutterSpeed</span>()</p></td>
</tr>
</tbody>
</table>

Turn on auto shutter speed selection. The manual shutter speed value is reset to -1.0

