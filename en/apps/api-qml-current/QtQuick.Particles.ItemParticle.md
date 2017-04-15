---
Title: QtQuick.Particles.ItemParticle
---
        
ItemParticle
============

<span class="subtitle"></span>
For specifying a delegate to paint particles More...

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
<td><p><a href="QtQuick.Particles.ParticlePainter.md">ParticlePainter</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[delegate](#delegate-prop)**** : Component
-   ****[fade](#fade-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   void ****[freeze](#freeze-method)****(Item *item*)
-   void ****[give](#give-method)****(Item *item*)
-   void ****[take](#take-method)****(Item *item*, bool *prioritize*)
-   void ****[unfreeze](#unfreeze-method)****(Item *item*)

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
<td><p><span id="delegate-prop"></span><span class="name">delegate</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

An instance of the delegate will be created for every logical particle, and moved along with it.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fade-prop"></span><span class="name">fade</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, the item will automatically be faded in and out at the ends of its lifetime. If false, you will have to implement any entry effect yourself.

Default is true.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="freeze-method"></span><span class="type">void</span> <span class="name">freeze</span>(<span class="type"><a href="QtQuick.Item.md">Item</a></span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Suspends the flow of time for the logical particle which item represents, allowing you to control its movement.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="give-method"></span><span class="type">void</span> <span class="name">give</span>(<span class="type"><a href="QtQuick.Item.md">Item</a></span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Orders the [ItemParticle](index.html) to give you control of the item. It will cease controlling it and the item will lose its association to the logical particle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="take-method"></span><span class="type">void</span> <span class="name">take</span>(<span class="type"><a href="QtQuick.Item.md">Item</a></span> <em>item</em>, <span class="type">bool</span> <em>prioritize</em>)</p></td>
</tr>
</tbody>
</table>

Asks the [ItemParticle](index.html) to take over control of item. It will be emitted when there is a logical particle available.

By default items form a queue when waiting for a logical particle, but if prioritize is true then it will go immediately to the head of the queue.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="unfreeze-method"></span><span class="type">void</span> <span class="name">unfreeze</span>(<span class="type"><a href="QtQuick.Item.md">Item</a></span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Restarts the flow of time for the logical particle which item represents, allowing it to be moved by the particle system again.

