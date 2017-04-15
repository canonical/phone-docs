---
Title: Ubuntu.Components.StyledItem
---
        
StyledItem
==========

<span class="subtitle"></span>
The StyledItem class allows items to be styled by the theme. More...

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
<td>Since:</td>
<td>Ubuntu.Components 1.1</td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.ActionBar.md">ActionBar</a>, <a href="Ubuntu.Components.BottomEdge.md">BottomEdge</a>, <a href="Ubuntu.Components.Pickers.DatePicker.md">DatePicker</a>, <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/Ubuntu.Components.Pickers.Dialer/" class="obsolete">Dialer</a>, <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/Ubuntu.Components.Pickers.DialerHand/" class="obsolete">DialerHand</a>, <a href="Ubuntu.Components.Header.md">Header</a>, <a href="Ubuntu.Components.MainView.md">MainView</a>, <a href="Ubuntu.Components.Page.md">Page</a>, <a href="Ubuntu.Components.Pickers.Picker.md">Picker</a>, <a href="Ubuntu.Components.PullToRefresh.md">PullToRefresh</a>, <a href="Ubuntu.Components.ScrollView.md">ScrollView</a>, <a href="Ubuntu.Components.Sections.md">Sections</a>, and <a href="Ubuntu.Components.Toolbar.md">Toolbar</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[style](#style-prop)**** : Component
-   ****[styleName](#styleName-prop)**** : string
-   ****[theme](#theme-prop)**** : ThemeSettings

<span id="details"></span>
Detailed Description
--------------------

[StyledItem](index.html) provides facilities for making an Item stylable by the theme.

In order to make an Item stylable by the theme, it is enough to make the Item inherit from [StyledItem](index.html) and set its [style](#style-prop) property to be the result of the appropriate call to theme.createStyleComponent().

Example definition of a custom Item MyItem.qml:

``` qml
StyledItem {
    id: myItem
    styleName: "MyItemStyle"
}
```

The style set on [styleName](#styleName-prop) is instantiated and placed below everything else that the Item contains. When the style is defined in this way, the style is taken from the current theme the [StyledItem](index.html) is themed with. Another way tpo set the style of a component is to set the [style](#style-prop) property. This property expects a component and it has precedence over the [styleName](#styleName-prop), meaning that when both [styleName](#styleName-prop) and [style](#style-prop) are set, the style will be created from the [style](#style-prop) componment.

A reference to the Item being styled is accessible from the style and named 'styledItem'.

**See also** [Theme](../Ubuntu.Components.Theme.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

Style component instantiated immediately and placed below everything else. Has precedence over the [styleName](#styleName-prop). When both set, the style will be created from the component given as property value, and can be reset to the theme style when set to null or reset (set to undefined).

``` qml
Button {
    text: "Press to reset"
    style: Rectangle {
        color: "tan"
        Label {
            anchors {
                fill: parent
                margins: units.gu(1)
            }
            text: styledItem.text
        }
    }
    onClicked: style = undefined
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="styleName-prop"></span><span class="name">styleName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property specifies the component style name. The style name is a document in the current theme, and should not contain the qml file extension. If specified an error will be shown.

``` qml
StyledItem {
    id: myItem
    styleName: "MyItemStyle"
}
```

**Note:** [style](#style-prop) property has precedence over styleName.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="theme-prop"></span><span class="name">theme</span> : <span class="type"><a href="Ubuntu.Components.ThemeSettings.md">ThemeSettings</a></span></p></td>
</tr>
</tbody>
</table>

The property configures the theme the component and all its sub-components will use. By default it is set to the closest ancestor [StyledItem](index.html)'s theme if any, or to the system default theme.

This QML property was introduced in Ubuntu.Components 1.3.

