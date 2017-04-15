---
Title: QtQuick.Particles.LineShape
---
        
LineShape
=========

<span class="subtitle"></span>
Represents a line for affectors and emitters More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick.Particles 2.0</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Particles.Shape.md">Shape</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[mirrored](#mirrored-prop)**** : bool

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
<td><p><span id="mirrored-prop"></span><span class="name">mirrored</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

By default, the line goes from (0,0) to (width, height) of the item that this shape is being applied to.

If mirrored is set to true, this will be mirrored along the y axis. The line will then go from (0,height) to (width, 0).

