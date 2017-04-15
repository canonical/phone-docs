---
Title: UbuntuUserInterfaceToolkit.ubuntu-theming-styles
---
        
Styles
======

<span class="subtitle"></span>
details
### Naming conventions

With few exception, each toolkit component is having [StyledItem](../Ubuntu.Components.StyledItem.md) as its base component. The component is aimed to be the base component for all styled elements in the toolkit. Modules providing additional components to UI Toolkit can also use this component as base, especially if they want to provide styling capabilities.

As mentioned, each styled component is having a style pair in a theme which is implemented in a document named using the component name adding the *Style* word. The [Button](../Ubuntu.Components.Button.md)'s style is implemented by `ButtonStyle.qml` document in the theme, and [Button](../Ubuntu.Components.Button.md) is loading this style from the theme:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
AbstractButton {
    id: button
    // [...]
    styleName: "ButtonStyle"
}
```

Developers can override the style in two ways, depending on how they want to style the component:

-   1. by overriding the style using an other style component from the theme, or
-   2. by overriding the style with a custom style component.

But let's see first how the styles are implemented.

<span id="creating-styles"></span>
### Creating styles

As mentioned before, styles are not restricted to only provide visuals to a component or set of components, but can have also logic which drives the component functionality. These kind of styles must implement the given component's style API, listed in `Ubuntu.Components.Styles` module.

A good example of such a style is the [ListItemStyle](../Ubuntu.Components.Styles.ListItemStyle.md). The [ListItem](../Ubuntu.Components.ListItem.md) drives the style animation through the [ListItemStyle::animatePanels](../Ubuntu.Components.Styles.ListItemStyle.md#animatePanels-prop) property, value being false when the style is loaded during component creation, i.e. when the component requires some visuals to be present at creation time. Also, [ListItem](../Ubuntu.Components.ListItem.md) informs the style when to execute leading or trailing panel [rebound](../Ubuntu.Components.Styles.ListItemStyle.md#rebound-method)s and provides the style the ability to overrule the [swipe](../Ubuntu.Components.Styles.ListItemStyle.md#swipeEvent-method) coordinates calculated by the [ListItem](../Ubuntu.Components.ListItem.md). On the other hand, the style must inform the component about the position of the [drag panel](../Ubuntu.Components.Styles.ListItemStyle.md#dragPanel-prop) so the dragging (reordering of list items in a [ListView](../../sdk-14.10/QtQuick.ListView.md)) hot spot can be detected. A style implementation must use the API provided by [ListItemStyle](../Ubuntu.Components.Styles.ListItemStyle.md), otherwise [ListItem](../Ubuntu.Components.ListItem.md) will fail to function properly.

Other styles are requested to provide additional *content* elements, which are then positioned by the styled component separately from the main visuals given by the style. A typical example of such a style API is the [PullToRefresh](../Ubuntu.Components.PullToRefresh.md) component's style:

``` qml
Item {
    /*!
      The property holds the style provided default content component. The value
      is assigned to the \l PullToRefresh::content property.
      */
    property Component defaultContent
    /*!
      The property holds the threshold value when the component should enter
      into \a ready-to-refresh state when dragged manually. The default value
      is the height of the component styled.
      */
    property real activationThreshold: styledItem.height
    /*!
      The property informs the component when a manual refresh can be triggered.
      Style implementations (themes) can decide when to flip the component to be
      ready to trigger reftesh signal.
      */
    property bool releaseToRefresh: false
}
```

The default style implementation can be found under Ubuntu.Components.Themes.Ambiance theme [PullToRefreshStyle.qml](http://bazaar.launchpad.net/~ubuntu-sdk-team/ubuntu-ui-toolkit/trunk/view/head:/src/Ubuntu/Components/Themes/Ambiance/1.3/PullToRefreshStyle.qml).

Beside these, component styles may provide default values for colors, fonts, widths, margins, thicknesses.

Each style component has a `styledItem` context property defined by the [StyledItem](../Ubuntu.Components.StyledItem.md), which points to the [StyledItem](../Ubuntu.Components.StyledItem.md) instance that uses the style. Style implementations can access the actual styled item through this property.

<span id="overriding-the-default-component-style"></span>
### Overriding the default component style

<span id="override-with-a-different-style-from-the-theme"></span>
#### Override with a different style from the theme

Returning back to the ways to override a component's style, overriding by using a different style from the theme can simply be done by assigning the document name to the [StyledItem.styleName](../Ubuntu.Components.StyledItem.md#styleName-prop) property as follows:

``` qml
Button {
    id: button
    styleName: "SquaryButtonStyle"
}
```

**Note:** The document extension doesn't have to be specified, the style creation will automatically append the .qml extension to it. This kind of style override assumes that the `SquaryButtonStyle.qml` document is present in the theme. This type of component styling makes sure the style will always have theme specific implementation or coloring, however it also requires the style document to be present in all the themes used by the application.

<span id="override-with-a-custom-component"></span>
#### Override with a custom component

The other way is to override the style with a local component not present in any theme. The style component can be in-source (Component) or declared in a separate document, loaded dynamically with Loader or Qt.createComponent(). This kind of override will make sure the component will use the custom style no matter of the theme used. These styles however can still use the theme palette to be in sync with the theme coloring.

``` qml
Button {
    id: button
    style: Rectangle {
        implicitWidth: units.gu(12)
        implicitHeight: units.gu(5)
        color: styledItem.color
        border {
            width: units.dp(1)
            color: styledItem.strokeColor
        }
        Label {
            text: styledItem.text
            font: styledItem.font
        }
    }
}
```

**Note:** Specifying a component for the [StyledItem.style](../Ubuntu.Components.StyledItem.md#style-prop) has precedence over the [StyledItem::styleName](../Ubuntu.Components.StyledItem.md#styleName-prop). When both set, the stlke specified `style` property will be used. When this property is set to undefined or null, the style specified in `styleName` will be used. Obviously, when both properties are invalid, no style will be used.

<a href="UbuntuUserInterfaceToolkit.ubuntu-theming.md" class="prevPage">Introduction</a>
<a href="UbuntuUserInterfaceToolkit.ubuntu-theming-themes.md" class="nextPage">Themes</a>

