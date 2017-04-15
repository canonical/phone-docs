---
Title: Ubuntu.Components.CheckBox
---
        
CheckBox
========

<span class="subtitle"></span>
CheckBox is a component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as Switch, the only difference is the graphical style. More...

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
<td><p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.Switch.md">Switch</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[checked](#checked-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

[See also the Design Guidelines on selection](https://design.ubuntu.com/apps/building-blocks/selection).

Example:

``` qml
Item {
    CheckBox {
        checked: true
    }
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
<td><p><span id="checked-prop"></span><span class="name">checked</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies whether the checkbox is checked or not. By default the property is set to false.

