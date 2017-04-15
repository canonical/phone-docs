---
Title: Ubuntu.Components.UbuntuAnimation
---
        
UbuntuAnimation
===============

<span class="subtitle"></span>
Singleton defining standard Ubuntu durations and easing for animations that should be used to ensure that Ubuntu applications are consistent in their animations. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[BriskDuration](#BriskDuration-prop)**** : int
-   ****[FastDuration](#FastDuration-prop)**** : int
-   ****[SleepyDuration](#SleepyDuration-prop)**** : int
-   ****[SlowDuration](#SlowDuration-prop)**** : int
-   ****[SnapDuration](#SnapDuration-prop)**** : int
-   ****[StandardEasing](#StandardEasing-prop)**** : QEasingCurve
-   ****[StandardEasingReverse](#StandardEasingReverse-prop)**** : QEasingCurve

<span id="details"></span>
Detailed Description
--------------------

Example of use:

``` qml
RotationAnimation {
   duration: UbuntuAnimation.SlowDuration
   easing: UbuntuAnimation.StandardEasing
}
```

Animation durations should be selected depending on the frequency and disruptiveness of the animation. The more frequent an animation is, the faster it should be. The more disruptive an animation is, the slower it should be. Rule of thumb to select durations:

-   [SnapDuration](#SnapDuration-prop): very frequent, non-disruptive.
-   [FastDuration](#FastDuration-prop): frequent, non-disruptive.
-   [SlowDuration](#SlowDuration-prop): less frequent, non-disruptive.
-   [SleepyDuration](#SleepyDuration-prop): disruptive.

Note that [UbuntuNumberAnimation](../Ubuntu.Components.UbuntuNumberAnimation.md) provides a standard [NumberAnimation](../../sdk-14.10/QtQuick.NumberAnimation.md) for Ubuntu applications.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="BriskDuration-prop"></span><span class="name">BriskDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Used for frequent and non-disruptive transitions. Used when objects have more distance to travel or when they are larger in size.

The value is 333ms.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="FastDuration-prop"></span><span class="name">FastDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Used for frequent and non-disruptive transitions.

The value is 165ms.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="SleepyDuration-prop"></span><span class="name">SleepyDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Used for disruptive transitions.

The value is 1000ms.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="SlowDuration-prop"></span><span class="name">SlowDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Used for delay after key press and for less frequent and non-disruptive transitions.

The value is 500ms.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="SnapDuration-prop"></span><span class="name">SnapDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Used for very frequent and non-disruptive transitions on small objects. The user would perceive the change as instant but smooth.

The value is 100ms.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="StandardEasing-prop"></span><span class="name">StandardEasing</span> : <span class="type">QEasingCurve</span></p></td>
</tr>
</tbody>
</table>

Used for animations trigerred by user actions.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="StandardEasingReverse-prop"></span><span class="name">StandardEasingReverse</span> : <span class="type">QEasingCurve</span></p></td>
</tr>
</tbody>
</table>

StandardEasingReverse is mainly used in combination with [StandardEasing](#StandardEasing-prop). For example, if animating an object that bounces, you will want the object to slow down as it reaches the apex of its bounce and slowly speed back up as it descends.

StandardEasingReverse should not be used to introduce a new object or screen to the user. In general, it should only be used if [StandardEasing](#StandardEasing-prop) is visually inappropriate and even so, will usually be proceeded by [StandardEasing](#StandardEasing-prop).

