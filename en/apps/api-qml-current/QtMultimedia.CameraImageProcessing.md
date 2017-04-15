---
Title: QtMultimedia.CameraImageProcessing
---
        
CameraImageProcessing
=====================

<span class="subtitle"></span>
An interface for camera capture related settings. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[contrast](#contrast-prop)**** : qreal
-   ****[denoisingLevel](#denoisingLevel-prop)**** : qreal
-   ****[manualWhiteBalance](#manualWhiteBalance-prop)**** : qreal
-   ****[saturation](#saturation-prop)**** : qreal
-   ****[sharpeningLevel](#sharpeningLevel-prop)**** : qreal
-   ****[whiteBalanceMode](#whiteBalanceMode-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

[CameraImageProcessing](index.html) provides control over post-processing done by the camera middleware, including white balance adjustments, contrast, saturation, sharpening, and denoising

It should not be constructed separately, instead the `imageProcessing` property of a [Camera](../QtMultimedia.qml-multimedia.md#camera) should be used.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Camera {
    id: camera
    imageProcessing {
        whiteBalanceMode: Camera.WhiteBalanceTungsten
        contrast: 0.66
        saturation: -0.5
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
<td><p><span id="contrast-prop"></span><span class="name">contrast</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Image contrast adjustment. Valid contrast adjustment values range between -1.0 and 1.0, with a default of 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="denoisingLevel-prop"></span><span class="name">denoisingLevel</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Adjustment of denoising applied to image.

Valid denoising level values range between -1.0 for for denoising disabled, 0 for default denoising level and 1.0 for maximum denoising applied.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manualWhiteBalance-prop"></span><span class="name">manualWhiteBalance</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

The color temperature used when in manual white balance mode (WhiteBalanceManual). The units are Kelvin.

**See also** [whiteBalanceMode](#whiteBalanceMode-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="saturation-prop"></span><span class="name">saturation</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Image saturation adjustment. Valid saturation adjustment values range between -1.0 and 1.0, the default is 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sharpeningLevel-prop"></span><span class="name">sharpeningLevel</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Adjustment of sharpening level applied to image.

Valid sharpening level values range between -1.0 for for sharpening disabled, 0 for default sharpening level and 1.0 for maximum sharpening applied.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="whiteBalanceMode-prop"></span><span class="name">whiteBalanceMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

| Value                   | Description                                                                         |
|-------------------------|-------------------------------------------------------------------------------------|
| WhiteBalanceManual      | Manual white balance. In this mode the manual white balance property value is used. |
| WhiteBalanceAuto        | Auto white balance mode.                                                            |
| WhiteBalanceSunlight    | Sunlight white balance mode.                                                        |
| WhiteBalanceCloudy      | Cloudy white balance mode.                                                          |
| WhiteBalanceShade       | Shade white balance mode.                                                           |
| WhiteBalanceTungsten    | Tungsten white balance mode.                                                        |
| WhiteBalanceFluorescent | Fluorescent white balance mode.                                                     |
| WhiteBalanceFlash       | Flash white balance mode.                                                           |
| WhiteBalanceSunset      | Sunset white balance mode.                                                          |
| WhiteBalanceVendor      | Vendor defined white balance mode.                                                  |

**See also** [manualWhiteBalance](#manualWhiteBalance-prop).

