---
Title: Ubuntu.Components.Header
---
        
Header
======

<span class="subtitle"></span>
Header bar that can contain the title and controls for the current view. More...

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
<td>Since:</td>
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
<tr class="even">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.PageHeader.md">PageHeader</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[exposed](#exposed-prop)**** : bool
-   ****[flickable](#flickable-prop)**** : Flickable
-   ****[moving](#moving-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

The Header can be exposed and hidden by setting the [exposed](#exposed-prop) property, and when a [flickable](#flickable-prop) is set, the header will scroll together with the flickable and expose or hide when the Flickable movement ends.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
Page {
    width: units.gu(50)
    height: units.gu(70)
    header: Header {
        width: parent.width
        height: units.gu(6)
        flickable: scrollableContent
        Rectangle {
            // to visualize the header
            anchors.fill: parent
            color: UbuntuColors.blue
        }
    }
    Flickable {
        id: scrollableContent
        anchors.fill: parent
        contentHeight: height * 2
        Label {
            text: "Flick me"
        }
    }
}
```

The initial y-value is 0, but scrolling the flickable or setting [exposed](#exposed-prop) to false will change the y-value in the range from -height to 0.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exposed-prop"></span><span class="name">exposed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Exposes and hides the header by animating its y-value between -height and 0 to move it in or out of its parent Item. The value of exposed can be set directly, or it will be automatically updated when the user exposes or hides the Header by scrolling the Header's [flickable](#flickable-prop).

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

When flickable is set, scrolling vertically in the flickable, or setting the Flickable's y-value will move the header y-position by the same amount as the flickable content movement. When scrolling the flickable, upon release, the header will animate to fully exposed or fully hidden state, depending on whether it was more or less than half exposed when the user stopped moving the flickable.

When flickable is null, the header can be exposed or hidden by setting the [exposed](#exposed-prop) property. Note that [exposed](#exposed-prop) is not automatically updated when the value of flickable changes, so if the header must be exposed when the flickable changes (or is set to null), this must be done explicitly. Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(60)
    height: units.gu(80)
    AdaptivePageLayout {
        id: layout
        anchors.fill: parent
        primaryPage: Page {
            id: page
            Flickable {
                id: contentFlick
                anchors.fill: parent
                topMargin: page.header.flickable ? 0 : page.header.height
                contentHeight: units.gu(200)
                // Scrolling here can hide the header.
            }
            header: PageHeader {
                title: i18n.tr("Navigation")
                flickable: layout.columns === 1 ? contentFlick : null
                // Show header when it gets locked in a two-column layout:
                onFlickableChanged: exposed = true
            }
        }
    }
}
```

The topMargin of the flickable will automatically be updated by adding the height of the header to the current topMargin. When changing the flickable, the topMargin of the previous flickable is restored by subtracting the header height from it. Making the header invisible has the same effect on the topMargin as unsetting the flickable.

It is permitted to use a [ListView](../../sdk-14.10/QtQuick.ListView.md) as the value of flickable, but this works well only if the [ListView](../../sdk-14.10/QtQuick.ListView.md).header property is not set. Alternatively, a Header component may be used for [ListView](../../sdk-14.10/QtQuick.ListView.md).header, but in that case the flickable of the Header must be null.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moving-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">moving</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Indicates whether the header is currently moving, either because contentY of the [flickable](#flickable-prop) changes (due to user interaction or by setting it directly), or because the header is animating in or out because the value of [exposed](#exposed-prop) was updated.

