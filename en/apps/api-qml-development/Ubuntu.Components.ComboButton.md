---
Title: Ubuntu.Components.ComboButton
---
        
ComboButton
===========

<span class="subtitle"></span>
Ubuntu button providing a drop-down panel visualizing custom options. More...

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

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[collapsedHeight](#collapsedHeight-prop)**** : real
-   ****[comboList](#comboList-prop)**** : list&lt;Item&gt;
-   ****[comboListHeight](#comboListHeight-prop)**** : real
-   ****[expanded](#expanded-prop)**** : bool
-   ****[expandedHeight](#expandedHeight-prop)**** : real
-   ****[font](#font-prop)**** : font
-   ****[iconPosition](#iconPosition-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The component is composed of three main blocks: **main button**, **dropdown** and **combo list**.

The *main button* holds the main functionailty of the component, and it is located at the left-top side of the expanded button. The *clicked()* signal is triggered only when this button is pressed.

The *dropdown* is a button located on the right of the main button. Its functionality is to drive the component's expanded state.

The *combo list* is a panel showing the content specified in [comboList](#comboList-prop) property when expanded. The content is stretched horizontally to the component's width, and its height is controlled by the [expandedHeight](#expandedHeight-prop) property as follows:

-   If the content height is smaller than the value of [expandedHeight](#expandedHeight-prop), the combo list will be expanded only to the height of the content.

    ``` qml
    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ComboButton {
        text: "smaller content"
        Rectangle {
            height: units.gu(5) // smaller than the default expandedHeight
            color: "blue"
        }
    }
    ```

-   If the content height is greater than [expandedHeight](#expandedHeight-prop), the combo list will expand till the height specified by the property and the content will be scrolled; in case the combo list content is one single Flickable, [ListView](../QtQuick.ListView.md), [GridView](../../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview) or [PathView](../QtQuick.PathView.md), the content scrolling will be provided by the content itself.

    ``` qml
    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ComboButton {
        text: "long scrolled content"
        Column {
            Repeater {
                model: 5
                spacing: units.gu(1)
                Rectangle {
                    height: units.gu(5)
                    color: "blue"
                }
            }
        }
    }
    ```

-   In case the content is a single Flickable, [ListView](../QtQuick.ListView.md), [GridView](../../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview) or [PathView](../QtQuick.PathView.md), the content will be filling the entire combo list area defined.

    ``` qml
    import QtQuick 2.4
    import Ubuntu.Components 1.3
    import Ubuntu.Components.ListItems 1.3
    ComboButton {
        text: "listview"
        ListView {
            model: 10
            delegate: Standard {
                text: "Item #" + modelData
            }
        }
    }
    ```

-   Vertical anchoring of combo list content to its parent is not possible as the expansion calculation is done based on the combo list content height. If the content wants to take the size of the entire combo list, it should bind its height to the [comboListHeight](#comboListHeight-prop) property.

    ``` qml
    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ComboButton {
        id: combo
        text: "smaller content"
        Rectangle {
            height: combo.comboListHeight
            color: "blue"
        }
    }
    ```

-   In case the expansion needs to be the size of the combo list content, the [expandedHeight](#expandedHeight-prop) should be set to -1.

    ``` qml
    import QtQuick 2.4
    import Ubuntu.Components 1.3
    ComboButton {
        text: "auto-sized content"
        expandedHeight: -1
        Column {
            Repeater {
                model: 5
                spacing: units.gu(1)
                Button {
                    text: "Button #" + modelData
                }
            }
        }
    }
    ```

The combo list can be expanded/collapsed either through the [expanded](#expanded-prop) property or by clicking on the dropdown button. It is not collapsed when pressing the main button or clicking on the combo list. In order to do an auto-collapsing button you must reset the expanded property (set it to false) when the main button is clicked or when a selection is taken from the combo list content. The following example illustrates a possible implementation.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
ComboButton {
    id: combo
    text: "Auto closing"
    expanded: true
    expandedHeight: units.gu(30)
    onClicked: expanded = false
    UbuntuListView {
        width: parent.width
        height: combo.comboListHeight
        model: 20
        delegate: Standard {
            text: "Action #" + modelData
            onClicked: {
                combo.text = text;
                combo.expanded = false;
            }
        }
    }
}
```

<span id="styling"></span>
### Styling

The style of the component is defined in [ComboButtonStyle](../Ubuntu.Components.Styles.ComboButtonStyle.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapsedHeight-prop"></span><span class="name">collapsedHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the height of the component when collapsed. By default the value is the implicit height of the component.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="comboList-prop"></span><span class="qmldefault">[default] </span><span class="name">comboList</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Item.md">Item</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Property holding the list of items to be shown in the combo list. Being a default property children items declared will land in the combo list.

**Note:** The component is not responsible for layouting the content. It only provides scrolling abilities for the case the content exceeds the defined expanded height.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="comboListHeight-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">comboListHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the maximum combo list height allowed based on the [expandedHeight](#expandedHeight-prop) and [collapsedHeight](#collapsedHeight-prop) values. It is a convenience property that can be used to size the combo list content.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
ComboButton {
    id: combo
    text: "Full comboList size"
    ListView {
        anchors {
            left: parent.left
            right: parent.right
        }
        height: combo.comboListHeight
        model: 20
        delegate: Standard {
            text: "Action #" + modelData
        }
    }
}
```

**See also** [collapsedHeight](#collapsedHeight-prop) and [expandedHeight](#expandedHeight-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expanded-prop"></span><span class="name">expanded</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies whether the combo list is expanded or not. The default falue is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expandedHeight-prop"></span><span class="name">expandedHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the maximum height value the component should expand. When setting the property, remember to take into account the [collapsedHeight](#collapsedHeight-prop) value. The best practice is to use bind it with [collapsedHeight](#collapsedHeight-prop).

``` qml
ComboButton {
    text: "altered expandedHeight"
    expandedHeight: collapsedHeight + units.gu(25)
}
```

A value of -1 will instruct the component to expand the combo list as much as its content height is.

The default value is [collapsedHeight](#collapsedHeight-prop) + 19.5 GU, so at least 3 ListItems can fit in the combo list.

**See also** [collapsedHeight](#collapsedHeight-prop).

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
<td><p><span id="iconPosition-prop"></span><span class="name">iconPosition</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The position of the icon relative to the text. Options are "left" and "right". The default value is "left".

If only text or only an icon is defined, this property is ignored and the text or icon is centered horizontally and vertically in the button.

Currently this is a string value. We are waiting for support for enums: https://bugreports.qt-project.org/browse/QTBUG-14861

