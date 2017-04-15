---
Title: QtQuick.TextInput
---
        
TextInput
=========

<span class="subtitle"></span>
Displays an editable line of text More...

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

-   ****[acceptableInput](#acceptableInput-prop)**** : bool
-   ****[activeFocusOnPress](#activeFocusOnPress-prop)**** : bool
-   ****[autoScroll](#autoScroll-prop)**** : bool
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
-   ****[echoMode](#echoMode-prop)**** : enumeration
-   ****[effectiveHorizontalAlignment](#effectiveHorizontalAlignment-prop)**** : enumeration
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
-   ****[horizontalAlignment](#horizontalAlignment-prop)**** : enumeration
-   ****[inputMask](#inputMask-prop)**** : string
-   ****[inputMethodComposing](#inputMethodComposing-prop)**** : bool
-   ****[inputMethodHints](#inputMethodHints-prop)**** : enumeration
-   ****[length](#length-prop)**** : int
-   ****[maximumLength](#maximumLength-prop)**** : int
-   ****[mouseSelectionMode](#mouseSelectionMode-prop)**** : enumeration
-   ****[passwordCharacter](#passwordCharacter-prop)**** : string
-   ****[passwordMaskDelay](#passwordMaskDelay-prop)**** : int
-   ****[persistentSelection](#persistentSelection-prop)**** : bool
-   ****[readOnly](#readOnly-prop)**** : bool
-   ****[renderType](#renderType-prop)**** : enumeration
-   ****[selectByMouse](#selectByMouse-prop)**** : bool
-   ****[selectedText](#selectedText-prop)**** : string
-   ****[selectedTextColor](#selectedTextColor-prop)**** : color
-   ****[selectionColor](#selectionColor-prop)**** : color
-   ****[selectionEnd](#selectionEnd-prop)**** : int
-   ****[selectionStart](#selectionStart-prop)**** : int
-   ****[text](#text-prop)**** : string
-   ****[validator](#validator-prop)**** : Validator
-   ****[verticalAlignment](#verticalAlignment-prop)**** : enumeration
-   ****[wrapMode](#wrapMode-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[accepted](#accepted-signal)****()
-   ****[editingFinished](#editingFinished-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[copy](#copy-method)****()
-   ****[cut](#cut-method)****()
-   ****[deselect](#deselect-method)****()
-   ****[ensureVisible](#ensureVisible-method)****(int *position*)
-   string ****[getText](#getText-method)****(int *start*, int *end*)
-   ****[insert](#insert-method)****(int *position*, string *text*)
-   ****[isRightToLeft](#isRightToLeft-method)****(int *start*, int *end*)
-   ****[moveCursorSelection](#moveCursorSelection-method)****(int *position*, SelectionMode *mode*)
-   ****[paste](#paste-method)****()
-   int ****[positionAt](#positionAt-method)****(real *x*, real *y*, CursorPosition *position*)
-   rect ****[positionToRectangle](#positionToRectangle-method)****(int *pos*)
-   ****[redo](#redo-method)****()
-   ****[remove](#remove-method)****(int *start*, int *end*)
-   ****[select](#select-method)****(int *start*, int *end*)
-   ****[selectAll](#selectAll-method)****()
-   ****[selectWord](#selectWord-method)****()
-   ****[undo](#undo-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [TextInput](index.html) type displays a single line of editable plain text.

[TextInput](index.html) is used to accept a line of text input. Input constraints can be placed on a [TextInput](index.html) item (for example, through a [validator](#validator-prop) or [inputMask](#inputMask-prop)), and setting [echoMode](#echoMode-prop) to an appropriate value enables [TextInput](index.html) to be used for a password input field.

On Mac OS X, the Up/Down key bindings for Home/End are explicitly disabled. If you want such bindings (on any platform), you will need to construct them in QML.

**See also** [TextEdit](../QtQuick.TextEdit.md) and [Text](../QtQuick.qtquick-releasenotes.md#text).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="acceptableInput-prop"></span><span class="name">acceptableInput</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property is always true unless a validator or input mask has been set. If a validator or input mask has been set, this property will only be true if the current text is acceptable to the validator or input mask as a final string (not as an intermediate string).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocusOnPress-prop"></span><span class="name">activeFocusOnPress</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the [TextInput](index.html) should gain active focus on a mouse press. By default this is set to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoScroll-prop"></span><span class="name">autoScroll</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the [TextInput](index.html) should scroll when the text is longer than the width. By default this is set to true.

**See also** [ensureVisible()](#ensureVisible-method).

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

Returns true if the [TextInput](index.html) is writable and the content of the clipboard is suitable for pasting into the [TextInput](index.html).

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

Returns true if the [TextInput](index.html) is writable and there are [undone](#undo-method) operations that can be redone.

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

Returns true if the [TextInput](index.html) is writable and there are previous operations that can be undone.

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

Returns the height of the text, including the height past the height that is covered if the text does not fit within the set height.

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

Returns the width of the text, including the width past the width which is covered due to insufficient wrapping if [wrapMode](#wrapMode-prop) is set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cursorDelegate-prop"></span><span class="name">cursorDelegate</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

The delegate for the cursor in the [TextInput](index.html).

If you set a cursorDelegate for a [TextInput](index.html), this delegate will be used for drawing the cursor instead of the standard cursor. An instance of the delegate will be created and managed by the [TextInput](index.html) when a cursor is needed, and the x property of delegate instance will be set so as to be one pixel before the top left of the current character.

Note that the root item of the delegate component must be a QQuickItem or QQuickItem derived item.

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

The position of the cursor in the [TextInput](index.html).

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

The rectangle where the standard text cursor is rendered within the text input. Read only.

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

Set to true when the [TextInput](index.html) shows a cursor.

This property is set and unset when the [TextInput](index.html) gets active focus, so that other properties can be bound to whether the cursor is currently showing. As it gets set and unset automatically, when you set the value yourself you must keep in mind that your value may be overwritten.

It can be set directly in script, for example if a KeyProxy might forward keys to it and you desire it to look active when this happens (but without actually giving it active focus).

It should not be set directly on the item, like in the below QML, as the specified value will be overridden an lost on focus changes.

``` cpp
TextInput {
    text: "Text"
    cursorVisible: false
}
```

In the above snippet the cursor will still become visible when the [TextInput](index.html) gains active focus.

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

This is the text displayed in the [TextInput](index.html).

If [echoMode](#echoMode-prop) is set to TextInput::Normal, this holds the same value as the [TextInput::text](#text-prop) property. Otherwise, this property holds the text visible to the user, while the [text](../QtQuick.qtquick-releasenotes.md#text) property holds the actual entered text.

**Note:** Unlike the [TextInput::text](#text-prop) property, this contains partial text input from an input method.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="echoMode-prop"></span><span class="name">echoMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Specifies how the text should be displayed in the [TextInput](index.html).

-   [TextInput](index.html).Normal - Displays the text as it is. (Default)
-   [TextInput](index.html).Password - Displays platform-dependent password mask characters instead of the actual characters.
-   [TextInput](index.html).NoEcho - Displays nothing.
-   [TextInput](index.html).PasswordEchoOnEdit - Displays characters as they are entered while editing, otherwise identical to `TextInput.Password`.

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

Sets the horizontal alignment of the text within the [TextInput](index.html) item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

[TextInput](index.html) does not have vertical alignment, as the natural height is exactly the height of the single line of text. If you set the height manually to something larger, [TextInput](index.html) will always be top aligned vertically. You can use anchors to align it however you want within another item.

The valid values for `horizontalAlignment` are `TextInput.AlignLeft`, `TextInput.AlignRight` and `TextInput.AlignHCenter`.

Valid values for `verticalAlignment` are `TextInput.AlignTop` (default), `TextInput.AlignBottom` `TextInput.AlignVCenter`.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property `horizontalAlignment` will remain unchanged. To query the effective horizontal alignment of [TextInput](index.html), use the read-only property `effectiveHorizontalAlignment`.

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
TextInput { text: "Hello"; font.capitalization: Font.AllLowercase }
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
TextInput { text: "Hello"; font.weight: Font.DemiBold }
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
<td><p><span id="horizontalAlignment-prop"></span><span class="name">horizontalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the horizontal alignment of the text within the [TextInput](index.html) item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

[TextInput](index.html) does not have vertical alignment, as the natural height is exactly the height of the single line of text. If you set the height manually to something larger, [TextInput](index.html) will always be top aligned vertically. You can use anchors to align it however you want within another item.

The valid values for `horizontalAlignment` are `TextInput.AlignLeft`, `TextInput.AlignRight` and `TextInput.AlignHCenter`.

Valid values for `verticalAlignment` are `TextInput.AlignTop` (default), `TextInput.AlignBottom` `TextInput.AlignVCenter`.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property `horizontalAlignment` will remain unchanged. To query the effective horizontal alignment of [TextInput](index.html), use the read-only property `effectiveHorizontalAlignment`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="inputMask-prop"></span><span class="name">inputMask</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Allows you to set an input mask on the [TextInput](index.html), restricting the allowable text inputs. See QLineEdit::inputMask for further details, as the exact same mask strings are used by [TextInput](index.html).

**See also** [acceptableInput](#acceptableInput-prop) and [validator](#validator-prop).

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

This property holds whether the [TextInput](index.html) has partial text input from an input method.

While it is composing an input method may rely on mouse or key events from the [TextInput](index.html) to edit or commit the partial text. This property can be used to determine when to disable events handlers that may interfere with the correct operation of an input method.

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

Provides hints to the input method about the expected content of the text input and how it should operate.

The value is a bit-wise combination of flags, or Qt.ImhNone if no hints are set.

Flags that alter behaviour are:

-   Qt.ImhHiddenText - Characters should be hidden, as is typically used when entering passwords. This is automatically set when setting [echoMode](#echoMode-prop) to `TextInput.Password`.
-   Qt.ImhSensitiveData - Typed text should not be stored by the active input method in any persistent storage like predictive user dictionary.
-   Qt.ImhNoAutoUppercase - The input method should not try to automatically switch to upper case when a sentence ends.
-   Qt.ImhPreferNumbers - Numbers are preferred (but not required).
-   Qt.ImhPreferUppercase - Upper case letters are preferred (but not required).
-   Qt.ImhPreferLowercase - Lower case letters are preferred (but not required).
-   Qt.ImhNoPredictiveText - Do not use predictive text (i.e. dictionary lookup) while typing.
-   Qt.ImhDate - The text editor functions as a date field.
-   Qt.ImhTime - The text editor functions as a time field.
-   Qt.ImhMultiLine - The text editor doesn't close software input keyboard when Return or Enter key is pressed (since QtQuick 2.4).

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

Returns the total number of characters in the [TextInput](index.html) item.

If the [TextInput](index.html) has an [inputMask](#inputMask-prop) the length will include mask characters and may differ from the length of the string returned by the [text](../QtQuick.qtquick-releasenotes.md#text) property.

This property can be faster than querying the length the [text](../QtQuick.qtquick-releasenotes.md#text) property as it doesn't require any copying or conversion of the [TextInput](index.html)'s internal string data.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumLength-prop"></span><span class="name">maximumLength</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The maximum permitted length of the text in the [TextInput](index.html).

If the text is too long, it is truncated at the limit.

By default, this property contains a value of 32767.

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

-   [TextInput](index.html).SelectCharacters - The selection is updated with individual characters. (Default)
-   [TextInput](index.html).SelectWords - The selection is updated with whole words.

This property only applies when [selectByMouse](#selectByMouse-prop) is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="passwordCharacter-prop"></span><span class="name">passwordCharacter</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This is the character displayed when [echoMode](#echoMode-prop) is set to Password or PasswordEchoOnEdit. By default it is the password character used by the platform theme.

If this property is set to a string with more than one character, the first character is used. If the string is empty, the value is ignored and the property is not set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="passwordMaskDelay-prop"></span><span class="name">passwordMaskDelay</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Sets the delay before visible character is masked with password character, in milliseconds.

The reset method will be called by assigning undefined.

This QML property was introduced in Qt 5.4.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="persistentSelection-prop"></span><span class="name">persistentSelection</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the [TextInput](index.html) should keep its selection when it loses active focus to another item in the scene. By default this is set to false;

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

Sets whether user input can modify the contents of the [TextInput](index.html).

If readOnly is set to true, then user input will not affect the text property. Any bindings or attempts to set the text property will still work.

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

Defaults to false.

If true, the user can use the mouse to select text in some platform-specific way. Note that for some platforms this may not be an appropriate interaction (eg. may conflict with how the text needs to behave inside a Flickable.

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

This read-only property provides the text currently selected in the text input.

It is equivalent to the following snippet, but is faster and easier to use.

``` js
myTextInput.text.toString().substring(myTextInput.selectionStart,
    myTextInput.selectionEnd);
```

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

The highlighted text color, used in selections.

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

This property is read-only. To change the selection, use select(start,end), [selectAll()](#selectAll-method), or [selectWord()](#selectWord-method).

**See also** [selectionStart](#selectionStart-prop), [cursorPosition](#cursorPosition-prop), and [selectedText](#selectedText-prop).

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

This property is read-only. To change the selection, use select(start,end), [selectAll()](#selectAll-method), or [selectWord()](#selectWord-method).

**See also** [selectionEnd](#selectionEnd-prop), [cursorPosition](#cursorPosition-prop), and [selectedText](#selectedText-prop).

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

The text in the [TextInput](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="validator-prop"></span><span class="name">validator</span> : <span class="type">Validator</span></p></td>
</tr>
</tbody>
</table>

Allows you to set a validator on the [TextInput](index.html). When a validator is set the [TextInput](index.html) will only accept input which leaves the text property in an acceptable or intermediate state. The accepted signal will only be sent if the text is in an acceptable state when enter is pressed.

Currently supported validators are [IntValidator](../QtQuick.IntValidator.md), [DoubleValidator](../QtQuick.DoubleValidator.md) and [RegExpValidator](../QtQuick.RegExpValidator.md). An example of using validators is shown below, which allows input of integers between 11 and 31 into the text input:

``` cpp
import QtQuick 2.0
TextInput{
    validator: IntValidator{bottom: 11; top: 31;}
    focus: true
}
```

**See also** [acceptableInput](#acceptableInput-prop) and [inputMask](#inputMask-prop).

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

Sets the horizontal alignment of the text within the [TextInput](index.html) item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

[TextInput](index.html) does not have vertical alignment, as the natural height is exactly the height of the single line of text. If you set the height manually to something larger, [TextInput](index.html) will always be top aligned vertically. You can use anchors to align it however you want within another item.

The valid values for `horizontalAlignment` are `TextInput.AlignLeft`, `TextInput.AlignRight` and `TextInput.AlignHCenter`.

Valid values for `verticalAlignment` are `TextInput.AlignTop` (default), `TextInput.AlignBottom` `TextInput.AlignVCenter`.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property `horizontalAlignment` will remain unchanged. To query the effective horizontal alignment of [TextInput](index.html), use the read-only property `effectiveHorizontalAlignment`.

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

Set this property to wrap the text to the [TextInput](index.html) item's width. The text will only wrap if an explicit width has been set.

-   [TextInput](index.html).NoWrap - no wrapping will be performed. If the text contains insufficient newlines, then implicitWidth will exceed a set width.
-   [TextInput](index.html).WordWrap - wrapping is done on word boundaries only. If a word is too long, implicitWidth will exceed a set width.
-   [TextInput](index.html).WrapAnywhere - wrapping is done at any point on a line, even if it occurs in the middle of a word.
-   [TextInput](index.html).Wrap - if possible, wrapping occurs at a word boundary; otherwise it will occur at the appropriate point on the line, even in the middle of a word.

The default is [TextInput](index.html).NoWrap. If you set a width, consider using [TextInput](index.html).Wrap.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accepted-signal"></span><span class="name">accepted</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Return or Enter key is pressed. Note that if there is a [validator](#validator-prop) or [inputMask](#inputMask-prop) set on the text input, the signal will only be emitted if the input is in an acceptable state.

The corresponding handler is `onAccepted`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="editingFinished-signal"></span><span class="name">editingFinished</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Return or Enter key is pressed or the text input loses focus. Note that if there is a validator or [inputMask](#inputMask-prop) set on the text input and enter/return is pressed, this signal will only be emitted if the input follows the [inputMask](#inputMask-prop) and the validator returns an acceptable state.

The corresponding handler is `onEditingFinished`.

This QML signal was introduced in Qt 5.2.

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
<td><p><span id="ensureVisible-method"></span><span class="name">ensureVisible</span>(<span class="type">int</span> <em>position</em>)</p></td>
</tr>
</tbody>
</table>

Scrolls the contents of the text input so that the specified character *position* is visible inside the boundaries of the text input.

This QML method was introduced in Qt 5.4.

**See also** [autoScroll](#autoScroll-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getText-method"></span><span class="type">string</span> <span class="name">getText</span>(<span class="type">int</span> <em>start</em>, <span class="type">int</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the section of text that is between the *start* and *end* positions.

If the [TextInput](index.html) has an [inputMask](#inputMask-prop) the length will include mask characters.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="insert-method"></span><span class="name">insert</span>(<span class="type">int</span> <em>position</em>, <span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Inserts *text* into the [TextInput](index.html) at position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isRightToLeft-method"></span><span class="name">isRightToLeft</span>(<span class="type">int</span> <em>start</em>, <span class="type">int</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if the natural reading direction of the editor text found between positions *start* and *end* is right to left.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCursorSelection-method"></span><span class="name">moveCursorSelection</span>(<span class="type">int</span> <em>position</em>, <span class="type">SelectionMode</span> <em>mode</em> = TextInput.SelectCharacters)</p></td>
</tr>
</tbody>
</table>

Moves the cursor to *position* and updates the selection according to the optional *mode* parameter. (To only move the cursor, set the [cursorPosition](#cursorPosition-prop) property.)

When this method is called it additionally sets either the [selectionStart](#selectionStart-prop) or the [selectionEnd](#selectionEnd-prop) (whichever was at the previous cursor position) to the specified position. This allows you to easily extend and contract the selected text range.

The selection mode specifies whether the selection is updated on a per character or a per word basis. If not specified the selection mode will default to [TextInput](index.html).SelectCharacters.

-   [TextInput](index.html).SelectCharacters - Sets either the [selectionStart](#selectionStart-prop) or [selectionEnd](#selectionEnd-prop) (whichever was at the previous cursor position) to the specified position.
-   [TextInput](index.html).SelectWords - Sets the [selectionStart](#selectionStart-prop) and [selectionEnd](#selectionEnd-prop) to include all words between the specified position and the previous cursor position. Words partially in the range are included.

For example, take this sequence of calls:

``` cpp
cursorPosition = 5
moveCursorSelection(9, TextInput.SelectCharacters)
moveCursorSelection(7, TextInput.SelectCharacters)
```

This moves the cursor to position 5, extend the selection end from 5 to 9 and then retract the selection end from 9 to 7, leaving the text from position 5 to 7 selected (the 6th and 7th characters).

The same sequence with [TextInput](index.html).SelectWords will extend the selection start to a word boundary before or on position 5 and extend the selection end to a word boundary on or past position 9.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paste-method"></span><span class="name">paste</span>()</p></td>
</tr>
</tbody>
</table>

Replaces the currently selected text by the contents of the system clipboard.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionAt-method"></span><span class="type">int</span> <span class="name">positionAt</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">CursorPosition</span> <em>position</em> = CursorBetweenCharacters)</p></td>
</tr>
</tbody>
</table>

This function returns the character position at x and y pixels from the top left of the textInput. Position 0 is before the first character, position 1 is after the first character but before the second, and so on until position text.length, which is after all characters.

This means that for all x values before the first character this function returns 0, and for all x values after the last character this function returns text.length. If the y value is above the text the position will be that of the nearest character on the first line and if it is below the text the position of the nearest character on the last line will be returned.

The cursor position type specifies how the cursor position should be resolved.

-   [TextInput](index.html).CursorBetweenCharacters - Returns the position between characters that is nearest x.
-   [TextInput](index.html).CursorOnCharacter - Returns the position before the character that is nearest x.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionToRectangle-method"></span><span class="type">rect</span> <span class="name">positionToRectangle</span>(<span class="type">int</span> <em>pos</em>)</p></td>
</tr>
</tbody>
</table>

This function takes a character position and returns the rectangle that the cursor would occupy, if it was placed at that character position.

This is similar to setting the [cursorPosition](#cursorPosition-prop), and then querying the cursor rectangle, but the [cursorPosition](#cursorPosition-prop) is not changed.

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
<td><p><span id="remove-method"></span><span class="name">remove</span>(<span class="type">int</span> <em>start</em>, <span class="type">int</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Removes the section of text that is between the *start* and *end* positions from the [TextInput](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="select-method"></span><span class="name">select</span>(<span class="type">int</span> <em>start</em>, <span class="type">int</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Causes the text from *start* to *end* to be selected.

If either start or end is out of range, the selection is not changed.

After calling this, [selectionStart](#selectionStart-prop) will become the lesser and [selectionEnd](#selectionEnd-prop) will become the greater (regardless of the order passed to this method).

**See also** [selectionStart](#selectionStart-prop) and [selectionEnd](#selectionEnd-prop).

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

