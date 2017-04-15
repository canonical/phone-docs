---
Title: QtQuick.Particles.GroupGoal
---
        
GroupGoal
=========

<span class="subtitle"></span>
For changing the state of a group of a particle More...

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
<td><p><a href="QtQuick.Particles.Affector.md">Affector</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[goalState](#goalState-prop)**** : string
-   ****[jump](#jump-prop)**** : bool

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
<td><p><span id="goalState-prop"></span><span class="name">goalState</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The name of the group which the affected particles should move to.

Groups can have defined durations and transitions between them, setting goalState will cause it to disregard any path weightings (including 0) and head down the path which will reach the goalState quickest. It will pass through intermediate groups on that path for their respective durations.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="jump-prop"></span><span class="name">jump</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, affected particles will jump directly to the target group instead of taking the shortest valid path to get there. They will also not finish their current state, but immediately move to the beginning of the goal state.

Default is false.

