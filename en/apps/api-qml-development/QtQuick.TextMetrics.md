---
Title: QtQuick.TextMetrics
---
        
TextMetrics
===========

<span class="subtitle"></span>
Provides metrics for a given font and text More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.4             |

<span id="properties"></span>
Properties
----------

-   ****[advanceWidth](#advanceWidth-prop)**** : real
-   ****[boundingRect](#boundingRect-prop)**** : rect
-   ****[elide](#elide-prop)**** : enumeration
-   ****[elideWidth](#elideWidth-prop)**** : real
-   ****[font](#font-prop)**** : font
-   ****[height](#height-prop)**** : real
-   ****[text](#text-prop)**** : string
-   ****[tightBoundingRect](#tightBoundingRect-prop)**** : rect
-   ****[width](#width-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[TextMetrics](index.html) calculates various properties of a given string of text for a particular font.

It provides a declarative API for the functions in QFontMetricsF which take arguments.

``` cpp
TextMetrics {
    id: textMetrics
    font.family: "Arial"
    elide: Text.ElideMiddle
    elideWidth: 100
    text: "Hello World"
}
MyItem {
    text: textMetrics.elidedText
}
```

**See also** QFontMetricsF and [FontMetrics](../QtQuick.FontMetrics.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="advanceWidth-prop"></span><span class="name">advanceWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the advance in pixels of the characters in [text](../QtQuick.qtquick-releasenotes.md#text). This is the distance from the position of the string to where the next string should be drawn.

**See also** QFontMetricsF::width().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="boundingRect-prop"></span><span class="name">boundingRect</span> : <span class="type">rect</span></p></td>
</tr>
</tbody>
</table>

This property holds the bounding rectangle of the characters in the string specified by [text](../QtQuick.qtquick-releasenotes.md#text).

**See also** QFontMetricsF::boundingRect() and [tightBoundingRect](#tightBoundingRect-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="elide-prop"></span><span class="name">elide</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the elide mode of the text. This determines the position in which the string is elided. The possible values are:

-   `Qt::ElideNone` - No eliding; this is the default value.
-   `Qt::ElideLeft` - For example: "...World"
-   `Qt::ElideMiddle` - For example: "He...ld"
-   `Qt::ElideRight` - For example: "Hello..."

**See also** [elideWidth](#elideWidth-prop) and elidedText.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="elideWidth-prop"></span><span class="name">elideWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the largest width the text can have (in pixels) before eliding will occur.

**See also** [elide](#elide-prop) and elidedText.

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

This property holds the height of the bounding rectangle of the characters in the string specified by [text](../QtQuick.qtquick-releasenotes.md#text). It is equivalent to:

``` cpp
textMetrics.boundingRect.height
```

**See also** [boundingRect](#boundingRect-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the text used for the metrics calculations.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tightBoundingRect-prop"></span><span class="name">tightBoundingRect</span> : <span class="type">rect</span></p></td>
</tr>
</tbody>
</table>

This property holds a tight bounding rectangle around the characters in the string specified by [text](../QtQuick.qtquick-releasenotes.md#text).

**See also** QFontMetricsF::tightBoundingRect() and [boundingRect](#boundingRect-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="width-prop"></span><span class="name">width</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the width of the bounding rectangle of the characters in the string specified by [text](../QtQuick.qtquick-releasenotes.md#text). It is equivalent to:

``` cpp
textMetrics.boundingRect.width
```

**See also** [boundingRect](#boundingRect-prop).

