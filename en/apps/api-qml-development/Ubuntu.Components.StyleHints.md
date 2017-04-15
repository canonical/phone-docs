---
Title: Ubuntu.Components.StyleHints
---
        
StyleHints
==========

<span class="subtitle"></span>
Component holding style specific properties to configure a particular StyledItem's style runtime. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import .              |
| Since:            | Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[ignoreUnknownProperties](#ignoreUnknownProperties-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

[StyleHints](index.html) is a custom parser, meaning style properties can be listed without any property declaration, same way as in [PropertyChanges](../QtQuick.PropertyChanges.md) or Connections, which are similar custom parsers. Properties enumerated do not have to be present in the component's style as default, behavior which can be chenged by setting [ignoreUnknownProperties](#ignoreUnknownProperties-prop) to true. In this case properties not found in the style will be displayed as warnings.

In the following example the Button will be drawn as white when not pressed, and colored as blue when pressed.

``` qml
Button {
    id: button
    StyleHints {
        defaultColor: button.pressed ? "blue" : "white"
    }
}
```

[StyleHints](index.html) does not support signal properties (i.e signal handlers) and object declarations as property values.

[StyleHints](index.html) can be only declared in a [StyledItem](../Ubuntu.Components.StyledItem.md) or as a derivate of it.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ignoreUnknownProperties-prop"></span><span class="name">ignoreUnknownProperties</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property drives whether component should warn on properties not found in the component's style. The default setting is not to warn.

