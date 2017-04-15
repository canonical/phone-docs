---
Title: UbuntuUserInterfaceToolkit.ubuntu-theming
---
        
Introduction
============

<span class="subtitle"></span>
<span id="details"></span>
Table of contents:

-   [Introduction](index.html)
-   [Styles](../UbuntuUserInterfaceToolkit.ubuntu-theming-styles.md)
-   [Themes](../UbuntuUserInterfaceToolkit.ubuntu-theming-themes.md)
-   [Sub-theming](../UbuntuUserInterfaceToolkit.ubuntu-theming-subtheming.md)

<span id="introduction"></span>
### Introduction

The [style](../UbuntuUserInterfaceToolkit.ubuntu-theming-styles.md) defines the visuals, the implicit size of the component and may provide additional logic for a given component. Some components have fixed style API the component relies on, and yet some others do not have any restriction on what the style contains or does. Components relying on a well defined API provide these interfaces through Ubuntu.Components.Styles module, and styles must implement these interfaces.

The implicit size of a component is driven by the style as well, but it is not mandatory for a style to provide those values, and components can override these values at any time. However each style component is anchor filled to the styled component and positioned to be under child components declared within the component itself.

Styles can be declared as Components (like delegates), in a separate document loaded dynamically using a Loader or Qt.createComponent(), or can be grouped in [themes](../UbuntuUserInterfaceToolkit.ubuntu-theming-themes.md). When declared in themes, with some exceptions, each component's style document name is compound of the component name having the *Style* word as postfix, followed by the typical QML file name extension. In this way the Button component's style is ButtonStyle. In addition to styles, themes can also provide custom palette values. There are two themes in Ubuntu, Ambiance and SuruDark themes, Ambiance being the default theme. Both themes are declared in separate modules, in `Ubuntu.Components.Themes.Ambiance` as well as `Ubuntu.Components.Themes.SuruDark`. Application should define the theme name using this dotted name format.

Applications can decide which theme they want to use or they can provide their own themes. Also, applications can use multiple themes or set custom palette values.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units,gu(40)
    height: units.gu(71)
    theme.name: "Ubuntu.Components.Themes.SuruDark"
}
```

<a href="UbuntuUserInterfaceToolkit.ubuntu-theming-styles.md" class="nextPage">Styles</a>

