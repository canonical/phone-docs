---
Title: QtQml.Timer
---
        
Timer
=====

<span class="subtitle"></span>
Triggers a handler at a specified interval More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="properties"></span>
Properties
----------

-   ****[interval](#interval-prop)**** : int
-   ****[repeat](#repeat-prop)**** : bool
-   ****[running](#running-prop)**** : bool
-   ****[triggeredOnStart](#triggeredOnStart-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[triggered](#triggered-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[restart](#restart-method)****()
-   ****[start](#start-method)****()
-   ****[stop](#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

A Timer can be used to trigger an action either once, or repeatedly at a given interval.

Here is a Timer that shows the current date and time, and updates the text every 500 milliseconds. It uses the JavaScript `Date` object to access the current time.

``` qml
import QtQuick 2.0
Item {
    Timer {
        interval: 500; running: true; repeat: true
        onTriggered: time.text = Date().toString()
    }
    Text { id: time }
}
```

The Timer type is synchronized with the animation timer. Since the animation timer is usually set to 60fps, the resolution of Timer will be at best 16ms.

If the Timer is running and one of its properties is changed, the elapsed time will be reset. For example, if a Timer with interval of 1000ms has its *repeat* property changed 500ms after starting, the elapsed time will be reset to 0, and the Timer will be triggered 1000ms later.

**See also** Qt Quick Demo - Clocks.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="interval-prop"></span><span class="name">interval</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Sets the *interval* between triggers, in milliseconds.

The default interval is 1000 milliseconds.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="repeat-prop"></span><span class="name">repeat</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If *repeat* is true the timer is triggered repeatedly at the specified interval; otherwise, the timer will trigger once at the specified interval and then stop (i.e. running will be set to false).

*repeat* defaults to false.

**See also** [running](#running-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If set to true, starts the timer; otherwise stops the timer. For a non-repeating timer, *running* is set to false after the timer has been triggered.

*running* defaults to false.

**See also** [repeat](#repeat-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggeredOnStart-prop"></span><span class="name">triggeredOnStart</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

When a timer is started, the first trigger is usually after the specified interval has elapsed. It is sometimes desirable to trigger immediately when the timer is started; for example, to establish an initial state.

If *triggeredOnStart* is true, the timer is triggered immediately when started, and subsequently at the specified interval. Note that if *repeat* is set to false, the timer is triggered twice; once on start, and again at the interval.

*triggeredOnStart* defaults to false.

**See also** [running](#running-prop).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggered-signal"></span><span class="name">triggered</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the Timer times out.

The corresponding handler is `onTriggered`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="restart-method"></span><span class="name">restart</span>()</p></td>
</tr>
</tbody>
</table>

Restarts the timer

If the Timer is not running it will be started, otherwise it will be stopped, reset to initial state and started. The `running` property will be true following a call to `restart()`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Starts the timer

If the timer is already running, calling this method has no effect. The `running` property will be true following a call to `start()`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stops the timer

If the timer is not running, calling this method has no effect. The `running` property will be false following a call to `stop()`.

