---
Title: Ubuntu.Components.BottomEdgeHint
---
        
BottomEdgeHint
==============

<span class="subtitle"></span>
The BottomEdgeHint shows the availability of extra features available from the bottom edge of the application. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.ActionItem.md">ActionItem</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[deactivateTimeout](#deactivateTimeout-prop)**** : int
-   ****[flickable](#flickable-prop)**** : Flickable
-   ****[iconName](#iconName-prop)**** : string
-   ****[iconSource](#iconSource-prop)**** : url
-   ****[status](#status-prop)**** : Status
-   ****[swipeArea](#swipeArea-prop)**** : SwipeArea
-   ****[text](#text-prop)**** : string

<span id="signals"></span>
Signals
-------

-   void ****[clicked](#clicked-signal)****()

<span id="details"></span>
Detailed Description
--------------------

It displays a label and/or an icon at the bottom of the component it is attached to.

When used with a mouse it acts like a button. The typical action associated with clicking on it should be revealing the extra features provided by the bottom edge.

Example:

``` qml
BottomEdgeHint {
    id: bottomEdgeHint
    text: i18n.tr("Favorites")
    onClicked: revealBottomEdge()
}
```

The component is styled through **BottomEdgeHintStyle**.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="deactivateTimeout-prop"></span><span class="name">deactivateTimeout</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property specifies the timeout interval in milliseconds the [status](#status-prop) is set to *Inactive* after a gesture based activation. Gesture based activation is only possible when mouse is not attached to the device. Defaults to 800 milliseconds.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickable-prop"></span><span class="name">flickable</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the flickable, which when flicked hides the hint. *Hidden* state is reached when this property is set to a Flickable which is flicking or moving. It is recommended to set the property when the hint is placed above a flickable content. Defaults to null.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconName-prop"></span><span class="name">iconName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The icon associated with the [BottomEdgeHint](index.html) in the icon theme.

If both [iconSource](#iconSource-prop) and iconName are defined, iconName will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconSource-prop"></span><span class="name">iconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The icon displayed by the [BottomEdgeHint](index.html).

This is the URL of any image file. If both iconSource and [iconName](#iconName-prop) are defined, [iconName](#iconName-prop) will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">Status</span></p></td>
</tr>
</tbody>
</table>

The property represents the status of the hint. The property is writable so it can be set to any of the following values programatically:

| Status   | Description                                                                                                                                                                                   |
|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Hidden   | The hint is not shown. Equivalent with setting *visible* to `false`, however visuals may do animations when altering this property. It can only be set if the current status is not *Locked*. |
| Inactive | The hint is shown and inactive. Styles can represent this state with different visuals. When inactive, [clicked](#clicked-signal) signal cannot be emitted.                         |
| Active   | The hint is shown and active, meaning [clicked](#clicked-signal) signal is emitted when clicked with mouse.                                                                         |
| Locked   | Similar to *Active* the hint is shown and active, but no automatic transition to any other state is allowed. This is relevant for style implementations.                                      |

**Note:** *Locked* status value is set automatically when the system detects a mouse attached. In this case any change into other state value than *Locked* is rejected. Defaults to

-   Inactive if no mouse is attached or
-   Locked if there is a mouse detected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="swipeArea-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">swipeArea</span> : <span class="type">SwipeArea</span></p></td>
</tr>
</tbody>
</table>

The property specifies the SwipeArea attached to the component driving its behavior.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The label displayed by the [BottomEdgeHint](index.html).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clicked-signal"></span><span class="type">void</span> <span class="name">clicked</span>()</p></td>
</tr>
</tbody>
</table>

This handler is called when there is a mouse click on the [BottomEdgeHint](index.html) and the [BottomEdgeHint](index.html) is not disabled.

