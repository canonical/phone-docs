---
Title: Ubuntu.Components.Themes.Palette
---
        
Palette
=======

<span class="subtitle"></span>
Provides the palette of colors from the theme that widgets use to draw themselves. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Themes 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQml.QtObject.md">QtObject</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[disabled](#disabled-prop)**** : PaletteValues
-   ****[focused](#focused-prop)**** : PaletteValues
-   ****[highlighted](#highlighted-prop)**** : PaletteValues
-   ****[normal](#normal-prop)**** : PaletteValues
-   ****[selected](#selected-prop)**** : PaletteValues
-   ****[selectedDisabled](#selectedDisabled-prop)**** : PaletteValues

<span id="details"></span>
Detailed Description
--------------------

Palette provides access to colors defined by the current theme. The actual color palette to use depends on the state of the widget being drawn.

A color palette ([PaletteValues](../Ubuntu.Components.Themes.PaletteValues.md)) has various roles to choose from depending on what part of the widget is being drawn (the base of the widget, the foreground, etc.).

For each color there is a corresponding 'text' color that is guaranteed to provide good legibility for text or icons placed on top of a background of the corresponding color.

Example of a Text on top of a background Rectangle:

``` qml
Item {
    Rectangle {
        color: theme.palette.normal.base
    }
    Text {
        color: theme.palette.normal.baseText
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
<td><p><span id="disabled-prop"></span><span class="name">disabled</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td>
</tr>
</tbody>
</table>

Color palette to use when the widget is in the disabled (enabled: false) state.

This QML property was introduced in Ubuntu.Components.Themes 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="focused-prop"></span><span class="name">focused</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td>
</tr>
</tbody>
</table>

Color palette to use when the widget is focused.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlighted-prop"></span><span class="name">highlighted</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td>
</tr>
</tbody>
</table>

Color palette values to use when the widget is highlighted.

This QML property was introduced in Ubuntu.Components.Themes 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="normal-prop"></span><span class="name">normal</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td>
</tr>
</tbody>
</table>

Color palette to use when the widget is in the default state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selected-prop"></span><span class="name">selected</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td>
</tr>
</tbody>
</table>

Color palette to use when the widget is selected, for example when a tab is the current one.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedDisabled-prop"></span><span class="name">selectedDisabled</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td>
</tr>
</tbody>
</table>

Color palette to use when the widget is selected and disabled.

This QML property was introduced in Ubuntu.Components.Themes 1.3.

