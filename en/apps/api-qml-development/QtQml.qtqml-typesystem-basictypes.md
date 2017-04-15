---
Title: QtQml.qtqml-typesystem-basictypes
---
        
QML Basic Types
===============

<span class="subtitle"></span>
<span id="details"></span>
QML supports a number of basic types.

A *basic type* is one that refers to a simple value, such as an `int` or a `string`. This contrasts with a [QML Object Types](../QtQml.qtqml-typesystem-topic.md#qml-object-types), which refers to an object with properties, signals, methods and so on. Unlike an object type, a basic type cannot be used to declare QML objects: it is not possible, for example, to declare an `int{}` object or a `size{}` object.

Basic types can be used to refer to:

-   A single value (e.g. int refers to a single number, var can refer to a single list of items)
-   A value that contains a simple set of property-value pairs (e.g. size refers to a value with `width` and `height` attributes)

<span id="supported-basic-types"></span>
Supported Basic Types
---------------------

Some basic types are supported by the engine by default and do not require an [import statement](../QtQml.qtqml-syntax-imports.md) to be used, while others do require the client to import the module which provides them. All of the basic types listed below may be used as a `property` type in a QML document, with the following exceptions:

-   `list` must be used in conjunction with a QML object type
-   `enumeration` cannot be used directly as the enumeration must be defined by a registered QML object type

<span id="basic-types-provided-by-the-qml-language"></span>
### Basic Types Provided By The QML Language

The basic types supported natively in the QML language are listed below:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>bool</p></td>
<td><p>Binary true/false value</p></td>
</tr>
<tr class="even">
<td><p>double</p></td>
<td><p>Number with a decimal point, stored in double precision</p></td>
</tr>
<tr class="odd">
<td><p>enumeration</p></td>
<td><p>Named enumeration value</p></td>
</tr>
<tr class="even">
<td><p>int</p></td>
<td><p>Whole number, e.g. 0, 10, or -20</p></td>
</tr>
<tr class="odd">
<td><p>list</p></td>
<td><p>List of QML objects</p></td>
</tr>
<tr class="even">
<td><p>real</p></td>
<td><p>Number with a decimal point</p></td>
</tr>
<tr class="odd">
<td><p>string</p></td>
<td><p>Free form text string</p></td>
</tr>
<tr class="even">
<td><p>url</p></td>
<td><p>Resource locator</p></td>
</tr>
<tr class="odd">
<td><p>var</p></td>
<td><p>Generic property type</p></td>
</tr>
</tbody>
</table>

<span id="basic-types-provided-by-qml-modules"></span>
### Basic Types Provided By QML Modules

QML modules may extend the QML language with more basic types. For example, the basic types provided by the `QtQuick` module are listed below:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>date</p></td>
<td><p>Date value</p></td>
</tr>
<tr class="even">
<td><p>point</p></td>
<td><p>Value with x and y attributes</p></td>
</tr>
<tr class="odd">
<td><p>rect</p></td>
<td><p>Value with x, y, width and height attributes</p></td>
</tr>
<tr class="even">
<td><p>size</p></td>
<td><p>Value with width and height attributes</p></td>
</tr>
</tbody>
</table>

The [Qt](../QtQml.Qt.md) global object provides useful functions for manipulating values of basic types.

Currently only QML modules which are provided by Qt may provide their own basic types, however this may change in future releases of Qt QML. In order to use types provided by a particular QML module, clients must import that module in their QML documents.

<span id="property-change-behavior-for-basic-types"></span>
Property Change Behavior for Basic Types
----------------------------------------

Some basic types have properties: for example, the font type has `pixelSize`, `family` and `b` properties. Unlike properties of [object types](../QtQml.qtqml-typesystem-topic.md#qml-object-types), properties of basic types do not provide their own property change signals. It is only possible to create a property change signal handler for the basic type property itself:

``` cpp
Text {
    // invalid!
    onFont.pixelSizeChanged: doSomething()
    // also invalid!
    font {
        onPixelSizeChanged: doSomething()
    }
    // but this is ok
    onFontChanged: doSomething()
}
```

Be aware, however, that a property change signal for a basic type is emitted whenever *any* of its attributes have changed, as well as when the property itself changes. Take the following code, for example:

``` qml
Text {
    onFontChanged: console.log("font changed")
    Text { id: otherText }
    focus: true
    // changing any of the font attributes, or reassigning the property
    // to a different font value, will invoke the onFontChanged handler
    Keys.onDigit1Pressed: font.pixelSize += 1
    Keys.onDigit2Pressed: font.b = !font.b
    Keys.onDigit3Pressed: font = otherText.font
}
```

In contrast, properties of an [object type](../QtQml.qtqml-typesystem-topic.md#qml-object-types) emit their own property change signals, and a property change signal handler for an object-type property is only invoked when the property is reassigned to a different object value.

**See also** [The QML Type System](../QtQml.qtqml-typesystem-topic.md).

