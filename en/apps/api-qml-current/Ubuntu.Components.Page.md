---
Title: Ubuntu.Components.Page
---
        
Page
====

<span class="subtitle"></span>
A page is the basic Item that represents a single view in an Ubuntu application. It is recommended to use the Page inside the MainView or AdaptivePageLayout. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[actionContext](#actionContext-prop)**** : ActrionContext
-   ****[header](#header-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

[MainView](../Ubuntu.Components.MainView.md) provides a header for Pages it includes if no [header](#header-prop) property was set. However, the application header is deprecated and it is recommended to set the [header](#header-prop) property instead.

Anchors and height of a Page are automatically determined to align with the header of the [MainView](../Ubuntu.Components.MainView.md), but can be overridden. Page contents does not automatically leave space for the Page [header](#header-prop), so this must be taken into account when anchoring the contents of the Page.

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Page {
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("Example page")
            trailingActionBar.actions: [
                Action {
                    iconName: "search"
                    text: i18n.tr("Search")
                }
            ]
        }
        Label {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: pageHeader.bottom
                topMargin: units.gu(5)
            }
            text: i18n.tr("Hello world!")
        }
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
<td><p><span id="actionContext-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">actionContext</span> : <span class="type">ActrionContext</span></p></td>
</tr>
</tbody>
</table>

The action context of the page.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="header-prop"></span><span class="name">header</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The header property for this page. Setting this property will reparent the header to the page and disable the [MainView](../Ubuntu.Components.MainView.md)'s application header.

``` qml
Page {
    id: page
    header: PageHeader {
        title: "Page with header"
        trailingActionBar.actions: [
            Action { iconName: "settings" },
            Action { iconName: "info" }
        ]
        flickable: myFlickable
    }
}
```

To avoid Page content being occluded by the header, the contents of the Page should anchor to the bottom of the header. When the Page contents is flickable, the contents does not need to be anchored to the header, but it is recommended to use a [PageHeader](../Ubuntu.Components.PageHeader.md) or [Header](../Ubuntu.Components.Header.md) component as the Page header, and set its [Header::flickable](../Ubuntu.Components.Header.md#flickable-prop) property so that the Flickable gets a top-margin that leaves enough space for the header.

This QML property was introduced in Ubuntu.Components 1.3.

**See also** [PageHeader](../Ubuntu.Components.PageHeader.md) and [Header](../Ubuntu.Components.Header.md).

