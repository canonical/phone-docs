---
Title: Ubuntu.Components.Pickers.Picker
---
        
Picker
======

<span class="subtitle"></span>
Picker is a slot-machine style value selection component. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Pickers 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[circular](#circular-prop)**** : bool
-   ****[delegate](#delegate-prop)**** : Component
-   ****[itemHeight](#itemHeight-prop)**** : real
-   ****[live](#live-prop)**** : bool
-   ****[model](#model-prop)**** : var
-   ****[moving](#moving-prop)**** : bool
-   ****[selectedIndex](#selectedIndex-prop)**** : int

<span id="methods"></span>
Methods
-------

-   ****[positionViewAtIndex](#positionViewAtIndex-method)****(*index*)

<span id="details"></span>
Detailed Description
--------------------

The Picker lists the elements specified by the [model](#model-prop) using the [delegate](#delegate-prop) vertically using a slot-machine tumbler-like list. The selected item is always the one in the center of the component, and it is represented by the [selectedIndex](#selectedIndex-prop) property.

The elements can be either in a circular list or in a normal list.

Delegates must be composed using [PickerDelegate](../Ubuntu.Components.Pickers.PickerDelegate.md).

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Pickers 1.0
Picker {
    model: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"]
    delegate: PickerDelegate {
        Label {
            text: modelData
        }
    }
    selectedIndex: 5
    onSelectedIndexChanged: {
        print("selected month: " + selectedIndex);
    }
}
```

**Note**: the [selectedIndex](#selectedIndex-prop) must be set explicitly to the desired index if the model is set, filled or changed after the component is complete. In the following example the selected item must be set after the model is set.

``` qml
Picker {
    selectedIndex: 5 // this will be set to 0 at the model completion
    delegate: PickerDelegate {
        Label {
            text: modelData
        }
    }
    Component.onCompleted: {
        var stack = [];
        for (var i = 0; i < 10; i++) {
            stack.push("Line " + i);
        }
        model = stack;
        // selectedIndex must be set explicitly
        selectedIndex = 3;
    }
}
```

<span id="known-issues"></span>
#### Known issues

-   \[1\] Circular picker does not react on touch generated flicks (on touch enabled devices) when nested into a Flickable - <https://bugreports.qt-project.org/browse/QTBUG-30840>
-   \[2\] Circular picker sets [selectedIndex](#selectedIndex-prop) to 0 when the model is cleared, contrary to linear one, which sets it to -1 - <https://bugreports.qt-project.org/browse/QTBUG-35400>

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="circular-prop"></span><span class="name">circular</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Property specifying whether the tumbler list is wrap-around (*true*), or normal (*false*). Default value is true.

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

The delegate visualizing the model elements. Any kind of component can be used as delegate, however it is recommended to use [PickerDelegate](../Ubuntu.Components.Pickers.PickerDelegate.md), which integrates selection functionality into the Picker.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemHeight-prop"></span><span class="name">itemHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property specifies the defautl height of the PickerDelegates. It is recommended to change the delegate height through this property rather than changing it from the delegate itself.

This QML property was introduced in Ubuntu.Components.Pickers 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="live-prop"></span><span class="name">live</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defines whether the [selectedIndex](#selectedIndex-prop) should be updated while the tumbler changes the selected item during draggingm or only when the tumbler's motion ends. The default behavior is non-live update.

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

Specifies the model listing the content of the picker.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moving-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">moving</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property holds whether the picker's view is moving due to the user interaction either by dragging, flicking or due to the manual change of the [selectedIndex](#selectedIndex-prop) property.

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

The property holds the index of the selected item

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionViewAtIndex-method"></span><span class="name">positionViewAtIndex</span>( <em>index</em>)</p></td>
</tr>
</tbody>
</table>

The function positions the picker's view to the given index without animating the view. The component must be ready when calling the function, e.g. to make sure the Picker shows up at the given index, do the following:

``` qml
Picker {
    model: 120
    delegate: PickerDelegate {
        Label {
            anchors.fill: parent
            verticalCenter: Text.AlignVCenter
            text: modelData
        }
    }
    Component.onCompleted: positionViewAtIndex(10)
}
```

