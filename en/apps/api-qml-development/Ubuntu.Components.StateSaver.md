---
Title: Ubuntu.Components.StateSaver
---
        
StateSaver
==========

<span class="subtitle"></span>
Attached properties to save component property states. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[enabled](#enabled-prop)**** : bool
-   ****[properties](#properties-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

[StateSaver](index.html) attached object provides the ability to save component property values that can be restored after an inproper application close. The properties subject of serialization must be given in the [properties](#properties-prop) as a string, separated with commas. The serialization will happen automatically on component's completion time, as well as when the application is deactivated. Automatic serialization of a component can be turned off by simply setting false to [enabled](#enabled-prop) property.

**Note:** The application name must be set correctly to the package name so that state saving can work (e.g. com.ubuntu.calendar) through [MainView](../Ubuntu.Components.MainView.md)'s applicationName property.

States saved are discarded when the application is closed properly. The state loading is ignored (but not discarded) when the application is launched through [UriHandler](../Ubuntu.Components.UriHandler.md).

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
TextField {
    id: input
    StateSaver.properties: "text"
    StateSaver.enabled: input.enabled
}
```

In this example the state saver is synchronized with the attachee's one.

Group properties can also be serialized by specifying the path to their individual properties.

``` qml
Rectangle {
    id: rect
    color: "gray"
    border {
        color: "blue"
        width: units.gu(1)
    }
    StateSaver.properties: "color, border.color, border.width"
}
```

[StateSaver](index.html) computes a unique identifier for the attachee using the component's and all its parents' *id*. Therefore attachee component as well as all its parents must have a valid ID set.

The following example will give error for the *input*, as the root component has no id specified:

``` qml
Item {
    //[...]
    Item {
        id: parent
        //[...]
        TextField {
            id: input
            StateSaver.properties: "text"
        }
    }
}
```

but the following example will successfully save the text field content

``` qml
Item {
    id: root
    //[...]
    Item {
        id: parent
        //[...]
        TextField {
            id: input
            StateSaver.properties: "text"
        }
    }
}
```

When used with Repeater, each created item from the Repeater's delegate will be saved separately. Note that due to the way Repeater works, Repeaters do not need to have id specified.

``` qml
Item {
    id: root
    // [...]
    Repeater {
        model: 10
        Rectangle {
            id: rect
            width: 50; height: 50
            StateSaver.properties: "width, height"
        }
    }
    // [...]
}
```

It can be used in the same way in [ListView](../QtQuick.ListView.md) or [GridView](../../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview), except that both [ListView](../QtQuick.ListView.md) and [GridView](../../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview) must have an id set.

The [StateSaver](index.html) can save all [QML base types](../../sdk-15.04.3/QtQml.qtqml-typesystem-basictypes.md), Objects, list of objects or variants containing any of these cannot be saved.

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

The property drives the automatic state saving. When disabled, state saving will not happen on properties.

The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="properties-prop"></span><span class="name">properties</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

List of properties to be serialized, separated with commas. Properties must be writable and can only be [QML base types](../../sdk-15.04.3/QtQml.qtqml-typesystem-basictypes.md).

A custom single line input which saves the text, placeholderText, font and color would look as follows:

``` qml
TextField {
    id: input
    StateSaver.properties: "text, placeholderText, font, color"
}
```

