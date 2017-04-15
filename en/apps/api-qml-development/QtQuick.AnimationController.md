---
Title: QtQuick.AnimationController
---
        
AnimationController
===================

<span class="subtitle"></span>
Enables manual control of animations More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[animation](#animation-prop)**** : Animation
-   ****[progress](#progress-prop)**** : real

<span id="methods"></span>
Methods
-------

-   ****[completeToBeginning](#completeToBeginning-method)****()
-   ****[completeToEnd](#completeToEnd-method)****()
-   ****[reload](#reload-method)****()

<span id="details"></span>
Detailed Description
--------------------

Normally animations are driven by an internal timer, but the [AnimationController](index.html) allows the given *animation* to be driven by a *progress* value explicitly.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="animation-prop"></span><span class="qmldefault">[default] </span><span class="name">animation</span> : <span class="type"><a href="QtQuick.Animation.md">Animation</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the animation to be controlled by the [AnimationController](index.html).

Note:An animation controlled by [AnimationController](index.html) will always have its `running` and `paused` properties set to true. It can not be manually started or stopped (much like an animation in a Behavior can not be manually started or stopped).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="progress-prop"></span><span class="name">progress</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the animation progress value.

The valid `progress` value is 0.0 to 1.0, setting values less than 0 will be converted to 0, setting values great than 1 will be converted to 1.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="completeToBeginning-method"></span><span class="name">completeToBeginning</span>()</p></td>
</tr>
</tbody>
</table>

Finishes running the controlled animation in a backwards direction.

After calling this method, the animation runs normally from the current progress point in a backwards direction to the beginning state.

The animation controller's progress value will be automatically updated while the animation is running.

**See also** [completeToEnd()](#completeToEnd-method) and [progress](#progress-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="completeToEnd-method"></span><span class="name">completeToEnd</span>()</p></td>
</tr>
</tbody>
</table>

Finishes running the controlled animation in a forwards direction.

After calling this method, the animation runs normally from the current progress point in a forwards direction to the end state.

The animation controller's progress value will be automatically updated while the animation is running.

**See also** [completeToBeginning()](#completeToBeginning-method) and [progress](#progress-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reload-method"></span><span class="name">reload</span>()</p></td>
</tr>
</tbody>
</table>

Reloads the animation properties

If the animation properties changed, calling this method to reload the animation definations.

