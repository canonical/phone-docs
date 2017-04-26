---
Title: QtQuick.TextEdit
---

# QtQuick.TextEdit

<span class="subtitle"></span>
<!-- $$$TextEdit-brief -->
<p>Displays multiple lines of editable formatted text More...</p>
<!-- @@@TextEdit -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#baseUrl-prop">baseUrl</a></b></b> : url</li>
<li class="fn"><b><b><a href="#canPaste-prop">canPaste</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#canRedo-prop">canRedo</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#canUndo-prop">canUndo</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#contentHeight-prop">contentHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#contentWidth-prop">contentWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#cursorDelegate-prop">cursorDelegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#cursorPosition-prop">cursorPosition</a></b></b> : int</li>
<li class="fn"><b><b><a href="#cursorRectangle-prop">cursorRectangle</a></b></b> : rectangle</li>
<li class="fn"><b><b><a href="#cursorVisible-prop">cursorVisible</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#effectiveHorizontalAlignment-prop">effectiveHorizontalAlignment</a></b></b> : enumeration</li>
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
<li class="fn"><b><b><a href="#horizontalAlignment-prop">horizontalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#hoveredLink-prop">hoveredLink</a></b></b> : string</li>
<li class="fn"><b><b><a href="#inputMethodComposing-prop">inputMethodComposing</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#inputMethodHints-prop">inputMethodHints</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#length-prop">length</a></b></b> : int</li>
<li class="fn"><b><b><a href="#lineCount-prop">lineCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#mouseSelectionMode-prop">mouseSelectionMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#persistentSelection-prop">persistentSelection</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#readOnly-prop">readOnly</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#renderType-prop">renderType</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#selectByKeyboard-prop">selectByKeyboard</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectByMouse-prop">selectByMouse</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectedText-prop">selectedText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#selectedTextColor-prop">selectedTextColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#selectionColor-prop">selectionColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#selectionEnd-prop">selectionEnd</a></b></b> : int</li>
<li class="fn"><b><b><a href="#selectionStart-prop">selectionStart</a></b></b> : int</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#textDocument-prop">textDocument</a></b></b> : TextDocument</li>
<li class="fn"><b><b><a href="#textFormat-prop">textFormat</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#textMargin-prop">textMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#verticalAlignment-prop">verticalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#wrapMode-prop">wrapMode</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#linkActivated-signal">linkActivated</a></b></b>(string <i>link</i>)</li>
<li class="fn"><b><b><a href="#linkHovered-signal">linkHovered</a></b></b>(string <i>link</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#append-method">append</a></b></b>(string <i>text</i>)</li>
<li class="fn"><b><b><a href="#copy-method">copy</a></b></b>()</li>
<li class="fn"><b><b><a href="#cut-method">cut</a></b></b>()</li>
<li class="fn"><b><b><a href="#deselect-method">deselect</a></b></b>()</li>
<li class="fn">string <b><b><a href="#getFormattedText-method">getFormattedText</a></b></b>(int <i>start</i>, int <i>end</i>)</li>
<li class="fn">string <b><b><a href="#getText-method">getText</a></b></b>(int <i>start</i>, int <i>end</i>)</li>
<li class="fn"><b><b><a href="#insert-method">insert</a></b></b>(int <i>position</i>, string <i>text</i>)</li>
<li class="fn"><b><b><a href="#isRightToLeft-method">isRightToLeft</a></b></b>(int <i>start</i>, int <i>end</i>)</li>
<li class="fn"><b><b><a href="#linkAt-method">linkAt</a></b></b>(real <i>x</i>, real <i>y</i>)</li>
<li class="fn"><b><b><a href="#moveCursorSelection-method">moveCursorSelection</a></b></b>(int <i>position</i>, SelectionMode <i>mode</i>)</li>
<li class="fn"><b><b><a href="#paste-method">paste</a></b></b>()</li>
<li class="fn">int <b><b><a href="#positionAt-method">positionAt</a></b></b>(int <i>x</i>, int <i>y</i>)</li>
<li class="fn">rectangle <b><b><a href="#positionToRectangle-method">positionToRectangle</a></b></b>(position)</li>
<li class="fn"><b><b><a href="#redo-method">redo</a></b></b>()</li>
<li class="fn">string <b><b><a href="#remove-method">remove</a></b></b>(int <i>start</i>, int <i>end</i>)</li>
<li class="fn"><b><b><a href="#select-method">select</a></b></b>(int <i>start</i>, int <i>end</i>)</li>
<li class="fn"><b><b><a href="#selectAll-method">selectAll</a></b></b>()</li>
<li class="fn"><b><b><a href="#selectWord-method">selectWord</a></b></b>()</li>
<li class="fn"><b><b><a href="#undo-method">undo</a></b></b>()</li>
</ul>
<!-- $$$TextEdit-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">TextEdit</a> item displays a block of editable, formatted text.</p>
<p>It can display both plain and rich text. For example:</p>
<pre class="qml"><span class="type"><a href="index.html">TextEdit</a></span> {
<span class="name">width</span>: <span class="number">240</span>
<span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
<span class="name">font</span>.family: <span class="string">&quot;Helvetica&quot;</span>
<span class="name">font</span>.pointSize: <span class="number">20</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">focus</span>: <span class="number">true</span>
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/970ad443-7088-46b5-8bcc-d42d47c515e2-../QtQuick.TextEdit/images/declarative-textedit.gif" alt="" /></p><p>Setting <a href="QtQuick.Item.md#focus-prop">focus</a> to <code>true</code> enables the <a href="index.html">TextEdit</a> item to receive keyboard focus.</p>
<p>Note that the <a href="index.html">TextEdit</a> does not implement scrolling, following the cursor, or other behaviors specific to a look-and-feel. For example, to add flickable scrolling that follows the cursor:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">id</span>: <span class="name">flick</span>
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>;
<span class="name">contentWidth</span>: <span class="name">edit</span>.<span class="name">paintedWidth</span>
<span class="name">contentHeight</span>: <span class="name">edit</span>.<span class="name">paintedHeight</span>
<span class="name">clip</span>: <span class="number">true</span>
<span class="keyword">function</span> <span class="name">ensureVisible</span>(<span class="name">r</span>)
{
<span class="keyword">if</span> (<span class="name">contentX</span> <span class="operator">&gt;=</span> <span class="name">r</span>.<span class="name">x</span>)
<span class="name">contentX</span> <span class="operator">=</span> <span class="name">r</span>.<span class="name">x</span>;
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">contentX</span><span class="operator">+</span><span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">r</span>.<span class="name">x</span><span class="operator">+</span><span class="name">r</span>.<span class="name">width</span>)
<span class="name">contentX</span> <span class="operator">=</span> <span class="name">r</span>.<span class="name">x</span><span class="operator">+</span><span class="name">r</span>.<span class="name">width</span><span class="operator">-</span><span class="name">width</span>;
<span class="keyword">if</span> (<span class="name">contentY</span> <span class="operator">&gt;=</span> <span class="name">r</span>.<span class="name">y</span>)
<span class="name">contentY</span> <span class="operator">=</span> <span class="name">r</span>.<span class="name">y</span>;
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">contentY</span><span class="operator">+</span><span class="name">height</span> <span class="operator">&lt;=</span> <span class="name">r</span>.<span class="name">y</span><span class="operator">+</span><span class="name">r</span>.<span class="name">height</span>)
<span class="name">contentY</span> <span class="operator">=</span> <span class="name">r</span>.<span class="name">y</span><span class="operator">+</span><span class="name">r</span>.<span class="name">height</span><span class="operator">-</span><span class="name">height</span>;
}
<span class="type"><a href="index.html">TextEdit</a></span> {
<span class="name">id</span>: <span class="name">edit</span>
<span class="name">width</span>: <span class="name">flick</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">flick</span>.<span class="name">height</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">wrapMode</span>: <span class="name">TextEdit</span>.<span class="name">Wrap</span>
<span class="name">onCursorRectangleChanged</span>: <span class="name">flick</span>.<span class="name">ensureVisible</span>(<span class="name">cursorRectangle</span>)
}
}</pre>
<p>A particular look-and-feel might use smooth scrolling (eg. using <a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a>), might have a visible scrollbar, or a scrollbar that fades in to show location, etc.</p>
<p>Clipboard support is provided by the <a href="#cut-method">cut()</a>, <a href="#copy-method">copy()</a>, and <a href="#paste-method">paste()</a> functions, and the selection can be handled in a traditional &quot;mouse&quot; mechanism by setting <a href="#selectByMouse-prop">selectByMouse</a>, or handled completely from QML by manipulating <a href="#selectionStart-prop">selectionStart</a> and <a href="#selectionEnd-prop">selectionEnd</a>, or using <a href="#selectAll-method">selectAll()</a> or <a href="#selectWord-method">selectWord()</a>.</p>
<p>You can translate between cursor positions (characters from the start of the document) and pixel points using <a href="#positionAt-method">positionAt()</a> and <a href="#positionToRectangle-method">positionToRectangle()</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-releasenotes.md#text">Text</a> and <a href="QtQuick.TextInput.md">TextInput</a>.</p>
<!-- @@@TextEdit -->
<h2>Property Documentation</h2>
<!-- $$$activeFocusOnPress -->
<table class="qmlname"><tr valign="top" id="activeFocusOnPress-prop"><td class="tblQmlPropNode"><p><span class="name">activeFocusOnPress</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the <a href="index.html">TextEdit</a> should gain active focus on a mouse press. By default this is set to true.</p>
<!-- @@@activeFocusOnPress -->
<br/>
<!-- $$$baseUrl -->
<table class="qmlname"><tr valign="top" id="baseUrl-prop"><td class="tblQmlPropNode"><p><span class="name">baseUrl</span> : <span class="type">url</span></p></td></tr></table><p>This property specifies a base URL which is used to resolve relative URLs within the text.</p>
<p>The default value is the url of the QML file instantiating the <a href="index.html">TextEdit</a> item.</p>
<!-- @@@baseUrl -->
<br/>
<!-- $$$canPaste -->
<table class="qmlname"><tr valign="top" id="canPaste-prop"><td class="tblQmlPropNode"><p><span class="name">canPaste</span> : <span class="type">bool</span></p></td></tr></table><p>Returns true if the <a href="index.html">TextEdit</a> is writable and the content of the clipboard is suitable for pasting into the <a href="index.html">TextEdit</a>.</p>
<!-- @@@canPaste -->
<br/>
<!-- $$$canRedo -->
<table class="qmlname"><tr valign="top" id="canRedo-prop"><td class="tblQmlPropNode"><p><span class="name">canRedo</span> : <span class="type">bool</span></p></td></tr></table><p>Returns true if the <a href="index.html">TextEdit</a> is writable and there are <a href="#undo-method">undone</a> operations that can be redone.</p>
<!-- @@@canRedo -->
<br/>
<!-- $$$canUndo -->
<table class="qmlname"><tr valign="top" id="canUndo-prop"><td class="tblQmlPropNode"><p><span class="name">canUndo</span> : <span class="type">bool</span></p></td></tr></table><p>Returns true if the <a href="index.html">TextEdit</a> is writable and there are previous operations that can be undone.</p>
<!-- @@@canUndo -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>The text color.</p>
<pre class="qml"><span class="comment">// green text using hexadecimal notation</span>
<span class="type"><a href="index.html">TextEdit</a></span> { <span class="name">color</span>: <span class="string">&quot;#00FF00&quot;</span> }</pre>
<pre class="qml"><span class="comment">// steelblue text using SVG color name</span>
<span class="type"><a href="index.html">TextEdit</a></span> { <span class="name">color</span>: <span class="string">&quot;steelblue&quot;</span> }</pre>
<!-- @@@color -->
<br/>
<!-- $$$contentHeight -->
<table class="qmlname"><tr valign="top" id="contentHeight-prop"><td class="tblQmlPropNode"><p><span class="name">contentHeight</span> : <span class="type">real</span></p></td></tr></table><p>Returns the height of the text, including the height past the height that is covered if the text does not fit within the set height.</p>
<!-- @@@contentHeight -->
<br/>
<!-- $$$contentWidth -->
<table class="qmlname"><tr valign="top" id="contentWidth-prop"><td class="tblQmlPropNode"><p><span class="name">contentWidth</span> : <span class="type">real</span></p></td></tr></table><p>Returns the width of the text, including the width past the width which is covered due to insufficient wrapping if <a href="#wrapMode-prop">wrapMode</a> is set.</p>
<!-- @@@contentWidth -->
<br/>
<!-- $$$cursorDelegate -->
<table class="qmlname"><tr valign="top" id="cursorDelegate-prop"><td class="tblQmlPropNode"><p><span class="name">cursorDelegate</span> : <span class="type">Component</span></p></td></tr></table><p>The delegate for the cursor in the <a href="index.html">TextEdit</a>.</p>
<p>If you set a cursorDelegate for a <a href="index.html">TextEdit</a>, this delegate will be used for drawing the cursor instead of the standard cursor. An instance of the delegate will be created and managed by the text edit when a cursor is needed, and the x and y properties of delegate instance will be set so as to be one pixel before the top left of the current character.</p>
<p>Note that the root item of the delegate component must be a QQuickItem or QQuickItem derived item.</p>
<!-- @@@cursorDelegate -->
<br/>
<!-- $$$cursorPosition -->
<table class="qmlname"><tr valign="top" id="cursorPosition-prop"><td class="tblQmlPropNode"><p><span class="name">cursorPosition</span> : <span class="type">int</span></p></td></tr></table><p>The position of the cursor in the <a href="index.html">TextEdit</a>.</p>
<!-- @@@cursorPosition -->
<br/>
<!-- $$$cursorRectangle -->
<table class="qmlname"><tr valign="top" id="cursorRectangle-prop"><td class="tblQmlPropNode"><p><span class="name">cursorRectangle</span> : <span class="type">rectangle</span></p></td></tr></table><p>The rectangle where the standard text cursor is rendered within the text edit. Read-only.</p>
<p>The position and height of a custom <a href="#cursorDelegate-prop">cursorDelegate</a> are updated to follow the cursorRectangle automatically when it changes. The width of the delegate is unaffected by changes in the cursor rectangle.</p>
<!-- @@@cursorRectangle -->
<br/>
<!-- $$$cursorVisible -->
<table class="qmlname"><tr valign="top" id="cursorVisible-prop"><td class="tblQmlPropNode"><p><span class="name">cursorVisible</span> : <span class="type">bool</span></p></td></tr></table><p>If true the text edit shows a cursor.</p>
<p>This property is set and unset when the text edit gets active focus, but it can also be set directly (useful, for example, if a KeyProxy might forward keys to it).</p>
<!-- @@@cursorVisible -->
<br/>
<!-- $$$effectiveHorizontalAlignment -->
<table class="qmlname"><tr valign="top" id="effectiveHorizontalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">effectiveHorizontalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal and vertical alignment of the text within the <a href="index.html">TextEdit</a> item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.</p>
<p>Valid values for <code>horizontalAlignment</code> are:</p>
<ul>
<li><a href="index.html">TextEdit</a>.AlignLeft (default)</li>
<li><a href="index.html">TextEdit</a>.AlignRight</li>
<li><a href="index.html">TextEdit</a>.AlignHCenter</li>
<li><a href="index.html">TextEdit</a>.AlignJustify</li>
</ul>
<p>Valid values for <code>verticalAlignment</code> are:</p>
<ul>
<li><a href="index.html">TextEdit</a>.AlignTop (default)</li>
<li><a href="index.html">TextEdit</a>.AlignBottom</li>
<li><a href="index.html">TextEdit</a>.AlignVCenter</li>
</ul>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property <code>horizontalAlignment</code> will remain unchanged. To query the effective horizontal alignment of <a href="index.html">TextEdit</a>, use the read-only property <code>effectiveHorizontalAlignment</code>.</p>
<!-- @@@effectiveHorizontalAlignment -->
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
<pre class="qml"><span class="type"><a href="index.html">TextEdit</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">font</span>.capitalization: <span class="name">Font</span>.<span class="name">AllLowercase</span> }</pre>
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
<p>Using this function makes the font device dependent. Use <a href="#font.pointSize-prop">TextEdit::font.pointSize</a> to set the size of the font in a device independent manner.</p>
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
<pre class="qml"><span class="type"><a href="index.html">TextEdit</a></span> { <span class="name">text</span>: <span class="string">&quot;Hello&quot;</span>; <span class="name">font</span>.weight: <span class="name">Font</span>.<span class="name">DemiBold</span> }</pre>
<!-- @@@font.weight -->
<br/>
<!-- $$$font.wordSpacing -->
<table class="qmlname"><tr valign="top" id="font.wordSpacing-prop"><td class="tblQmlPropNode"><p><span class="name">font.wordSpacing</span> : <span class="type">real</span></p></td></tr></table><p>Sets the word spacing for the font.</p>
<p>Word spacing changes the default spacing between individual words. A positive value increases the word spacing by a corresponding amount of pixels, while a negative value decreases the inter-word spacing accordingly.</p>
<!-- @@@font.wordSpacing -->
<br/>
<!-- $$$horizontalAlignment -->
<table class="qmlname"><tr valign="top" id="horizontalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">horizontalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal and vertical alignment of the text within the <a href="index.html">TextEdit</a> item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.</p>
<p>Valid values for <code>horizontalAlignment</code> are:</p>
<ul>
<li><a href="index.html">TextEdit</a>.AlignLeft (default)</li>
<li><a href="index.html">TextEdit</a>.AlignRight</li>
<li><a href="index.html">TextEdit</a>.AlignHCenter</li>
<li><a href="index.html">TextEdit</a>.AlignJustify</li>
</ul>
<p>Valid values for <code>verticalAlignment</code> are:</p>
<ul>
<li><a href="index.html">TextEdit</a>.AlignTop (default)</li>
<li><a href="index.html">TextEdit</a>.AlignBottom</li>
<li><a href="index.html">TextEdit</a>.AlignVCenter</li>
</ul>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property <code>horizontalAlignment</code> will remain unchanged. To query the effective horizontal alignment of <a href="index.html">TextEdit</a>, use the read-only property <code>effectiveHorizontalAlignment</code>.</p>
<!-- @@@horizontalAlignment -->
<br/>
<!-- $$$hoveredLink -->
<table class="qmlname"><tr valign="top" id="hoveredLink-prop"><td class="tblQmlPropNode"><p><span class="name">hoveredLink</span> : <span class="type">string</span></p></td></tr></table><p>This property contains the link string when the user hovers a link embedded in the text. The link must be in rich text or HTML format and the link string provides access to the particular link.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<p><b>See also </b><a href="#linkHovered-signal">linkHovered</a> and <a href="#linkAt-method">linkAt()</a>.</p>
<!-- @@@hoveredLink -->
<br/>
<!-- $$$inputMethodComposing -->
<table class="qmlname"><tr valign="top" id="inputMethodComposing-prop"><td class="tblQmlPropNode"><p><span class="name">inputMethodComposing</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the <a href="index.html">TextEdit</a> has partial text input from an input method.</p>
<p>While it is composing an input method may rely on mouse or key events from the <a href="index.html">TextEdit</a> to edit or commit the partial text. This property can be used to determine when to disable events handlers that may interfere with the correct operation of an input method.</p>
<!-- @@@inputMethodComposing -->
<br/>
<!-- $$$inputMethodHints -->
<table class="qmlname"><tr valign="top" id="inputMethodHints-prop"><td class="tblQmlPropNode"><p><span class="name">inputMethodHints</span> : <span class="type">enumeration</span></p></td></tr></table><p>Provides hints to the input method about the expected content of the text edit and how it should operate.</p>
<p>The value is a bit-wise combination of flags or Qt.ImhNone if no hints are set.</p>
<p>Flags that alter behaviour are:</p>
<ul>
<li>Qt.ImhHiddenText - Characters should be hidden, as is typically used when entering passwords.</li>
<li>Qt.ImhSensitiveData - Typed text should not be stored by the active input method in any persistent storage like predictive user dictionary.</li>
<li>Qt.ImhNoAutoUppercase - The input method should not try to automatically switch to upper case when a sentence ends.</li>
<li>Qt.ImhPreferNumbers - Numbers are preferred (but not required).</li>
<li>Qt.ImhPreferUppercase - Upper case letters are preferred (but not required).</li>
<li>Qt.ImhPreferLowercase - Lower case letters are preferred (but not required).</li>
<li>Qt.ImhNoPredictiveText - Do not use predictive text (i.e&#x2e; dictionary lookup) while typing.</li>
<li>Qt.ImhDate - The text editor functions as a date field.</li>
<li>Qt.ImhTime - The text editor functions as a time field.</li>
</ul>
<p>Flags that restrict input (exclusive flags) are:</p>
<ul>
<li>Qt.ImhDigitsOnly - Only digits are allowed.</li>
<li>Qt.ImhFormattedNumbersOnly - Only number input is allowed. This includes decimal point and minus sign.</li>
<li>Qt.ImhUppercaseOnly - Only upper case letter input is allowed.</li>
<li>Qt.ImhLowercaseOnly - Only lower case letter input is allowed.</li>
<li>Qt.ImhDialableCharactersOnly - Only characters suitable for phone dialing are allowed.</li>
<li>Qt.ImhEmailCharactersOnly - Only characters suitable for email addresses are allowed.</li>
<li>Qt.ImhUrlCharactersOnly - Only characters suitable for URLs are allowed.</li>
</ul>
<p>Masks:</p>
<ul>
<li>Qt.ImhExclusiveInputMask - This mask yields nonzero if any of the exclusive flags are used.</li>
</ul>
<!-- @@@inputMethodHints -->
<br/>
<!-- $$$length -->
<table class="qmlname"><tr valign="top" id="length-prop"><td class="tblQmlPropNode"><p><span class="name">length</span> : <span class="type">int</span></p></td></tr></table><p>Returns the total number of plain text characters in the <a href="index.html">TextEdit</a> item.</p>
<p>As this number doesn't include any formatting markup it may not be the same as the length of the string returned by the <a href="QtQuick.qtquick-releasenotes.md#text">text</a> property.</p>
<p>This property can be faster than querying the length the <a href="QtQuick.qtquick-releasenotes.md#text">text</a> property as it doesn't require any copying or conversion of the <a href="index.html">TextEdit</a>'s internal string data.</p>
<!-- @@@length -->
<br/>
<!-- $$$lineCount -->
<table class="qmlname"><tr valign="top" id="lineCount-prop"><td class="tblQmlPropNode"><p><span class="name">lineCount</span> : <span class="type">int</span></p></td></tr></table><p>Returns the total number of lines in the textEdit item.</p>
<!-- @@@lineCount -->
<br/>
<!-- $$$mouseSelectionMode -->
<table class="qmlname"><tr valign="top" id="mouseSelectionMode-prop"><td class="tblQmlPropNode"><p><span class="name">mouseSelectionMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Specifies how text should be selected using a mouse.</p>
<ul>
<li><a href="index.html">TextEdit</a>.SelectCharacters - The selection is updated with individual characters. (Default)</li>
<li><a href="index.html">TextEdit</a>.SelectWords - The selection is updated with whole words.</li>
</ul>
<p>This property only applies when <a href="#selectByMouse-prop">selectByMouse</a> is true.</p>
<!-- @@@mouseSelectionMode -->
<br/>
<!-- $$$persistentSelection -->
<table class="qmlname"><tr valign="top" id="persistentSelection-prop"><td class="tblQmlPropNode"><p><span class="name">persistentSelection</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the <a href="index.html">TextEdit</a> should keep the selection visible when it loses active focus to another item in the scene. By default this is set to false.</p>
<!-- @@@persistentSelection -->
<br/>
<!-- $$$readOnly -->
<table class="qmlname"><tr valign="top" id="readOnly-prop"><td class="tblQmlPropNode"><p><span class="name">readOnly</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the user can interact with the <a href="index.html">TextEdit</a> item. If this property is set to true the text cannot be edited by user interaction.</p>
<p>By default this property is false.</p>
<!-- @@@readOnly -->
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
<!-- $$$selectByKeyboard -->
<table class="qmlname"><tr valign="top" id="selectByKeyboard-prop"><td class="tblQmlPropNode"><p><span class="name">selectByKeyboard</span> : <span class="type">bool</span></p></td></tr></table><p>Defaults to true when the editor is editable, and false when read-only.</p>
<p>If true, the user can use the keyboard to select text even if the editor is read-only. If false, the user cannot use the keyboard to select text even if the editor is editable.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<p><b>See also </b><a href="#readOnly-prop">readOnly</a>.</p>
<!-- @@@selectByKeyboard -->
<br/>
<!-- $$$selectByMouse -->
<table class="qmlname"><tr valign="top" id="selectByMouse-prop"><td class="tblQmlPropNode"><p><span class="name">selectByMouse</span> : <span class="type">bool</span></p></td></tr></table><p>Defaults to false.</p>
<p>If true, the user can use the mouse to select text in some platform-specific way. Note that for some platforms this may not be an appropriate interaction (eg. may conflict with how the text needs to behave inside a Flickable.</p>
<!-- @@@selectByMouse -->
<br/>
<!-- $$$selectedText -->
<table class="qmlname"><tr valign="top" id="selectedText-prop"><td class="tblQmlPropNode"><p><span class="name">selectedText</span> : <span class="type">string</span></p></td></tr></table><p>This read-only property provides the text currently selected in the text edit.</p>
<p>It is equivalent to the following snippet, but is faster and easier to use.</p>
<pre class="cpp"><span class="comment">//myTextEdit is the id of the TextEdit</span>
myTextEdit<span class="operator">.</span>text<span class="operator">.</span>toString()<span class="operator">.</span>substring(myTextEdit<span class="operator">.</span>selectionStart<span class="operator">,</span>
myTextEdit<span class="operator">.</span>selectionEnd);</pre>
<!-- @@@selectedText -->
<br/>
<!-- $$$selectedTextColor -->
<table class="qmlname"><tr valign="top" id="selectedTextColor-prop"><td class="tblQmlPropNode"><p><span class="name">selectedTextColor</span> : <span class="type">color</span></p></td></tr></table><p>The selected text color, used in selections.</p>
<!-- @@@selectedTextColor -->
<br/>
<!-- $$$selectionColor -->
<table class="qmlname"><tr valign="top" id="selectionColor-prop"><td class="tblQmlPropNode"><p><span class="name">selectionColor</span> : <span class="type">color</span></p></td></tr></table><p>The text highlight color, used behind selections.</p>
<!-- @@@selectionColor -->
<br/>
<!-- $$$selectionEnd -->
<table class="qmlname"><tr valign="top" id="selectionEnd-prop"><td class="tblQmlPropNode"><p><span class="name">selectionEnd</span> : <span class="type">int</span></p></td></tr></table><p>The cursor position after the last character in the current selection.</p>
<p>This property is read-only. To change the selection, use select(start,end), <a href="#selectAll-method">selectAll()</a>, or <a href="#selectWord-method">selectWord()</a>.</p>
<p><b>See also </b><a href="#selectionStart-prop">selectionStart</a>, <a href="#cursorPosition-prop">cursorPosition</a>, and <a href="#selectedText-prop">selectedText</a>.</p>
<!-- @@@selectionEnd -->
<br/>
<!-- $$$selectionStart -->
<table class="qmlname"><tr valign="top" id="selectionStart-prop"><td class="tblQmlPropNode"><p><span class="name">selectionStart</span> : <span class="type">int</span></p></td></tr></table><p>The cursor position before the first character in the current selection.</p>
<p>This property is read-only. To change the selection, use select(start,end), <a href="#selectAll-method">selectAll()</a>, or <a href="#selectWord-method">selectWord()</a>.</p>
<p><b>See also </b><a href="#selectionEnd-prop">selectionEnd</a>, <a href="#cursorPosition-prop">cursorPosition</a>, and <a href="#selectedText-prop">selectedText</a>.</p>
<!-- @@@selectionStart -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The text to display. If the text format is AutoText the text edit will automatically determine whether the text should be treated as rich text. This determination is made using Qt::mightBeRichText().</p>
<p>The text-property is mostly suitable for setting the initial content and handling modifications to relatively small text content. The <a href="#append-method">append()</a>, <a href="#insert-method">insert()</a> and <a href="#remove-method">remove()</a> methods provide more fine-grained control and remarkably better performance for modifying especially large rich text content.</p>
<!-- @@@text -->
<br/>
<!-- $$$textDocument -->
<table class="qmlname"><tr valign="top" id="textDocument-prop"><td class="tblQmlPropNode"><p><span class="name">textDocument</span> : <span class="type">TextDocument</span></p></td></tr></table><p>Returns the QQuickTextDocument of this TextEdit. It can be used to implement syntax highlighting using QSyntaxHighlighter.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<p><b>See also </b>QQuickTextDocument.</p>
<!-- @@@textDocument -->
<br/>
<!-- $$$textFormat -->
<table class="qmlname"><tr valign="top" id="textFormat-prop"><td class="tblQmlPropNode"><p><span class="name">textFormat</span> : <span class="type">enumeration</span></p></td></tr></table><p>The way the text property should be displayed.</p>
<ul>
<li><a href="index.html">TextEdit</a>.AutoText</li>
<li><a href="index.html">TextEdit</a>.PlainText</li>
<li><a href="index.html">TextEdit</a>.RichText</li>
</ul>
<p>The default is <a href="index.html">TextEdit</a>.PlainText. If the text format is <a href="index.html">TextEdit</a>.AutoText the text edit will automatically determine whether the text should be treated as rich text. This determination is made using Qt::mightBeRichText().</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="index.html">TextEdit</a></span> {
<span class="name">font</span>.pointSize: <span class="number">24</span>
<span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
}
<span class="type"><a href="index.html">TextEdit</a></span> {
<span class="name">font</span>.pointSize: <span class="number">24</span>
<span class="name">textFormat</span>: <span class="name">TextEdit</span>.<span class="name">RichText</span>
<span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
}
<span class="type"><a href="index.html">TextEdit</a></span> {
<span class="name">font</span>.pointSize: <span class="number">24</span>
<span class="name">textFormat</span>: <span class="name">TextEdit</span>.<span class="name">PlainText</span>
<span class="name">text</span>: <span class="string">&quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;</span>
}
}</pre>
</td><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/534b3be2-0e16-47b4-bafd-1f4d72bff7be-../QtQuick.TextEdit/images/declarative-textformat.png" alt="" /></p></td></tr>
</table>
<!-- @@@textFormat -->
<br/>
<!-- $$$textMargin -->
<table class="qmlname"><tr valign="top" id="textMargin-prop"><td class="tblQmlPropNode"><p><span class="name">textMargin</span> : <span class="type">real</span></p></td></tr></table><p>The margin, in pixels, around the text in the <a href="index.html">TextEdit</a>.</p>
<!-- @@@textMargin -->
<br/>
<!-- $$$verticalAlignment -->
<table class="qmlname"><tr valign="top" id="verticalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">verticalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal and vertical alignment of the text within the <a href="index.html">TextEdit</a> item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.</p>
<p>Valid values for <code>horizontalAlignment</code> are:</p>
<ul>
<li><a href="index.html">TextEdit</a>.AlignLeft (default)</li>
<li><a href="index.html">TextEdit</a>.AlignRight</li>
<li><a href="index.html">TextEdit</a>.AlignHCenter</li>
<li><a href="index.html">TextEdit</a>.AlignJustify</li>
</ul>
<p>Valid values for <code>verticalAlignment</code> are:</p>
<ul>
<li><a href="index.html">TextEdit</a>.AlignTop (default)</li>
<li><a href="index.html">TextEdit</a>.AlignBottom</li>
<li><a href="index.html">TextEdit</a>.AlignVCenter</li>
</ul>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property <code>horizontalAlignment</code> will remain unchanged. To query the effective horizontal alignment of <a href="index.html">TextEdit</a>, use the read-only property <code>effectiveHorizontalAlignment</code>.</p>
<!-- @@@verticalAlignment -->
<br/>
<!-- $$$wrapMode -->
<table class="qmlname"><tr valign="top" id="wrapMode-prop"><td class="tblQmlPropNode"><p><span class="name">wrapMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Set this property to wrap the text to the <a href="index.html">TextEdit</a> item's width. The text will only wrap if an explicit width has been set.</p>
<ul>
<li><a href="index.html">TextEdit</a>.NoWrap - no wrapping will be performed. If the text contains insufficient newlines, then implicitWidth will exceed a set width.</li>
<li><a href="index.html">TextEdit</a>.WordWrap - wrapping is done on word boundaries only. If a word is too long, implicitWidth will exceed a set width.</li>
<li><a href="index.html">TextEdit</a>.WrapAnywhere - wrapping is done at any point on a line, even if it occurs in the middle of a word.</li>
<li><a href="index.html">TextEdit</a>.Wrap - if possible, wrapping occurs at a word boundary; otherwise it will occur at the appropriate point on the line, even in the middle of a word.</li>
</ul>
<p>The default is <a href="index.html">TextEdit</a>.NoWrap. If you set a width, consider using <a href="index.html">TextEdit</a>.Wrap.</p>
<!-- @@@wrapMode -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$linkActivated -->
<table class="qmlname"><tr valign="top" id="linkActivated-signal"><td class="tblQmlFuncNode"><p><span class="name">linkActivated</span>(<span class="type">string</span><i> link</i>)</p></td></tr></table><p>This signal is emitted when the user clicks on a link embedded in the text. The link must be in rich text or HTML format and the <i>link</i> string provides access to the particular link.</p>
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
<!-- $$$append -->
<table class="qmlname"><tr valign="top" id="append-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">append</span>(<span class="type">string</span><i> text</i>)</p></td></tr></table><p>Appends a new paragraph with <i>text</i> to the end of the <a href="index.html">TextEdit</a>.</p>
<p>In order to append without inserting a new paragraph, call <code>myTextEdit.insert(myTextEdit.length, text)</code> instead.</p>
<p>This QML method was introduced in  Qt 5.2.</p>
<!-- @@@append -->
<br/>
<!-- $$$copy -->
<table class="qmlname"><tr valign="top" id="copy-method"><td class="tblQmlFuncNode"><p><span class="name">copy</span>()</p></td></tr></table><p>Copies the currently selected text to the system clipboard.</p>
<!-- @@@copy -->
<br/>
<!-- $$$cut -->
<table class="qmlname"><tr valign="top" id="cut-method"><td class="tblQmlFuncNode"><p><span class="name">cut</span>()</p></td></tr></table><p>Moves the currently selected text to the system clipboard.</p>
<!-- @@@cut -->
<br/>
<!-- $$$deselect -->
<table class="qmlname"><tr valign="top" id="deselect-method"><td class="tblQmlFuncNode"><p><span class="name">deselect</span>()</p></td></tr></table><p>Removes active text selection.</p>
<!-- @@@deselect -->
<br/>
<!-- $$$getFormattedText -->
<table class="qmlname"><tr valign="top" id="getFormattedText-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">getFormattedText</span>(<span class="type">int</span><i> start</i>, <span class="type">int</span><i> end</i>)</p></td></tr></table><p>Returns the section of text that is between the <i>start</i> and <i>end</i> positions.</p>
<p>The returned text will be formatted according the <a href="#textFormat-prop">textFormat</a> property.</p>
<!-- @@@getFormattedText -->
<br/>
<!-- $$$getText -->
<table class="qmlname"><tr valign="top" id="getText-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">getText</span>(<span class="type">int</span><i> start</i>, <span class="type">int</span><i> end</i>)</p></td></tr></table><p>Returns the section of text that is between the <i>start</i> and <i>end</i> positions.</p>
<p>The returned text does not include any rich text formatting.</p>
<!-- @@@getText -->
<br/>
<!-- $$$insert -->
<table class="qmlname"><tr valign="top" id="insert-method"><td class="tblQmlFuncNode"><p><span class="name">insert</span>(<span class="type">int</span><i> position</i>, <span class="type">string</span><i> text</i>)</p></td></tr></table><p>Inserts <i>text</i> into the <a href="index.html">TextEdit</a> at position.</p>
<!-- @@@insert -->
<br/>
<!-- $$$isRightToLeft -->
<table class="qmlname"><tr valign="top" id="isRightToLeft-method"><td class="tblQmlFuncNode"><p><span class="name">isRightToLeft</span>(<span class="type">int</span><i> start</i>, <span class="type">int</span><i> end</i>)</p></td></tr></table><p>Returns true if the natural reading direction of the editor text found between positions <i>start</i> and <i>end</i> is right to left.</p>
<!-- @@@isRightToLeft -->
<br/>
<!-- $$$linkAt -->
<table class="qmlname"><tr valign="top" id="linkAt-method"><td class="tblQmlFuncNode"><p><span class="name">linkAt</span>(<span class="type">real</span><i> x</i>, <span class="type">real</span><i> y</i>)</p></td></tr></table><p>Returns the link string at point <i>x</i>, <i>y</i> in content coordinates, or an empty string if no link exists at that point.</p>
<p>This QML method was introduced in  Qt 5.3.</p>
<p><b>See also </b><a href="#hoveredLink-prop">hoveredLink</a>.</p>
<!-- @@@linkAt -->
<br/>
<!-- $$$moveCursorSelection -->
<table class="qmlname"><tr valign="top" id="moveCursorSelection-method"><td class="tblQmlFuncNode"><p><span class="name">moveCursorSelection</span>(<span class="type">int</span><i> position</i>, <span class="type">SelectionMode</span><i> mode</i> = TextEdit.SelectCharacters)</p></td></tr></table><p>Moves the cursor to <i>position</i> and updates the selection according to the optional <i>mode</i> parameter. (To only move the cursor, set the <a href="#cursorPosition-prop">cursorPosition</a> property.)</p>
<p>When this method is called it additionally sets either the <a href="#selectionStart-prop">selectionStart</a> or the <a href="#selectionEnd-prop">selectionEnd</a> (whichever was at the previous cursor position) to the specified position. This allows you to easily extend and contract the selected text range.</p>
<p>The selection mode specifies whether the selection is updated on a per character or a per word basis. If not specified the selection mode will default to <a href="index.html">TextEdit</a>.SelectCharacters.</p>
<ul>
<li><a href="index.html">TextEdit</a>.SelectCharacters - Sets either the <a href="#selectionStart-prop">selectionStart</a> or <a href="#selectionEnd-prop">selectionEnd</a> (whichever was at the previous cursor position) to the specified position.</li>
<li><a href="index.html">TextEdit</a>.SelectWords - Sets the <a href="#selectionStart-prop">selectionStart</a> and <a href="#selectionEnd-prop">selectionEnd</a> to include all words between the specified position and the previous cursor position. Words partially in the range are included.</li>
</ul>
<p>For example, take this sequence of calls:</p>
<pre class="cpp">cursorPosition <span class="operator">=</span> <span class="number">5</span>
moveCursorSelection(<span class="number">9</span><span class="operator">,</span> TextEdit<span class="operator">.</span>SelectCharacters)
moveCursorSelection(<span class="number">7</span><span class="operator">,</span> TextEdit<span class="operator">.</span>SelectCharacters)</pre>
<p>This moves the cursor to position 5, extend the selection end from 5 to 9 and then retract the selection end from 9 to 7, leaving the text from position 5 to 7 selected (the 6th and 7th characters).</p>
<p>The same sequence with <a href="index.html">TextEdit</a>.SelectWords will extend the selection start to a word boundary before or on position 5 and extend the selection end to a word boundary on or past position 9.</p>
<!-- @@@moveCursorSelection -->
<br/>
<!-- $$$paste -->
<table class="qmlname"><tr valign="top" id="paste-method"><td class="tblQmlFuncNode"><p><span class="name">paste</span>()</p></td></tr></table><p>Replaces the currently selected text by the contents of the system clipboard.</p>
<!-- @@@paste -->
<br/>
<!-- $$$positionAt -->
<table class="qmlname"><tr valign="top" id="positionAt-method"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">positionAt</span>(<span class="type">int</span><i> x</i>, <span class="type">int</span><i> y</i>)</p></td></tr></table><p>Returns the text position closest to pixel position (<i>x</i>, <i>y</i>).</p>
<p>Position 0 is before the first character, position 1 is after the first character but before the second, and so on until position <a href="QtQuick.qtquick-releasenotes.md#text">text</a>.length, which is after all characters.</p>
<!-- @@@positionAt -->
<br/>
<!-- $$$positionToRectangle -->
<table class="qmlname"><tr valign="top" id="positionToRectangle-method"><td class="tblQmlFuncNode"><p><span class="type">rectangle</span> <span class="name">positionToRectangle</span>(<span class="type">position</span>)</p></td></tr></table><p>Returns the rectangle at the given <i>position</i> in the text. The x, y, and height properties correspond to the cursor that would describe that position.</p>
<!-- @@@positionToRectangle -->
<br/>
<!-- $$$redo -->
<table class="qmlname"><tr valign="top" id="redo-method"><td class="tblQmlFuncNode"><p><span class="name">redo</span>()</p></td></tr></table><p>Redoes the last operation if redo is <a href="#canRedo-prop">available</a>.</p>
<!-- @@@redo -->
<br/>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">remove</span>(<span class="type">int</span><i> start</i>, <span class="type">int</span><i> end</i>)</p></td></tr></table><p>Removes the section of text that is between the <i>start</i> and <i>end</i> positions from the <a href="index.html">TextEdit</a>.</p>
<!-- @@@remove -->
<br/>
<!-- $$$select -->
<table class="qmlname"><tr valign="top" id="select-method"><td class="tblQmlFuncNode"><p><span class="name">select</span>(<span class="type">int</span><i> start</i>, <span class="type">int</span><i> end</i>)</p></td></tr></table><p>Causes the text from <i>start</i> to <i>end</i> to be selected.</p>
<p>If either start or end is out of range, the selection is not changed.</p>
<p>After calling this, <a href="#selectionStart-prop">selectionStart</a> will become the lesser and <a href="#selectionEnd-prop">selectionEnd</a> will become the greater (regardless of the order passed to this method).</p>
<p><b>See also </b><a href="#selectionStart-prop">selectionStart</a> and <a href="#selectionEnd-prop">selectionEnd</a>.</p>
<!-- @@@select -->
<br/>
<!-- $$$selectAll -->
<table class="qmlname"><tr valign="top" id="selectAll-method"><td class="tblQmlFuncNode"><p><span class="name">selectAll</span>()</p></td></tr></table><p>Causes all text to be selected.</p>
<!-- @@@selectAll -->
<br/>
<!-- $$$selectWord -->
<table class="qmlname"><tr valign="top" id="selectWord-method"><td class="tblQmlFuncNode"><p><span class="name">selectWord</span>()</p></td></tr></table><p>Causes the word closest to the current cursor position to be selected.</p>
<!-- @@@selectWord -->
<br/>
<!-- $$$undo -->
<table class="qmlname"><tr valign="top" id="undo-method"><td class="tblQmlFuncNode"><p><span class="name">undo</span>()</p></td></tr></table><p>Undoes the last operation if undo is <a href="#canUndo-prop">available</a>. Deselects any current selection, and updates the selection start to the current cursor position.</p>
<!-- @@@undo -->
<br/>
