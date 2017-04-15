---
Title: QtQuick.Accessible
---
        
Accessible
==========

<span class="subtitle"></span>
Enables accessibility of QML items More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[checkStateMixed](#checkStateMixed-prop)**** : bool
-   ****[checkable](#checkable-prop)**** : bool
-   ****[checked](#checked-prop)**** : bool
-   ****[defaultButton](#defaultButton-prop)**** : bool
-   ****[description](#description-prop)**** : string
-   ****[editable](#editable-prop)**** : bool
-   ****[focusable](#focusable-prop)**** : bool
-   ****[focused](#focused-prop)**** : bool
-   ****[ignored](#ignored-prop)**** : bool
-   ****[multiLine](#multiLine-prop)**** : bool
-   ****[name](#name-prop)**** : string
-   ****[passwordEdit](#passwordEdit-prop)**** : bool
-   ****[pressed](#pressed-prop)**** : bool
-   ****[readOnly](#readOnly-prop)**** : bool
-   ****[role](#role-prop)**** : enumeration
-   ****[searchEdit](#searchEdit-prop)**** : bool
-   ****[selectable](#selectable-prop)**** : bool
-   ****[selectableText](#selectableText-prop)**** : bool
-   ****[selected](#selected-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[decreaseAction](#decreaseAction-signal)****()
-   ****[increaseAction](#increaseAction-signal)****()
-   ****[pressAction](#pressAction-signal)****()
-   ****[toggleAction](#toggleAction-signal)****()

<span id="details"></span>
Detailed Description
--------------------

This class is part of the Accessibility for Qt Quick Applications.

Items the user interacts with or that give information to the user need to expose their information to the accessibility framework. Then assistive tools can make use of that information to enable users to interact with the application in various ways. This enables Qt Quick applications to be used with screen-readers for example.

The most important properties are [name](#name-prop), [description](#description-prop) and [role](#role-prop).

Example implementation of a simple button:

``` qml
Rectangle {
    id: myButton
    Text {
        id: label
        text: "next"
    }
    Accessible.role: Accessible.Button
    Accessible.name: label.text
    Accessible.description: "shows the next page"
    Accessible.onPressAction: {
        // do a button click
    }
}
```

The [role](#role-prop) is set to `Button` to indicate the type of control. Accessible.name is the most important information and bound to the text on the button. The name is a short and consise description of the control and should reflect the visual label. In this case it is not clear what the button does with the name only, so [description](#description-prop) contains an explanation. There is also a signal handler [Accessible.pressAction](#pressAction-signal) which can be invoked by assistive tools to trigger the button. This signal handler needs to have the same effect as tapping or clicking the button would have.

**See also** Accessibility.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="checkStateMixed-prop"></span><span class="name">checkStateMixed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is in the partially checked state.

By default this property is `false`.

**See also** [checked](#checked-prop) and [checkable](#checkable-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="checkable-prop"></span><span class="name">checkable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is checkable (like a check box or some buttons).

By default this property is `false`.

**See also** [checked](#checked-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="checked-prop"></span><span class="name">checked</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is currently checked.

By default this property is `false`.

**See also** [checkable](#checkable-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultButton-prop"></span><span class="name">defaultButton</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is the default button of a dialog.

By default this property is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="description-prop"></span><span class="name">description</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property sets an accessible description. Similar to the name it describes the item. The description can be a little more verbose and tell what the item does, for example the functionallity of the button it describes.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="editable-prop"></span><span class="name">editable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item has editable text.

By default this property is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focusable-prop"></span><span class="name">focusable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is focusable.

By default, this property is `false` except for items where the role is one of `CheckBox`, `RadioButton`, `Button`, `MenuItem`, `PageTab`, `EditableText`, `SpinBox`, `ComboBox`, `Terminal` or `ScrollBar`.

**See also** [focused](#focused-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focused-prop"></span><span class="name">focused</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item currently has the active focus.

By default, this property is `false`, but it will return `true` for items that have QQuickItem::hasActiveFocus() returning `true`.

**See also** [focusable](#focusable-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ignored-prop"></span><span class="name">ignored</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item should be ignored by the accessibility framework.

Sometimes an item is part of a group of items that should be treated as one. For example two labels might be visually placed next to each other, but separate items. For accessibility purposes they should be treated as one and thus they are represented by a third invisible item with the right geometry.

For example a speed display adds "m/s" as a smaller label:

``` qml
Row {
    Label {
        id: speedLabel
        text: "Speed: 5"
        Accessible.ignored: true
    }
    Label {
        text: qsTr("m/s")
        Accessible.ignored: true
    }
    Accessible.role: Accessible.StaticText
    Accessible.name: speedLabel.text + " meters per second"
}
```

By default this property is `false`.

This QML property was introduced in Qt 5.4.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="multiLine-prop"></span><span class="name">multiLine</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item has multiple text lines.

By default this property is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property sets an accessible name. For a button for example, this should have a binding to its text. In general this property should be set to a simple and concise but human readable name. Do not include the type of control you want to represent but just the name.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="passwordEdit-prop"></span><span class="name">passwordEdit</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is a password text edit.

By default this property is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is pressed (for example a button during a mouse click).

By default this property is `false`.

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

This property indicates that a text field is read only.

It is relevant when the role is QAccessible::EditableText and set to be read-only. By default this property is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="role-prop"></span><span class="name">role</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This flags sets the semantic type of the widget. A button for example would have "Button" as type. The value must be one of QAccessible::Role.

Some roles have special semantics. In order to implement check boxes for example a "checked" property is expected.

| **Role**                         | **Properties and signals**                                                                                                            | **Explanation**                                                                                                                                                                                                                                                                                     |
|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| All interactive elements         | [focusable](#focusable-prop) and [focused](#focused-prop)                                                         | All elements that the user can interact with should have focusable set to `true` and set focus to `true` when they have the focus. This is important even for applications that run on touch-only devices since screen readers often implement a virtual focus that can be moved from item to item. |
| Button, CheckBox, RadioButton    | [Accessible.pressAction](#pressAction-signal)                                                                               | A button should have a signal handler with the name `onPressAction`. This signal may be emitted by an assistive tool such as a screen-reader. The implementation needs to behave the same as a mouse click or tap on the button.                                                                    |
| CheckBox, RadioButton            | [checkable](#checkable-prop), [checked](#checked-prop), [Accessible.toggleAction](#toggleAction-signal) | The check state of the check box. Updated on Press, Check and Uncheck actions.                                                                                                                                                                                                                      |
| Slider, SpinBox, Dial, ScrollBar | `value`, `minimumValue`, `maximumValue`, `stepSize`                                                                                   | These properties reflect the state and possible values for the elements.                                                                                                                                                                                                                            |
| Slider, SpinBox, Dial, ScrollBar | [Accessible.increaseAction](#increaseAction-signal), [Accessible.decreaseAction](#decreaseAction-signal)          | Actions to increase and decrease the value of the element.                                                                                                                                                                                                                                          |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searchEdit-prop"></span><span class="name">searchEdit</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is input for a search query. This property will only affect editable text.

By default this property is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectable-prop"></span><span class="name">selectable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item can be selected.

By default this property is `false`.

**See also** [selected](#selected-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectableText-prop"></span><span class="name">selectableText</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item contains selectable text.

By default this property is `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selected-prop"></span><span class="name">selected</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this item is selected.

By default this property is `false`.

**See also** [selectable](#selectable-prop).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="decreaseAction-signal"></span><span class="name">decreaseAction</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a decrease action is received from an assistive tool such as a screen-reader.

The corresponding handler is `onDecreaseAction`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="increaseAction-signal"></span><span class="name">increaseAction</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a increase action is received from an assistive tool such as a screen-reader.

The corresponding handler is `onIncreaseAction`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressAction-signal"></span><span class="name">pressAction</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a press action is received from an assistive tool such as a screen-reader.

The corresponding handler is `onPressAction`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toggleAction-signal"></span><span class="name">toggleAction</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a toggle action is received from an assistive tool such as a screen-reader.

The corresponding handler is `onToggleAction`.

