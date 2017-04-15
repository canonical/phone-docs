---
Title: Ubuntu.Components.SplitViewLayout
---
        
SplitViewLayout
===============

<span class="subtitle"></span>
Layout configuration for SplitView. More...

|                   |          |
|-------------------|----------|
| Import Statement: | import . |

<span id="properties"></span>
Properties
----------

-   ****[columns](#columns-prop)**** : list&lt;ViewColumn&gt;
-   ****[when](#when-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

[SplitViewLayout](index.html) defines a layout configuration and the condition when the layout is expected to be applied. In case multiple layout conditions evaluate to true, the first one in the list will be activated.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="columns-prop"></span><span class="qmldefault">[default] </span><span class="name">columns</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.ViewColumn.md">ViewColumn</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The property holds the column configurations for the layout. If the view has more columns than the configuration specifies, the extra columns will be hidden (their visible property will be set to false!). Also, the hidden column sizes may change, therefore size-sensitive content must be aware of this.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="when-prop"></span><span class="name">when</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies the condition when to apply the layout. Usually holds a binding which evaluates to true or false to activate the layout.

