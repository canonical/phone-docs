---
Title: Ubuntu.Components.TextArea
---
        
TextArea
========

<span class="subtitle"></span>
The TextArea item displays a block of editable, scrollable, formatted text. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.Ubuntu.md">Ubuntu</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[autoSize](#autoSize-prop)**** : bool
-   ****[baseUrl](#baseUrl-prop)**** : url
-   ****[canPaste](#canPaste-prop)**** : bool
-   ****[canRedo](#canRedo-prop)**** : bool
-   ****[canUndo](#canUndo-prop)**** : bool
-   ****[color](#color-prop)**** : color
-   ****[contentHeight](#contentHeight-prop)**** : real
-   ****[contentWidth](#contentWidth-prop)**** : real
-   ****[cursorDelegate](#cursorDelegate-prop)**** : Component
-   ****[cursorPosition](#cursorPosition-prop)**** : int
-   ****[cursorRectangle](#cursorRectangle-prop)**** : rectangle
-   ****[cursorVisible](#cursorVisible-prop)**** : bool
-   ****[displayText](#displayText-prop)**** : string
-   ****[effectiveHorizontalAlignment](#effectiveHorizontalAlignment-prop)**** : enumeration
-   ****[font](#font-prop)**** : font
-   ****[highlighted](#highlighted-prop)**** : bool
-   ****[horizontalAlignment](#horizontalAlignment-prop)**** : enumeration
-   ****[inputMethodComposing](#inputMethodComposing-prop)**** : bool
-   ****[inputMethodHints](#inputMethodHints-prop)**** : enumeration
-   ****[length](#length-prop)**** : int
-   ****[lineCount](#lineCount-prop)**** : int
-   ****[maximumLineCount](#maximumLineCount-prop)**** : int
-   ****[mouseSelectionMode](#mouseSelectionMode-prop)**** : enumeration
-   ****[paintedHeight](#paintedHeight-prop)**** : real
-   ****[paintedWidth](#paintedWidth-prop)**** : real
-   ****[persistentSelection](#persistentSelection-prop)**** : enumeration
-   ****[placeholderText](#placeholderText-prop)**** : string
-   ****[popover](#popover-prop)**** : var
-   ****[readOnly](#readOnly-prop)**** : bool
-   ****[renderType](#renderType-prop)**** : enumeration
-   ****[selectByMouse](#selectByMouse-prop)**** : bool
-   ****[selectedText](#selectedText-prop)**** : string
-   ****[selectedTextColor](#selectedTextColor-prop)**** : color
-   ****[selectionColor](#selectionColor-prop)**** : color
-   ****[selectionEnd](#selectionEnd-prop)**** : int
-   ****[selectionStart](#selectionStart-prop)**** : int
-   ****[text](#text-prop)**** : string
-   ****[textDocument](#textDocument-prop)**** : var
-   ****[textFormat](#textFormat-prop)**** : enumeration
-   ****[verticalAlignment](#verticalAlignment-prop)**** : enumeration
-   ****[wrapMode](#wrapMode-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[linkActivated](#linkActivated-signal)****(string *link*)

<span id="methods"></span>
Methods
-------

-   ****[copy](#copy-method)****()
-   ****[cut](#cut-method)****()
-   ****[deselect](#deselect-method)****()
-   ****[getFormattedText](#getFormattedText-method)****(*start*, *end*)
-   ****[getText](#getText-method)****(*start*, *end*)
-   ****[insert](#insert-method)****(*position*, *text*)
-   ****[isRightToLeft](#isRightToLeft-method)****(*start*, *end*)
-   ****[moveCursorSelection](#moveCursorSelection-method)****(*position*, *mode*)
-   ****[paste](#paste-method)****(*data*)
-   ****[positionAt](#positionAt-method)****(*x*, *y*)
-   ****[positionToRectangle](#positionToRectangle-method)****(*position*)
-   ****[redo](#redo-method)****()
-   ****[remove](#remove-method)****(*start*, *end*)
-   ****[select](#select-method)****(*start*, *end*)
-   ****[selectAll](#selectAll-method)****()
-   ****[selectWord](#selectWord-method)****()
-   ****[undo](#undo-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [TextArea](index.html) supports fix-size and auto-expanding modes. In fix-size mode the content is scrolled when exceeds the boundaries and can be scrolled both horizontally and vertically, depending on the [contentWidth](#contentWidth-prop) and [contentHeight](#contentHeight-prop) set. The following example will scroll the editing area both horizontally and vertically:

``` qml
TextArea {
    width: units.gu(20)
    height: units.gu(12)
    contentWidth: units.gu(30)
    contentHeight: units.gu(60)
}
```

The auto-expand mode is realized using two properties: [autoSize](#autoSize-prop) and [maximumLineCount](#maximumLineCount-prop). Setting [autoSize](#autoSize-prop) will set implicitHeight to one line, and the height will follow the line count, meaning when lines are added the area will expand and when removed the area will shrink. The [maximumLineCount](#maximumLineCount-prop) specifies how much the editor should be expanded. If this value is set to 0, the area will always expand vertically to fit the content. When [autoSize](#autoSize-prop) is set, the [contentHeight](#contentHeight-prop) property value is ignored, and the expansion only happens vertically.

``` qml
TextArea {
    width: units.gu(20)
    height: units.gu(12)
    contentWidth: units.gu(30)
    autoSize: true
    maximumLineCount: 0
}
```

[TextArea](index.html) comes with 30 grid-units implicit width and one line height on auto-sizing mode and 4 lines on fixed-mode. The line size is calculated from the font size and the ovarlay and frame spacing specified in the style.

<span id="scrolling-and-text-selection"></span>
### Scrolling and text selection

The input is activated when the tap or mouse is released after being pressed over the component.

Scrolling the editing area can happen when the size is fixed or in auto-sizing mode when the content size is bigger than the visible area. The scrolling is realized by swipe gestures, or by navigating the cursor.

The content can be selected in the following ways:

-   - double tapping/left mouse clicking over the content, when the word that had been tapped over will be selected
-   - by pressing and dragging the selection cursor over the text input. Note that there has to be a delay of approx. 200 ms between the press and drag gesture, time when the input switches from scroll mode to selection mode

The input is focused (activated) upon tap/left mouse button release. The cursor will be placed at the position the mouse/tap point at release time. If the click is happening on a selected area, the selection will be cleared. Long press above a selected area brings up the clipboard context menu. When the long press happens over a non-selected area, the cursor will be moved to the position and the component enters in selection mode. The selection mode can also be activated by tapping and keeping the tap/mouse over for approx 300 ms. If there is a move during this time, the component enters into scrolling mode. The mode is exited once the scrolling finishes. During the scrolling mode the selected text is preserved.

**Note:** During text selection all interactive parent Flickables are turned off.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoSize-prop"></span><span class="name">autoSize</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property specifies whether the text area sizes following the line count or not. The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="baseUrl-prop"></span><span class="name">baseUrl</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

This property specifies a base URL which is used to resolve relative URLs within the text. The default value is the url of the QML file instantiating the [TextArea](index.html) item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canPaste-prop"></span><span class="name">canPaste</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Returns true if the [TextArea](index.html) is writable and the content of the clipboard is suitable for pasting into the [TextArea](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canRedo-prop"></span><span class="name">canRedo</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Returns true if the [TextArea](index.html) is writable and there are undone operations that can be redone.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canUndo-prop"></span><span class="name">canUndo</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Returns true if the [TextArea](index.html) is writable and there are previous operations that can be undone.

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

The property folds the height of the text editing content. This can be equal or bigger than the frame height minus the spacing between the frame and the input area defined in the current theme. The default value is the same as the visible input area's height.

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

The property folds the width of the text editing content. This can be equal or bigger than the frame width minus the spacing between the frame and the input area defined in the current theme. The default value is the same as the visible input area's width.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cursorDelegate-prop"></span><span class="name">cursorDelegate</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

The delegate for the cursor in the [TextArea](index.html).

If you set a cursorDelegate for a [TextArea](index.html), this delegate will be used for drawing the cursor instead of the standard cursor. An instance of the delegate will be created and managed by the text edit when a cursor is needed, and the x and y properties of delegate instance will be set so as to be one pixel before the top left of the current character.

Note that the root item of the delegate component must be a [QQuickItem](http://doc.qt.io/qt-5/qquickitem.html) or [QQuickItem](http://doc.qt.io/qt-5/qquickitem.html) derived item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cursorPosition-prop"></span><span class="name">cursorPosition</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The position of the cursor in the [TextArea](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cursorRectangle-prop"></span><span class="name">cursorRectangle</span> : <span class="type">rectangle</span></p></td>
</tr>
</tbody>
</table>

The rectangle where the standard text cursor is rendered within the text edit. Read-only.

The position and height of a custom [cursorDelegate](#cursorDelegate-prop) are updated to follow the cursorRectangle automatically when it changes. The width of the delegate is unaffected by changes in the cursor rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cursorVisible-prop"></span><span class="name">cursorVisible</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true the text edit shows a cursor.

This property is set and unset when the text edit gets active focus, but it can also be set directly (useful, for example, if a KeyProxy might forward keys to it).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayText-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">displayText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property contains the text that is displayed on the screen. May differ from the text property value when [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).RichText format is selected.

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

Presents the effective horizontal alignment that can be different from the one specified at [horizontalAlignment](#horizontalAlignment-prop) due to layout mirroring.

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

The property holds the font used by the editing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlighted-prop"></span><span class="name">highlighted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property presents whether the [TextArea](index.html) is highlighted or not. By default the [TextArea](index.html) gets highlighted when gets the focus, so can accept text input. This property allows to control the highlight separately from the focused behavior.

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

Sets the horizontal alignment of the text within the TextAre item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

Valid values for [effectiveHorizontalAlignment](#effectiveHorizontalAlignment-prop) are:

-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).AlignLeft (default)
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).AlignRight
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).AlignHCenter
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).AlignJustify

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="inputMethodComposing-prop"></span><span class="name">inputMethodComposing</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the [TextArea](index.html) has partial text input from an input method.

While it is composing an input method may rely on mouse or key events from the [TextArea](index.html) to edit or commit the partial text. This property can be used to determine when to disable events handlers that may interfere with the correct operation of an input method.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="inputMethodHints-prop"></span><span class="name">inputMethodHints</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Provides hints to the input method about the expected content of the text edit and how it should operate.

The value is a bit-wise combination of flags or Qt.ImhNone if no hints are set.

Flags that alter behaviour are:

-   Qt.ImhHiddenText - Characters should be hidden, as is typically used when entering passwords.
-   Qt.ImhSensitiveData - Typed text should not be stored by the active input method in any persistent storage like predictive user dictionary.
-   Qt.ImhNoAutoUppercase - The input method should not try to automatically switch to upper case when a sentence ends.
-   Qt.ImhPreferNumbers - Numbers are preferred (but not required).
-   Qt.ImhPreferUppercase - Upper case letters are preferred (but not required).
-   Qt.ImhPreferLowercase - Lower case letters are preferred (but not required).
-   Qt.ImhNoPredictiveText - Do not use predictive text (i.e. dictionary lookup) while typing.
-   Qt.ImhDate - The text editor functions as a date field.
-   Qt.ImhTime - The text editor functions as a time field.

Flags that restrict input (exclusive flags) are:

-   Qt.ImhDigitsOnly - Only digits are allowed.
-   Qt.ImhFormattedNumbersOnly - Only number input is allowed. This includes decimal point and minus sign.
-   Qt.ImhUppercaseOnly - Only upper case letter input is allowed.
-   Qt.ImhLowercaseOnly - Only lower case letter input is allowed.
-   Qt.ImhDialableCharactersOnly - Only characters suitable for phone dialing are allowed.
-   Qt.ImhEmailCharactersOnly - Only characters suitable for email addresses are allowed.
-   Qt.ImhUrlCharactersOnly - Only characters suitable for URLs are allowed.

Masks:

-   Qt.ImhExclusiveInputMask - This mask yields nonzero if any of the exclusive flags are used.

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

Returns the total number of plain text characters in the [TextArea](index.html) item.

As this number doesn't include any formatting markup it may not be the same as the length of the string returned by the text property.

This property can be faster than querying the length the text property as it doesn't require any copying or conversion of the [TextArea](index.html)'s internal string data.

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

Returns the total number of lines in the [TextArea](index.html) item.

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

The property holds the maximum amount of lines to expand when [autoSize](#autoSize-prop) is enabled. The value of 0 does not put any upper limit and the control will expand forever.

The default value is 5 lines.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseSelectionMode-prop"></span><span class="name">mouseSelectionMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Specifies how text should be selected using a mouse.

-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).SelectCharacters - The selection is updated with individual characters. (Default)
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).SelectWords - The selection is updated with whole words.

This property only applies when [selectByMouse](#selectByMouse-prop) is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paintedHeight-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">paintedHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Exposes the paintedHeight of the underlying text component. It's required if the application uses its own Flickable for scrolling.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paintedWidth-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">paintedWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Exposes the paintedWidth of the underlying text component. It's required if the application uses its own Flickable for scrolling.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="persistentSelection-prop"></span><span class="name">persistentSelection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Whether the [TextArea](index.html) should keep the selection visible when it loses active focus to another item in the scene. By default this is set to true;

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="placeholderText-prop"></span><span class="name">placeholderText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Text that appears when there is no focus and no content in the component (hint text).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="popover-prop"></span><span class="name">popover</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

The property overrides the default popover of the [TextArea](index.html). When set, the [TextArea](index.html) will open the given popover instead of the default one defined. The popover can either be a component or a URL to be loaded.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="readOnly-prop"></span><span class="name">readOnly</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the user can interact with the [TextArea](index.html) item. If this property is set to true the text cannot be edited by user interaction.

By default this property is false.

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
<td><p><span id="selectByMouse-prop"></span><span class="name">selectByMouse</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property drives whether text selection should happen with the mouse or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedText-prop"></span><span class="name">selectedText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This read-only property provides the text currently selected in the text edit.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedTextColor-prop"></span><span class="name">selectedTextColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The selected text color, used in selections.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectionColor-prop"></span><span class="name">selectionColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The text highlight color, used behind selections.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectionEnd-prop"></span><span class="name">selectionEnd</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The cursor position after the last character in the current selection.

This property is read-only. To change the selection, use select(start, end), [selectAll()](#selectAll-method), or [selectWord()](#selectWord-method).

See also [selectionStart](#selectionStart-prop), [cursorPosition](#cursorPosition-prop), and [selectedText](#selectedText-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectionStart-prop"></span><span class="name">selectionStart</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The cursor position before the first character in the current selection.

This property is read-only. To change the selection, use select(start, end), [selectAll()](#selectAll-method), or [selectWord()](#selectWord-method).

See also [selectionEnd](#selectionEnd-prop), [cursorPosition](#cursorPosition-prop), and [selectedText](#selectedText-prop).

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

The text to display. If the text format is AutoText the text edit will automatically determine whether the text should be treated as rich text. This determination is made using Qt::mightBeRichText().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textDocument-prop"></span><span class="name">textDocument</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

Exposes the [QQuickTextDocument](http://doc.qt.io/qt-5/qquicktextdocument.html) which can be used to implement advanced formatting and syntax highlighting (QSyntaxHighlighter) with C++.

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

-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).AutoText
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).PlainText
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).RichText

The default is [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).PlainText. If the text format is [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).AutoText the text edit will automatically determine whether the text should be treated as rich text. This determination is made using Qt::mightBeRichText().

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

Sets the vertical alignment of the text within the TextAres item's width and height. By default, the text alignment follows the natural alignment of the text.

Valid values for verticalAlignment are:

-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).AlignTop (default)
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).AlignBottom
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).AlignVCenter

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

Set this property to wrap the text to the [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md) item's width. The text will only wrap if an explicit width has been set.

-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).NoWrap - no wrapping will be performed. If the text contains insufficient newlines, then implicitWidth will exceed a set width.
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).WordWrap - wrapping is done on word boundaries only. If a word is too long, implicitWidth will exceed a set width.
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).WrapAnywhere - wrapping is done at any point on a line, even if it occurs in the middle of a word.
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).Wrap - if possible, wrapping occurs at a word boundary; otherwise it will occur at the appropriate point on the line, even in the middle of a word.

The default is [TextEdit](../../sdk-14.10/QtQuick.TextEdit.md).Wrap

Signal Documentation
--------------------

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

This handler is called when the user clicks on a link embedded in the text. The link must be in rich text or HTML format and the link string provides access to the particular link.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="copy-method"></span><span class="name">copy</span>()</p></td>
</tr>
</tbody>
</table>

Copies the currently selected text to the system clipboard.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cut-method"></span><span class="name">cut</span>()</p></td>
</tr>
</tbody>
</table>

Moves the currently selected text to the system clipboard.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="deselect-method"></span><span class="name">deselect</span>()</p></td>
</tr>
</tbody>
</table>

Removes active text selection.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getFormattedText-method"></span><span class="name">getFormattedText</span>( <em>start</em>, <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the section of text that is between the start and end positions.

The returned text will be formatted according the [textFormat](#textFormat-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getText-method"></span><span class="name">getText</span>( <em>start</em>, <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the section of text that is between the start and end positions.

The returned text does not include any rich text formatting. A getText(0, length) will result in the same value as [displayText](#displayText-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="insert-method"></span><span class="name">insert</span>( <em>position</em>, <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Inserts text into the [TextArea](index.html) at position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isRightToLeft-method"></span><span class="name">isRightToLeft</span>( <em>start</em>, <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if the natural reading direction of the editor text found between positions start and end is right to left.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCursorSelection-method"></span><span class="name">moveCursorSelection</span>( <em>position</em>, <em>mode</em>)</p></td>
</tr>
</tbody>
</table>

Moves the cursor to position and updates the selection according to the optional mode parameter. (To only move the cursor, set the [cursorPosition](#cursorPosition-prop) property.)

When this method is called it additionally sets either the [selectionStart](#selectionStart-prop) or the [selectionEnd](#selectionEnd-prop) (whichever was at the previous cursor position) to the specified position. This allows you to easily extend and contract the selected text range.

The selection mode specifies whether the selection is updated on a per character or a per word basis. If not specified the selection mode will default to whatever is given in the [mouseSelectionMode](#mouseSelectionMode-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paste-method"></span><span class="name">paste</span>( <em>data</em>)</p></td>
</tr>
</tbody>
</table>

Places the clipboard or the data given as parameter into the text input. The selected text will be replaces with the data.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionAt-method"></span><span class="name">positionAt</span>( <em>x</em>, <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns the text position closest to pixel position (x, y).

Position 0 is before the first character, position 1 is after the first character but before the second, and so on until position text.length, which is after all characters.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionToRectangle-method"></span><span class="name">positionToRectangle</span>( <em>position</em>)</p></td>
</tr>
</tbody>
</table>

Returns the rectangle at the given position in the text. The x, y, and height properties correspond to the cursor that would describe that position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="redo-method"></span><span class="name">redo</span>()</p></td>
</tr>
</tbody>
</table>

Redoes the last operation if redo is [available](#canRedo-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-method"></span><span class="name">remove</span>( <em>start</em>, <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Removes the section of text that is between the start and end positions from the [TextArea](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="select-method"></span><span class="name">select</span>( <em>start</em>, <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Causes the text from start to end to be selected.

If either start or end is out of range, the selection is not changed.

After calling this, [selectionStart](#selectionStart-prop) will become the lesser and [selectionEnd](#selectionEnd-prop) will become the greater (regardless of the order passed to this method).

See also [selectionStart](#selectionStart-prop) and [selectionEnd](#selectionEnd-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectAll-method"></span><span class="name">selectAll</span>()</p></td>
</tr>
</tbody>
</table>

Causes all text to be selected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectWord-method"></span><span class="name">selectWord</span>()</p></td>
</tr>
</tbody>
</table>

Causes the word closest to the current cursor position to be selected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="undo-method"></span><span class="name">undo</span>()</p></td>
</tr>
</tbody>
</table>

Undoes the last operation if undo is [available](#canUndo-prop). Deselects any current selection, and updates the selection start to the current cursor position.

