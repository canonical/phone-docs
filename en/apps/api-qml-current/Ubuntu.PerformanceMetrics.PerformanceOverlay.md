---
Title: Ubuntu.PerformanceMetrics.PerformanceOverlay
---
        
PerformanceOverlay
==================

<span class="subtitle"></span>
Overlay displaying performance related metrics (rendering time, CPU usage, etc.) More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.PerformanceMetrics .</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[active](#active-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

[PerformanceOverlay](index.html) displays various performance related indicators to help developers detect issues in their application.

Examples:

``` qml
PerformanceOverlay {
    active: true
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
<td><p><span id="active-prop"></span><span class="name">active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether or not the [PerformanceOverlay](index.html) is displayed.

