---
Title: QtQuick.PathAttribute
---
        
PathAttribute
=============

<span class="subtitle"></span>
Specifies how to set an attribute at a given position in a Path More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[name](#name-prop)**** : string
-   ****[value](#value-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The [PathAttribute](index.html) object allows attributes consisting of a name and a value to be specified for various points along a path. The attributes are exposed to the delegate as Attached Properties. The value of an attribute at any particular point along the path is interpolated from the PathAttributes bounding that point.

The example below shows a path with the items scaled to 30% with opacity 50% at the top of the path and scaled 100% with opacity 100% at the bottom. Note the use of the [PathView](../QtQuick.PathView.md).iconScale and [PathView](../QtQuick.PathView.md).iconOpacity attached properties to set the scale and opacity of the delegate.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/a6e717d2-8ded-420c-b5a5-8e64dd35dcce-api/apps/qml/sdk-15.04.5/QtQuick.PathAttribute/images/declarative-pathattribute.png" /></p></td>
<td><pre class="qml"><code>import QtQuick 2.0
Rectangle {
    width: 240; height: 200
    Component {
        id: delegate
        Item {
            width: 80; height: 80
            scale: PathView.iconScale
            opacity: PathView.iconOpacity
            Column {
                Image { anchors.horizontalCenter: nameText.horizontalCenter; width: 64; height: 64; source: icon }
                Text { id: nameText; text: name; font.pointSize: 16 }
            }
        }
    }
    PathView {
        anchors.fill: parent
        model: ContactModel {}
        delegate: delegate
        path: Path {
            startX: 120; startY: 100
            PathAttribute { name: &quot;iconScale&quot;; value: 1.0 }
            PathAttribute { name: &quot;iconOpacity&quot;; value: 1.0 }
            PathQuad { x: 120; y: 25; controlX: 260; controlY: 75 }
            PathAttribute { name: &quot;iconScale&quot;; value: 0.3 }
            PathAttribute { name: &quot;iconOpacity&quot;; value: 0.5 }
            PathQuad { x: 120; y: 100; controlX: -20; controlY: 75 }
        }
    }
}</code></pre>
<p>(see the <a href="QtQuick.PathView.md">PathView</a> documentation for the specification of ContactModel.qml used for ContactModel above.)</p></td>
</tr>
</tbody>
</table>

**See also** [Path](../QtQuick.Path.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the attribute to change.

This attribute will be available to the delegate as [PathView](../QtQuick.PathView.md).&lt;name&gt;

Note that using an existing Item property name such as "opacity" as an attribute is allowed. This is because path attributes add a new Attached Property which in no way clashes with existing properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the value for the attribute.

The value specified can be used to influence the visual appearance of an item along the path. For example, the following Path specifies an attribute named *itemRotation*, which has the value *0* at the beginning of the path, and the value 90 at the end of the path.

``` qml
Path {
    startX: 0
    startY: 0
    PathAttribute { name: "itemRotation"; value: 0 }
    PathLine { x: 100; y: 100 }
    PathAttribute { name: "itemRotation"; value: 90 }
}
```

In our delegate, we can then bind the *rotation* property to the Attached Property *PathView.itemRotation* created for this attribute.

``` qml
Rectangle {
    width: 10; height: 10
    rotation: PathView.itemRotation
}
```

As each item is positioned along the path, it will be rotated accordingly: an item at the beginning of the path with be not be rotated, an item at the end of the path will be rotated 90 degrees, and an item mid-way along the path will be rotated 45 degrees.

