---
Title: QtQuick.ItemGrabResult
---
        
ItemGrabResult
==============

<span class="subtitle"></span>
Contains the results from a call to Item::grabToImage(). More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | import QtQuick 2.4   |
| Instantiates:     | QQuickItemGrabResult |

<span id="methods"></span>
Methods
-------

-   bool ****[saveToFile](#saveToFile-method)****(fileName)

<span id="details"></span>
Detailed Description
--------------------

The [ItemGrabResult](index.html) is a small container used to encapsulate the results from [Item::grabToImage()](../QtQuick.Item.md#grabToImage-method).

**See also** [Item::grabToImage()](../QtQuick.Item.md#grabToImage-method).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="saveToFile-method"></span><span class="type">bool</span> <span class="name">saveToFile</span>(<span class="type">fileName</span>)</p></td>
</tr>
</tbody>
</table>

Saves the grab result as an image to *fileName*. Returns true if successful; otherwise returns false.

