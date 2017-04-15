---
Title: Ubuntu.Components.Slider
---
        
Slider
======

<span class="subtitle"></span>
Slider is a component to select a value from a continuous range of values. More...

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
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[live](#live-prop)**** : bool
-   ****[maximumValue](#maximumValue-prop)**** : real
-   ****[minimumValue](#minimumValue-prop)**** : real
-   ****[pressed](#pressed-prop)**** : bool
-   ****[stepSize](#stepSize-prop)**** : real
-   ****[value](#value-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[touched](#touched-signal)****(bool *onThumb*)

<span id="methods"></span>
Methods
-------

-   ****[formatValue](#formatValue-method)****(*v*)

<span id="details"></span>
Detailed Description
--------------------

The slider's sensing area is defined by the width and height, therefore styles should take this into account when defining the visuals, and alter these values to align the graphics' sizes.

[See also the Design Guidelines on Sliders](https://design.ubuntu.com/apps/building-blocks/selection#slider).

Example:

``` qml
Item {
    Slider {
        function formatValue(v) { return v.toFixed(2) }
        minimumValue: -3.14
        maximumValue: 3.14
        value: 0.0
        live: true
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
<td><p><span id="live-prop"></span><span class="name">live</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defines whether the value is updated while the thumb is dragged or just when the thumb is released.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumValue-prop"></span><span class="name">maximumValue</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The maximum value from the continuous range of values. If this value is lesser than [minimumValue](#minimumValue-prop), the component will be in an inconsistent state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumValue-prop"></span><span class="name">minimumValue</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The minimum value from the continuous range of values. If this value is greater than [maximumValue](#maximumValue-prop), the component will be in an inconsistent state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the Slider is currently being pressed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stepSize-prop"></span><span class="name">stepSize</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The distance between two selectable values in the range defined by \[[minimumValue](#minimumValue-prop), [maximumValue](#maximumValue-prop)\].

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current value of the slider. This property is not changed while the thumb is dragged unless the live property is set to true.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touched-signal"></span><span class="name">touched</span>(<span class="type">bool</span> <em>onThumb</em>)</p></td>
</tr>
</tbody>
</table>

The signal is emitted when there is a click on the slider. The onThumb parameter provides information if the click, was inside of the thumb element.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="formatValue-method"></span><span class="name">formatValue</span>( <em>v</em>)</p></td>
</tr>
</tbody>
</table>

This function is used by the value indicator to show the current value. Reimplement this function if you want to show different information. By default, the value v is rounded to the nearest integer value.

