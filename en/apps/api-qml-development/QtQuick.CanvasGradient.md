---
Title: QtQuick.CanvasGradient
---
        
CanvasGradient
==============

<span class="subtitle"></span>
Provides an opaque CanvasGradient interface More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.0             |

<span id="methods"></span>
Methods
-------

-   CanvasGradient ****[addColorStop](#addColorStop-method)****(real *offsetof*, string *color*)

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
<td><p><span id="addColorStop-method"></span><span class="type"><a href="index.html">CanvasGradient</a></span> <span class="name">addColorStop</span>(<span class="type">real</span> <em>offsetof</em>, <span class="type">string</span> <em>color</em>)</p></td>
</tr>
</tbody>
</table>

Adds a color stop with the given color to the gradient at the given offset. 0.0 is the offset at one end of the gradient, 1.0 is the offset at the other end.

For example:

``` cpp
var gradient = ctx.createLinearGradient(0, 0, 100, 100);
gradient.addColorStop(0.3, Qt.rgba(1, 0, 0, 1));
gradient.addColorStop(0.7, 'rgba(0, 255, 255, 1');
```

