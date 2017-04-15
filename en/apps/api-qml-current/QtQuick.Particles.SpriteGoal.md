---
Title: QtQuick.Particles.SpriteGoal
---
        
SpriteGoal
==========

<span class="subtitle"></span>
For changing the state of a sprite particle More...

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
-   ****[systemStates](#systemStates-prop)**** : bool

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

The name of the Sprite which the affected particles should move to.

Sprite states have defined durations and transitions between them, setting goalState will cause it to disregard any path weightings (including 0) and head down the path which will reach the goalState quickest. It will pass through intermediate states on that path.

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

If true, affected sprites will jump directly to the goal state instead of taking the shortest valid path to get there. They will also not finish their current state, but immediately move to the beginning of the goal state.

Default is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="systemStates-prop"></span><span class="name">systemStates</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

deprecated, use [GroupGoal](../QtQuick.Particles.GroupGoal.md) instead

