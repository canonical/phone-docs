---
Title: Ubuntu.Components.Sections
---
        
Sections
========

<span class="subtitle"></span>
Display a list of sections that the user can select. By tapping on a section name the selectedIndex will be updated, and the associated Action is triggered. More...

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
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[actions](#actions-prop)**** : Action
-   ****[model](#model-prop)**** : var
-   ****[selectedIndex](#selectedIndex-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

List of actions that represent the sections. The text of each action is displayed as the section name and clicking a section will update the [selectedIndex](#selectedIndex-prop).

When [selectedIndex](#selectedIndex-prop) is changed (by user interaction or by setting the value), actions\[[selectedIndex](#selectedIndex-prop)\] will be triggered.

Example:

``` qml
Sections {
    actions: [
        Action {
            text: "first"
            onTriggered: print("one")
        },
        Action {
            text: "second"
            onTriggered: print("two")
        },
        Action {
            text: "third"
            onTriggered: print("three")
        }
    ]
}
```

It is strongly recommended to limit the number of sections to two or three. The actions are used as the model for the Sections by default. If no trigger functions need to be specified, [model](#model-prop) may be used directly without setting the actions property. If both actions and [model](#model-prop) are set, model overrides the actions.

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

The input model for the sections. By default model takes the [actions](#actions-prop) as input, but if no trigger functions need to be specified, it can be simplified to a list of strings naming the sections:

``` qml
Sections {
    model: [ "one", "two", "three" ]
    onSelectedIndexChanged: {
        print("Selected section " + model[selectedIndex]);
    }
}
```

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

The index of the currently selected section in [model](#model-prop). The default value is 0 if there is at least 1 section, or -1 for no sections. When the model is changed, selectedIndex is reset to 0 and the first action is triggered. Upon completion of the Sections component, if there is an Action associated with the selected index, that Action will be triggered.

