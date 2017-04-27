---
Title: Ubuntu.Components.TextField
---

# Ubuntu.Components.TextField

<span class="subtitle"></span>
<!-- $$$TextField-brief -->
<p>The TextField element displays a single line of editable plain text. Input constraints can be set through validator or inputMask. Setting echoMode to an appropriate value enables TextField to be used as password input field. More...</p>
<!-- @@@TextField -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Ubuntu.md">Ubuntu</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#acceptableInput-prop">acceptableInput</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#activeFocusOnPress-prop">activeFocusOnPress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#autoScroll-prop">autoScroll</a></b></b> : bool</li>
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
<li class="fn"><b><b><a href="#echoMode-prop">echoMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#effectiveHorizontalAlignment-prop">effectiveHorizontalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#errorHighlight-prop">errorHighlight</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#font-prop">font</a></b></b> : font</li>
<li class="fn"><b><b><a href="#hasClearButton-prop">hasClearButton</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#highlighted-prop">highlighted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#horizontalAlignment-prop">horizontalAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#inputMask-prop">inputMask</a></b></b> : string</li>
<li class="fn"><b><b><a href="#inputMethodComposing-prop">inputMethodComposing</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#inputMethodHints-prop">inputMethodHints</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#length-prop">length</a></b></b> : int</li>
<li class="fn"><b><b><a href="#maximumLength-prop">maximumLength</a></b></b> : int</li>
<li class="fn"><b><b><a href="#mouseSelectionMode-prop">mouseSelectionMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#passwordCharacter-prop">passwordCharacter</a></b></b> : string</li>
<li class="fn"><b><b><a href="#persistentSelection-prop">persistentSelection</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#placeholderText-prop">placeholderText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#popover-prop">popover</a></b></b> : var</li>
<li class="fn"><b><b><a href="#primaryItem-prop">primaryItem</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#readOnly-prop">readOnly</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#renderType-prop">renderType</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#secondaryItem-prop">secondaryItem</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#selectByMouse-prop">selectByMouse</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectedText-prop">selectedText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#selectedTextColor-prop">selectedTextColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#selectionColor-prop">selectionColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#selectionEnd-prop">selectionEnd</a></b></b> : int</li>
<li class="fn"><b><b><a href="#selectionStart-prop">selectionStart</a></b></b> : int</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#validator-prop">validator</a></b></b> : Validator</li>
<li class="fn"><b><b><a href="#verticalAlignment-prop">verticalAlignment</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#accepted-signal">accepted</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#copy-method">copy</a></b></b>()</li>
<li class="fn"><b><b><a href="#cut-method">cut</a></b></b>()</li>
<li class="fn"><b><b><a href="#deselect-method">deselect</a></b></b>()</li>
<li class="fn"><b><b><a href="#getText-method">getText</a></b></b>(<i>start</i>,  <i>end</i>)</li>
<li class="fn"><b><b><a href="#insert-method">insert</a></b></b>(<i>position</i>,  <i>text</i>)</li>
<li class="fn"><b><b><a href="#isRightToLeft-method">isRightToLeft</a></b></b>(<i>start</i>,  <i>end</i>)</li>
<li class="fn"><b><b><a href="#moveCursorSelection-method">moveCursorSelection</a></b></b>(<i>position</i>,  <i>mode</i>)</li>
<li class="fn"><b><b><a href="#paste-method">paste</a></b></b>(<i>data</i>)</li>
<li class="fn"><b><b><a href="#positionAt-method">positionAt</a></b></b>(<i>x</i>,  <i>position</i>)</li>
<li class="fn"><b><b><a href="#positionToRectangle-method">positionToRectangle</a></b></b>(<i>pos</i>)</li>
<li class="fn"><b><b><a href="#redo-method">redo</a></b></b>()</li>
<li class="fn"><b><b><a href="#remove-method">remove</a></b></b>(<i>start</i>,  <i>end</i>)</li>
<li class="fn"><b><b><a href="#select-method">select</a></b></b>(<i>start</i>,  <i>end</i>)</li>
<li class="fn"><b><b><a href="#selectAll-method">selectAll</a></b></b>()</li>
<li class="fn"><b><b><a href="#selectWord-method">selectWord</a></b></b>()</li>
<li class="fn"><b><b><a href="#undo-method">undo</a></b></b>()</li>
</ul>
<!-- $$$TextField-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="https://design.ubuntu.com/apps/design/building-blocks/text-input.md#text-field">See also the Design Guidelines on the Text Field</a>.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="index.html">TextField</a></span> {
<span class="name">placeholderText</span>: <span class="string">&quot;hint text&quot;</span>
}
<span class="type"><a href="index.html">TextField</a></span> {
<span class="name">placeholderText</span>: <span class="string">&quot;without clear sign&quot;</span>
<span class="name">hasClearButton</span>: <span class="number">false</span>
}
<span class="type"><a href="index.html">TextField</a></span> {
<span class="name">placeholderText</span>: <span class="string">&quot;password&quot;</span>
<span class="name">echoMode</span>: <span class="name">TextInput</span>.<span class="name">Password</span>
}
<span class="type"><a href="index.html">TextField</a></span> {
<span class="name">placeholderText</span>: <span class="string">&quot;overlaid in front&quot;</span>
<span class="name">primaryItem</span>: <span class="name">Image</span> {
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">width</span>: <span class="name">height</span>
<span class="name">source</span>: <span class="string">&quot;magnifier.png&quot;</span>
}
<span class="name">secondaryItem</span>: <span class="name">Row</span> {
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">width</span>: <span class="name">height</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">onClicked</span>: <span class="name">doSomething</span>()
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">width</span>: <span class="name">height</span>
<span class="name">iconName</span>: <span class="string">&quot;undo&quot;</span>
<span class="name">onClicked</span>: <span class="name">doSomething</span>()
}
}
}
}</pre>
<h3 >Scrolling and text selection</h3>
<p>The input is activated when the tap or mouse is released after being pressed over the component.</p>
<p>The text can be scrolled horizontally by swiping over the content both when the component is active or inactive.</p>
<p>The content can be selected in the following ways:</p>
<ul>
<li>- double tapping/left mouse clicking over the content, when the word that had been tapped over will be selected</li>
<li>- by pressing and dragging the selection cursor over the text input. Note that there has to be a delay of approx. 200 ms between the press and drag gesture, time when the input switches from scroll mode to selection mode</li>
</ul>
<p>The input is focused (activated) upon tap/left mouse button release. The cursor will be placed at the position the mouse/tap point at release time. If the click is happening on a selected area, the selection will be cleared. Long press above a selected area brings up the clipboard context menu. When the long press happens over a non-selected area, the cursor will be moved to the position and the component enters in selection mode. The selection mode can also be activated by tapping and keeping the tap/mouse over for approx 300 ms. If there is a move during this time, the component enters into scrolling mode. The mode is exited once the scrolling finishes. During the scrolling mode the selected text is preserved.</p>
<p><b>Note: </b>During text selection all interactive parent Flickables are turned off.</p><!-- @@@TextField -->
<h2>Property Documentation</h2>
<!-- $$$acceptableInput -->
<table class="qmlname"><tr valign="top" id="acceptableInput-prop"><td class="tblQmlPropNode"><p><span class="name">acceptableInput</span> : <span class="type">bool</span></p></td></tr></table><p>This property is always true unless a validator or input mask has been set. If a validator or input mask has been set, this property will only be true if the current text is acceptable to the validator or input mask as a final string (not as an intermediate string).</p>
<!-- @@@acceptableInput -->
<br/>
<!-- $$$activeFocusOnPress -->
<table class="qmlname"><tr valign="top" id="activeFocusOnPress-prop"><td class="tblQmlPropNode"><p><span class="name">activeFocusOnPress</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the <a href="index.html">TextField</a> should gain active focus on a mouse press. By default this is set to true.</p>
<!-- @@@activeFocusOnPress -->
<br/>
<!-- $$$autoScroll -->
<table class="qmlname"><tr valign="top" id="autoScroll-prop"><td class="tblQmlPropNode"><p><span class="name">autoScroll</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the <a href="index.html">TextField</a> should scroll when the text is longer than the width. By default this is set to true.</p>
<!-- @@@autoScroll -->
<br/>
<!-- $$$canPaste -->
<table class="qmlname"><tr valign="top" id="canPaste-prop"><td class="tblQmlPropNode"><p><span class="name">canPaste</span> : <span class="type">bool</span></p></td></tr></table><p>Returns true if the <a href="index.html">TextField</a> is writable and the content of the clipboard is suitable for pasting into the <a href="index.html">TextField</a>.</p>
<!-- @@@canPaste -->
<br/>
<!-- $$$canRedo -->
<table class="qmlname"><tr valign="top" id="canRedo-prop"><td class="tblQmlPropNode"><p><span class="name">canRedo</span> : <span class="type">bool</span></p></td></tr></table><p>Returns true if the <a href="index.html">TextField</a> is writable and there are undone operations that can be redone.</p>
<!-- @@@canRedo -->
<br/>
<!-- $$$canUndo -->
<table class="qmlname"><tr valign="top" id="canUndo-prop"><td class="tblQmlPropNode"><p><span class="name">canUndo</span> : <span class="type">bool</span></p></td></tr></table><p>Returns true if the <a href="index.html">TextField</a> is writable and there are previous operations that can be undone.</p>
<!-- @@@canUndo -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>The text color.</p>
<!-- @@@color -->
<br/>
<!-- $$$contentHeight -->
<table class="qmlname"><tr valign="top" id="contentHeight-prop"><td class="tblQmlPropNode"><p><span class="name">contentHeight</span> : <span class="type">real</span></p></td></tr></table><p>Returns the height of the text, including the height past the height that is covered if the text does not fit within the set height.</p>
<!-- @@@contentHeight -->
<br/>
<!-- $$$contentWidth -->
<table class="qmlname"><tr valign="top" id="contentWidth-prop"><td class="tblQmlPropNode"><p><span class="name">contentWidth</span> : <span class="type">real</span></p></td></tr></table><p>Returns the width of the text, including the width past the width which is covered due to insufficient wrapping if wrapMode is set.</p>
<!-- @@@contentWidth -->
<br/>
<!-- $$$cursorDelegate -->
<table class="qmlname"><tr valign="top" id="cursorDelegate-prop"><td class="tblQmlPropNode"><p><span class="name">cursorDelegate</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>The delegate for the cursor in the <a href="index.html">TextField</a>.</p>
<p>If you set a cursorDelegate for a <a href="index.html">TextField</a>, this delegate will be used for drawing the cursor instead of the standard cursor. An instance of the delegate will be created and managed by the <a href="index.html">TextField</a> when a cursor is needed, and the x property of delegate instance will be set so as to be one pixel before the top left of the current character.</p>
<p>Note that the root item of the delegate component must be a <a href="http://doc.qt.io/qt-5/qquickitem.html">QQuickItem</a> or <a href="http://doc.qt.io/qt-5/qquickitem.html">QQuickItem</a> derived item.</p>
<!-- @@@cursorDelegate -->
<br/>
<!-- $$$cursorPosition -->
<table class="qmlname"><tr valign="top" id="cursorPosition-prop"><td class="tblQmlPropNode"><p><span class="name">cursorPosition</span> : <span class="type">int</span></p></td></tr></table><p>The position of the cursor in the <a href="index.html">TextField</a>.</p>
<!-- @@@cursorPosition -->
<br/>
<!-- $$$cursorRectangle -->
<table class="qmlname"><tr valign="top" id="cursorRectangle-prop"><td class="tblQmlPropNode"><p><span class="name">cursorRectangle</span> : <span class="type">rectangle</span></p></td></tr></table><p>The rectangle where the standard text cursor is rendered within the text input. Read only.</p>
<p>The position and height of a custom <a href="#cursorDelegate-prop">cursorDelegate</a> are updated to follow the cursorRectangle automatically when it changes. The width of the delegate is unaffected by changes in the cursor rectangle.</p>
<!-- @@@cursorRectangle -->
<br/>
<!-- $$$cursorVisible -->
<table class="qmlname"><tr valign="top" id="cursorVisible-prop"><td class="tblQmlPropNode"><p><span class="name">cursorVisible</span> : <span class="type">bool</span></p></td></tr></table><p>Set to true when the <a href="index.html">TextField</a> shows a cursor.</p>
<p>This property is set and unset when the <a href="index.html">TextField</a> gets active focus, so that other properties can be bound to whether the cursor is currently showing. As it gets set and unset automatically, when you set the value yourself you must keep in mind that your value may be overwritten.</p>
<p>It can be set directly in script, for example if a KeyProxy might forward keys to it and you desire it to look active when this happens (but without actually giving it active focus).</p>
<p>It should not be set directly on the item, like in the below QML, as the specified value will be overridden an lost on focus changes.</p>
<pre class="qml"><span class="type"><a href="index.html">TextField</a></span> {
<span class="name">text</span>: <span class="string">&quot;Text&quot;</span>
<span class="name">cursorVisible</span>: <span class="number">false</span>
}</pre>
<p>In the above snippet the cursor will still become visible when the <a href="index.html">TextField</a> gains active focus.</p>
<!-- @@@cursorVisible -->
<br/>
<!-- $$$displayText -->
<table class="qmlname"><tr valign="top" id="displayText-prop"><td class="tblQmlPropNode"><p><span class="name">displayText</span> : <span class="type">string</span></p></td></tr></table><p>This is the text displayed in the <a href="index.html">TextField</a>.</p>
<p>If <a href="#echoMode-prop">echoMode</a> is set to TextInput::Normal, this holds the same value as the <a href="#text-prop">text</a> property. Otherwise, this property holds the text visible to the user, while the text property holds the actual entered text.</p>
<!-- @@@displayText -->
<br/>
<!-- $$$echoMode -->
<table class="qmlname"><tr valign="top" id="echoMode-prop"><td class="tblQmlPropNode"><p><span class="name">echoMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Specifies how the text should be displayed in the <a href="index.html">TextField</a>.</p>
<ul>
<li>- <a href="QtQuick.TextInput.md">TextInput</a>.Normal - Displays the text as it is. (Default)</li>
<li>- <a href="QtQuick.TextInput.md">TextInput</a>.Password - Displays asterixes instead of characters.</li>
<li>- <a href="QtQuick.TextInput.md">TextInput</a>.NoEcho - Displays nothing.</li>
<li>- <a href="QtQuick.TextInput.md">TextInput</a>.PasswordEchoOnEdit - Displays characters as they are entered while editing, otherwise displays asterisks.</li>
</ul>
<!-- @@@echoMode -->
<br/>
<!-- $$$effectiveHorizontalAlignment -->
<table class="qmlname"><tr valign="top" id="effectiveHorizontalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">effectiveHorizontalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>See <a href="#horizontalAlignment-prop">horizontalAlignment</a> for details.</p>
<!-- @@@effectiveHorizontalAlignment -->
<br/>
<!-- $$$errorHighlight -->
<table class="qmlname"><tr valign="top" id="errorHighlight-prop"><td class="tblQmlPropNode"><p><span class="name">errorHighlight</span> : <span class="type">bool</span></p></td></tr></table><p>Allows highlighting errors in the <a href="index.html">TextField</a>.</p>
<!-- @@@errorHighlight -->
<br/>
<!-- $$$font -->
<table class="qmlname"><tr valign="top" id="font-prop"><td class="tblQmlPropNode"><p><span class="name">font</span> : <span class="type"><a href="#font-prop">font</a></span></p></td></tr></table><p>Font used in the <a href="index.html">TextField</a>.</p>
<!-- @@@font -->
<br/>
<!-- $$$hasClearButton -->
<table class="qmlname"><tr valign="top" id="hasClearButton-prop"><td class="tblQmlPropNode"><p><span class="name">hasClearButton</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the control has a clear button or not.</p>
<!-- @@@hasClearButton -->
<br/>
<!-- $$$highlighted -->
<table class="qmlname"><tr valign="top" id="highlighted-prop"><td class="tblQmlPropNode"><p><span class="name">highlighted</span> : <span class="type">bool</span></p></td></tr></table><p>The property presents whether the <a href="index.html">TextField</a> is highlighted or not. By default the <a href="index.html">TextField</a> gets highlighted when gets the focus, so can accept text input. This property allows to control the highlight separately from the focused behavior.</p>
<!-- @@@highlighted -->
<br/>
<!-- $$$horizontalAlignment -->
<table class="qmlname"><tr valign="top" id="horizontalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">horizontalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal alignment of the text within the item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.</p>
<p><a href="index.html">TextField</a> does not have vertical alignment, as the natural height is exactly the height of the single line of text. If you set the height manually to something larger, <a href="QtQuick.TextInput.md">TextInput</a> will always be top aligned vertically. You can use anchors to align it however you want within another item.</p>
<p>The valid values for horizontalAlignment are <a href="QtQuick.TextInput.md">TextInput</a>.AlignLeft, <a href="QtQuick.TextInput.md">TextInput</a>.AlignRight and <a href="QtQuick.TextInput.md">TextInput</a>.AlignHCenter.</p>
<p>Valid values for <a href="#verticalAlignment-prop">verticalAlignment</a> are <a href="QtQuick.TextInput.md">TextInput</a>.AlignTop (default), <a href="QtQuick.TextInput.md">TextInput</a>.AlignBottom <a href="QtQuick.TextInput.md">TextInput</a>.AlignVCenter.</p>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property horizontalAlignment will remain unchanged. To query the effective horizontal alignment of <a href="index.html">TextField</a>, use the read-only property <a href="#effectiveHorizontalAlignment-prop">effectiveHorizontalAlignment</a>.</p>
<!-- @@@horizontalAlignment -->
<br/>
<!-- $$$inputMask -->
<table class="qmlname"><tr valign="top" id="inputMask-prop"><td class="tblQmlPropNode"><p><span class="name">inputMask</span> : <span class="type">string</span></p></td></tr></table><p>Allows you to set an input mask on the <a href="index.html">TextField</a>, restricting the text inputs. See QLineEdit::inputMask for further details, as the exact same mask strings are used by <a href="index.html">TextField</a>.</p>
<p>Note that when using an inputMask together with <a href="#echoMode-prop">echoMode</a> to hide the input the empty <a href="index.html">TextField</a> may still show masked characters - consider <a href="#validator-prop">validator</a> instead.</p>
<p><b>See also </b><a href="#acceptableInput-prop">acceptableInput</a> and <a href="#validator-prop">validator</a>.</p>
<!-- @@@inputMask -->
<br/>
<!-- $$$inputMethodComposing -->
<table class="qmlname"><tr valign="top" id="inputMethodComposing-prop"><td class="tblQmlPropNode"><p><span class="name">inputMethodComposing</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the <a href="QtQuick.TextInput.md">TextInput</a> has partial text input from an input method.</p>
<p>While it is composing an input method may rely on mouse or key events from the <a href="index.html">TextField</a> to edit or commit the partial text. This property can be used to determine when to disable events handlers that may interfere with the correct operation of an input method.</p>
<!-- @@@inputMethodComposing -->
<br/>
<!-- $$$inputMethodHints -->
<table class="qmlname"><tr valign="top" id="inputMethodHints-prop"><td class="tblQmlPropNode"><p><span class="name">inputMethodHints</span> : <span class="type">enumeration</span></p></td></tr></table><p>Provides hints to the input method about the expected content of the text input and how it should operate.</p>
<p>The value is a bit-wise combination of flags, or Qt.ImhNone if no hints are set.</p>
<p>Flags that alter behaviour are:</p>
<ul>
<li>- Qt.ImhHiddenText - Characters should be hidden, as is typically used when entering passwords. This is automatically set when setting <a href="#echoMode-prop">echoMode</a> to <code>TextInput.Password</code>.</li>
<li>- Qt.ImhSensitiveData - Typed text should not be stored by the active input method in any persistent storage like predictive user dictionary.</li>
<li>- Qt.ImhNoAutoUppercase - The input method should not try to automatically switch to upper case when a sentence ends.</li>
<li>- Qt.ImhPreferNumbers - Numbers are preferred (but not required).</li>
<li>- Qt.ImhPreferUppercase - Upper case letters are preferred (but not required).</li>
<li>- Qt.ImhPreferLowercase - Lower case letters are preferred (but not required).</li>
<li>- Qt.ImhNoPredictiveText - Do not use predictive text (i.e&#x2e; dictionary lookup) while typing.</li>
<li>- Qt.ImhDate - The text editor functions as a date field.</li>
<li>- Qt.ImhTime - The text editor functions as a time field.</li>
</ul>
<p>Flags that restrict input (exclusive flags) are:</p>
<ul>
<li>- Qt.ImhDigitsOnly - Only digits are allowed.</li>
<li>- Qt.ImhFormattedNumbersOnly - Only number input is allowed. This includes decimal point and minus sign.</li>
<li>- Qt.ImhUppercaseOnly - Only upper case letter input is allowed.</li>
<li>- Qt.ImhLowercaseOnly - Only lower case letter input is allowed.</li>
<li>- Qt.ImhDialableCharactersOnly - Only characters suitable for phone dialing are allowed.</li>
<li>- Qt.ImhEmailCharactersOnly - Only characters suitable for email addresses are allowed.</li>
<li>- Qt.ImhUrlCharactersOnly - Only characters suitable for URLs are allowed.</li>
</ul>
<p>Masks:</p>
<ul>
<li>- Qt.ImhExclusiveInputMask - This mask yields nonzero if any of the exclusive flags are used.</li>
</ul>
<!-- @@@inputMethodHints -->
<br/>
<!-- $$$length -->
<table class="qmlname"><tr valign="top" id="length-prop"><td class="tblQmlPropNode"><p><span class="name">length</span> : <span class="type">int</span></p></td></tr></table><p>Returns the total number of characters in the <a href="index.html">TextField</a> item.</p>
<p>If the <a href="index.html">TextField</a> has an <a href="#inputMask-prop">inputMask</a> the length will include mask characters and may differ from the length of the string returned by the text property.</p>
<p>This property can be faster than querying the length the text property as it doesn't require any copying or conversion of the <a href="index.html">TextField</a>'s internal string data.</p>
<!-- @@@length -->
<br/>
<!-- $$$maximumLength -->
<table class="qmlname"><tr valign="top" id="maximumLength-prop"><td class="tblQmlPropNode"><p><span class="name">maximumLength</span> : <span class="type">int</span></p></td></tr></table><p>The maximum permitted length of the text in the <a href="index.html">TextField</a>.</p>
<p>If the text is too long, it is truncated at the limit.</p>
<p>By default, this property contains a value of 32767.</p>
<!-- @@@maximumLength -->
<br/>
<!-- $$$mouseSelectionMode -->
<table class="qmlname"><tr valign="top" id="mouseSelectionMode-prop"><td class="tblQmlPropNode"><p><span class="name">mouseSelectionMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Specifies how text should be selected using a mouse.</p>
<ul>
<li>-<a href="QtQuick.TextInput.md">TextInput</a>.SelectCharacters - The selection is updated with individual characters. (Default)</li>
<li>-<a href="QtQuick.TextInput.md">TextInput</a>.SelectWords - The selection is updated with whole words.</li>
</ul>
<p>This property only applies when <a href="#selectByMouse-prop">selectByMouse</a> is true.</p>
<!-- @@@mouseSelectionMode -->
<br/>
<!-- $$$passwordCharacter -->
<table class="qmlname"><tr valign="top" id="passwordCharacter-prop"><td class="tblQmlPropNode"><p><span class="name">passwordCharacter</span> : <span class="type">string</span></p></td></tr></table><p>This is the character displayed when <a href="#echoMode-prop">echoMode</a> is set to Password or PasswordEchoOnEdit. By default it is the unicode character 2022.</p>
<p>If this property is set to a string with more than one character, the first character is used. If the string is empty, the value is ignored and the property is not set.</p>
<!-- @@@passwordCharacter -->
<br/>
<!-- $$$persistentSelection -->
<table class="qmlname"><tr valign="top" id="persistentSelection-prop"><td class="tblQmlPropNode"><p><span class="name">persistentSelection</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the <a href="index.html">TextField</a> should keep its selection when it loses active focus to another item in the scene. By default this is set to false.</p>
<!-- @@@persistentSelection -->
<br/>
<!-- $$$placeholderText -->
<table class="qmlname"><tr valign="top" id="placeholderText-prop"><td class="tblQmlPropNode"><p><span class="name">placeholderText</span> : <span class="type">string</span></p></td></tr></table><p>Text that appears when there is no content in the component.</p>
<!-- @@@placeholderText -->
<br/>
<!-- $$$popover -->
<table class="qmlname"><tr valign="top" id="popover-prop"><td class="tblQmlPropNode"><p><span class="name">popover</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>The property overrides the default popover of the <a href="index.html">TextField</a>. When set, the <a href="index.html">TextField</a> will open the given popover instead of the default one defined. The popover can either be a component or a URL to be loaded.</p>
<!-- @@@popover -->
<br/>
<!-- $$$primaryItem -->
<table class="qmlname"><tr valign="top" id="primaryItem-prop"><td class="tblQmlPropNode"><p><span class="name">primaryItem</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>Overlaid component that can be set for the fore side of the <a href="index.html">TextField</a>, e.g&#x2e;showing a magnifier to implement search functionality.</p>
<!-- @@@primaryItem -->
<br/>
<!-- $$$readOnly -->
<table class="qmlname"><tr valign="top" id="readOnly-prop"><td class="tblQmlPropNode"><p><span class="name">readOnly</span> : <span class="type">bool</span></p></td></tr></table><p>Sets whether user input can modify the contents of the <a href="index.html">TextField</a>.</p>
<p>If readOnly is set to true, then user input will not affect the text property. Any bindings or attempts to set the text property will still work.</p>
<!-- @@@readOnly -->
<br/>
<!-- $$$renderType -->
<table class="qmlname"><tr valign="top" id="renderType-prop"><td class="tblQmlPropNode"><p><span class="name">renderType</span> : <span class="type">enumeration</span></p></td></tr></table><p>Override the default rendering type for this component.</p>
<p>Supported render types are:</p>
<ul>
<li>- Text.QtRendering - (default)</li>
<li>- Text.NativeRendering</li>
</ul>
<p>Select Text.NativeRendering if you prefer text to look native on the target platform and do not require advanced features such as transformation of the text. Using such features in combination with the NativeRendering render type will lend poor and sometimes pixelated results.</p>
<!-- @@@renderType -->
<br/>
<!-- $$$secondaryItem -->
<table class="qmlname"><tr valign="top" id="secondaryItem-prop"><td class="tblQmlPropNode"><p><span class="name">secondaryItem</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>Overlaid component that can be set for the rear side of the <a href="index.html">TextField</a>, e.g&#x2e;showing a CAPS LOCK or NUM LOCK indication. The overlaid components will be placed right after the clear button.</p>
<!-- @@@secondaryItem -->
<br/>
<!-- $$$selectByMouse -->
<table class="qmlname"><tr valign="top" id="selectByMouse-prop"><td class="tblQmlPropNode"><p><span class="name">selectByMouse</span> : <span class="type">bool</span></p></td></tr></table><p>Defaults to true.</p>
<p>If false, the user cannot use the mouse to select text, only can use it to focus the input.</p>
<!-- @@@selectByMouse -->
<br/>
<!-- $$$selectedText -->
<table class="qmlname"><tr valign="top" id="selectedText-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">selectedText</span> : <span class="type">string</span></p></td></tr></table><p>This read-only property provides the text currently selected in the text input.</p>
<p>It is equivalent to the following snippet, but is faster and easier to use.</p>
<pre class="cpp">myTextInput<span class="operator">.</span>text<span class="operator">.</span>toString()<span class="operator">.</span>substring(myTextInput<span class="operator">.</span>selectionStart<span class="operator">,</span>
myTextInput<span class="operator">.</span>selectionEnd);</pre>
<!-- @@@selectedText -->
<br/>
<!-- $$$selectedTextColor -->
<table class="qmlname"><tr valign="top" id="selectedTextColor-prop"><td class="tblQmlPropNode"><p><span class="name">selectedTextColor</span> : <span class="type">color</span></p></td></tr></table><p>The highlighted text color, used in selections.</p>
<!-- @@@selectedTextColor -->
<br/>
<!-- $$$selectionColor -->
<table class="qmlname"><tr valign="top" id="selectionColor-prop"><td class="tblQmlPropNode"><p><span class="name">selectionColor</span> : <span class="type">color</span></p></td></tr></table><p>The text highlight color, used behind selections.</p>
<!-- @@@selectionColor -->
<br/>
<!-- $$$selectionEnd -->
<table class="qmlname"><tr valign="top" id="selectionEnd-prop"><td class="tblQmlPropNode"><p><span class="name">selectionEnd</span> : <span class="type">int</span></p></td></tr></table><p>The cursor position after the last character in the current selection.</p>
<p>This property is read-only. To change the selection, use select(start,end), <a href="#selectAll-method">selectAll()</a>, or <a href="#selectWord-method">selectWord()</a>.</p>
<!-- @@@selectionEnd -->
<br/>
<!-- $$$selectionStart -->
<table class="qmlname"><tr valign="top" id="selectionStart-prop"><td class="tblQmlPropNode"><p><span class="name">selectionStart</span> : <span class="type">int</span></p></td></tr></table><p>The cursor position before the first character in the current selection.</p>
<p>This property is read-only. To change the selection, use select(start,end), <a href="#selectAll-method">selectAll()</a>, or <a href="#selectWord-method">selectWord()</a>.</p>
<!-- @@@selectionStart -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The text in the <a href="index.html">TextField</a>.</p>
<!-- @@@text -->
<br/>
<!-- $$$validator -->
<table class="qmlname"><tr valign="top" id="validator-prop"><td class="tblQmlPropNode"><p><span class="name">validator</span> : <span class="type">Validator</span></p></td></tr></table><p>Allows you to set a validator on the <a href="QtQuick.TextInput.md">TextInput</a>. When a validator is set the <a href="index.html">TextField</a> will only accept input which leaves the text property in an acceptable or intermediate state. The accepted signal will only be sent if the text is in an acceptable state when enter is pressed.</p>
<p>Currently supported validators are <a href="QtQuick.IntValidator.md">IntValidator</a>, <a href="QtQuick.DoubleValidator.md">DoubleValidator</a> and <a href="QtQuick.RegExpValidator.md">RegExpValidator</a>. An example of using validators is shown below, which allows input of integers between 11 and 31 into the text input:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">TextField</a></span>{
<span class="name">validator</span>: <span class="name">IntValidator</span>{<span class="name">bottom</span>: <span class="number">11</span>; <span class="name">top</span>: <span class="number">31</span>;}
<span class="name">focus</span>: <span class="number">true</span>
}</pre>
<p>The next example is for a use case of typing a PIN with masked characters.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">TextField</a></span> {
<span class="name">echoMode</span>: <span class="name">TextInput</span>.<span class="name">Password</span>
<span class="name">validator</span>: <span class="name">RegExpValidator</span> { <span class="name">regExp</span>: /^\d{4}$/ }
<span class="name">inputMethodHints</span>: <span class="name">Qt</span>.<span class="name">ImhDigitsOnly</span>
}</pre>
<p><b>See also </b><a href="#acceptableInput-prop">acceptableInput</a> and <a href="#inputMask-prop">inputMask</a>.</p>
<!-- @@@validator -->
<br/>
<!-- $$$verticalAlignment -->
<table class="qmlname"><tr valign="top" id="verticalAlignment-prop"><td class="tblQmlPropNode"><p><span class="name">verticalAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>See <a href="#horizontalAlignment-prop">horizontalAlignment</a> for details.</p>
<!-- @@@verticalAlignment -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$accepted -->
<table class="qmlname"><tr valign="top" id="accepted-signal"><td class="tblQmlFuncNode"><p><span class="name">accepted</span>()</p></td></tr></table><p>This handler is called when the Return or Enter key is pressed. Note that if there is a validator or <a href="#inputMask-prop">inputMask</a> set on the text input, the handler will only be emitted if the input is in an acceptable state.</p>
<!-- @@@accepted -->
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
<!-- $$$getText -->
<table class="qmlname"><tr valign="top" id="getText-method"><td class="tblQmlFuncNode"><p><span class="name">getText</span>(<i> start</i>, <i> end</i>)</p></td></tr></table><p>Returns the section of text that is between the start and end positions.</p>
<p>If the <a href="index.html">TextField</a> has an <a href="#inputMask-prop">inputMask</a> the length will include mask characters.</p>
<!-- @@@getText -->
<br/>
<!-- $$$insert -->
<table class="qmlname"><tr valign="top" id="insert-method"><td class="tblQmlFuncNode"><p><span class="name">insert</span>(<i> position</i>, <i> text</i>)</p></td></tr></table><p>Inserts <i>text</i> into the <a href="index.html">TextField</a> at <i>position</i>.</p>
<!-- @@@insert -->
<br/>
<!-- $$$isRightToLeft -->
<table class="qmlname"><tr valign="top" id="isRightToLeft-method"><td class="tblQmlFuncNode"><p><span class="name">isRightToLeft</span>(<i> start</i>, <i> end</i>)</p></td></tr></table><p>Returns true if the natural reading direction of the editor text found between positions start and end is right to left.</p>
<!-- @@@isRightToLeft -->
<br/>
<!-- $$$moveCursorSelection -->
<table class="qmlname"><tr valign="top" id="moveCursorSelection-method"><td class="tblQmlFuncNode"><p><span class="name">moveCursorSelection</span>(<i> position</i>, <i> mode</i>)</p></td></tr></table><p>Moves the cursor to position and updates the selection according to the optional mode parameter. (To only move the cursor, set the <a href="#cursorPosition-prop">cursorPosition</a> property.)</p>
<p>When this method is called it additionally sets either the <a href="#selectionStart-prop">selectionStart</a> or the <a href="#selectionEnd-prop">selectionEnd</a> (whichever was at the previous cursor position) to the specified position. This allows you to easily extend and contract the selected text range.</p>
<p>The selection mode specifies whether the selection is updated on a per character or a per word basis. If not specified the selection mode will default to <a href="QtQuick.TextInput.md">TextInput</a>.SelectCharacters.</p>
<ul>
<li>- <a href="QtQuick.TextInput.md">TextInput</a>.SelectCharacters - Sets either the <a href="#selectionStart-prop">selectionStart</a> or <a href="#selectionEnd-prop">selectionEnd</a> (whichever was at the previous cursor position) to the specified position.</li>
<li>- <a href="QtQuick.TextInput.md">TextInput</a>.SelectWords - Sets the <a href="#selectionStart-prop">selectionStart</a> and <a href="#selectionEnd-prop">selectionEnd</a> to include all words between the specified position and the previous cursor position. Words partially in the range are included.</li>
</ul>
<p>For example, take this sequence of calls:</p>
<pre class="cpp">cursorPosition <span class="operator">=</span> <span class="number">5</span>
moveCursorSelection(<span class="number">9</span><span class="operator">,</span> TextInput<span class="operator">.</span>SelectCharacters)
moveCursorSelection(<span class="number">7</span><span class="operator">,</span> TextInput<span class="operator">.</span>SelectCharacters)</pre>
<p>This moves the cursor to position 5, extend the selection end from 5 to 9 and then retract the selection end from 9 to 7, leaving the text from position 5 to 7 selected (the 6th and 7th characters).</p>
<p>The same sequence with <a href="QtQuick.TextInput.md">TextInput</a>.SelectWords will extend the selection start to a word boundary before or on position 5 and extend the selection end to a word boundary on or past position 9.</p>
<!-- @@@moveCursorSelection -->
<br/>
<!-- $$$paste -->
<table class="qmlname"><tr valign="top" id="paste-method"><td class="tblQmlFuncNode"><p><span class="name">paste</span>(<i> data</i>)</p></td></tr></table><p>Places the clipboard or the data given as parameter into the text input. The selected text will be replaces with the data.</p>
<!-- @@@paste -->
<br/>
<!-- $$$positionAt -->
<table class="qmlname"><tr valign="top" id="positionAt-method"><td class="tblQmlFuncNode"><p><span class="name">positionAt</span>(<i> x</i>, <i> position</i>)</p></td></tr></table><p>This function returns the character position at x pixels from the left of the <a href="index.html">TextField</a>. Position 0 is before the first character, position 1 is after the first character but before the second, and so on until position text.length, which is after all characters.</p>
<p>This means that for all x values before the first character this function returns 0, and for all x values after the last character this function returns text.length.</p>
<p>The cursor position type specifies how the cursor position should be resolved.</p>
<ul>
<li>- <a href="QtQuick.TextInput.md">TextInput</a>.CursorBetweenCharacters - Returns the position between characters that is nearest x.</li>
<li>- <a href="QtQuick.TextInput.md">TextInput</a>.CursorOnCharacter - Returns the position before the character that is nearest x.</li>
</ul>
<!-- @@@positionAt -->
<br/>
<!-- $$$positionToRectangle -->
<table class="qmlname"><tr valign="top" id="positionToRectangle-method"><td class="tblQmlFuncNode"><p><span class="name">positionToRectangle</span>(<i> pos</i>)</p></td></tr></table><p>This function takes a character position and returns the rectangle that the cursor would occupy, if it was placed at that character position.</p>
<p>This is similar to setting the <a href="#cursorPosition-prop">cursorPosition</a>, and then querying the cursor rectangle, but the <a href="#cursorPosition-prop">cursorPosition</a> is not changed.</p>
<!-- @@@positionToRectangle -->
<br/>
<!-- $$$redo -->
<table class="qmlname"><tr valign="top" id="redo-method"><td class="tblQmlFuncNode"><p><span class="name">redo</span>()</p></td></tr></table><p>Redoes the last operation if redo is <a href="#canRedo-prop">available</a>.</p>
<!-- @@@redo -->
<br/>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-method"><td class="tblQmlFuncNode"><p><span class="name">remove</span>(<i> start</i>, <i> end</i>)</p></td></tr></table><p>Removes the section of text that is between the start and end positions from the <a href="index.html">TextField</a>.</p>
<!-- @@@remove -->
<br/>
<!-- $$$select -->
<table class="qmlname"><tr valign="top" id="select-method"><td class="tblQmlFuncNode"><p><span class="name">select</span>(<i> start</i>, <i> end</i>)</p></td></tr></table><p>Causes the text from start to end to be selected.</p>
<p>If either start or end is out of range, the selection is not changed.</p>
<p>After calling this, <a href="#selectionStart-prop">selectionStart</a> will become the lesser and <a href="#selectionEnd-prop">selectionEnd</a> will become the greater (regardless of the order passed to this method).</p>
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
