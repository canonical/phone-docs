---
Title: QtQuick.SystemPalette
---
        
SystemPalette
=============

<span class="subtitle"></span>
Provides access to the Qt palettes More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[alternateBase](#alternateBase-prop)**** : color
-   ****[base](#base-prop)**** : color
-   ****[button](#button-prop)**** : color
-   ****[buttonText](#buttonText-prop)**** : color
-   ****[colorGroup](#colorGroup-prop)**** : enumeration
-   ****[dark](#dark-prop)**** : color
-   ****[highlight](#highlight-prop)**** : color
-   ****[highlightedText](#highlightedText-prop)**** : color
-   ****[light](#light-prop)**** : color
-   ****[mid](#mid-prop)**** : color
-   ****[midlight](#midlight-prop)**** : color
-   ****[shadow](#shadow-prop)**** : color
-   ****[text](#text-prop)**** : color
-   ****[window](#window-prop)**** : color
-   ****[windowText](#windowText-prop)**** : color

<span id="details"></span>
Detailed Description
--------------------

The [SystemPalette](index.html) type provides access to the Qt application palettes. This provides information about the standard colors used for application windows, buttons and other features. These colors are grouped into three *color groups*: `Active`, `Inactive`, and `Disabled`. See the QPalette documentation for details about color groups and the properties provided by [SystemPalette](index.html).

This can be used to color items in a way that provides a more native look and feel.

The following example creates a palette from the `Active` color group and uses this to color the window and text items appropriately:

``` qml
import QtQuick 2.0
Rectangle {
    SystemPalette { id: myPalette; colorGroup: SystemPalette.Active }
    width: 640; height: 480
    color: myPalette.window
    Text {
        anchors.fill: parent
        text: "Hello!"; color: myPalette.windowText
    }
}
```

**See also** QPalette.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alternateBase-prop"></span><span class="name">alternateBase</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The alternate base color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="base-prop"></span><span class="name">base</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The base color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="button-prop"></span><span class="name">button</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The button color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="buttonText-prop"></span><span class="name">buttonText</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The button text foreground color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="colorGroup-prop"></span><span class="name">colorGroup</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The color group of the palette. This can be one of:

-   [SystemPalette](index.html).Active (default)
-   [SystemPalette](index.html).Inactive
-   [SystemPalette](index.html).Disabled

**See also** QPalette::ColorGroup.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dark-prop"></span><span class="name">dark</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The dark color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlight-prop"></span><span class="name">highlight</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The highlight color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightedText-prop"></span><span class="name">highlightedText</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The highlighted text color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="light-prop"></span><span class="name">light</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The light color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mid-prop"></span><span class="name">mid</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The mid color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="midlight-prop"></span><span class="name">midlight</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The midlight color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shadow-prop"></span><span class="name">shadow</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The shadow color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The text color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="window-prop"></span><span class="name">window</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The window (general background) color of the current color group.

**See also** QPalette::ColorRole.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="windowText-prop"></span><span class="name">windowText</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The window text (general foreground) color of the current color group.

**See also** QPalette::ColorRole.

