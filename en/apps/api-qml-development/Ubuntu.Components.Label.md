---
Title: Ubuntu.Components.Label
---
        
Label
=====

<span class="subtitle"></span>
Extended Text item with Ubuntu styling. More...

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
<td><p><a href="QtQuick.Text.md">Text</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[textSize](#textSize-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

Label is an extended Text item with Ubuntu styling. It exposes an additional property that provides adaptive resizing based on the measurement unit.

Example:

``` qml
Rectangle {
    color: UbuntuColors.warmGrey
    width: units.gu(30)
    height: units.gu(30)
    Label {
        anchors.centerIn: parent
        text: "Hello world!"
        textSize: Label.Large
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
<td><p><span id="textSize-prop"></span><span class="name">textSize</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds an abstract size that allows adaptive resizing based on the measurement unit (see Units). The default value is `Label.Medium`.

**Note:** Setting this disables support for the deprecated fontSize property.

-   **Label.XxSmall** - extremely small font size
-   **Label.XSmall** - very small font size
-   **Label.Small** - small font size
-   **Label.Medium** - medium font size
-   **Label.Large** - large font size
-   **Label.XLarge** - very large font size

This QML property was introduced in Ubuntu.Components 1.3.

