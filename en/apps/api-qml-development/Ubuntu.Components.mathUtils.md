---
Title: Ubuntu.Components.mathUtils
---
        
mathUtils
=========

<span class="subtitle"></span>
Various mathematical utility functions. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="methods"></span>
Methods
-------

-   ****[clamp](#clamp-method)****(x, min, max)
-   ****[clampAndProject](#clampAndProject-method)****(x, xmin, xmax, ymin, ymax)
-   ****[lerp](#lerp-method)****(delta, from, to)
-   ****[projectValue](#projectValue-method)****(x, xmin, xmax, ymin, ymax)

<span id="details"></span>
Detailed Description
--------------------

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clamp-method"></span><span class="name">clamp</span>(<span class="type">x</span>, <span class="type">min</span>, <span class="type">max</span>)</p></td>
</tr>
</tbody>
</table>

Ensure the value x is between min and max

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clampAndProject-method"></span><span class="name">clampAndProject</span>(<span class="type">x</span>, <span class="type">xmin</span>, <span class="type">xmax</span>, <span class="type">ymin</span>, <span class="type">ymax</span>)</p></td>
</tr>
</tbody>
</table>

Linearly project a value x, but in addition to [projectValue](#projectValue-method) it's clamped to xmin/xmax first

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lerp-method"></span><span class="name">lerp</span>(<span class="type">delta</span>, <span class="type">from</span>, <span class="type">to</span>)</p></td>
</tr>
</tbody>
</table>

Get the linear interpolation

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="projectValue-method"></span><span class="name">projectValue</span>(<span class="type">x</span>, <span class="type">xmin</span>, <span class="type">xmax</span>, <span class="type">ymin</span>, <span class="type">ymax</span>)</p></td>
</tr>
</tbody>
</table>

Linearly project a value x from \[xmin, xmax\] into \[ymin, ymax\]

