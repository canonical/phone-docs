---
Title: QtQuick.CanvasImageData
---
        
CanvasImageData
===============

<span class="subtitle"></span>
Contains image pixel data in RGBA order More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[data](#data-prop)**** : object
-   ****[height](#height-prop)**** : int
-   ****[width](#width-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The [CanvasImageData](index.html) object holds the image pixel data.

The [CanvasImageData](index.html) object has the actual dimensions of the data stored in this object and holds the one-dimensional array containing the data in RGBA order, as integers in the range 0 to 255.

**See also** [width](#width-prop), [height](#height-prop), [data](#data-prop), [Context2D::createImageData()](../QtQuick.Context2D.md#createImageData-method), [Context2D::getImageData()](../QtQuick.Context2D.md#getImageData-method), and [Context2D::putImageData()](../QtQuick.Context2D.md#putImageData-method).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-prop"></span><span class="name">data</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

Holds the one-dimensional array containing the data in RGBA order, as integers in the range 0 to 255.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="height-prop"></span><span class="name">height</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Holds the actual height dimension of the data in the ImageData object, in device pixels.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="width-prop"></span><span class="name">width</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Holds the actual width dimension of the data in the ImageData object, in device pixels.

