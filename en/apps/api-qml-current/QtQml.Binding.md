---
Title: QtQml.Binding
---
        
Binding
=======

<span class="subtitle"></span>
Enables the arbitrary creation of property bindings More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="properties"></span>
Properties
----------

-   ****[property](#property-prop)**** : string
-   ****[target](#target-prop)**** : Object
-   ****[value](#value-prop)**** : any
-   ****[when](#when-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

<span id="binding-to-an-inaccessible-property"></span>
Binding to an Inaccessible Property
-----------------------------------

Sometimes it is necessary to bind to a property of an object that wasn't directly instantiated by QML - generally a property of a class exported to QML by C++. In these cases, regular property binding doesn't work. Binding allows you to bind any value to any property.

For example, imagine a C++ application that maps an "app.enteredText" property into QML. You could use Binding to update the enteredText property like this.

``` cpp
TextEdit { id: myTextField; text: "Please type here..." }
Binding { target: app; property: "enteredText"; value: myTextField.text }
```

Whenever the text in the TextEdit is updated, the C++ property will be updated also.

<span id="single-branch-conditional-binding"></span>
"Single-branch" conditional binding
-----------------------------------

In some circumstances you may want to control the value of a property only when a certain condition is true (and relinquish control in all other circumstances). This often isn't possible to accomplish with a direct binding, as you need to supply values for all possible branches.

``` cpp
// produces warning: "Unable to assign [undefined] to double value"
value: if (mouse.pressed) mouse.mouseX
```

The above example will produce a warning whenever we release the mouse, as the value of the binding is undefined when the mouse isn't pressed. We can use the Binding type to rewrite the above code and avoid the warning.

``` cpp
Binding on value {
    when: mouse.pressed
    value: mouse.mouseX
}
```

The Binding type will also restore any previously set direct bindings on the property. In that sense, it functions much like a simplified State.

``` qml
// this is equivalent to the above Binding
State {
    name: "pressed"
    when: mouse.pressed
    PropertyChanges {
        target: obj
        value: mouse.mouseX
    }
}
```

If the binding target or binding property is changed, the bound value is immediately pushed onto the new target.

**See also** [Qt QML](../QtQml.qtqml-index.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="property-prop"></span><span class="name">property</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property to be updated.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

The object to be updated.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">any</span></p></td>
</tr>
</tbody>
</table>

The value to be set on the target object and property. This can be a constant (which isn't very useful), or a bound expression.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="when-prop"></span><span class="name">when</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds when the binding is active. This should be set to an expression that evaluates to true when you want the binding to be active.

``` cpp
Binding {
    target: contactName; property: 'text'
    value: name; when: list.ListView.isCurrentItem
}
```

When the binding becomes inactive again, any direct bindings that were previously set on the property will be restored.

