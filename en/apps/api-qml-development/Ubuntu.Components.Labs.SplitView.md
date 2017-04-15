---
Title: Ubuntu.Components.Labs.SplitView
---
        
SplitView
=========

<span class="subtitle"></span>
A view component with a flexible layout configuration setup. More...

|                   |                                 |
|-------------------|---------------------------------|
| Import Statement: | import Ubuntu.Components.Labs . |

<span id="properties"></span>
Properties
----------

-   ****[activeLayout](#activeLayout-prop)**** : SplitViewLayout
-   ****[handleDelegate](#handleDelegate-prop)**** : Component
-   ****[layouts](#layouts-prop)**** : list&lt;SplitViewLayout&gt;
-   ****[spacing](#spacing-prop)**** : real

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[column](#column-attached-prop)**** : int
-   ****[columnConfig](#columnConfig-attached-prop)**** : ViewColumn
-   ****[view](#view-attached-prop)**** : SplitView

<span id="details"></span>
Detailed Description
--------------------

The component arranges the declared child elements horizontally based on an active column configuration layout. Child elements are considered to be views, and each view is identified with a column index, specified by the [SplitView](index.html).column attached property. Views should not have width declared, because the width of each view is specified by the active layout's configuration ([ViewColumn](../Ubuntu.Components.ViewColumn.md)) and will overwrite the value specified by the view. On the other hand they should have a height specified, or they can be anchored to the top and bottom of the view. [SplitView](index.html) being a positioner, remember not to anchor horizontal anchor lines or anchor fill the columns.

In order for a [SplitView](index.html) to show some content it must have at least one active layout present. Views which are not configured by the active layout will be hidden. Hidden views may be resized, therefore if the content is size sensitive (i.e. the amount shown differs depending on the space available), make sure the content of your view does take this into account.

``` cpp
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Labs 1.0
MainView {
    id: main
    width: units.gu(300)
    height: units.gu(80)
    SplitView {
        anchors.fill: parent
        layouts: [
            SplitViewLayout {
                when: main.width < units.gu(80)
                ViewColumn {
                    fillWidth: true
                }
            },
            SplitViewLayout {
                when: main.width >= units.gu(80)
                ViewColumn {
                    minimumWidth: units.gu(30)
                    maximumWidth: units.gu(100)
                    preferredWidth: units.gu(40)
                }
                ViewColumn {
                    minimumWidth: units.gu(40)
                    fillWidth: true
                }
            }
        ]
    }
    Page {
        id: column1
        height: parent.height
    }
    Page {
        id: column2
        height: parent.height
    }
}
```

The [SplitView](index.html) can be used with a Repeater in case the content of the view columns doesn't need to be preserved between layout changes. The example above with a Repeater would look as follows:

``` cpp
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Labs 1.0
MainView {
    id: main
    width: units.gu(300)
    height: units.gu(80)
    SplitView {
        id: view
        anchors.fill: parent
        layouts: [
            SplitViewLayout {
                when: main.width < units.gu(80)
                ViewColumn {
                    fillWidth: true
                }
            },
            SplitViewLayout {
                when: main.width >= units.gu(80)
                ViewColumn {
                    minimumWidth: units.gu(30)
                    maximumWidth: units.gu(100)
                    preferredWidth: units.gu(40)
                }
                ViewColumn {
                    minimumWidth: units.gu(40)
                    fillWidth: true
                }
            }
        ]
    }
    Repeater {
        model: view.activeLayout.columns
        Page {
            height: parent.height
        }
    }
}
```

<span id="resizing"></span>
### Resizing

[SplitView](index.html) provides the ability to resize view columns. Each column has an attached handle which provides the ability to resize the columns using a mouse or touch. Columns can be resized if the spacing property is set and the column configurations allow that (see [spacing](#spacing-prop) property).

<span id="attached-properties"></span>
### Attached properties

[SplitView](index.html) provides a set of attached properties to each column view. Views can in this way have access to various values of the [SplitView](index.html) and configurations.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeLayout-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">activeLayout</span> : <span class="type"><a href="Ubuntu.Components.SplitViewLayout.md">SplitViewLayout</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the active [SplitViewLayout](../Ubuntu.Components.SplitViewLayout.md) instance, or null is no layout is active.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="handleDelegate-prop"></span><span class="name">handleDelegate</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the delegate to be shown for the column resizing handle. The delegate is for pure visual, mouse and touch handling is provided by the [SplitView](index.html) component itself. The component provides a context property called *handle* which embeds the visuals. This can be used to anchor the visuals to the resize handle. The thickness of the handle is driven by the [spacing](#spacing-prop) property.

``` cpp
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Labs 1.0
MainView {
    id: main
    width: units.gu(300)
    height: units.gu(80)
    SplitView {
        anchors.fill: parent
        handleDelegate: Rectangle {
            anchors {
                fill: parent
                leftMargin: units.dp(2)
                rightMargin: units.dp(2)
                topMargin: handle.height / 2 - units.gu(3)
                bottomMargin: handle.height / 2 - units.gu(3)
            }
            color: UbuntuColors.graphite
            scale: handle.containsMouse || handle.pressed ? 1.6 : 1.0
            Behavior on scale { UbuntuNumberAnimation {} }
        }
        layouts: [
            SplitViewLayout {
                when: main.width < units.gu(80)
                ViewColumn {
                    fillWidth: true
                }
            },
            SplitViewLayout {
                when: main.width >= units.gu(80)
                ViewColumn {
                    minimumWidth: units.gu(30)
                    maximumWidth: units.gu(100)
                    preferredWidth: units.gu(40)
                }
                ViewColumn {
                    minimumWidth: units.gu(40)
                    fillWidth: true
                }
            }
        ]
    }
    Page {
        id: column1
        height: parent.height
    }
    Page {
        id: column2
        height: parent.height
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layouts-prop"></span><span class="name">layouts</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.SplitViewLayout.md">SplitViewLayout</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The property holds the layout configurations declared for the given [SplitView](index.html).

**See also** [SplitViewLayout](../Ubuntu.Components.SplitViewLayout.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spacing-prop"></span><span class="name">spacing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Spacing between view columns. A value bigger than 0 enables resizing of columns with a [minimumWidth](../Ubuntu.Components.ViewColumn.md#minimumWidth-prop) lower than [maximumWidth](../Ubuntu.Components.ViewColumn.md#maximumWidth-prop). If spacing is 0 the columns cannot be resized. Defaults to 4 device pixels.

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="column-attached-prop"></span><span class="name">SplitView.column</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property holds the column index the view is configured to.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="columnConfig-attached-prop"></span><span class="name">SplitView.columnConfig</span> : <span class="type"><a href="Ubuntu.Components.ViewColumn.md">ViewColumn</a></span></p></td>
</tr>
</tbody>
</table>

The attached property holds the active layout's column configuration data. The value is null if there is no active configuration value provided for the column.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="view-attached-prop"></span><span class="name">SplitView.view</span> : <span class="type"><a href="index.html">SplitView</a></span></p></td>
</tr>
</tbody>
</table>

Contains the [SplitView](index.html) instance of the column.

