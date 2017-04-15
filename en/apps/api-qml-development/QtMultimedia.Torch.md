---
Title: QtMultimedia.Torch
---
        
Torch
=====

<span class="subtitle"></span>
Simple control over torch functionality More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[enabled](#enabled-prop)**** : bool
-   ****[power](#power-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

`Torch` is part of the **QtMultimedia 5.0** module.

In many cases the torch hardware is shared with camera flash functionality, and might be automatically controlled by the device. You have control over the power level (of course, higher power levels are brighter but reduce battery life significantly).

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Torch {
    power: 75       // 75% of full power
    enabled: true   // On
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
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether the torch is enabled. If the torch functionality is shared with the camera flash hardware, the camera will take priority over torch settings and the torch is disabled.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="power-prop"></span><span class="name">power</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the current torch power setting, as a percentage of full power.

In some cases this setting may change automatically as a result of temperature or battery conditions.

