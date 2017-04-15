---
Title: Ubuntu.Test.UbuntuTestCase13
---
        
UbuntuTestCase13
================

<span class="subtitle"></span>
The UbuntuTestCase class expands the default TestCase class. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Test .</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtTest.TestCase.md">TestCase</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[testUtil](#testUtil-prop)**** : alias

<span id="methods"></span>
Methods
-------

-   ****[centerOf](#centerOf-method)****(*item*)
-   ****[findChild](#findChild-method)****(*obj*, *objectName*)
-   ****[findChildWithProperty](#findChildWithProperty-method)****(*item*, *property*, *value*)
-   ****[findInvisibleChild](#findInvisibleChild-method)****(*obj*, *objectName*)
-   ****[flick](#flick-method)****(*item*, *x*, *y*, *dx*, *dy*, *pressTimeout*, *steps*, *button*, *modifiers*, *delay*)
-   ****[mouseLongPress](#mouseLongPress-method)****(*item*, *x*, *y*, *button*, *modifiers*, *delay*)
-   ****[mouseMoveSlowly](#mouseMoveSlowly-method)****(*item*, *x*, *y*, *dx*, *dy*, *steps*, *stepdelay*, *buttons*)
-   ****[tryCompareFunction](#tryCompareFunction-method)****(*func*, *expectedResult*, *timeout*)
-   ****[typeString](#typeString-method)****(*string*)
-   ****[waitForHeaderAnimation](#waitForHeaderAnimation-method)****(*mainView*)
-   ****[warningFormat](#warningFormat-method)****(*line*, *column*, *message*)

<span id="details"></span>
Detailed Description
--------------------

**This component is under heavy development.**

This class extends the default QML [TestCase](../QtTest.TestCase.md) class which is available in [QtTest](http://doc.qt.io/qt-5/qttest-qmlmodule.html) 1.0.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="testUtil-prop"></span><span class="name">testUtil</span> : <span class="type">alias</span></p></td>
</tr>
</tbody>
</table>

This property holds the inner TestUtil instance.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="centerOf-method"></span><span class="name">centerOf</span>( <em>item</em>)</p></td>
</tr>
</tbody>
</table>

Returns the center point of the *item*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="findChild-method"></span><span class="name">findChild</span>( <em>obj</em>, <em>objectName</em>)</p></td>
</tr>
</tbody>
</table>

Find a child from the item based on the objectName.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="findChildWithProperty-method"></span><span class="name">findChildWithProperty</span>( <em>item</em>, <em>property</em>, <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Finds a visible child of an *item* having a given *property* with a given *value*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="findInvisibleChild-method"></span><span class="name">findInvisibleChild</span>( <em>obj</em>, <em>objectName</em>)</p></td>
</tr>
</tbody>
</table>

Find a non-visual child such as [QtObject](../QtQml.QtObject.md) based on objectName.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flick-method"></span><span class="name">flick</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>dx</em>, <em>dy</em>, <em>pressTimeout</em>, <em>steps</em>, <em>button</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

The function produces a flick event when executed on Flickables. When used on other components it provides the same functionality as `mouseDrag()` function. The optional *pressTimeout* parameter can be used to introduce a small delay between the mouse press and the first mouse move. Setting a negative or zero value will disable the timeout.

The default flick velocity is built up using 5 move points. This can be altered by setting a positive value to *steps* parameter. The bigger the number the longer the flick will be. When a negative or zero value is given, the default of 5 move points will be used.

**Note:** The function can be used to select a text in a [TextField](../Ubuntu.Components.TextField.md) or [TextArea](../Ubuntu.Components.TextArea.md) by specifying at least 400 millisecods to *pressTimeout*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseLongPress-method"></span><span class="name">mouseLongPress</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>button</em>, <em>modifiers</em>, <em>delay</em>)</p></td>
</tr>
</tbody>
</table>

Simulates a long press on a mouse *button* with an optional *modifier* on an *item*. The position is defined by *x* and *y*. If *delay* is specified, the test will wait the specified amount of milliseconds before the press.

The position given by *x* and *y* is transformed from the co-ordinate system of *item* into window co-ordinates and then delivered. If *item* is obscured by another item, or a child of *item* occupies that position, then the event will be delivered to the other item instead.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseMoveSlowly-method"></span><span class="name">mouseMoveSlowly</span>( <em>item</em>, <em>x</em>, <em>y</em>, <em>dx</em>, <em>dy</em>, <em>steps</em>, <em>stepdelay</em>, <em>buttons</em>)</p></td>
</tr>
</tbody>
</table>

Move Mouse from x,y to distance of dx, dy divided to steps with a stepdelay (ms) and buttons.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tryCompareFunction-method"></span><span class="name">tryCompareFunction</span>( <em>func</em>, <em>expectedResult</em>, <em>timeout</em>)</p></td>
</tr>
</tbody>
</table>

Keeps executing a given parameter-less function until it returns the given expected result or the timemout is reached (in which case a test failure is generated)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="typeString-method"></span><span class="name">typeString</span>( <em>string</em>)</p></td>
</tr>
</tbody>
</table>

Convenience function to allow typing a full string instead of single characters

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="waitForHeaderAnimation-method"></span><span class="name">waitForHeaderAnimation</span>( <em>mainView</em>)</p></td>
</tr>
</tbody>
</table>

Wait for animations of the header and the style inside the header to finish. The [MainView](../Ubuntu.Components.MainView.md) that has the header that may animate must be passed as an argument.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="warningFormat-method"></span><span class="name">warningFormat</span>( <em>line</em>, <em>column</em>, <em>message</em>)</p></td>
</tr>
</tbody>
</table>

Warning message formatter, uses file name, line and column numbers to build up the message.

