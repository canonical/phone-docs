---
Title: Ubuntu.Test.MouseTouchAdaptor
---
        
MouseTouchAdaptor
=================

<span class="subtitle"></span>
Singleton type turning mouse events into single finger touch events. More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | import Ubuntu.Test . |

<span id="properties"></span>
Properties
----------

-   ****[enabled](#enabled-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

When enabled, mouse events will be translated into single finger touch events. Being a singleton, the feature must be enabled explicitly either on component completion or through a binding.

``` qml
Binding {
    target: MouseTouchAdaptor
    property: "enabled"
    value: true
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
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Enables the mouse to touch conversion functionality. Defaults to true.

