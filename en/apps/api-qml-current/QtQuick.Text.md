---
Title: QtQuick.Text
---

# QtQuick.Text

<span class="subtitle"></span>
<!-- $$$Text-brief -->
<p>Specifies how to add formatted text to a scene More...</p>
<!-- @@@Text -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#baseUrl-prop">baseUrl</a></b></b> : url</li>
<li class="fn"><b><b><a href="#clip-prop">clip</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#contentHeight-prop">contentHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#contentWidth-prop">contentWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#effectiveHorizontalAlignment-prop">effectiveHorizontalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#elide-prop">elide</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#font.bold-prop">font.bold</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#font.capitalization-prop">font.capitalization</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#font.family-prop">font.family</a></b></b> : string</li>
<li class="fn"><b><b><a href="#font.italic-prop">font.italic</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#font.letterSpacing-prop">font.letterSpacing</a></b></b> : real</li>
<li class="fn"><b><b><a href="#font.pixelSize-prop">font.pixelSize</a></b></b> : int</li>
<li class="fn"><b><b><a href="#font.pointSize-prop">font.pointSize</a></b></b> : real</li>
<li class="fn"><b><b><a href="#font.strikeout-prop">font.strikeout</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#font.underline-prop">font.underline</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#font.weight-prop">font.weight</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#font.wordSpacing-prop">font.wordSpacing</a></b></b> : real</li>
<li class="fn"><b><b><a href="#fontSizeMode-prop">fontSizeMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#horizontalAlignment-prop">horizontalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#hoveredLink-prop">hoveredLink</a></b></b> : string</li>
<li class="fn"><b><b><a href="#lineCount-prop">lineCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#lineHeight-prop">lineHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#lineHeightMode-prop">lineHeightMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#linkColor-prop">linkColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#maximumLineCount-prop">maximumLineCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#minimumPixelSize-prop">minimumPixelSize</a></b></b> : int</li>
<li class="fn"><b><b><a href="#minimumPointSize-prop">minimumPointSize</a></b></b> : int</li>
<li class="fn"><b><b><a href="#renderType-prop">renderType</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#styleColor-prop">styleColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#textFormat-prop">textFormat</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#truncated-prop">truncated</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#verticalAlignment-prop">verticalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#wrapMode-prop">wrapMode</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#lineLaidOut-signal">lineLaidOut</a></b></b>(object <i>line</i>)</li>
<li class="fn"><b><b><a href="#linkActivated-signal">linkActivated</a></b></b>(string <i>link</i>)</li>
<li class="fn"><b><b><a href="#linkHovered-signal">linkHovered</a></b></b>(string <i>link</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#doLayout-method">doLayout</a></b></b>()</li>
<li class="fn"><b><b><a href="#linkAt-method">linkAt</a></b></b>(real <i>x</i>, real <i>y</i>)</li>
</ul>
<!-- $$$Text-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Text items can display both plain and rich text. For example, red text with a specific font and size can be defined like this:</p>
<pre class="qml"><span class="type"><a href="index.html">Text</a></span> {
<span class="name">text</span>: <span class="string">&quot;Hello World!&quot;</span>
<span class="name">font</span>.family: <span class="string">&quot;Helvetica&quot;</span>
<span class="name">font</span>.pointSize: <span class="number">24</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}</pre>
<p>Rich text is defined using HTML-style markup:</p>
<pre class="qml"><span class="type"><a href="index.html">Text</a></span> {
<span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
}</pre>
<p class="centerAlign"><img src="../../../media/declarative-text.png" alt="" /></p><p>If height and width are not explicitly set, Text will attempt to determine how much room is needed and set it accordingly. Unless <a href="#wrapMode-prop">wrapMode</a> is set, it will always prefer width to height (all text will be placed on a single line).</p>
<p>The <a href="#elide-prop">elide</a> property can alternatively be used to fit a single line of plain text to a set width.</p>
<p>Note that the Supported HTML Subset is limited. Also, if the text contains HTML img tags that load remote images, the text is reloaded.</p>
<p>Text provides read-only text. For editable text, see <a href="QtQuick.TextEdit.md">TextEdit</a>.</p>
<p><b>See also </b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.text/#fonts">Fonts example</a>.</p>
<!-- @@@Text -->
<h2>Property Documentation</h2>
<!-- $$$baseUrl -->
<table class="qmlname"><tr valign="top" id="baseUrl-prop"><td class="tblQmlPropNode"><p><span class="name">baseUrl</span> : <span class="type">url</span></p></td></tr></table><p>This property specifies a base URL which is used to resolve relative URLs within the text.</p>
<p>Urls are resolved to be within the same directory as the target of the base URL meaning any portion of the path after the last '/' will be ignored.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Base URL</th><th >Relative URL</th><th >Resolved URL</th></tr></thead>
<tr valign="top"><td >http://qt-project.org/</td><td >images/logo.png</td><td >http://qt-project.org/images/logo.png</td></tr>
<tr valign="top"><td >http://qt-project.org.md</td><td >images/logo.png</td><td >http://qt-project.org/images/logo.png</td></tr>
<tr valign="top"><td >http://qt-project.org/content</td><td >images/logo.png</td><td >http://qt-project.org/content/images/logo.png</td></tr>
<tr valign="top"><td >http://qt-project.org/content/</td><td >images/logo.png</td><td >http://qt-project.org/content/images/logo.png</td></tr>
<tr valign="top"><td >http://qt-project.org/content.md</td><td >images/logo.png</td><td >http://qt-project.org/content/images/logo.png</td></tr>
<tr valign="top"><td >http://qt-project.org/content.md</td><td >../images/logo.png</td><td >http://qt-project.org/images/logo.png</td></tr>
<tr valign="top"><td >http://qt-project.org/content.md</td><td >/images/logo.png</td><td >http://qt-project.org/images/logo.png</td></tr>
</table>
<p>The default value is the url of the QML file instantiating the Text item.</p>
<!-- @@@baseUrl -->
<br/>
<!-- $$$clip -->
<table class="qmlname"><tr valign="top" id="clip-prop"><td class="tblQmlPropNode"><p><span class="name">clip</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the text is clipped.</p>
<p>Note that if the text does not fit in the bounding rectangle it will be abruptly chopped.</p>
<p>If you want to display potentially long text in a limited space, you probably want to use <code>elide</code> instead.</p>
<!-- @@@clip -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>The text color.</p>
<p>An example of green text defined using hexadecimal notation:</p>
<pre class="qml"><span class="type"><a href="index.html">Text</a></span> {
<span class="name">color</span>: <span class="string">&quot;#00FF00&quot;</span>
<span class="name">text</span>: <span class="string">&quot;green text&quot;</span>
}</pre>
<p>An example of steel blue text defined using an SVG color name:</p>
<pre class="qml"><span class="type"><a href="index.html">Text</a></span> {
<span class="name">color</span>: <span class="string">&quot;steelblue&quot;</span>
<span class="name">text</span>: <span class="string">&quot;blue text&quot;</span>
}</pre>
<!-- @@@color -->
<br/>
<!-- $$$contentHeight -->
<table class="qmlname"><tr valign="top" id="contentHeight-prop"><td class="tblQmlPropNode"><p><span class="name">contentHeight</span> : <span class="type">real</span></p></td></tr></table><p>Returns the height of the text, including height past the height which is covered due to there being more text than fits in the set height.</p>
<!-- @@@contentHeight -->
<br/>
<!-- $$$contentWidth -->
<table class="qmlname"><tr valign="top" id="contentWidth-prop"><td class="tblQmlPropNode"><p><span class="name">contentWidth</span> : <span class="type">real</span></p></td></tr></table><p>Returns the width of the text, including width past the width which is covered due to insufficient wrapping if WrapMode is set.</p>
<!-- @@@contentWidth -->
<br/>
<!-- $$$effectiveHorizontalAlignment -->
<table class="qmlname"><tr valign="top" id="effectiveHorizontalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">effectiveHorizontalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal and vertical alignment of the text within the Text items width and height. By default, the text is vertically aligned to the top. Horizontal alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.</p>
<p>The valid values for <code>horizontalAlignment</code> are <code>Text.AlignLeft</code>, <code>Text.AlignRight</code>, <code>Text.AlignHCenter</code> and <code>Text.AlignJustify</code>. The valid values for <code>verticalAlignment</code> are <code>Text.AlignTop</code>, <code>Text.AlignBottom</code> and <code>Text.AlignVCenter</code>.</p>
<p>Note that for a single line of text, the size of the text is the area of the text. In this common case, all alignments are equivalent. If you want the text to be, say, centered in its parent, then you will need to either modify the <a href="QtQuick.Item.md#anchors-prop">Item::anchors</a>, or set <a href="#horizontalAlignment-prop">horizontalAlignment</a> to Text.AlignHCenter and bind the width to that of the parent.</p>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property <code>horizontalAlignment</code> will remain unchanged. To query the effective horizontal alignment of Text, use the read-only property <code>effectiveHorizontalAlignment</code>.</p>
<!-- @@@effectiveHorizontalAlignment -->
<br/>
<!-- $$$elide -->
<table class="qmlname"><tr valign="top" id="elide-prop"><td class="tblQmlPropNode"><p><span class="name">elide</span> : <span class="type">enumeration</span></p></td></tr></table><p>Set this property to elide parts of the text fit to the Text item's width. The text will only elide if an explicit width has been set.</p>
<p>This property cannot be used with rich text.</p>
<p>Eliding can be:</p>
<ul>
<li>Text.ElideNone - the default</li>
<li>Text.ElideLeft</li>
<li>Text.ElideMiddle</li>
<li>Text.ElideRight</li>
</ul>
<p>If this property is set to Text.ElideRight, it can be used with <a href="#wrapMode-prop">wrapped</a> text. The text will only elide if <code>maximumLineCount</code>, or <code>height</code> has been set. If both <code>maximumLineCount</code> and <code>height</code> are set, <code>maximumLineCount</code> will apply unless the lines do not fit in the height allowed.</p>
<p>If the text is a multi-length string, and the mode is not <code>Text.ElideNone</code>, the first string that fits will be used, otherwise the last will be elided.</p>
<p>Multi-length strings are ordered from longest to shortest, separated by the Unicode &quot;String Terminator&quot; character <code>U009C</code> (write this in QML with <code>&quot;\u009C&quot;</code> or <code>&quot;\x9C&quot;</code>).</p>
<!-- @@@elide -->
<br/>
<!-- $$$font.bold -->
<table class="qmlname"><tr valign="top" id="font.bold-prop"><td class="tblQmlPropNode"><p><span class="name">font.bold</span> : <span class="type">bool</span></p></td></tr></table><p>Sets whether the font weight is bold.</p>
<!-- @@@font.bold -->
<br/>
<!-- $$$font.capitalization -->
<table class="qmlname"><tr valign="top" id="font.capitalization-prop"><td class="tblQmlPropNode"><p><span class="name">font.capitalization</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the capitalization for the text.</p>
<ul>
<li>Font.MixedCase - This is the normal text rendering option where no capitalization change is applied.</li>
<li>Font.AllUppercase - This alters the text to be rendered in all uppercase type.</li>
<li>Font.AllLowercase - This alters the text to be rendered in all lowercase type.</li>
<li>Font.SmallCaps - This alters the text to be rendered in small-caps type.</li>
<li>Font.Capitalize - This alters the text to be rendered with the first character of each word as an uppercase character.</li>
</ul>
<pre class="qml"><span class="type"><a href="index.html">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">font</span>.capitalization: <span class="name">Font</span>.<span class="name">AllLowercase</span> }</pre>
<!-- @@@font.capitalization -->
<br/>
<!-- $$$font.family -->
<table class="qmlname"><tr valign="top" id="font.family-prop"><td class="tblQmlPropNode"><p><span class="name">font.family</span> : <span class="type">string</span></p></td></tr></table><p>Sets the family name of the font.</p>
<p>The family name is case insensitive and may optionally include a foundry name, e.g&#x2e; &quot;Helvetica [Cronyx]&quot;. If the family is available from more than one foundry and the foundry isn't specified, an arbitrary foundry is chosen. If the family isn't available a family will be set using the font matching algorithm.</p>
<!-- @@@font.family -->
<br/>
<!-- $$$font.italic -->
<table class="qmlname"><tr valign="top" id="font.italic-prop"><td class="tblQmlPropNode"><p><span class="name">font.italic</span> : <span class="type">bool</span></p></td></tr></table><p>Sets whether the font has an italic style.</p>
<!-- @@@font.italic -->
<br/>
<!-- $$$font.letterSpacing -->
<table class="qmlname"><tr valign="top" id="font.letterSpacing-prop"><td class="tblQmlPropNode"><p><span class="name">font.letterSpacing</span> : <span class="type">real</span></p></td></tr></table><p>Sets the letter spacing for the font.</p>
<p>Letter spacing changes the default spacing between individual letters in the font. A positive value increases the letter spacing by the corresponding pixels; a negative value decreases the spacing.</p>
<!-- @@@font.letterSpacing -->
<br/>
<!-- $$$font.pixelSize -->
<table class="qmlname"><tr valign="top" id="font.pixelSize-prop"><td class="tblQmlPropNode"><p><span class="name">font.pixelSize</span> : <span class="type">int</span></p></td></tr></table><p>Sets the font size in pixels.</p>
<p>Using this function makes the font device dependent. Use <code>pointSize</code> to set the size of the font in a device independent manner.</p>
<!-- @@@font.pixelSize -->
<br/>
<!-- $$$font.pointSize -->
<table class="qmlname"><tr valign="top" id="font.pointSize-prop"><td class="tblQmlPropNode"><p><span class="name">font.pointSize</span> : <span class="type">real</span></p></td></tr></table><p>Sets the font size in points. The point size must be greater than zero.</p>
<!-- @@@font.pointSize -->
<br/>
<!-- $$$font.strikeout -->
<table class="qmlname"><tr valign="top" id="font.strikeout-prop"><td class="tblQmlPropNode"><p><span class="name">font.strikeout</span> : <span class="type">bool</span></p></td></tr></table><p>Sets whether the font has a strikeout style.</p>
<!-- @@@font.strikeout -->
<br/>
<!-- $$$font.underline -->
<table class="qmlname"><tr valign="top" id="font.underline-prop"><td class="tblQmlPropNode"><p><span class="name">font.underline</span> : <span class="type">bool</span></p></td></tr></table><p>Sets whether the text is underlined.</p>
<!-- @@@font.underline -->
<br/>
<!-- $$$font.weight -->
<table class="qmlname"><tr valign="top" id="font.weight-prop"><td class="tblQmlPropNode"><p><span class="name">font.weight</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the font's weight.</p>
<p>The weight can be one of:</p>
<ul>
<li>Font.Light</li>
<li>Font.Normal - the default</li>
<li>Font.DemiBold</li>
<li>Font.Bold</li>
<li>Font.Black</li>
</ul>
<pre class="qml"><span class="type"><a href="index.html">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">font</span>.weight: <span class="name">Font</span>.<span class="name">DemiBold</span> }</pre>
<!-- @@@font.weight -->
<br/>
<!-- $$$font.wordSpacing -->
<table class="qmlname"><tr valign="top" id="font.wordSpacing-prop"><td class="tblQmlPropNode"><p><span class="name">font.wordSpacing</span> : <span class="type">real</span></p></td></tr></table><p>Sets the word spacing for the font.</p>
<p>Word spacing changes the default spacing between individual words. A positive value increases the word spacing by a corresponding amount of pixels, while a negative value decreases the inter-word spacing accordingly.</p>
<!-- @@@font.wordSpacing -->
<br/>
<!-- $$$fontSizeMode -->
<table class="qmlname"><tr valign="top" id="fontSizeMode-prop"><td class="tblQmlPropNode"><p><span class="name">fontSizeMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property specifies how the font size of the displayed text is determined. The possible values are:</p>
<ul>
<li>Text.FixedSize (default) - The size specified by <a href="#font.pixelSize-prop">font.pixelSize</a> or <a href="#font.pointSize-prop">font.pointSize</a> is used.</li>
<li>Text.HorizontalFit - The largest size up to the size specified that fits within the width of the item without wrapping is used.</li>
<li>Text.VerticalFit - The largest size up to the size specified that fits the height of the item is used.</li>
<li>Text.Fit - The largest size up to the size specified that fits within the width and height of the item is used.</li>
</ul>
<p>The font size of fitted text has a minimum bound specified by the <a href="#minimumPointSize-prop">minimumPointSize</a> or <a href="#minimumPixelSize-prop">minimumPixelSize</a> property and maximum bound specified by either the <a href="#font.pointSize-prop">font.pointSize</a> or <a href="#font.pixelSize-prop">font.pixelSize</a> properties.</p>
<pre class="qml"><span class="type"><a href="index.html">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">fontSizeMode</span>: <span class="name">Text</span>.<span class="name">Fit</span>; <span class="name">minimumPixelSize</span>: <span class="number">10</span>; <span class="name">font</span>.pixelSize: <span class="number">72</span> }</pre>
<p>If the text does not fit within the item bounds with the minimum font size the text will be elided as per the <a href="#elide-prop">elide</a> property.</p>
<!-- @@@fontSizeMode -->
<br/>
<!-- $$$horizontalAlignment -->
<table class="qmlname"><tr valign="top" id="horizontalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">horizontalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal and vertical alignment of the text within the Text items width and height. By default, the text is vertically aligned to the top. Horizontal alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.</p>
<p>The valid values for <code>horizontalAlignment</code> are <code>Text.AlignLeft</code>, <code>Text.AlignRight</code>, <code>Text.AlignHCenter</code> and <code>Text.AlignJustify</code>. The valid values for <code>verticalAlignment</code> are <code>Text.AlignTop</code>, <code>Text.AlignBottom</code> and <code>Text.AlignVCenter</code>.</p>
<p>Note that for a single line of text, the size of the text is the area of the text. In this common case, all alignments are equivalent. If you want the text to be, say, centered in its parent, then you will need to either modify the <a href="QtQuick.Item.md#anchors-prop">Item::anchors</a>, or set horizontalAlignment to Text.AlignHCenter and bind the width to that of the parent.</p>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property <code>horizontalAlignment</code> will remain unchanged. To query the effective horizontal alignment of Text, use the read-only property <code>effectiveHorizontalAlignment</code>.</p>
<!-- @@@horizontalAlignment -->
<br/>
<!-- $$$hoveredLink -->
<table class="qmlname"><tr valign="top" id="hoveredLink-prop"><td class="tblQmlPropNode"><p><span class="name">hoveredLink</span> : <span class="type">string</span></p></td></tr></table><p>This property contains the link string when the user hovers a link embedded in the text. The link must be in rich text or HTML format and the <i>hoveredLink</i> string provides access to the particular link.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<p><b>See also </b><a href="#linkHovered-signal">linkHovered</a> and <a href="#linkAt-method">linkAt()</a>.</p>
<!-- @@@hoveredLink -->
<br/>
<!-- $$$lineCount -->
<table class="qmlname"><tr valign="top" id="lineCount-prop"><td class="tblQmlPropNode"><p><span class="name">lineCount</span> : <span class="type">int</span></p></td></tr></table><p>Returns the number of lines visible in the text item.</p>
<p>This property is not supported for rich text.</p>
<p><b>See also </b><a href="#maximumLineCount-prop">maximumLineCount</a>.</p>
<!-- @@@lineCount -->
<br/>
<!-- $$$lineHeight -->
<table class="qmlname"><tr valign="top" id="lineHeight-prop"><td class="tblQmlPropNode"><p><span class="name">lineHeight</span> : <span class="type">real</span></p></td></tr></table><p>Sets the line height for the text. The value can be in pixels or a multiplier depending on <a href="#lineHeightMode-prop">lineHeightMode</a>.</p>
<p>The default value is a multiplier of 1.0&#x2e; The line height must be a positive value.</p>
<!-- @@@lineHeight -->
<br/>
<!-- $$$lineHeightMode -->
<table class="qmlname"><tr valign="top" id="lineHeightMode-prop"><td class="tblQmlPropNode"><p><span class="name">lineHeightMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property determines how the line height is specified. The possible values are:</p>
<ul>
<li>Text.ProportionalHeight (default) - this sets the spacing proportional to the line (as a multiplier). For example, set to 2 for double spacing.</li>
<li>Text.FixedHeight - this sets the line height to a fixed line height (in pixels).</li>
</ul>
<!-- @@@lineHeightMode -->
<br/>
<!-- $$$linkColor -->
<table class="qmlname"><tr valign="top" id="linkColor-prop"><td class="tblQmlPropNode"><p><span class="name">linkColor</span> : <span class="type">color</span></p></td></tr></table><p>The color of links in the text.</p>
<p>This property works with the StyledText <a href="#textFormat-prop">textFormat</a>, but not with RichText. Link color in RichText can be specified by including CSS style tags in the text.</p>
<!-- @@@linkColor -->
<br/>
<!-- $$$maximumLineCount -->
<table class="qmlname"><tr valign="top" id="maximumLineCount-prop"><td class="tblQmlPropNode"><p><span class="name">maximumLineCount</span> : <span class="type">int</span></p></td></tr></table><p>Set this property to limit the number of lines that the text item will show. If elide is set to Text.ElideRight, the text will be elided appropriately. By default, this is the value of the largest possible integer.</p>
<p>This property is not supported for rich text.</p>
<p><b>See also </b><a href="#lineCount-prop">lineCount</a> and <a href="#elide-prop">elide</a>.</p>
<!-- @@@maximumLineCount -->
<br/>
<!-- $$$minimumPixelSize -->
<table class="qmlname"><tr valign="top" id="minimumPixelSize-prop"><td class="tblQmlPropNode"><p><span class="name">minimumPixelSize</span> : <span class="type">int</span></p></td></tr></table><p>This property specifies the minimum font pixel size of text scaled by the <a href="#fontSizeMode-prop">fontSizeMode</a> property.</p>
<p>If the <a href="#fontSizeMode-prop">fontSizeMode</a> is Text.FixedSize or the <a href="#font.pixelSize-prop">font.pixelSize</a> is -1 this property is ignored.</p>
<!-- @@@minimumPixelSize -->
<br/>
<!-- $$$minimumPointSize -->
<table class="qmlname"><tr valign="top" id="minimumPointSize-prop"><td class="tblQmlPropNode"><p><span class="name">minimumPointSize</span> : <span class="type">int</span></p></td></tr></table><p>This property specifies the minimum font point size of text scaled by the <a href="#fontSizeMode-prop">fontSizeMode</a> property.</p>
<p>If the <a href="#fontSizeMode-prop">fontSizeMode</a> is Text.FixedSize or the <a href="#font.pointSize-prop">font.pointSize</a> is -1 this property is ignored.</p>
<!-- @@@minimumPointSize -->
<br/>
<!-- $$$renderType -->
<table class="qmlname"><tr valign="top" id="renderType-prop"><td class="tblQmlPropNode"><p><span class="name">renderType</span> : <span class="type">enumeration</span></p></td></tr></table><p>Override the default rendering type for this component.</p>
<p>Supported render types are:</p>
<ul>
<li>Text.QtRendering - the default</li>
<li>Text.NativeRendering</li>
</ul>
<p>Select Text.NativeRendering if you prefer text to look native on the target platform and do not require advanced features such as transformation of the text. Using such features in combination with the NativeRendering render type will lend poor and sometimes pixelated results.</p>
<!-- @@@renderType -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top" id="style-prop"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type">enumeration</span></p></td></tr></table><p>Set an additional text style.</p>
<p>Supported text styles are:</p>
<ul>
<li>Text.Normal - the default</li>
<li>Text.Outline</li>
<li>Text.Raised</li>
<li>Text.Sunken</li>
</ul>
<pre class="qml"><span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="type"><a href="index.html">Text</a></span> { <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">text</span>: <span class="string">&quot;Normal&quot;</span> }
<span class="type"><a href="index.html">Text</a></span> { <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">text</span>: <span class="string">&quot;Raised&quot;</span>; <span class="name">style</span>: <span class="name">Text</span>.<span class="name">Raised</span>; <span class="name">styleColor</span>: <span class="string">&quot;#AAAAAA&quot;</span> }
<span class="type"><a href="index.html">Text</a></span> { <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">text</span>: <span class="string">&quot;Outline&quot;</span>;<span class="name">style</span>: <span class="name">Text</span>.<span class="name">Outline</span>; <span class="name">styleColor</span>: <span class="string">&quot;red&quot;</span> }
<span class="type"><a href="index.html">Text</a></span> { <span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">text</span>: <span class="string">&quot;Sunken&quot;</span>; <span class="name">style</span>: <span class="name">Text</span>.<span class="name">Sunken</span>; <span class="name">styleColor</span>: <span class="string">&quot;#AAAAAA&quot;</span> }
}</pre>
<p class="centerAlign"><img src="../../../media/declarative-textstyle.png" alt="" /></p><!-- @@@style -->
<br/>
<!-- $$$styleColor -->
<table class="qmlname"><tr valign="top" id="styleColor-prop"><td class="tblQmlPropNode"><p><span class="name">styleColor</span> : <span class="type">color</span></p></td></tr></table><p>Defines the secondary color used by text styles.</p>
<p><code>styleColor</code> is used as the outline color for outlined text, and as the shadow color for raised or sunken text. If no style has been set, it is not used at all.</p>
<pre class="qml"><span class="type"><a href="index.html">Text</a></span> { <span class="name">font</span>.pointSize: <span class="number">18</span>; <span class="name">text</span>: <span class="string">&quot;hello&quot;</span>; <span class="name">style</span>: <span class="name">Text</span>.<span class="name">Raised</span>; <span class="name">styleColor</span>: <span class="string">&quot;gray&quot;</span> }</pre>
<p><b>See also </b><a href="#style-prop">style</a>.</p>
<!-- @@@styleColor -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The text to display. Text supports both plain and rich text strings.</p>
<p>The item will try to automatically determine whether the text should be treated as styled text. This determination is made using Qt::mightBeRichText().</p>
<!-- @@@text -->
<br/>
<!-- $$$textFormat -->
<table class="qmlname"><tr valign="top" id="textFormat-prop"><td class="tblQmlPropNode"><p><span class="name">textFormat</span> : <span class="type">enumeration</span></p></td></tr></table><p>The way the text property should be displayed.</p>
<p>Supported text formats are:</p>
<ul>
<li>Text.AutoText (default)</li>
<li>Text.PlainText</li>
<li>Text.StyledText</li>
<li>Text.RichText</li>
</ul>
<p>If the text format is <code>Text.AutoText</code> the Text item will automatically determine whether the text should be treated as styled text. This determination is made using Qt::mightBeRichText() which uses a fast and therefore simple heuristic. It mainly checks whether there is something that looks like a tag before the first line break. Although the result may be correct for common cases, there is no guarantee.</p>
<p>Text.StyledText is an optimized format supporting some basic text styling markup, in the style of HTML 3.2:</p>
<pre class="cpp"><span class="operator">&lt;</span>b<span class="operator">&gt;</span><span class="operator">&lt;</span><span class="operator">/</span>b<span class="operator">&gt;</span> <span class="operator">-</span> bold
<span class="operator">&lt;</span>strong<span class="operator">&gt;</span><span class="operator">&lt;</span><span class="operator">/</span>strong<span class="operator">&gt;</span> <span class="operator">-</span> bold
<span class="operator">&lt;</span>i<span class="operator">&gt;</span><span class="operator">&lt;</span><span class="operator">/</span>i<span class="operator">&gt;</span> <span class="operator">-</span> italic
<span class="operator">&lt;</span>br<span class="operator">&gt;</span> <span class="operator">-</span> <span class="keyword">new</span> line
<span class="operator">&lt;</span>p<span class="operator">&gt;</span> <span class="operator">-</span> paragraph
<span class="operator">&lt;</span>u<span class="operator">&gt;</span> <span class="operator">-</span> underlined text
<span class="operator">&lt;</span>font color<span class="operator">=</span><span class="string">&quot;color_name&quot;</span> size<span class="operator">=</span><span class="string">&quot;1-7&quot;</span><span class="operator">&gt;</span><span class="operator">&lt;</span><span class="operator">/</span>font<span class="operator">&gt;</span>
<span class="operator">&lt;</span>h1<span class="operator">&gt;</span> to <span class="operator">&lt;</span>h6<span class="operator">&gt;</span> <span class="operator">-</span> headers
<span class="operator">&lt;</span>a href<span class="operator">=</span><span class="string">&quot;&quot;</span><span class="operator">&gt;</span> <span class="operator">-</span> anchor
<span class="operator">&lt;</span>img src<span class="operator">=</span><span class="string">&quot;&quot;</span> align<span class="operator">=</span><span class="string">&quot;top,middle,bottom&quot;</span> width<span class="operator">=</span><span class="string">&quot;&quot;</span> height<span class="operator">=</span><span class="string">&quot;&quot;</span><span class="operator">&gt;</span> <span class="operator">-</span> <span class="keyword">inline</span> images
<span class="operator">&lt;</span>ol type<span class="operator">=</span><span class="string">&quot;&quot;</span><span class="operator">&gt;</span><span class="operator">,</span> <span class="operator">&lt;</span>ul type<span class="operator">=</span><span class="string">&quot;&quot;</span><span class="operator">&gt;</span> and <span class="operator">&lt;</span>li<span class="operator">&gt;</span> <span class="operator">-</span> ordered and unordered lists
<span class="operator">&lt;</span>pre<span class="operator">&gt;</span><span class="operator">&lt;</span><span class="operator">/</span>pre<span class="operator">&gt;</span> <span class="operator">-</span> preformatted
<span class="operator">&amp;</span>gt; <span class="operator">&amp;</span>lt; <span class="operator">&amp;</span>amp;</pre>
<p><code>Text.StyledText</code> parser is strict, requiring tags to be correctly nested.</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="index.html">Text</a></span> {
<span class="name">font</span>.pointSize: <span class="number">24</span>
<span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
}
<span class="type"><a href="index.html">Text</a></span> {
<span class="name">font</span>.pointSize: <span class="number">24</span>
<span class="name">textFormat</span>: <span class="name">Text</span>.<span class="name">RichText</span>
<span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
}
<span class="type"><a href="index.html">Text</a></span> {
<span class="name">font</span>.pointSize: <span class="number">24</span>
<span class="name">textFormat</span>: <span class="name">Text</span>.<span class="name">PlainText</span>
<span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
}
}</pre>
</td><td ><p class="centerAlign"><img src="../../../media/declarative-textformat.png" alt="" /></p></td></tr>
</table>
<p>Text.RichText supports a larger subset of HTML 4, as described on the Supported HTML Subset page. You should prefer using Text.PlainText or Text.StyledText instead, as they offer better performance.</p>
<!-- @@@textFormat -->
<br/>
<!-- $$$truncated -->
<table class="qmlname"><tr valign="top" id="truncated-prop"><td class="tblQmlPropNode"><p><span class="name">truncated</span> : <span class="type">bool</span></p></td></tr></table><p>Returns true if the text has been truncated due to <a href="#maximumLineCount-prop">maximumLineCount</a> or <a href="#elide-prop">elide</a>.</p>
<p>This property is not supported for rich text.</p>
<p><b>See also </b><a href="#maximumLineCount-prop">maximumLineCount</a> and <a href="#elide-prop">elide</a>.</p>
<!-- @@@truncated -->
<br/>
<!-- $$$verticalAlignment -->
<table class="qmlname"><tr valign="top" id="verticalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">verticalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal and vertical alignment of the text within the Text items width and height. By default, the text is vertically aligned to the top. Horizontal alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.</p>
<p>The valid values for <code>horizontalAlignment</code> are <code>Text.AlignLeft</code>, <code>Text.AlignRight</code>, <code>Text.AlignHCenter</code> and <code>Text.AlignJustify</code>. The valid values for <code>verticalAlignment</code> are <code>Text.AlignTop</code>, <code>Text.AlignBottom</code> and <code>Text.AlignVCenter</code>.</p>
<p>Note that for a single line of text, the size of the text is the area of the text. In this common case, all alignments are equivalent. If you want the text to be, say, centered in its parent, then you will need to either modify the <a href="QtQuick.Item.md#anchors-prop">Item::anchors</a>, or set <a href="#horizontalAlignment-prop">horizontalAlignment</a> to Text.AlignHCenter and bind the width to that of the parent.</p>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property <code>horizontalAlignment</code> will remain unchanged. To query the effective horizontal alignment of Text, use the read-only property <code>effectiveHorizontalAlignment</code>.</p>
<!-- @@@verticalAlignment -->
<br/>
<!-- $$$wrapMode -->
<table class="qmlname"><tr valign="top" id="wrapMode-prop"><td class="tblQmlPropNode"><p><span class="name">wrapMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Set this property to wrap the text to the Text item's width. The text will only wrap if an explicit width has been set. wrapMode can be one of:</p>
<ul>
<li>Text.NoWrap (default) - no wrapping will be performed. If the text contains insufficient newlines, then <a href="#contentWidth-prop">contentWidth</a> will exceed a set width.</li>
<li>Text.WordWrap - wrapping is done on word boundaries only. If a word is too long, <a href="#contentWidth-prop">contentWidth</a> will exceed a set width.</li>
<li>Text.WrapAnywhere - wrapping is done at any point on a line, even if it occurs in the middle of a word.</li>
<li>Text.Wrap - if possible, wrapping occurs at a word boundary; otherwise it will occur at the appropriate point on the line, even in the middle of a word.</li>
</ul>
<!-- @@@wrapMode -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$lineLaidOut -->
<table class="qmlname"><tr valign="top" id="lineLaidOut-signal"><td class="tblQmlFuncNode"><p><span class="name">lineLaidOut</span>(<span class="type">object</span><i> line</i>)</p></td></tr></table><p>This signal is emitted for each line of text that is laid out during the layout process. The specified <i>line</i> object provides more details about the line that is currently being laid out.</p>
<p>This gives the opportunity to position and resize a line as it is being laid out. It can for example be used to create columns or lay out text around objects.</p>
<p>The properties of the specified <i>line</i> object are:</p>
<ul>
<li>number (read-only)</li>
<li>x</li>
<li>y</li>
<li>width</li>
<li>height</li>
</ul>
<p>For example, this will move the first 5 lines of a Text item by 100 pixels to the right:</p>
<pre class="cpp">onLineLaidOut: {
<span class="keyword">if</span> (line<span class="operator">.</span>number <span class="operator">&lt;</span> <span class="number">5</span>) {
line<span class="operator">.</span>x <span class="operator">=</span> line<span class="operator">.</span>x <span class="operator">+</span> <span class="number">100</span>
line<span class="operator">.</span>width <span class="operator">=</span> line<span class="operator">.</span>width <span class="operator">-</span> <span class="number">100</span>
}
}</pre>
<p>The corresponding handler is <code>onLineLaidOut</code>.</p>
<!-- @@@lineLaidOut -->
<br/>
<!-- $$$linkActivated -->
<table class="qmlname"><tr valign="top" id="linkActivated-signal"><td class="tblQmlFuncNode"><p><span class="name">linkActivated</span>(<span class="type">string</span><i> link</i>)</p></td></tr></table><p>This signal is emitted when the user clicks on a link embedded in the text. The link must be in rich text or HTML format and the <i>link</i> string provides access to the particular link.</p>
<pre class="qml">    <span class="type"><a href="index.html">Text</a></span> {
<span class="name">textFormat</span>: <span class="name">Text</span>.<span class="name">RichText</span>
<span class="name">text</span>: <span class="string">&quot;See the &lt;a href=\&quot;http://qt-project.org\&quot;&gt;Qt Project website&lt;/a&gt;.&quot;</span>
<span class="name">onLinkActivated</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">link</span> <span class="operator">+</span> <span class="string">&quot; link activated&quot;</span>)
}</pre>
<p>The example code will display the text &quot;See the <a href="http://qt-project.org">Qt Project website</a>.&quot;</p>
<p>Clicking on the highlighted link will output <code>http://qt-project.org link activated</code> to the console.</p>
<p>The corresponding handler is <code>onLinkActivated</code>.</p>
<!-- @@@linkActivated -->
<br/>
<!-- $$$linkHovered -->
<table class="qmlname"><tr valign="top" id="linkHovered-signal"><td class="tblQmlFuncNode"><p><span class="name">linkHovered</span>(<span class="type">string</span><i> link</i>)</p></td></tr></table><p>This signal is emitted when the user hovers a link embedded in the text. The link must be in rich text or HTML format and the <i>link</i> string provides access to the particular link.</p>
<p>The corresponding handler is <code>onLinkHovered</code>.</p>
<p>This QML signal was introduced in  Qt 5.2.</p>
<p><b>See also </b><a href="#hoveredLink-prop">hoveredLink</a> and <a href="#linkAt-method">linkAt()</a>.</p>
<!-- @@@linkHovered -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$doLayout -->
<table class="qmlname"><tr valign="top" id="doLayout-method"><td class="tblQmlFuncNode"><p><span class="name">doLayout</span>()</p></td></tr></table><p>Triggers a re-layout of the displayed text.</p>
<!-- @@@doLayout -->
<br/>
<!-- $$$linkAt -->
<table class="qmlname"><tr valign="top" id="linkAt-method"><td class="tblQmlFuncNode"><p><span class="name">linkAt</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Returns the link string at point <i>x</i>, <i>y</i> in content coordinates, or an empty string if no link exists at that point.</p>
<p>This QML method was introduced in  Qt 5.3.</p>
<p><b>See also </b><a href="#hoveredLink-prop">hoveredLink</a>.</p>
<!-- @@@linkAt -->
<br/>
