---
Title: QtQuick.Window.CloseEvent
---
        
CloseEvent
==========

<span class="subtitle"></span>
Notification that a Window is about to be closed More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import QtQuick.Window 2.2 |
| Since:            | Qt 5.1                    |

<span id="properties"></span>
Properties
----------

-   ****[accepted](#accepted-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

Notification that a window is about to be closed by the windowing system (e.g. the user clicked the title bar close button). The [CloseEvent](index.html) contains an accepted property which can be set to false to abort closing the window.

**See also** Window.closing().

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accepted-prop"></span><span class="name">accepted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether the application will allow the user to close the window. It is true by default.

