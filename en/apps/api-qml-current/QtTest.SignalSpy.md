---
Title: QtTest.SignalSpy
---
        
SignalSpy
=========

<span class="subtitle"></span>
Enables introspection of signal emission More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtTest 1.1</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Qt 4.8</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[count](#count-prop)**** : int
-   ****[signalArguments](#signalArguments-prop)**** : list
-   ****[signalName](#signalName-prop)**** : string
-   ****[target](#target-prop)**** : var
-   ****[valid](#valid-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   ****[clear](#clear-method)****()
-   ****[wait](#wait-method)****(*timeout*)

<span id="details"></span>
Detailed Description
--------------------

In the following example, a [SignalSpy](index.html) is installed to watch the "clicked" signal on a user-defined Button type. When the signal is emitted, the [count](#count-prop) property on the spy will be increased.

``` cpp
Button {
    id: button
    SignalSpy {
        id: spy
        target: button
        signalName: "clicked"
    }
    TestCase {
        name: "ButtonClick"
        function test_click() {
            compare(spy.count, 0)
            button.clicked();
            compare(spy.count, 1)
        }
    }
}
```

The above style of test is suitable for signals that are emitted synchronously. For asynchronous signals, the [wait()](#wait-method) method can be used to block the test until the signal occurs (or a timeout expires).

**See also** [TestCase](../QtTest.TestCase.md) and Qt Quick Test Reference Documentation.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property defines the number of times that [signalName](#signalName-prop) has been emitted from [target](#target-prop) since the last call to [clear()](#clear-method).

**See also** [target](#target-prop), [signalName](#signalName-prop), and [clear()](#clear-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="signalArguments-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">signalArguments</span> : <span class="type">list</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of emitted signal arguments. Each emission of the signal will append one item to the list, containing the arguments of the signal. When connecting to a new [target](#target-prop) or new [signalName](#signalName-prop) or calling the [clear()](#clear-method) method, the signalArguments will be reset to empty.

**See also** [signalName](#signalName-prop) and [clear()](#clear-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="signalName-prop"></span><span class="name">signalName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property defines the name of the signal on [target](#target-prop) to listen for.

**See also** [target](#target-prop) and [count](#count-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type">var</span></p></td>
</tr>
</tbody>
</table>

This property defines the target object that will be used to listen for emissions of the [signalName](#signalName-prop) signal.

**See also** [signalName](#signalName-prop) and [count](#count-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="valid-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">valid</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property defines the current signal connection status. It will be true when the [signalName](#signalName-prop) of the [target](#target-prop) is connected successfully, otherwise it will be false.

**See also** [count](#count-prop), [target](#target-prop), [signalName](#signalName-prop), and [clear()](#clear-method).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clear-method"></span><span class="name">clear</span>()</p></td>
</tr>
</tbody>
</table>

Clears [count](#count-prop) to 0, resets [valid](#valid-prop) to false and clears the [signalArguments](#signalArguments-prop) to empty.

**See also** [count](#count-prop) and [wait()](#wait-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="wait-method"></span><span class="name">wait</span>( <em>timeout</em>)</p></td>
</tr>
</tbody>
</table>

Waits for the signal [signalName](#signalName-prop) on [target](#target-prop) to be emitted, for up to *timeout* milliseconds. The test case will fail if the signal is not emitted.

``` cpp
SignalSpy {
    id: spy
    target: button
    signalName: "clicked"
}
function test_async_click() {
    ...
    // do something that will cause clicked() to be emitted
    ...
    spy.wait()
    compare(spy.count, 1)
}
```

There are two possible scenarios: the signal has already been emitted when wait() is called, or the signal has not yet been emitted. The wait() function handles the first scenario by immediately returning if the signal has already occurred.

The [clear()](#clear-method) method can be used to discard information about signals that have already occurred to synchronize wait() with future signal emissions.

**See also** [clear()](#clear-method) and [TestCase::tryCompare()](../QtTest.TestCase.md#tryCompare-method).

