---
Title: QtQuick.Particles.ParticleGroup
---
        
ParticleGroup
=============

<span class="subtitle"></span>
For setting attributes on a logical particle group More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import QtQuick.Particles 2.0 |

<span id="properties"></span>
Properties
----------

-   ****[duration](#duration-prop)**** : int
-   ****[durationVariation](#durationVariation-prop)**** : ParticleSystem
-   ****[name](#name-prop)**** : string
-   ****[system](#system-prop)**** : ParticleSystem
-   ****[to](#to-prop)**** : ParticleSystem

<span id="details"></span>
Detailed Description
--------------------

This element allows you to set timed transitions on particle groups.

You can also use this element to group particle system elements related to the logical particle group. Emitters, Affectors and Painters set as direct children of a [ParticleGroup](index.html) will automatically apply to that logical particle group. TrailEmitters will automatically follow the group.

If a [ParticleGroup](index.html) element is not defined for a group, the group will function normally as if none of the transition properties were set.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="duration-prop"></span><span class="name">duration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The time in milliseconds before the group will attempt to transition.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="durationVariation-prop"></span><span class="name">durationVariation</span> : <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span></p></td>
</tr>
</tbody>
</table>

The maximum number of milliseconds that the duration of the transition cycle varies per particle in the group.

Default value is zero.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This is the name of the particle group, and how it is generally referred to by other elements.

If elements refer to a name which does not have an explicit [ParticleGroup](index.html) created, it will work normally (with no transitions specified for the group). If you do not need to assign duration based transitions to a group, you do not need to create a [ParticleGroup](index.html) with that name (although you may).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="system-prop"></span><span class="name">system</span> : <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span></p></td>
</tr>
</tbody>
</table>

This is the system which will contain the group.

If the [ParticleGroup](index.html) is a direct child of a [ParticleSystem](../QtQuick.Particles.ParticleSystem.md), it will automatically be associated with it.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span></p></td>
</tr>
</tbody>
</table>

The weighted list of transitions valid for this group.

If the chosen transition stays in this group, another duration (+/- up to [durationVariation](#durationVariation-prop)) milliseconds will occur before another transition is attempted.

