---
Title: QtQuick.FontMetrics
---
        
FontMetrics
===========

<span class="subtitle"></span>
Provides metrics for a given font More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.4             |

<span id="properties"></span>
Properties
----------

-   ****[ascent](#ascent-prop)**** : real
-   ****[averageCharacterWidth](#averageCharacterWidth-prop)**** : real
-   ****[descent](#descent-prop)**** : real
-   ****[font](#font-prop)**** : font
-   ****[height](#height-prop)**** : real
-   ****[leading](#leading-prop)**** : real
-   ****[lineSpacing](#lineSpacing-prop)**** : real
-   ****[lineWidth](#lineWidth-prop)**** : real
-   ****[maximumCharacterWidth](#maximumCharacterWidth-prop)**** : real
-   ****[minimumLeftBearing](#minimumLeftBearing-prop)**** : real
-   ****[minimumRightBearing](#minimumRightBearing-prop)**** : real
-   ****[overlinePosition](#overlinePosition-prop)**** : real
-   ****[strikeOutPosition](#strikeOutPosition-prop)**** : real
-   ****[underlinePosition](#underlinePosition-prop)**** : real
-   ****[xHeight](#xHeight-prop)**** : real

<span id="methods"></span>
Methods
-------

-   qreal ****[advanceWidth](#advanceWidth-method)****(string *text*)
-   rect ****[boundingRect](#boundingRect-method)****(string *text*)
-   string ****[elidedText](#elidedText-method)****(string *text*)
-   rect ****[tightBoundingRect](#tightBoundingRect-method)****(string *text*)

<span id="details"></span>
Detailed Description
--------------------

[FontMetrics](index.html) calculates the size of characters and strings for a given font.

It provides a subset of the C++ QFontMetricsF API, with the added ability to change the font that is used for calculations via the [font](#font-prop) property.

``` cpp
FontMetrics {
    id: fontMetrics
    font.family: "Arial"
}
Rectangle {
    width: fontMetrics.height * 4
    height: fontMetrics.height * 2
}
```

**See also** QFontMetricsF and [TextMetrics](../QtQuick.TextMetrics.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ascent-prop"></span><span class="name">ascent</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the ascent of the font.

**See also** QFontMetricsF::ascent(), [descent](#descent-prop), and [height](#height-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="averageCharacterWidth-prop"></span><span class="name">averageCharacterWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the average width of glyphs in the font.

**See also** QFontMetricsF::averageCharWidth().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="descent-prop"></span><span class="name">descent</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the descent of the font.

**See also** QFontMetricsF::descent(), [ascent](#ascent-prop), and [height](#height-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font-prop"></span><span class="name">font</span> : <span class="type"><a href="#font-prop">font</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the font used for the metrics calculations.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="height-prop"></span><span class="name">height</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the height of the font.

**See also** QFontMetricsF::height().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="leading-prop"></span><span class="name">leading</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the leading of the font.

**See also** QFontMetricsF::leading().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineSpacing-prop"></span><span class="name">lineSpacing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the distance from one base line to the next.

**See also** QFontMetricsF::lineSpacing().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineWidth-prop"></span><span class="name">lineWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the width of the underline and strikeout lines, adjusted for the point size of the font.

**See also** QFontMetricsF::lineWidth().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumCharacterWidth-prop"></span><span class="name">maximumCharacterWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the width of the widest character in the font.

**See also** QFontMetricsF::maxWidth().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumLeftBearing-prop"></span><span class="name">minimumLeftBearing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the minimum left bearing of the font.

**See also** QFontMetricsF::minLeftBearing().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumRightBearing-prop"></span><span class="name">minimumRightBearing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the minimum right bearing of the font.

**See also** QFontMetricsF::minRightBearing().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="overlinePosition-prop"></span><span class="name">overlinePosition</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the distance from the base line to where an overline should be drawn.

**See also** QFontMetricsF::overlinePos(), [underlinePosition](#underlinePosition-prop), and [strikeOutPosition](#strikeOutPosition-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="strikeOutPosition-prop"></span><span class="name">strikeOutPosition</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the distance from the base line to where the strikeout line should be drawn.

**See also** QFontMetricsF::strikeOutPos(), [overlinePosition](#overlinePosition-prop), and [underlinePosition](#underlinePosition-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="underlinePosition-prop"></span><span class="name">underlinePosition</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the distance from the base line to where an underscore should be drawn.

**See also** QFontMetricsF::underlinePos(), [overlinePosition](#overlinePosition-prop), and [strikeOutPosition](#strikeOutPosition-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="xHeight-prop"></span><span class="name">xHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the 'x' height of the font.

**See also** QFontMetricsF::xHeight().

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="advanceWidth-method"></span><span class="type">qreal</span> <span class="name">advanceWidth</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

This method returns the advance in pixels of the characters in *text*. This is the distance from the position of the string to where the next string should be drawn.

This method is offered as an imperative alternative to the advanceWidth property of TextMetrics.

**See also** QFontMetricsF::width() and height().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="boundingRect-method"></span><span class="type">rect</span> <span class="name">boundingRect</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

This method returns the bounding rectangle of the characters in the string specified by *text*.

This method is offered as an imperative alternative to the boundingRect property of TextMetrics.

**See also** QFontMetricsF::boundingRect() and [tightBoundingRect()](#tightBoundingRect-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="elidedText-method"></span><span class="type">string</span> <span class="name">elidedText</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tightBoundingRect-method"></span><span class="type">rect</span> <span class="name">tightBoundingRect</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

This method returns a tight bounding rectangle around the characters in the string specified by *text*.

This method is offered as an imperative alternative to the tightBoundingRect property of TextMetrics.

**See also** QFontMetricsF::tightBoundingRect() and [boundingRect()](#boundingRect-method).

