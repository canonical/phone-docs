---
Title: Ubuntu.Components.TextArea
---

# Ubuntu.Components.TextArea

<span class="subtitle"></span>
<!-- $$$TextArea-brief -->
<p>The TextArea item displays a block of editable, scrollable, formatted text. More...</p>
<!-- @@@TextArea -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Ubuntu.md">Ubuntu</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#autoSize-prop">autoSize</a></b></b> : bool</li>
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
<li class="fn"><b><b><a href="#displayText-prop">displayText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#effectiveHorizontalAlignment-prop">effectiveHorizontalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#font-prop">font</a></b></b> : font</li>
<li class="fn"><b><b><a href="#highlighted-prop">highlighted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#horizontalAlignment-prop">horizontalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#inputMethodComposing-prop">inputMethodComposing</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#inputMethodHints-prop">inputMethodHints</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#length-prop">length</a></b></b> : int</li>
<li class="fn"><b><b><a href="#lineCount-prop">lineCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#maximumLineCount-prop">maximumLineCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#mouseSelectionMode-prop">mouseSelectionMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#paintedHeight-prop">paintedHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#paintedWidth-prop">paintedWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#persistentSelection-prop">persistentSelection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#placeholderText-prop">placeholderText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#popover-prop">popover</a></b></b> : var</li>
<li class="fn"><b><b><a href="#readOnly-prop">readOnly</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#renderType-prop">renderType</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#selectByMouse-prop">selectByMouse</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectedText-prop">selectedText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#selectedTextColor-prop">selectedTextColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#selectionColor-prop">selectionColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#selectionEnd-prop">selectionEnd</a></b></b> : int</li>
<li class="fn"><b><b><a href="#selectionStart-prop">selectionStart</a></b></b> : int</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#textDocument-prop">textDocument</a></b></b> : var</li>
<li class="fn"><b><b><a href="#textFormat-prop">textFormat</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#verticalAlignment-prop">verticalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#wrapMode-prop">wrapMode</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#linkActivated-signal">linkActivated</a></b></b>(string <i>link</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#copy-method">copy</a></b></b>()</li>
<li class="fn"><b><b><a href="#cut-method">cut</a></b></b>()</li>
<li class="fn"><b><b><a href="#deselect-method">deselect</a></b></b>()</li>
<li class="fn"><b><b><a href="#getFormattedText-method">getFormattedText</a></b></b>(<i>start</i>,  <i>end</i>)</li>
<li class="fn"><b><b><a href="#getText-method">getText</a></b></b>(<i>start</i>,  <i>end</i>)</li>
<li class="fn"><b><b><a href="#insert-method">insert</a></b></b>(<i>position</i>,  <i>text</i>)</li>
<li class="fn"><b><b><a href="#isRightToLeft-method">isRightToLeft</a></b></b>(<i>start</i>,  <i>end</i>)</li>
<li class="fn"><b><b><a href="#moveCursorSelection-method">moveCursorSelection</a></b></b>(<i>position</i>,  <i>mode</i>)</li>
<li class="fn"><b><b><a href="#paste-method">paste</a></b></b>(<i>data</i>)</li>
<li class="fn"><b><b><a href="#positionAt-method">positionAt</a></b></b>(<i>x</i>,  <i>y</i>)</li>
<li class="fn"><b><b><a href="#positionToRectangle-method">positionToRectangle</a></b></b>(<i>position</i>)</li>
<li class="fn"><b><b><a href="#redo-method">redo</a></b></b>()</li>
<li class="fn"><b><b><a href="#remove-method">remove</a></b></b>(<i>start</i>,  <i>end</i>)</li>
<li class="fn"><b><b><a href="#select-method">select</a></b></b>(<i>start</i>,  <i>end</i>)</li>
<li class="fn"><b><b><a href="#selectAll-method">selectAll</a></b></b>()</li>
<li class="fn"><b><b><a href="#selectWord-method">selectWord</a></b></b>()</li>
<li class="fn"><b><b><a href="#undo-method">undo</a></b></b>()</li>
</ul>
<!-- $$$TextArea-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">TextArea</a> supports fix-size and auto-expanding modes. In fix-size mode the content is scrolled when exceeds the boundaries and can be scrolled both horizontally and vertically, depending on the <a href="#contentWidth-prop">contentWidth</a> and <a href="#contentHeight-prop">contentHeight</a> set. The following example will scroll the editing area both horizontally and vertically:</p>
<pre class="qml"><span class="type"><a href="index.html">TextArea</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">12</span>)
<span class="name">contentWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">contentHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
}</pre>
<p>The auto-expand mode is realized using two properties: <a href="#autoSize-prop">autoSize</a> and <a href="#maximumLineCount-prop">maximumLineCount</a>. Setting <a href="#autoSize-prop">autoSize</a> will set implicitHeight to one line, and the height will follow the line count, meaning when lines are added the area will expand and when removed the area will shrink. The <a href="#maximumLineCount-prop">maximumLineCount</a> specifies how much the editor should be expanded. If this value is set to 0, the area will always expand vertically to fit the content. When <a href="#autoSize-prop">autoSize</a> is set, the <a href="#contentHeight-prop">contentHeight</a> property value is ignored, and the expansion only happens vertically.</p>
<pre class="qml"><span class="type"><a href="index.html">TextArea</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">12</span>)
<span class="name">contentWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">autoSize</span>: <span class="number">true</span>
<span class="name">maximumLineCount</span>: <span class="number">0</span>
}</pre>
<p><a href="index.html">TextArea</a> comes with 30 grid-units implicit width and one line height on auto-sizing mode and 4 lines on fixed-mode. The line size is calculated from the font size and the ovarlay and frame spacing specified in the style.</p>
<h3 >Scrolling and text selection</h3>
<p>The input is activated when the tap or mouse is released after being pressed over the component.</p>
<p>Scrolling the editing area can happen when the size is fixed or in auto-sizing mode when the content size is bigger than the visible area. The scrolling is realized by swipe gestures, or by navigating the cursor.</p>
<p>The content can be selected in the following ways:</p>
<ul>
<li>- double tapping/left mouse clicking over the content, when the word that had been tapped over will be selected</li>
<li>- by pressing and dragging the selection cursor over the text input. Note that there has to be a delay of approx. 200 ms between the press and drag gesture, time when the input switches from scroll mode to selection mode</li>
</ul>
<p>The input is focused (activated) upon tap/left mouse button release. The cursor will be placed at the position the mouse/tap point at release time. If the click is happening on a selected area, the selection will be cleared. Long press above a selected area brings up the clipboard context menu. When the long press happens over a non-selected area, the cursor will be moved to the position and the component enters in selection mode. The selection mode can also be activated by tapping and keeping the tap/mouse over for approx 300 ms. If there is a move during this time, the component enters into scrolling mode. The mode is exited once the scrolling finishes. During the scrolling mode the selected text is preserved.</p>
<p><b>Note: </b>During text selection all interactive parent Flickables are turned off.</p><!-- @@@TextArea -->
<h2>Property Documentation</h2>
<!-- $$$autoSize -->
<table class="qmlname"><tr valign="top" id="autoSize-prop"><td class="tblQmlPropNode"><p><span class="name">autoSize</span> : <span class="type">bool</span></p></td></tr></table><p>This property specifies whether the text area sizes following the line count or not. The default value is false.</p>
<!-- @@@autoSize -->
<br/>
<!-- $$$baseUrl -->
<table class="qmlname"><tr valign="top" id="baseUrl-prop"><td class="tblQmlPropNode"><p><span class="name">baseUrl</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>This property specifies a base URL which is used to resolve relative URLs within the text. The default value is the url of the QML file instantiating the <a href="index.html">TextArea</a> item.</p>
<!-- @@@baseUrl -->
<br/>
<!-- $$$canPaste -->
<table class="qmlname"><tr valign="top" id="canPaste-prop"><td class="tblQmlPropNode"><p><span class="name">canPaste</span> : <span class="type">bool</span></p></td></tr></table><p>Returns true if the <a href="index.html">TextArea</a> is writable and the content of the clipboard is suitable for pasting into the <a href="index.html">TextArea</a>.</p>
<!-- @@@canPaste -->
<br/>
<!-- $$$canRedo -->
<table class="qmlname"><tr valign="top" id="canRedo-prop"><td class="tblQmlPropNode"><p><span class="name">canRedo</span> : <span class="type">bool</span></p></td></tr></table><p>Returns true if the <a href="index.html">TextArea</a> is writable and there are undone operations that can be redone.</p>
<!-- @@@canRedo -->
<br/>
<!-- $$$canUndo -->
<table class="qmlname"><tr valign="top" id="canUndo-prop"><td class="tblQmlPropNode"><p><span class="name">canUndo</span> : <span class="type">bool</span></p></td></tr></table><p>Returns true if the <a href="index.html">TextArea</a> is writable and there are previous operations that can be undone.</p>
<!-- @@@canUndo -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>The text color.</p>
<!-- @@@color -->
<br/>
<!-- $$$contentHeight -->
<table class="qmlname"><tr valign="top" id="contentHeight-prop"><td class="tblQmlPropNode"><p><span class="name">contentHeight</span> : <span class="type">real</span></p></td></tr></table><p>The property folds the height of the text editing content. This can be equal or bigger than the frame height minus the spacing between the frame and the input area defined in the current theme. The default value is the same as the visible input area's height.</p>
<!-- @@@contentHeight -->
<br/>
<!-- $$$contentWidth -->
<table class="qmlname"><tr valign="top" id="contentWidth-prop"><td class="tblQmlPropNode"><p><span class="name">contentWidth</span> : <span class="type">real</span></p></td></tr></table><p>The property folds the width of the text editing content. This can be equal or bigger than the frame width minus the spacing between the frame and the input area defined in the current theme. The default value is the same as the visible input area's width.</p>
<!-- @@@contentWidth -->
<br/>
<!-- $$$cursorDelegate -->
<table class="qmlname"><tr valign="top" id="cursorDelegate-prop"><td class="tblQmlPropNode"><p><span class="name">cursorDelegate</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>The delegate for the cursor in the <a href="index.html">TextArea</a>.</p>
<p>If you set a cursorDelegate for a <a href="index.html">TextArea</a>, this delegate will be used for drawing the cursor instead of the standard cursor. An instance of the delegate will be created and managed by the text edit when a cursor is needed, and the x and y properties of delegate instance will be set so as to be one pixel before the top left of the current character.</p>
<p>Note that the root item of the delegate component must be a <a href="http://doc.qt.io/qt-5/qquickitem.html">QQuickItem</a> or <a href="http://doc.qt.io/qt-5/qquickitem.html">QQuickItem</a> derived item.</p>
<!-- @@@cursorDelegate -->
<br/>
<!-- $$$cursorPosition -->
<table class="qmlname"><tr valign="top" id="cursorPosition-prop"><td class="tblQmlPropNode"><p><span class="name">cursorPosition</span> : <span class="type">int</span></p></td></tr></table><p>The position of the cursor in the <a href="index.html">TextArea</a>.</p>
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
<!-- $$$displayText -->
<table class="qmlname"><tr valign="top" id="displayText-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">displayText</span> : <span class="type">string</span></p></td></tr></table><p>This property contains the text that is displayed on the screen. May differ from the text property value when <a href="QtQuick.TextEdit.md">TextEdit</a>.RichText format is selected.</p>
<!-- @@@displayText -->
<br/>
<!-- $$$effectiveHorizontalAlignment -->
<table class="qmlname"><tr valign="top" id="effectiveHorizontalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">effectiveHorizontalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Presents the effective horizontal alignment that can be different from the one specified at <a href="#horizontalAlignment-prop">horizontalAlignment</a> due to layout mirroring.</p>
<!-- @@@effectiveHorizontalAlignment -->
<br/>
<!-- $$$font -->
<table class="qmlname"><tr valign="top" id="font-prop"><td class="tblQmlPropNode"><p><span class="name">font</span> : <span class="type"><a href="#font-prop">font</a></span></p></td></tr></table><p>The property holds the font used by the editing.</p>
<!-- @@@font -->
<br/>
<!-- $$$highlighted -->
<table class="qmlname"><tr valign="top" id="highlighted-prop"><td class="tblQmlPropNode"><p><span class="name">highlighted</span> : <span class="type">bool</span></p></td></tr></table><p>The property presents whether the <a href="index.html">TextArea</a> is highlighted or not. By default the <a href="index.html">TextArea</a> gets highlighted when gets the focus, so can accept text input. This property allows to control the highlight separately from the focused behavior.</p>
<!-- @@@highlighted -->
<br/>
<!-- $$$horizontalAlignment -->
<table class="qmlname"><tr valign="top" id="horizontalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">horizontalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal alignment of the text within the TextAre item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.</p>
<p>Valid values for <a href="#effectiveHorizontalAlignment-prop">effectiveHorizontalAlignment</a> are:</p>
<ul>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.AlignLeft (default)</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.AlignRight</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.AlignHCenter</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.AlignJustify</li>
</ul>
<!-- @@@horizontalAlignment -->
<br/>
<!-- $$$inputMethodComposing -->
<table class="qmlname"><tr valign="top" id="inputMethodComposing-prop"><td class="tblQmlPropNode"><p><span class="name">inputMethodComposing</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the <a href="index.html">TextArea</a> has partial text input from an input method.</p>
<p>While it is composing an input method may rely on mouse or key events from the <a href="index.html">TextArea</a> to edit or commit the partial text. This property can be used to determine when to disable events handlers that may interfere with the correct operation of an input method.</p>
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
<table class="qmlname"><tr valign="top" id="length-prop"><td class="tblQmlPropNode"><p><span class="name">length</span> : <span class="type">int</span></p></td></tr></table><p>Returns the total number of plain text characters in the <a href="index.html">TextArea</a> item.</p>
<p>As this number doesn't include any formatting markup it may not be the same as the length of the string returned by the text property.</p>
<p>This property can be faster than querying the length the text property as it doesn't require any copying or conversion of the <a href="index.html">TextArea</a>'s internal string data.</p>
<!-- @@@length -->
<br/>
<!-- $$$lineCount -->
<table class="qmlname"><tr valign="top" id="lineCount-prop"><td class="tblQmlPropNode"><p><span class="name">lineCount</span> : <span class="type">int</span></p></td></tr></table><p>Returns the total number of lines in the <a href="index.html">TextArea</a> item.</p>
<!-- @@@lineCount -->
<br/>
<!-- $$$maximumLineCount -->
<table class="qmlname"><tr valign="top" id="maximumLineCount-prop"><td class="tblQmlPropNode"><p><span class="name">maximumLineCount</span> : <span class="type">int</span></p></td></tr></table><p>The property holds the maximum amount of lines to expand when <a href="#autoSize-prop">autoSize</a> is enabled. The value of 0 does not put any upper limit and the control will expand forever.</p>
<p>The default value is 5 lines.</p>
<!-- @@@maximumLineCount -->
<br/>
<!-- $$$mouseSelectionMode -->
<table class="qmlname"><tr valign="top" id="mouseSelectionMode-prop"><td class="tblQmlPropNode"><p><span class="name">mouseSelectionMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Specifies how text should be selected using a mouse.</p>
<ul>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.SelectCharacters - The selection is updated with individual characters. (Default)</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.SelectWords - The selection is updated with whole words.</li>
</ul>
<p>This property only applies when <a href="#selectByMouse-prop">selectByMouse</a> is true.</p>
<!-- @@@mouseSelectionMode -->
<br/>
<!-- $$$paintedHeight -->
<table class="qmlname"><tr valign="top" id="paintedHeight-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">paintedHeight</span> : <span class="type">real</span></p></td></tr></table><p>Exposes the paintedHeight of the underlying text component. It's required if the application uses its own Flickable for scrolling.</p>
<!-- @@@paintedHeight -->
<br/>
<!-- $$$paintedWidth -->
<table class="qmlname"><tr valign="top" id="paintedWidth-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">paintedWidth</span> : <span class="type">real</span></p></td></tr></table><p>Exposes the paintedWidth of the underlying text component. It's required if the application uses its own Flickable for scrolling.</p>
<!-- @@@paintedWidth -->
<br/>
<!-- $$$persistentSelection -->
<table class="qmlname"><tr valign="top" id="persistentSelection-prop"><td class="tblQmlPropNode"><p><span class="name">persistentSelection</span> : <span class="type">enumeration</span></p></td></tr></table><p>Whether the <a href="index.html">TextArea</a> should keep the selection visible when it loses active focus to another item in the scene. By default this is set to true;</p>
<!-- @@@persistentSelection -->
<br/>
<!-- $$$placeholderText -->
<table class="qmlname"><tr valign="top" id="placeholderText-prop"><td class="tblQmlPropNode"><p><span class="name">placeholderText</span> : <span class="type">string</span></p></td></tr></table><p>Text that appears when there is no focus and no content in the component (hint text).</p>
<!-- @@@placeholderText -->
<br/>
<!-- $$$popover -->
<table class="qmlname"><tr valign="top" id="popover-prop"><td class="tblQmlPropNode"><p><span class="name">popover</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>The property overrides the default popover of the <a href="index.html">TextArea</a>. When set, the <a href="index.html">TextArea</a> will open the given popover instead of the default one defined. The popover can either be a component or a URL to be loaded.</p>
<!-- @@@popover -->
<br/>
<!-- $$$readOnly -->
<table class="qmlname"><tr valign="top" id="readOnly-prop"><td class="tblQmlPropNode"><p><span class="name">readOnly</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the user can interact with the <a href="index.html">TextArea</a> item. If this property is set to true the text cannot be edited by user interaction.</p>
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
<!-- $$$selectByMouse -->
<table class="qmlname"><tr valign="top" id="selectByMouse-prop"><td class="tblQmlPropNode"><p><span class="name">selectByMouse</span> : <span class="type">bool</span></p></td></tr></table><p>The property drives whether text selection should happen with the mouse or not. The default value is true.</p>
<!-- @@@selectByMouse -->
<br/>
<!-- $$$selectedText -->
<table class="qmlname"><tr valign="top" id="selectedText-prop"><td class="tblQmlPropNode"><p><span class="name">selectedText</span> : <span class="type">string</span></p></td></tr></table><p>This read-only property provides the text currently selected in the text edit.</p>
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
<p>This property is read-only. To change the selection, use select(start, end), <a href="#selectAll-method">selectAll()</a>, or <a href="#selectWord-method">selectWord()</a>.</p>
<p>See also <a href="#selectionStart-prop">selectionStart</a>, <a href="#cursorPosition-prop">cursorPosition</a>, and <a href="#selectedText-prop">selectedText</a>.</p>
<!-- @@@selectionEnd -->
<br/>
<!-- $$$selectionStart -->
<table class="qmlname"><tr valign="top" id="selectionStart-prop"><td class="tblQmlPropNode"><p><span class="name">selectionStart</span> : <span class="type">int</span></p></td></tr></table><p>The cursor position before the first character in the current selection.</p>
<p>This property is read-only. To change the selection, use select(start, end), <a href="#selectAll-method">selectAll()</a>, or <a href="#selectWord-method">selectWord()</a>.</p>
<p>See also <a href="#selectionEnd-prop">selectionEnd</a>, <a href="#cursorPosition-prop">cursorPosition</a>, and <a href="#selectedText-prop">selectedText</a>.</p>
<!-- @@@selectionStart -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The text to display. If the text format is AutoText the text edit will automatically determine whether the text should be treated as rich text. This determination is made using Qt::mightBeRichText().</p>
<!-- @@@text -->
<br/>
<!-- $$$textDocument -->
<table class="qmlname"><tr valign="top" id="textDocument-prop"><td class="tblQmlPropNode"><p><span class="name">textDocument</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>Exposes the <a href="http://doc.qt.io/qt-5/qquicktextdocument.html">QQuickTextDocument</a> which can be used to implement advanced formatting and syntax highlighting (QSyntaxHighlighter) with C++.</p>
<!-- @@@textDocument -->
<br/>
<!-- $$$textFormat -->
<table class="qmlname"><tr valign="top" id="textFormat-prop"><td class="tblQmlPropNode"><p><span class="name">textFormat</span> : <span class="type">enumeration</span></p></td></tr></table><p>The way the text property should be displayed.</p>
<ul>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.AutoText</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.PlainText</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.RichText</li>
</ul>
<p>The default is <a href="QtQuick.TextEdit.md">TextEdit</a>.PlainText. If the text format is <a href="QtQuick.TextEdit.md">TextEdit</a>.AutoText the text edit will automatically determine whether the text should be treated as rich text. This determination is made using Qt::mightBeRichText().</p>
<!-- @@@textFormat -->
<br/>
<!-- $$$verticalAlignment -->
<table class="qmlname"><tr valign="top" id="verticalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">verticalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the vertical alignment of the text within the TextAres item's width and height. By default, the text alignment follows the natural alignment of the text.</p>
<p>Valid values for verticalAlignment are:</p>
<ul>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.AlignTop (default)</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.AlignBottom</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.AlignVCenter</li>
</ul>
<!-- @@@verticalAlignment -->
<br/>
<!-- $$$wrapMode -->
<table class="qmlname"><tr valign="top" id="wrapMode-prop"><td class="tblQmlPropNode"><p><span class="name">wrapMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Set this property to wrap the text to the <a href="QtQuick.TextEdit.md">TextEdit</a> item's width. The text will only wrap if an explicit width has been set.</p>
<ul>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.NoWrap - no wrapping will be performed. If the text contains insufficient newlines, then implicitWidth will exceed a set width.</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.WordWrap - wrapping is done on word boundaries only. If a word is too long, implicitWidth will exceed a set width.</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.WrapAnywhere - wrapping is done at any point on a line, even if it occurs in the middle of a word.</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a>.Wrap - if possible, wrapping occurs at a word boundary; otherwise it will occur at the appropriate point on the line, even in the middle of a word.</li>
</ul>
<p>The default is <a href="QtQuick.TextEdit.md">TextEdit</a>.Wrap</p>
<!-- @@@wrapMode -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$linkActivated -->
<table class="qmlname"><tr valign="top" id="linkActivated-signal"><td class="tblQmlFuncNode"><p><span class="name">linkActivated</span>(<span class="type">string</span><i> link</i>)</p></td></tr></table><p>This handler is called when the user clicks on a link embedded in the text. The link must be in rich text or HTML format and the link string provides access to the particular link.</p>
<!-- @@@linkActivated -->
<br/>
<h2>Method Documentation</h2>
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
<table class="qmlname"><tr valign="top" id="getFormattedText-method"><td class="tblQmlFuncNode"><p><span class="name">getFormattedText</span>(<i> start</i>, <i> end</i>)</p></td></tr></table><p>Returns the section of text that is between the start and end positions.</p>
<p>The returned text will be formatted according the <a href="#textFormat-prop">textFormat</a> property.</p>
<!-- @@@getFormattedText -->
<br/>
<!-- $$$getText -->
<table class="qmlname"><tr valign="top" id="getText-method"><td class="tblQmlFuncNode"><p><span class="name">getText</span>(<i> start</i>, <i> end</i>)</p></td></tr></table><p>Returns the section of text that is between the start and end positions.</p>
<p>The returned text does not include any rich text formatting. A getText(0, length) will result in the same value as <a href="#displayText-prop">displayText</a>.</p>
<!-- @@@getText -->
<br/>
<!-- $$$insert -->
<table class="qmlname"><tr valign="top" id="insert-method"><td class="tblQmlFuncNode"><p><span class="name">insert</span>(<i> position</i>, <i> text</i>)</p></td></tr></table><p>Inserts text into the <a href="index.html">TextArea</a> at position.</p>
<!-- @@@insert -->
<br/>
<!-- $$$isRightToLeft -->
<table class="qmlname"><tr valign="top" id="isRightToLeft-method"><td class="tblQmlFuncNode"><p><span class="name">isRightToLeft</span>(<i> start</i>, <i> end</i>)</p></td></tr></table><p>Returns true if the natural reading direction of the editor text found between positions start and end is right to left.</p>
<!-- @@@isRightToLeft -->
<br/>
<!-- $$$moveCursorSelection -->
<table class="qmlname"><tr valign="top" id="moveCursorSelection-method"><td class="tblQmlFuncNode"><p><span class="name">moveCursorSelection</span>(<i> position</i>, <i> mode</i>)</p></td></tr></table><p>Moves the cursor to position and updates the selection according to the optional mode parameter. (To only move the cursor, set the <a href="#cursorPosition-prop">cursorPosition</a> property.)</p>
<p>When this method is called it additionally sets either the <a href="#selectionStart-prop">selectionStart</a> or the <a href="#selectionEnd-prop">selectionEnd</a> (whichever was at the previous cursor position) to the specified position. This allows you to easily extend and contract the selected text range.</p>
<p>The selection mode specifies whether the selection is updated on a per character or a per word basis. If not specified the selection mode will default to whatever is given in the <a href="#mouseSelectionMode-prop">mouseSelectionMode</a> property.</p>
<!-- @@@moveCursorSelection -->
<br/>
<!-- $$$paste -->
<table class="qmlname"><tr valign="top" id="paste-method"><td class="tblQmlFuncNode"><p><span class="name">paste</span>(<i> data</i>)</p></td></tr></table><p>Places the clipboard or the data given as parameter into the text input. The selected text will be replaces with the data.</p>
<!-- @@@paste -->
<br/>
<!-- $$$positionAt -->
<table class="qmlname"><tr valign="top" id="positionAt-method"><td class="tblQmlFuncNode"><p><span class="name">positionAt</span>(<i> x</i>, <i> y</i>)</p></td></tr></table><p>Returns the text position closest to pixel position (x, y).</p>
<p>Position 0 is before the first character, position 1 is after the first character but before the second, and so on until position text.length, which is after all characters.</p>
<!-- @@@positionAt -->
<br/>
<!-- $$$positionToRectangle -->
<table class="qmlname"><tr valign="top" id="positionToRectangle-method"><td class="tblQmlFuncNode"><p><span class="name">positionToRectangle</span>(<i> position</i>)</p></td></tr></table><p>Returns the rectangle at the given position in the text. The x, y, and height properties correspond to the cursor that would describe that position.</p>
<!-- @@@positionToRectangle -->
<br/>
<!-- $$$redo -->
<table class="qmlname"><tr valign="top" id="redo-method"><td class="tblQmlFuncNode"><p><span class="name">redo</span>()</p></td></tr></table><p>Redoes the last operation if redo is <a href="#canRedo-prop">available</a>.</p>
<!-- @@@redo -->
<br/>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-method"><td class="tblQmlFuncNode"><p><span class="name">remove</span>(<i> start</i>, <i> end</i>)</p></td></tr></table><p>Removes the section of text that is between the start and end positions from the <a href="index.html">TextArea</a>.</p>
<!-- @@@remove -->
<br/>
<!-- $$$select -->
<table class="qmlname"><tr valign="top" id="select-method"><td class="tblQmlFuncNode"><p><span class="name">select</span>(<i> start</i>, <i> end</i>)</p></td></tr></table><p>Causes the text from start to end to be selected.</p>
<p>If either start or end is out of range, the selection is not changed.</p>
<p>After calling this, <a href="#selectionStart-prop">selectionStart</a> will become the lesser and <a href="#selectionEnd-prop">selectionEnd</a> will become the greater (regardless of the order passed to this method).</p>
<p>See also <a href="#selectionStart-prop">selectionStart</a> and <a href="#selectionEnd-prop">selectionEnd</a>.</p>
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
