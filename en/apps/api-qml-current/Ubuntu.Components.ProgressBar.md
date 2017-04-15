---
Title: Ubuntu.Components.ProgressBar
---
        
ProgressBar
===========

<span class="subtitle"></span>
The ProgressBar component visually indicates the progress of a process of determinate or indeterminate duration. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[indeterminate](#indeterminate-prop)**** : bool
-   ****[maximumValue](#maximumValue-prop)**** : real
-   ****[minimumValue](#minimumValue-prop)**** : real
-   ****[showProgressPercentage](#showProgressPercentage-prop)**** : bool
-   ****[value](#value-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

Example:

``` qml
Item {
    ProgressBar {
        id: indeterminateBar
        indeterminate: true
    }
    ProgressBar {
        id: determinateBar
        minimumValue: -3.0
        maximumValue: 15
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
<td><p><span id="indeterminate-prop"></span><span class="name">indeterminate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies whether the progress interval is unknown. When set, altering other properties do not have any effect on the component's behavior. By default the property is set to false.

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

Specifies the maximum value of the progress.

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

Specifies the minimum value of the progress.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showProgressPercentage-prop"></span><span class="name">showProgressPercentage</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies if the value of the progress is visible

This QML property was introduced in Ubuntu.Components 1.1.

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

Specifies the current value of the progress

