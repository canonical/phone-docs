---
Title: Ubuntu.Components.Action
---
        
Action
======

<span class="subtitle"></span>
Describe an action that can be re-used and shared between different components. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[description](#description-prop)**** : string
-   ****[enabled](#enabled-prop)**** : bool
-   ****[iconName](#iconName-prop)**** : string
-   ****[iconSource](#iconSource-prop)**** : url
-   ****[keywords](#keywords-prop)**** : string
-   ****[name](#name-prop)**** : string
-   ****[parameterType](#parameterType-prop)**** : enum
-   ****[shortcut](#shortcut-prop)**** : var
-   ****[text](#text-prop)**** : string
-   ****[visible](#visible-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[triggered](#triggered-signal)****(var *value*)

<span id="methods"></span>
Methods
-------

-   ****[trigger](#trigger-method)****(var *value*)

<span id="details"></span>
Detailed Description
--------------------

Actions can be used to define a specific task to be executed in different contexts using different components. The same action can be assigned to a [Button](../Ubuntu.Components.Button.md), a **Checkbox** or even a [TextField](../Ubuntu.Components.TextField.md). The [triggered](#triggered-signal) signal is emitted depending on the component. [Button](../Ubuntu.Components.Button.md) and **CheckBox** for instance emits the signal when clicked, whereas [TextField](../Ubuntu.Components.TextField.md) emits the signal when its accepted signal is triggered.

If the [parameterType](#parameterType-prop) property is set, the Action is said to be parameterised. This means that when it is bound to a menu or button, the action expects a typed input parameter. The type affects the allowed value of the QVariant that must be passed to the [trigger](#trigger-method) and [triggered](#triggered-signal).

``` qml
Action {
    id: action
    parameterType: Action.Integer
    text: "Int value"
    onTriggered: {
        // the value will be undefined
        console.log("value is", value);
    }
    Component.onCompleted: trigger("Hello World!")
}
```

When an Action is assigned to a component, the component takes the values from the action itself. Therefore assigning the action to a Button is enough to set up the label and the icon to be shown by the button.

``` cpp
Action {
    id: stock
    iconName: "call"
    text: "Call"
}
Button {
    // this binding will set the Button's text, iconName and
    // iconSource properties.
    action: stock
}
```

Actions are used to populate different Popovers like [ActionSelectionPopover](../Ubuntu.Components.Popups.ActionSelectionPopover.md) as well as to define actions for pages, or when defining options in `ListItemOptions`.

Examples: See [Page](../Ubuntu.Components.Page.md)

<span id="mnemonics"></span>
### Mnemonics

Since Ubuntu.Components 1.3 Action supports mnemonics. Mnemonics are shortcuts defined in the [text](#text-prop) property, prefixed the shortcut letter with &. For instance `"\&Call"` will bint the `"Alt-C"` shortcut to the action. When a mnemonic is detected on the Action and a keyboard is attached to the device, the [text](#text-prop) property will provide a formatted text having the mnemonic letter underscored.

``` qml
Action {
    id: call
    iconName: "call"
    text: "&Call"
}
```

Property Documentation
----------------------

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

User visible secondary description for the action. Description is more verbose than the [text](#text-prop) and should describe the Action with couple of words.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If set to false the action can not be triggered. Components visualizing the action migth either hide the action or make it insensitive. However visibility can be controlled separately using the [visible](#visible-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconName-prop"></span><span class="name">iconName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The icon associated with the action. If both iconName and [iconSource](#iconSource-prop) are defined, iconName will be ignored by the components.

**Note:** The complete list of icons available in Ubuntu is not published yet. For now please refer to the folder where the icon theme is installed:

-   Ubuntu Touch: /usr/share/icons/suru

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconSource-prop"></span><span class="name">iconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

This is a URL to any image file. In order to use an icon from the Ubuntu theme, use the [iconName](#iconName-prop) property instead.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keywords-prop"></span><span class="name">keywords</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Additional user visible keywords for the action. The format of the keywords string is "Keyword 1;Keyword 2;Keyword 3" to allow translators to define different number of keywords per language. The keywords are separated by ; and they may contain spaces.

``` qml
Action {
    text: i18n.tr("Crop")
    description: i18n.tr("Crop the image")
    keywords: i18n.tr("Trim;Cut")
}
```

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

The name of the action. By default an action gets it's name generated automatically if not overridden with later. If name is set to "" then the action restores it's autogenerated name. The name is not user visible.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parameterType-prop"></span><span class="name">parameterType</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

Type of the parameter passed to [trigger](#trigger-method) and [triggered](#triggered-signal). Type is an enumeration:

-   **Action.None**: No paramater. (default)
-   **Action.String**: String parameter.
-   **Action.Integer**: Integer parameter.
-   **Action.Bool**: Boolean parameter.
-   **Action.Real**: Single precision floating point parameter.
-   **Action.Object**: The parameter is an object.

``` qml
Action {
    id: action
    parameterType: Action.String
    onTriggered: {
        // value arguments now contain strings
        console.log(value);
    }
    Component.onCompleted: action.trigger("Hello World")
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shortcut-prop"></span><span class="name">shortcut</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

The keyboard shortcut that can be used to trigger the action. **StandardKey** values such as **StandardKey.Copy** as well as strings in the form "Ctrl+C" are accepted values.

This QML property was introduced in Qt 1.3.

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

The user visible primary label of the action.

Mnemonics are shortcuts prefixed in the text with &. If the text has multiple occurences of the & character, the first one will be considered for the shortcut. The & character cannot be used as shortcut.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visible-prop"></span><span class="name">visible</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies whether the action is visible to the user. Defaults to true.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggered-signal"></span><span class="name">triggered</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Signal called when the action is triggered. The user visible primary label of the action when emitted by components. Custom implementations must make sure this rule is followed, therefore instead of emitting the signal the [trigger](#trigger-method) function should be called.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="trigger-method"></span><span class="name">trigger</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Checks the `value` against the action [parameterType](#parameterType-prop) and triggers the action. If [parameterType](#parameterType-prop) is `Action.None`, it will trigger as

``` cpp
action.trigger()
```

