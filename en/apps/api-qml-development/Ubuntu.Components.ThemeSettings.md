---
Title: Ubuntu.Components.ThemeSettings
---
        
ThemeSettings
=============

<span class="subtitle"></span>
The ThemeSettings class provides facilities to define the theme of a StyledItem. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.3        |

<span id="properties"></span>
Properties
----------

-   ****[name](#name-prop)**** : string
-   ****[palette](#palette-prop)**** : Palette
-   ****[parentTheme](#parentTheme-prop)**** : ThemeSettings

<span id="details"></span>
Detailed Description
--------------------

A global instance is exposed as the **theme** context property.

The theme defines the visual aspect of the Ubuntu components. An application can use one or more theme the same time. The [ThemeSettings](index.html) component provides abilities to change the theme used by the component and all its child components.

Changing the theme of the entire application can be achieved by changing the name of the root [StyledItem](../Ubuntu.Components.StyledItem.md)'s, i.e. [MainView](../Ubuntu.Components.MainView.md)'s current theme.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    theme.name: "Ubuntu.Components.Themes.Ambiance"
}
```

By default, styled items inherit the theme they use from their closest styled item ancestor. In case the application uses [MainView](../Ubuntu.Components.MainView.md), all components will inherit the theme from the [MainView](../Ubuntu.Components.MainView.md).

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    Page {
        title: "Style test"
        Button {
            text: theme.name == "Ubuntu.Components.Themes.Ambiance" ?
                     "SuruDark" : "Ambiance"
            onClicked: theme.name = (text == "Ambiance" ?
                     "Ubuntu.Components.Themes.SuruDark" :
                     "Ubuntu.Components.Themes.Ambiance")
        }
    }
}
```

**Note:** In the example above the Button inherits the theme from Page, which inherits it from [MainView](../Ubuntu.Components.MainView.md). Therefore changing the theme name in this way will result in a change of the inherited theme. In case a different theme is desired, a new instance of the [ThemeSettings](index.html) must be created on the styled item desired.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    Page {
        title: "Style test"
        theme: ThemeSettings{}
        Button {
            text: theme.name == "Ubuntu.Components.Themes.Ambiance" ?
                     "SuruDark" : "Ambiance"
            onClicked: theme.name = (text == "Ambiance" ?
                     "Ubuntu.Components.Themes.SuruDark" :
                     "Ubuntu.Components.Themes.Ambiance")
        }
    }
}
```

The style can be set on a [StyledItem](../Ubuntu.Components.StyledItem.md) either using [StyledItem::styleName](../Ubuntu.Components.StyledItem.md#styleName-prop) or [StyledItem::style](../Ubuntu.Components.StyledItem.md#style-prop) properties. When set through [StyledItem::styleName](../Ubuntu.Components.StyledItem.md#styleName-prop), the component will load the style from the current theme set, and must be a QML document. The [StyledItem::style](../Ubuntu.Components.StyledItem.md#style-prop) property is a Component which can be declared local, or loaded with a Loader or created using Qt.createComponent() function. The following example will create the style with the inherited theme.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
StyledItem {
    styleName: "MyItemStyle"
}
```

All styled toolkit components such as [Button](../Ubuntu.Components.Button.md), [CheckBox](../Ubuntu.Components.CheckBox.md), [Switch](../Ubuntu.Components.Switch.md), etc. create their style in this way. Note that the style component must be part of the theme, otherwise the style creation will fail.

**See also** [StyledItem](../Ubuntu.Components.StyledItem.md).

Property Documentation
----------------------

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

The name of the current theme in dotted format i.e. "Ubuntu.Components.Themes.Ambiance".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="palette-prop"></span><span class="name">palette</span> : <span class="type">Palette</span></p></td>
</tr>
</tbody>
</table>

The palette of the current theme. When set, only the valid palette values will be taken into account, which will override the theme defined palette values. The following example will set the system's default theme palette normal background color to Ubuntu blue. All other palette values will be untouched.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes 1.0
MainView {
    // your code
    theme.palette: Palette {
        normal.background: UbuntuColors.blue
    }
}
```

**Note:** Palette values applied on inherited themes will be rolled back once the component declaring the palette is unloaded. This can be demonstracted using a Loader element:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes 1.0
MainView {
    width: units.gu(40)
    height: units.gu(71)
    Loader {
        id: loader
        onItemChanged: if (item) button.theme.palette = item
    }
    Component {
        id: dynamicPalette
        Palette {
            normal.background: UbuntuColors.blue
        }
    }
    Button {
        id: button
        text: "Toggle palette"
        onClicked: {
            if (loader.item) {
                loader.sourceComponent = undefined;
            } else {
                loader.sourceComponent = dynamicPalette;
            }
        }
    }
}
```

The palette doesn't need to be reset as it automatically resets when the palette used for configuration is destroyed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parentTheme-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">parentTheme</span> : <span class="type"><a href="index.html">ThemeSettings</a></span></p></td>
</tr>
</tbody>
</table>

The property specifies the parent [ThemeSettings](index.html) instance.

