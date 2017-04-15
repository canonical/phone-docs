---
Title: Ubuntu.Components.Button
---
        
Button
======

<span class="subtitle"></span>
Standard Ubuntu button. More...

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
<td><p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[color](#color-prop)**** : color
-   ****[font](#font-prop)**** : font
-   ****[gradient](#gradient-prop)**** : Gradient
-   ****[iconPosition](#iconPosition-prop)**** : string
-   ****[strokeColor](#strokeColor-prop)**** : color

<span id="details"></span>
Detailed Description
--------------------

[See also the Design Guidelines on Buttons](http://design.ubuntu.com/apps/building-blocks/buttons).

Examples:

``` qml
Column {
    Button {
        text: "Send"
        onClicked: print("clicked text-only Button")
    }
    Button {
        iconName: "compose"
        gradient: UbuntuColors.greyGradient
        onClicked: print("clicked icon-only Button")
    }
    Button {
        iconName: "compose"
        text: "Icon on left"
        iconPosition: "left"
        onClicked: print("clicked text and icon Button")
    }
}
```

An [Action](../Ubuntu.Components.Action.md) can be used to specify **clicked**, iconSource and text. Example:

``` qml
 Item {
     Action {
         id: action1
         text: "Click me"
         onTriggered: print("action!")
         iconName: "compose"
     }
     Button {
         anchors.centerIn: parent
         action: action1
         color: UbuntuColors.warmGrey
     }
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
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The background color of the button.

**See also** [gradient](#gradient-prop).

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

The font used for the button's text.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gradient-prop"></span><span class="name">gradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td>
</tr>
</tbody>
</table>

The gradient used to fill the background of the button.

Standard Ubuntu gradients are defined in [UbuntuColors](../Ubuntu.Components.UbuntuColors.md).

If both a gradient and a color are specified, the gradient will be used.

**See also** [color](#color-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconPosition-prop"></span><span class="name">iconPosition</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The position of the icon relative to the text. Options are "left" and "right". The default value is "left".

If only text or only an icon is defined, this property is ignored and the text or icon is centered horizontally and vertically in the button.

Currently this is a string value. We are waiting for support for enums: https://bugreports.qt-project.org/browse/QTBUG-14861

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="strokeColor-prop"></span><span class="name">strokeColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

If set to a color, the button has a stroke border instead of a filled shape.

This QML property was introduced in Ubuntu.Components 1.1.

