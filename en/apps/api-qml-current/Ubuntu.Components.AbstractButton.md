---
Title: Ubuntu.Components.AbstractButton
---
        
AbstractButton
==============

<span class="subtitle"></span>
The AbstractButton class defines the behavior of the button. More...

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
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.Button.md">Button</a>, <a href="Ubuntu.Components.CheckBox.md">CheckBox</a>, <a href="Ubuntu.Components.ComboButton.md">ComboButton</a>, <a href="Ubuntu.Components.ListItems.Empty.md">Empty</a>, and <a href="Ubuntu.Components.Pickers.PickerDelegate.md">PickerDelegate</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[hovered](#hovered-prop)**** : bool
-   ****[pressed](#pressed-prop)**** : bool
-   ****[sensingMargins](#sensingMargins-prop)****
    -   ****[sensingMargins.left](#sensingMargins.left-prop)**** : real
    -   ****[sensingMargins.right](#sensingMargins.right-prop)**** : real
    -   ****[sensingMargins.top](#sensingMargins.top-prop)**** : real
    -   ****[sensingMargins.bottom](#sensingMargins.bottom-prop)**** : real
    -   ****[sensingMargins.all](#sensingMargins.all-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[clicked](#clicked-signal)****()
-   ****[pressAndHold](#pressAndHold-signal)****()

<span id="details"></span>
Detailed Description
--------------------

This class defines the behavior of the button. All components deriving from this class support haptic feedback out of the box.

If an action is specified, the button's clicked signal will trigger the action. Subclasses of [AbstractButton](index.html) can use other properties of action (for example the text and iconName).

<span id="sensing-area"></span>
### Sensing area

It has been proven that, on touch devices in order to properly aim an active component a minimum of 8x8 millimeters (i.e. 4x4 grid units) area has to be provided. However not all the visuals are of that size, as Icons for example are defaulted to be 2x2 grid units, but a component containing a single Icon still has to be able to capture the press events. Therefore [AbstractButton](index.html) makes sure this rule of 4x4 grid units for the sensing area is provided. In addition it exposes the [sensingMargins](#sensingMargins-prop) property which extends the component's sensing area in all the directions, so other use cases when the sensing area needs to be extended outside of the component's area, or restricted on a given area of the component can be implemented. The following example extends the sensing area on the left, top and bottom with 1 grid units, and on the right with 10 grid units.

``` qml
AbstractButton {
    width: units.gu(2)
    height: units.gu(2)
    sensingMargins {
        left: units.gu(1)
        top: units.gu(1)
        bottom: units.gu(1)
        right: units.gu(10)
    }
}
```

**Note:** Do not set clipping for the component as that will restrict the sensing area to be available on the visual area only.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hovered-prop"></span><span class="name">hovered</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

True if the mouse cursor hovers over the button's mouse area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

True if the user presses a mouse button in the button's mouse area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="sensingMargins-prop"></span><strong>sensingMargins group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="sensingMargins.left-prop"></span><span class="name">sensingMargins.left</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="sensingMargins.right-prop"></span><span class="name">sensingMargins.right</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="sensingMargins.top-prop"></span><span class="name">sensingMargins.top</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="sensingMargins.bottom-prop"></span><span class="name">sensingMargins.bottom</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="sensingMargins.all-prop"></span><span class="name">sensingMargins.all</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property group specifies the margins extending the visual area where the touch events are sensed. Positive values mean the area will be extended on the specified direction outside of the visual area, negative values mean the sensing will fall under the component's visual border. All values default to 0. This does not affect mouse sensing area, which only covers the visual area of the component.

**Note:** If the visual area and the sensing margins are not reaching the 4x4 grid units limit, the component will fall back to these minimum limits. For example, extending a 2x2 grid unit visual component into 5x4 grid units sensing area would look as follows:

``` qml
AbstractButton {
    width: units.gu(2)
    height: units.gu(2)
    Icon {
        name: "settings"
    }
    sensingArea {
        // no need to set the vertical direction as the minimum of
        // 4 grid units will be taken automatically
        leftMargin: units.gu(1)
        // we only have to add 2 grid units as the width + left margin
        // already gives us 3 grid units out of 5
        rightMargin: units.gu(2)
    }
}
```

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clicked-signal"></span><span class="name">clicked</span>()</p></td>
</tr>
</tbody>
</table>

This handler is called when there is a mouse click on the button and the button is not disabled. If [action](../Ubuntu.Components.ActionItem.md#action-prop) is defined, the action will be triggered.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressAndHold-signal"></span><span class="name">pressAndHold</span>()</p></td>
</tr>
</tbody>
</table>

This handler is called when there is a long press.

