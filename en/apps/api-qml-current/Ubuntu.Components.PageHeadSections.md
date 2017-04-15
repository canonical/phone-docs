---
Title: Ubuntu.Components.PageHeadSections
---
        
PageHeadSections
================

<span class="subtitle"></span>
PageHeadSections is used to configure the sections for a Page. More...

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
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQml.QtObject.md">QtObject</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[actions](../../sdk-15.04.4/Ubuntu.Components.PageHeadSections.md#actions-prop)**** : Action
-   ****[enabled](../../sdk-15.04.4/Ubuntu.Components.PageHeadSections.md#enabled-prop)**** : bool
-   ****[model](../../sdk-15.04.4/Ubuntu.Components.PageHeadSections.md#model-prop)**** : var
-   ****[selectedIndex](../../sdk-15.04.4/Ubuntu.Components.PageHeadSections.md#selectedIndex-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

These sections will be shown in the bottom part of the header. This component does not need to be instantiated by the developer, it is automatically part of [PageHeadConfiguration](../../sdk-15.04.4/Ubuntu.Components.PageHeadConfiguration.md).

See also [Sections](../../sdk-15.04.4/Ubuntu.Components.Sections.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type"><a href="../../sdk-15.04.4/Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

List of actions that represent the sections. The text of each action is displayed as the section name and clicking a section will update the [selectedIndex](../../sdk-15.04.4/Ubuntu.Components.PageHeadSections.md#selectedIndex-prop).

When [selectedIndex](../../sdk-15.04.4/Ubuntu.Components.PageHeadSections.md#selectedIndex-prop) is changed (by user interaction or by setting the value), actions\[[selectedIndex](../../sdk-15.04.4/Ubuntu.Components.PageHeadSections.md#selectedIndex-prop)\] will be triggered.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Set this property to false to disable user interaction to change the selected section. Default value: true

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

The input model for the sections. By default model takes the [actions](../../sdk-15.04.4/Ubuntu.Components.PageHeadSections.md#actions-prop) as input, but if no trigger functions need to be specified, it can be simplified to a list of strings naming the sections:

``` qml
import Ubuntu.Components 1.3
import QtQuick 2.4
MainView {
    width: units.gu(50)
    height: units.gu(80)
    Page {
        id: page
        title: "Sections"
        head {
            sections {
                model: ["one", "two", "three"]
            }
        }
        Label {
            anchors.centerIn: parent
            text: "Section " + page.head.sections.selectedIndex
        }
    }
}
```

It is strongly recommended to limit the number of sections to two or three.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedIndex-prop"></span><span class="name">selectedIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The index of the currently selected section in [model](../../sdk-15.04.4/Ubuntu.Components.PageHeadSections.md#model-prop).

