---
Title: Ubuntu.Components.OptionSelector
---
        
OptionSelector
==============

<span class="subtitle"></span>
Component displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being expanded. If multiple choice is selected the list is expanded automatically. More...

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
<td><p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[colourImage](#colourImage-prop)**** : bool
-   ****[containerHeight](#containerHeight-prop)**** : real
-   ****[currentlyExpanded](#currentlyExpanded-prop)**** : bool
-   ****[delegate](#delegate-prop)**** : Component
-   ****[expanded](#expanded-prop)**** : bool
-   ****[itemHeight](#itemHeight-prop)**** : real
-   ****[model](#model-prop)**** : var
-   ****[multiSelection](#multiSelection-prop)**** : bool
-   ****[selectedIndex](#selectedIndex-prop)**** : int

<span id="signals"></span>
Signals
-------

-   ****[delegateClicked](#delegateClicked-signal)****(int *index*)
-   ****[expansionCompleted](#expansionCompleted-signal)****()

<span id="details"></span>
Detailed Description
--------------------

Examples:

``` qml
import Ubuntu.Components 1.3
Column {
    spacing: units.gu(3)
    OptionSelector {
        text: i18n.tr("Label")
        model: [i18n.tr("Value 1"),
                i18n.tr("Value 2"),
                i18n.tr("Value 3"),
                i18n.tr("Value 4")]
    }
    OptionSelector {
        text: i18n.tr("Label")
        expanded: true
        model: [i18n.tr("Value 1"),
                i18n.tr("Value 2"),
                i18n.tr("Value 3"),
                i18n.tr("Value 4")]
    }
    OptionSelector {
        objectName: "optionselector_multipleselection"
        text: i18n.tr("Multiple Selection")
        expanded: false
        multiSelection: true
        model: [i18n.tr("Value 1"),
                i18n.tr("Value 2"),
                i18n.tr("Value 3"),
                i18n.tr("Value 4")]
    }
    OptionSelector {
        text: i18n.tr("Label")
        model: customModel
        expanded: true
        colourImage: true
        delegate: selectorDelegate
    }
    Component {
        id: selectorDelegate
        OptionSelectorDelegate { text: name; subText: description; iconSource: image }
    }
    ListModel {
        id: customModel
        ListElement { name: "Name 1"; description: "Description 1"; image: "images.png" }
        ListElement { name: "Name 2"; description: "Description 2"; image: "images.png" }
        ListElement { name: "Name 3"; description: "Description 3"; image: "images.png" }
        ListElement { name: "Name 4"; description: "Description 4"; image: "images.png" }
    }
    OptionSelector {
        text: i18n.tr("Label")
        model: [i18n.tr("Value 1"),
                i18n.tr("Value 2"),
                i18n.tr("Value 3"),
                i18n.tr("Value 4"),
                i18n.tr("Value 5"),
                i18n.tr("Value 6"),
                i18n.tr("Value 7"),
                i18n.tr("Value 8")]
        containerHeight: itemHeight * 4
    }
    OptionSelector {
        text: i18n.tr("Label")
        expanded: true
        model: [i18n.tr("Value 1"),
                i18n.tr("Value 2"),
                i18n.tr("Value 3"),
                i18n.tr("Value 4"),
                i18n.tr("Value 5"),
                i18n.tr("Value 6"),
                i18n.tr("Value 7"),
                i18n.tr("Value 8")]
        containerHeight: itemHeight * 4
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
<td><p><span id="colourImage-prop"></span><span class="name">colourImage</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Colours image according to the fieldText colour of the theme, otherwise source colour is maintained.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="containerHeight-prop"></span><span class="name">containerHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Custom height for list container which allows scrolling inside the selector.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentlyExpanded-prop"></span><span class="name">currentlyExpanded</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Is our list currently expanded?

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="name">delegate</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

[ListView](../QtQuick.ListView.md) delegate.

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

Specifies whether the list is always expanded.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemHeight-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">itemHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Height of an individual list item.

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

The list of values that will be shown under the label text. This is a model.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="multiSelection-prop"></span><span class="name">multiSelection</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If the multiple choice selection is enabled the list is always expanded.

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

The index of the currently selected element in our list.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegateClicked-signal"></span><span class="name">delegateClicked</span>(<span class="type">int</span> <em>index</em>)</p></td>
</tr>
</tbody>
</table>

Called when delegate is clicked.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expansionCompleted-signal"></span><span class="name">expansionCompleted</span>()</p></td>
</tr>
</tbody>
</table>

Called when the selector has finished expanding or collapsing.

