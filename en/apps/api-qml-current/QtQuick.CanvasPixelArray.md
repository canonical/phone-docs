---
Title: QtQuick.CanvasPixelArray
---
        
CanvasPixelArray
================

<span class="subtitle"></span>
Provides ordered and indexed access to the components of each pixel in image data More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[length](#length-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The [CanvasPixelArray](index.html) object provides ordered, indexed access to the color components of each pixel of the image data. The [CanvasPixelArray](index.html) can be accessed as normal Javascript array.

**See also** [CanvasImageData](../QtQuick.CanvasImageData.md) and [W3C 2d context standard for PixelArray](http://www.w3.org/TR/2dcontext/#canvaspixelarray).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="length-prop"></span><span class="name">length</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The [CanvasPixelArray](index.html) object represents h×w×4 integers which w and h comes from [CanvasImageData](../QtQuick.CanvasImageData.md). The length attribute of a [CanvasPixelArray](index.html) object must return this h×w×4 number value. This property is read only.

