---
Title: QtQuick.Text
---
        
Text
====

<span class="subtitle"></span>
Specifies how to add formatted text to a scene More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[baseUrl](#baseUrl-prop)**** : url
-   ****[clip](#clip-prop)**** : bool
-   ****[color](#color-prop)**** : color
-   ****[contentHeight](#contentHeight-prop)**** : real
-   ****[contentWidth](#contentWidth-prop)**** : real
-   ****[effectiveHorizontalAlignment](#effectiveHorizontalAlignment-prop)**** : enumeration
-   ****[elide](#elide-prop)**** : enumeration
-   ****[font.bold](#font.bold-prop)**** : bool
-   ****[font.capitalization](#font.capitalization-prop)**** : enumeration
-   ****[font.family](#font.family-prop)**** : string
-   ****[font.italic](#font.italic-prop)**** : bool
-   ****[font.letterSpacing](#font.letterSpacing-prop)**** : real
-   ****[font.pixelSize](#font.pixelSize-prop)**** : int
-   ****[font.pointSize](#font.pointSize-prop)**** : real
-   ****[font.strikeout](#font.strikeout-prop)**** : bool
-   ****[font.underline](#font.underline-prop)**** : bool
-   ****[font.weight](#font.weight-prop)**** : enumeration
-   ****[font.wordSpacing](#font.wordSpacing-prop)**** : real
-   ****[fontSizeMode](#fontSizeMode-prop)**** : enumeration
-   ****[horizontalAlignment](#horizontalAlignment-prop)**** : enumeration
-   ****[hoveredLink](#hoveredLink-prop)**** : string
-   ****[lineCount](#lineCount-prop)**** : int
-   ****[lineHeight](#lineHeight-prop)**** : real
-   ****[lineHeightMode](#lineHeightMode-prop)**** : enumeration
-   ****[linkColor](#linkColor-prop)**** : color
-   ****[maximumLineCount](#maximumLineCount-prop)**** : int
-   ****[minimumPixelSize](#minimumPixelSize-prop)**** : int
-   ****[minimumPointSize](#minimumPointSize-prop)**** : int
-   ****[renderType](#renderType-prop)**** : enumeration
-   ****[style](#style-prop)**** : enumeration
-   ****[styleColor](#styleColor-prop)**** : color
-   ****[text](#text-prop)**** : string
-   ****[textFormat](#textFormat-prop)**** : enumeration
-   ****[truncated](#truncated-prop)**** : bool
-   ****[verticalAlignment](#verticalAlignment-prop)**** : enumeration
-   ****[wrapMode](#wrapMode-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[lineLaidOut](#lineLaidOut-signal)****(object *line*)
-   ****[linkActivated](#linkActivated-signal)****(string *link*)
-   ****[linkHovered](#linkHovered-signal)****(string *link*)

<span id="methods"></span>
Methods
-------

-   ****[doLayout](#doLayout-method)****()
-   ****[linkAt](#linkAt-method)****(real *x*, real *y*)

<span id="details"></span>
Detailed Description
--------------------

Text items can display both plain and rich text. For example, red text with a specific font and size can be defined like this:

``` qml
Text {
    text: "Hello World!"
    font.family: "Helvetica"
    font.pointSize: 24
    color: "red"
}
```

Rich text is defined using HTML-style markup:

``` qml
Text {
    text: "<b>Hello</b> <i>World!</i>"
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/fb57ca96-43f9-4bc1-abff-d1b7896e733e-api/apps/qml/sdk-15.04.6/QtQuick.Text/images/declarative-text.png)

If height and width are not explicitly set, Text will attempt to determine how much room is needed and set it accordingly. Unless [wrapMode](#wrapMode-prop) is set, it will always prefer width to height (all text will be placed on a single line).

The [elide](#elide-prop) property can alternatively be used to fit a single line of plain text to a set width.

Note that the Supported HTML Subset is limited. Also, if the text contains HTML img tags that load remote images, the text is reloaded.

Text provides read-only text. For editable text, see [TextEdit](../QtQuick.TextEdit.md).

**See also** [Fonts example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.text/#fonts).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="baseUrl-prop"></span><span class="name">baseUrl</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property specifies a base URL which is used to resolve relative URLs within the text.

Urls are resolved to be within the same directory as the target of the base URL meaning any portion of the path after the last '/' will be ignored.

| Base URL                                 | Relative URL       | Resolved URL                                  |
|------------------------------------------|--------------------|-----------------------------------------------|
| http://qt-project.org/                   | images/logo.png    | http://qt-project.org/images/logo.png         |
| http://qt-project.org.md         | images/logo.png    | http://qt-project.org/images/logo.png         |
| http://qt-project.org/content            | images/logo.png    | http://qt-project.org/content/images/logo.png |
| http://qt-project.org/content/           | images/logo.png    | http://qt-project.org/content/images/logo.png |
| http://qt-project.org/content.md | images/logo.png    | http://qt-project.org/content/images/logo.png |
| http://qt-project.org/content.md | ../images/logo.png | http://qt-project.org/images/logo.png         |
| http://qt-project.org/content.md | /images/logo.png   | http://qt-project.org/images/logo.png         |

The default value is the url of the QML file instantiating the Text item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clip-prop"></span><span class="name">clip</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the text is clipped.

Note that if the text does not fit in the bounding rectangle it will be abruptly chopped.

If you want to display potentially long text in a limited space, you probably want to use `elide` instead.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The text color.

An example of green text defined using hexadecimal notation:

``` qml
Text {
    color: "#00FF00"
    text: "green text"
}
```

An example of steel blue text defined using an SVG color name:

``` qml
Text {
    color: "steelblue"
    text: "blue text"
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentHeight-prop"></span><span class="name">contentHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Returns the height of the text, including height past the height which is covered due to there being more text than fits in the set height.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentWidth-prop"></span><span class="name">contentWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Returns the width of the text, including width past the width which is covered due to insufficient wrapping if WrapMode is set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="effectiveHorizontalAlignment-prop"></span><span class="name">effectiveHorizontalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the horizontal and vertical alignment of the text within the Text items width and height. By default, the text is vertically aligned to the top. Horizontal alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

The valid values for `horizontalAlignment` are `Text.AlignLeft`, `Text.AlignRight`, `Text.AlignHCenter` and `Text.AlignJustify`. The valid values for `verticalAlignment` are `Text.AlignTop`, `Text.AlignBottom` and `Text.AlignVCenter`.

Note that for a single line of text, the size of the text is the area of the text. In this common case, all alignments are equivalent. If you want the text to be, say, centered in its parent, then you will need to either modify the [Item::anchors](../QtQuick.Item.md#anchors-prop), or set [horizontalAlignment](#horizontalAlignment-prop) to Text.AlignHCenter and bind the width to that of the parent.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property `horizontalAlignment` will remain unchanged. To query the effective horizontal alignment of Text, use the read-only property `effectiveHorizontalAlignment`.

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

Set this property to elide parts of the text fit to the Text item's width. The text will only elide if an explicit width has been set.

This property cannot be used with rich text.

Eliding can be:

-   Text.ElideNone - the default
-   Text.ElideLeft
-   Text.ElideMiddle
-   Text.ElideRight

If this property is set to Text.ElideRight, it can be used with [wrapped](#wrapMode-prop) text. The text will only elide if `maximumLineCount`, or `height` has been set. If both `maximumLineCount` and `height` are set, `maximumLineCount` will apply unless the lines do not fit in the height allowed.

If the text is a multi-length string, and the mode is not `Text.ElideNone`, the first string that fits will be used, otherwise the last will be elided.

Multi-length strings are ordered from longest to shortest, separated by the Unicode "String Terminator" character `U009C` (write this in QML with `"\u009C"` or `"\x9C"`).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.bold-prop"></span><span class="name">font.bold</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether the font weight is bold.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.capitalization-prop"></span><span class="name">font.capitalization</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the capitalization for the text.

-   Font.MixedCase - This is the normal text rendering option where no capitalization change is applied.
-   Font.AllUppercase - This alters the text to be rendered in all uppercase type.
-   Font.AllLowercase - This alters the text to be rendered in all lowercase type.
-   Font.SmallCaps - This alters the text to be rendered in small-caps type.
-   Font.Capitalize - This alters the text to be rendered with the first character of each word as an uppercase character.

``` qml
Text { text: "Hello"; font.capitalization: Font.AllLowercase }
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.family-prop"></span><span class="name">font.family</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Sets the family name of the font.

The family name is case insensitive and may optionally include a foundry name, e.g. "Helvetica \[Cronyx\]". If the family is available from more than one foundry and the foundry isn't specified, an arbitrary foundry is chosen. If the family isn't available a family will be set using the font matching algorithm.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.italic-prop"></span><span class="name">font.italic</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether the font has an italic style.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.letterSpacing-prop"></span><span class="name">font.letterSpacing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Sets the letter spacing for the font.

Letter spacing changes the default spacing between individual letters in the font. A positive value increases the letter spacing by the corresponding pixels; a negative value decreases the spacing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.pixelSize-prop"></span><span class="name">font.pixelSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Sets the font size in pixels.

Using this function makes the font device dependent. Use `pointSize` to set the size of the font in a device independent manner.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.pointSize-prop"></span><span class="name">font.pointSize</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Sets the font size in points. The point size must be greater than zero.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.strikeout-prop"></span><span class="name">font.strikeout</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether the font has a strikeout style.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.underline-prop"></span><span class="name">font.underline</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether the text is underlined.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.weight-prop"></span><span class="name">font.weight</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the font's weight.

The weight can be one of:

-   Font.Light
-   Font.Normal - the default
-   Font.DemiBold
-   Font.Bold
-   Font.Black

``` qml
Text { text: "Hello"; font.weight: Font.DemiBold }
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.wordSpacing-prop"></span><span class="name">font.wordSpacing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Sets the word spacing for the font.

Word spacing changes the default spacing between individual words. A positive value increases the word spacing by a corresponding amount of pixels, while a negative value decreases the inter-word spacing accordingly.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fontSizeMode-prop"></span><span class="name">fontSizeMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property specifies how the font size of the displayed text is determined. The possible values are:

-   Text.FixedSize (default) - The size specified by [font.pixelSize](#font.pixelSize-prop) or [font.pointSize](#font.pointSize-prop) is used.
-   Text.HorizontalFit - The largest size up to the size specified that fits within the width of the item without wrapping is used.
-   Text.VerticalFit - The largest size up to the size specified that fits the height of the item is used.
-   Text.Fit - The largest size up to the size specified that fits within the width and height of the item is used.

The font size of fitted text has a minimum bound specified by the [minimumPointSize](#minimumPointSize-prop) or [minimumPixelSize](#minimumPixelSize-prop) property and maximum bound specified by either the [font.pointSize](#font.pointSize-prop) or [font.pixelSize](#font.pixelSize-prop) properties.

``` qml
Text { text: "Hello"; fontSizeMode: Text.Fit; minimumPixelSize: 10; font.pixelSize: 72 }
```

If the text does not fit within the item bounds with the minimum font size the text will be elided as per the [elide](#elide-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="horizontalAlignment-prop"></span><span class="name">horizontalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the horizontal and vertical alignment of the text within the Text items width and height. By default, the text is vertically aligned to the top. Horizontal alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

The valid values for `horizontalAlignment` are `Text.AlignLeft`, `Text.AlignRight`, `Text.AlignHCenter` and `Text.AlignJustify`. The valid values for `verticalAlignment` are `Text.AlignTop`, `Text.AlignBottom` and `Text.AlignVCenter`.

Note that for a single line of text, the size of the text is the area of the text. In this common case, all alignments are equivalent. If you want the text to be, say, centered in its parent, then you will need to either modify the [Item::anchors](../QtQuick.Item.md#anchors-prop), or set horizontalAlignment to Text.AlignHCenter and bind the width to that of the parent.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property `horizontalAlignment` will remain unchanged. To query the effective horizontal alignment of Text, use the read-only property `effectiveHorizontalAlignment`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hoveredLink-prop"></span><span class="name">hoveredLink</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property contains the link string when the user hovers a link embedded in the text. The link must be in rich text or HTML format and the *hoveredLink* string provides access to the particular link.

This QML property was introduced in Qt 5.2.

**See also** [linkHovered](#linkHovered-signal) and [linkAt()](#linkAt-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineCount-prop"></span><span class="name">lineCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Returns the number of lines visible in the text item.

This property is not supported for rich text.

**See also** [maximumLineCount](#maximumLineCount-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineHeight-prop"></span><span class="name">lineHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Sets the line height for the text. The value can be in pixels or a multiplier depending on [lineHeightMode](#lineHeightMode-prop).

The default value is a multiplier of 1.0. The line height must be a positive value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineHeightMode-prop"></span><span class="name">lineHeightMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property determines how the line height is specified. The possible values are:

-   Text.ProportionalHeight (default) - this sets the spacing proportional to the line (as a multiplier). For example, set to 2 for double spacing.
-   Text.FixedHeight - this sets the line height to a fixed line height (in pixels).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="linkColor-prop"></span><span class="name">linkColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The color of links in the text.

This property works with the StyledText [textFormat](#textFormat-prop), but not with RichText. Link color in RichText can be specified by including CSS style tags in the text.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumLineCount-prop"></span><span class="name">maximumLineCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Set this property to limit the number of lines that the text item will show. If elide is set to Text.ElideRight, the text will be elided appropriately. By default, this is the value of the largest possible integer.

This property is not supported for rich text.

**See also** [lineCount](#lineCount-prop) and [elide](#elide-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumPixelSize-prop"></span><span class="name">minimumPixelSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property specifies the minimum font pixel size of text scaled by the [fontSizeMode](#fontSizeMode-prop) property.

If the [fontSizeMode](#fontSizeMode-prop) is Text.FixedSize or the [font.pixelSize](#font.pixelSize-prop) is -1 this property is ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumPointSize-prop"></span><span class="name">minimumPointSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property specifies the minimum font point size of text scaled by the [fontSizeMode](#fontSizeMode-prop) property.

If the [fontSizeMode](#fontSizeMode-prop) is Text.FixedSize or the [font.pointSize](#font.pointSize-prop) is -1 this property is ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="renderType-prop"></span><span class="name">renderType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Override the default rendering type for this component.

Supported render types are:

-   Text.QtRendering - the default
-   Text.NativeRendering

Select Text.NativeRendering if you prefer text to look native on the target platform and do not require advanced features such as transformation of the text. Using such features in combination with the NativeRendering render type will lend poor and sometimes pixelated results.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Set an additional text style.

Supported text styles are:

-   Text.Normal - the default
-   Text.Outline
-   Text.Raised
-   Text.Sunken

``` qml
Row {
    Text { font.pointSize: 24; text: "Normal" }
    Text { font.pointSize: 24; text: "Raised"; style: Text.Raised; styleColor: "#AAAAAA" }
    Text { font.pointSize: 24; text: "Outline";style: Text.Outline; styleColor: "red" }
    Text { font.pointSize: 24; text: "Sunken"; style: Text.Sunken; styleColor: "#AAAAAA" }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/5bebc79b-cd62-4cfa-91f8-60686a0266a3-api/apps/qml/sdk-15.04.6/QtQuick.Text/images/declarative-textstyle.png)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="styleColor-prop"></span><span class="name">styleColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Defines the secondary color used by text styles.

`styleColor` is used as the outline color for outlined text, and as the shadow color for raised or sunken text. If no style has been set, it is not used at all.

``` qml
Text { font.pointSize: 18; text: "hello"; style: Text.Raised; styleColor: "gray" }
```

**See also** [style](#style-prop).

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

The text to display. Text supports both plain and rich text strings.

The item will try to automatically determine whether the text should be treated as styled text. This determination is made using Qt::mightBeRichText().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textFormat-prop"></span><span class="name">textFormat</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The way the text property should be displayed.

Supported text formats are:

-   Text.AutoText (default)
-   Text.PlainText
-   Text.StyledText
-   Text.RichText

If the text format is `Text.AutoText` the Text item will automatically determine whether the text should be treated as styled text. This determination is made using Qt::mightBeRichText() which uses a fast and therefore simple heuristic. It mainly checks whether there is something that looks like a tag before the first line break. Although the result may be correct for common cases, there is no guarantee.

Text.StyledText is an optimized format supporting some basic text styling markup, in the style of HTML 3.2:

``` cpp
<b></b> - bold
<strong></strong> - bold
<i></i> - italic
<br> - new line
<p> - paragraph
<u> - underlined text
<font color="color_name" size="1-7"></font>
<h1> to <h6> - headers
<a href=""> - anchor
<img src="" align="top,middle,bottom" width="" height=""> - inline images
<ol type="">, <ul type=""> and <li> - ordered and unordered lists
<pre></pre> - preformatted
&gt; &lt; &amp;
```

`Text.StyledText` parser is strict, requiring tags to be correctly nested.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>Column {
    Text {
        font.pointSize: 24
        text: &quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;
    }
    Text {
        font.pointSize: 24
        textFormat: Text.RichText
        text: &quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;
    }
    Text {
        font.pointSize: 24
        textFormat: Text.PlainText
        text: &quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;
    }
}</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/74690b4b-64aa-4156-9c50-fc005ee97c04-api/apps/qml/sdk-15.04.6/QtQuick.Text/images/declarative-textformat.png" /></p></td>
</tr>
</tbody>
</table>

Text.RichText supports a larger subset of HTML 4, as described on the Supported HTML Subset page. You should prefer using Text.PlainText or Text.StyledText instead, as they offer better performance.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="truncated-prop"></span><span class="name">truncated</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Returns true if the text has been truncated due to [maximumLineCount](#maximumLineCount-prop) or [elide](#elide-prop).

This property is not supported for rich text.

**See also** [maximumLineCount](#maximumLineCount-prop) and [elide](#elide-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="verticalAlignment-prop"></span><span class="name">verticalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the horizontal and vertical alignment of the text within the Text items width and height. By default, the text is vertically aligned to the top. Horizontal alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

The valid values for `horizontalAlignment` are `Text.AlignLeft`, `Text.AlignRight`, `Text.AlignHCenter` and `Text.AlignJustify`. The valid values for `verticalAlignment` are `Text.AlignTop`, `Text.AlignBottom` and `Text.AlignVCenter`.

Note that for a single line of text, the size of the text is the area of the text. In this common case, all alignments are equivalent. If you want the text to be, say, centered in its parent, then you will need to either modify the [Item::anchors](../QtQuick.Item.md#anchors-prop), or set [horizontalAlignment](#horizontalAlignment-prop) to Text.AlignHCenter and bind the width to that of the parent.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property `horizontalAlignment` will remain unchanged. To query the effective horizontal alignment of Text, use the read-only property `effectiveHorizontalAlignment`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="wrapMode-prop"></span><span class="name">wrapMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Set this property to wrap the text to the Text item's width. The text will only wrap if an explicit width has been set. wrapMode can be one of:

-   Text.NoWrap (default) - no wrapping will be performed. If the text contains insufficient newlines, then [contentWidth](#contentWidth-prop) will exceed a set width.
-   Text.WordWrap - wrapping is done on word boundaries only. If a word is too long, [contentWidth](#contentWidth-prop) will exceed a set width.
-   Text.WrapAnywhere - wrapping is done at any point on a line, even if it occurs in the middle of a word.
-   Text.Wrap - if possible, wrapping occurs at a word boundary; otherwise it will occur at the appropriate point on the line, even in the middle of a word.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineLaidOut-signal"></span><span class="name">lineLaidOut</span>(<span class="type">object</span> <em>line</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted for each line of text that is laid out during the layout process. The specified *line* object provides more details about the line that is currently being laid out.

This gives the opportunity to position and resize a line as it is being laid out. It can for example be used to create columns or lay out text around objects.

The properties of the specified *line* object are:

-   number (read-only)
-   x
-   y
-   width
-   height

For example, this will move the first 5 lines of a Text item by 100 pixels to the right:

``` cpp
onLineLaidOut: {
    if (line.number < 5) {
        line.x = line.x + 100
        line.width = line.width - 100
    }
}
```

The corresponding handler is `onLineLaidOut`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="linkActivated-signal"></span><span class="name">linkActivated</span>(<span class="type">string</span> <em>link</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the user clicks on a link embedded in the text. The link must be in rich text or HTML format and the *link* string provides access to the particular link.

``` qml
    Text {
            textFormat: Text.RichText
            text: "See the <a href=\"http://qt-project.org\">Qt Project website</a>."
            onLinkActivated: console.log(link + " link activated")
    }
```

The example code will display the text "See the [Qt Project website](http://qt-project.org)."

Clicking on the highlighted link will output `http://qt-project.org link activated` to the console.

The corresponding handler is `onLinkActivated`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="linkHovered-signal"></span><span class="name">linkHovered</span>(<span class="type">string</span> <em>link</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the user hovers a link embedded in the text. The link must be in rich text or HTML format and the *link* string provides access to the particular link.

The corresponding handler is `onLinkHovered`.

This QML signal was introduced in Qt 5.2.

**See also** [hoveredLink](#hoveredLink-prop) and [linkAt()](#linkAt-method).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="doLayout-method"></span><span class="name">doLayout</span>()</p></td>
</tr>
</tbody>
</table>

Triggers a re-layout of the displayed text.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="linkAt-method"></span><span class="name">linkAt</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns the link string at point *x*, *y* in content coordinates, or an empty string if no link exists at that point.

This QML method was introduced in Qt 5.3.

**See also** [hoveredLink](#hoveredLink-prop).

