---
Title: Ubuntu.Components.LiveTimer
---
        
LiveTimer
=========

<span class="subtitle"></span>
A live timing source providing peridioc updates. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.3        |

<span id="properties"></span>
Properties
----------

-   ****[frequency](#frequency-prop)**** : enumeration
-   ****[relativeTime](#relativeTime-prop)**** : datetime

<span id="signals"></span>
Signals
-------

-   ****[trigger](#trigger-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The [LiveTimer](index.html) is a source for periodic signals triggered on second/minute/hour boundaries. The timer can also be set up to provide signals with an increasing frequency the closer a given time is to current time.

Examples:

``` qml
import Ubuntu.Components 1.3
LiveTimer {
    frequency: LiveTimer.Second
    onTrigger: console.log("The time is now", new Date().toString());
}
```

``` qml
import Ubuntu.Components 1.3
LiveTimer {
    frequency: LiveTimer.Relative
    relativeTime: new Date()
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
<td><p><span id="frequency-prop"></span><span class="name">frequency</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This properties defines the frequency at which the [LiveTimer](index.html) signals notifications.

-   **LiveTimer.Disabled** - disable the [LiveTimer](index.html) [trigger](#trigger-signal) signal
-   **LiveTimer.Second** - emit the [trigger](#trigger-signal) signal on every change of second.
-   **LiveTimer.Minute** - emit the [trigger](#trigger-signal) signal on every change of minute.
-   **LiveTimer.Hour** - emit the [trigger](#trigger-signal) signal on every change of hour.
-   **LiveTimer.Relative** - emit the [trigger](#trigger-signal) signal periodically depending on how close current time is to to [relativeTime](#relativeTime-prop). If [relativeTime](#relativeTime-prop) is within 30 seconds of the current time, trigger every 30 seconds. Within an hour, trigger every minute. Otherwise, trigger every hour until the relative time is more than a week past current time, after which updates are disabled.

    **Note:** Setting the frequency to [LiveTimer](index.html).Relative will disable the timer until a [relativeTime](#relativeTime-prop) is set.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeTime-prop"></span><span class="name">relativeTime</span> : <span class="type">datetime</span></p></td>
</tr>
</tbody>
</table>

This properties defines the value used for proximity evaluation when using Relative mode.

**Note:** This property has no impact unless the [frequency](#frequency-prop) is set to [LiveTimer](index.html).Relative

This QML property was introduced in Ubuntu.Components 1.3.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="trigger-signal"></span><span class="name">trigger</span>()</p></td>
</tr>
</tbody>
</table>

Signal called when the timer is triggered

