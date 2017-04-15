---
Title: QtMultimedia.CameraFlash
---
        
CameraFlash
===========

<span class="subtitle"></span>
An interface for flash related camera settings. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[mode](#mode-prop)**** : enumeration
-   ****[ready](#ready-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[flashModeChanged](#flashModeChanged-signal)****(int)
-   ****[flashReady](#flashReady-signal)****(bool)

<span id="details"></span>
Detailed Description
--------------------

CameraFlash is part of the **QtMultimedia 5.0** module.

This type allows you to operate the camera flash hardware and control the flash mode used. Not all cameras have flash hardware (and in some cases it is shared with the [torch](../QtMultimedia.Torch.md) hardware).

It should not be constructed separately, instead the `flash` property of a [Camera](../QtMultimedia.qml-multimedia.md#camera) should be used.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Camera {
    id: camera
    exposure.exposureCompensation: -1.0
    flash.mode: Camera.FlashRedEyeReduction
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
<td><p><span id="mode-prop"></span><span class="name">mode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the camera flash mode.

The mode can be one of the following:

| Value                            | Description                                                                                                                            |
|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| Camera.FlashOff                  | Flash is Off.                                                                                                                          |
| Camera.FlashOn                   | Flash is On.                                                                                                                           |
| Camera.FlashAuto                 | Automatic flash.                                                                                                                       |
| Camera.FlashRedEyeReduction      | Red eye reduction flash.                                                                                                               |
| Camera.FlashFill                 | Use flash to fillin shadows.                                                                                                           |
| Camera.FlashTorch                | Constant light source, useful for focusing and video capture.                                                                          |
| Camera.FlashSlowSyncFrontCurtain | Use the flash in conjunction with a slow shutter speed. This mode allows better exposure of distant objects and/or motion blur effect. |
| Camera.FlashSlowSyncRearCurtain  | The similar mode to FlashSlowSyncFrontCurtain but flash is fired at the end of exposure.                                               |
| Camera.FlashManual               | Flash power is manually set.                                                                                                           |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ready-prop"></span><span class="name">ready</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether the flash is charged.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flashModeChanged-signal"></span><span class="name">flashModeChanged</span>(<span class="type">int</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the `flashMode` property is changed. The corresponding handler is `onFlashModeChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flashReady-signal"></span><span class="name">flashReady</span>(<span class="type">bool</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when QCameraExposure indicates that the flash is ready to use. The corresponding handler is `onFlashReadyChanged`.

