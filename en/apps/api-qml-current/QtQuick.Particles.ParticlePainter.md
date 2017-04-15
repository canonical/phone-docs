---
Title: QtQuick.Particles.ParticlePainter
---
        
ParticlePainter
===============

<span class="subtitle"></span>
For specifying how to paint particles More...

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
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="QtQuick.Particles.CustomParticle.md">CustomParticle</a>, <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a>, and <a href="QtQuick.Particles.ItemParticle.md">ItemParticle</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[groups](#groups-prop)**** : list&lt;string&gt;
-   ****[system](#system-prop)**** : ParticleSystem

<span id="details"></span>
Detailed Description
--------------------

The default implementation paints nothing. See the subclasses if you want to paint something visible.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="groups-prop"></span><span class="name">groups</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

Which logical particle groups will be painted.

If empty, it will paint the default particle group ("").

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

This is the system whose particles can be painted by the element. If the [ParticlePainter](index.html) is a direct child of a [ParticleSystem](../QtQuick.Particles.ParticleSystem.md), it will automatically be associated with it.

