---
Title: Ubuntu.Components.PageColumnsLayout
---
        
PageColumnsLayout
=================

<span class="subtitle"></span>
Component configuring a layout in an AdaptivePageLayout component. More...

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
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQml.QtObject.md">QtObject</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[data](#data-prop)**** : list&lt;PageColumn&gt;
-   ****[when](#when-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

The component specifies the column configuration of a specific layout. The layout will have as many columns as many [PageColumn](../Ubuntu.Components.PageColumn.md) elements will be declared. The layout will be activated when the [when](#when-prop) property evaluates to `true`. There can be many layouts evaluated to true, only the first one evaluated to true in the [AdaptivePageLayout::layouts](../Ubuntu.Components.AdaptivePageLayout.md#layouts-prop) list will be activated.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(100)
    height: units.gu(60)
    AdaptivePageLayout {
        anchors.fill: parent
        primaryPage: page1
        layouts: [
            PageColumnsLayout {
                when: width > units.gu(80)
                // column #0
                PageColumn {
                    minimumWidth: units.gu(30)
                    maximumWidth: units.gu(60)
                    preferredWidth: units.gu(40)
                }
                // column #1
                PageColumn {
                    fillWidth: true
                }
            },
            PageColumnsLayout {
                when: true
                PageColumn {
                    fillWidth: true
                    minimumWidth: units.gu(10)
                }
            }
        ]
        Page {
            id: page1
            title: "Main page"
            Column {
                Button {
                    text: "Add Page2 above " + page1.title
                    onClicked: page1.pageStack.addPageToCurrentColumn(page1, page2)
                }
                Button {
                    text: "Add Page3 next to " + page1.title
                    onClicked: page1.pageStack.addPageToNextColumn(page1, page3)
                }
            }
        }
        Page {
            id: page2
            title: "Page #2"
        }
        Page {
            id: page3
            title: "Page #3"
        }
    }
}
```

In the example above the second PageColumnLayout's condition is always set to true, which means that that the layout will be always active unless the first layout's condition evaluates to true. The layout overrides the single column minimumWidth default value. Note that [PageColumn::fillWidth](../Ubuntu.Components.PageColumn.md#fillWidth-prop) must be also set.

**Note:** When none of the conditions is met, a single column layout will be used.

**See also** [PageColumn](../Ubuntu.Components.PageColumn.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-prop"></span><span class="qmldefault">[default] </span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.PageColumn.md">PageColumn</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Default property holding the [PageColumn](../Ubuntu.Components.PageColumn.md) elements configuring each column.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="when-prop"></span><span class="name">when</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Condition activating the layout. Defaults to false.

