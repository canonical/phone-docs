---
Title: Ubuntu.Test.TestExtras
---
        
TestExtras
==========

<span class="subtitle"></span>
Singleton type providing additional test functions. More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | import Ubuntu.Test . |

<span id="methods"></span>
Methods
-------

-   ****[cpuArchitecture](#cpuArchitecture-method)****()
-   void ****[mouseDrag](#mouseDrag-method)****(touchId, item, from, delta, button, stateKey, steps, delay)
-   ****[openGLflavor](#openGLflavor-method)****()
-   ****[registerTouchDevice](#registerTouchDevice-method)****()
-   ****[touchClick](#touchClick-method)****(touchId, item, point)
-   ****[touchDevicePresent](#touchDevicePresent-method)****()
-   ****[touchDoubleClick](#touchDoubleClick-method)****(touchId, item, point)
-   ****[touchDrag](#touchDrag-method)****(touchId, item, from, delta, steps)
-   ****[touchLongPress](#touchLongPress-method)****(touchId, item, point)
-   ****[touchMove](#touchMove-method)****(touchId, item, point)
-   ****[touchPress](#touchPress-method)****(touchId, item, point)
-   ****[touchRelease](#touchRelease-method)****(touchId, item, point)

<span id="details"></span>
Detailed Description
--------------------

The component provides additional test functions like touch handling, registering touch device on non-touch screen enabled environment.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cpuArchitecture-method"></span><span class="name">cpuArchitecture</span>()</p></td>
</tr>
</tbody>
</table>

Returns the build architecure, including but not limited to "arm", "arm64", "i386" and "x86\_64".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseDrag-method"></span><span class="type">void</span> <span class="name">mouseDrag</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type">from</span>, <span class="type">delta</span>, <span class="type">button</span>, <span class="type">stateKey</span>, <span class="type">steps</span> = 5, <span class="type">delay</span> = 20)</p></td>
</tr>
</tbody>
</table>

The function performs a drag with a mouse over an *item* from the starting point *from* with a *delta*. The gesture is realized with a mouse press, *step* moves and a release event, with a *delay* in between each mouse event.

By default the function uses 5 steps to produce the drag. This value can be any positive number, driving the gesture appliance to be faster (less than 5 moves) or slower (more than 5 moves). If a negative or 0 value is given, the function will use the default 5 steps to produce the gesture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="openGLflavor-method"></span><span class="name">openGLflavor</span>()</p></td>
</tr>
</tbody>
</table>

Returns "opengl" or "opengles2".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="registerTouchDevice-method"></span><span class="name">registerTouchDevice</span>()</p></td>
</tr>
</tbody>
</table>

Registers a touch device if there's none registered. Calling the function in touch enabled environment has no effect. The function must be called in initTestCase() in order to perform touch related tests.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchClick-method"></span><span class="name">touchClick</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function performs a pair of [touchPress](#touchPress-method) and [touchRelease](#touchRelease-method) calls on the same point resulting in a click like event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchDevicePresent-method"></span><span class="name">touchDevicePresent</span>()</p></td>
</tr>
</tbody>
</table>

Returns true if the system has a touch device registered.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchDoubleClick-method"></span><span class="name">touchDoubleClick</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function performs two consecutive [touchClick](#touchClick-method) events with a slight delay in between each click event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchDrag-method"></span><span class="name">touchDrag</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type">from</span>, <span class="type">delta</span>, <span class="type">steps</span> = 5)</p></td>
</tr>
</tbody>
</table>

The function performs a drag gesture on a touch point identified by *touchId* over an *item* from the starting point *from* with a *delta*. The gesture is realized with a touch press, *step* moves and a release event.

By default the function uses 5 steps to produce the gesture. This value can be any positive number, driving the gesture appliance to be faster (less than 5 moves) or slower (more than 5 moves). If a negative or 0 value is given, the function will use the default 5 steps to produce the gesture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchLongPress-method"></span><span class="name">touchLongPress</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function produces a [touchPress](#touchPress-method) event with a timeout equivalent to the mouse `pressAndHold` timeout, after which the function returns.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchMove-method"></span><span class="name">touchMove</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function moves the touch point identified by the *touchId* to the destination *point*. The point is in *item* coordinates. The touch point identified by the *touchId* must be pressed before calling this function in order to produce the desired functionality. The event can be captured in a `MultiPointTouchArea` through `updated()` signal.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchPress-method"></span><span class="name">touchPress</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function triggers a touch press event for a given *touchId* on a specific *item*. The *point* contains the (x,y) coordinates of the event in *item* coordinates.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="touchRelease-method"></span><span class="name">touchRelease</span>(<span class="type">touchId</span>, <span class="type">item</span>, <span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span>)</p></td>
</tr>
</tbody>
</table>

The function produces a touch release event on a given *touchId* performed on *item* at a *point*.

