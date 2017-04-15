---
Title: Ubuntu.Components.MainView
---
        
MainView
========

<span class="subtitle"></span>
MainView is the root Item that should be used for all applications. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[actionContext](#actionContext-prop)**** : ActionContext
-   ****[anchorToKeyboard](#anchorToKeyboard-prop)**** : bool
-   ****[applicationName](#applicationName-prop)**** : string
-   ****[backgroundColor](#backgroundColor-prop)**** : color

<span id="details"></span>
Detailed Description
--------------------

The simplest way to use a [MainView](index.html) is to include a single [Page](../Ubuntu.Components.Page.md) object inside the [MainView](index.html):

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Page {
        header: PageHeader {
            id: pageHeader
            title: "Simple page"
        }
        Button {
            anchors {
                horizontalCenter: parent.horizontalCenter
                top: pageHeader.bottom
                topMargin: units.gu(5)
            }
            width: units.gu(15)
            text: "Push me"
            onClicked: print("Click!")
        }
    }
}
```

It is not required to set the anchors of the [Page](../Ubuntu.Components.Page.md) as it will automatically fill its parent.

Do not include multiple Pages directly inside the [MainView](index.html), but use [AdaptivePageLayout](../Ubuntu.Components.AdaptivePageLayout.md) inside [MainView](index.html) to navigate between several Pages.

If the [Page](../Ubuntu.Components.Page.md) inside the [MainView](index.html) includes a Flickable, set the flickable property of the [PageHeader](../Ubuntu.Components.PageHeader.md) to automatically hide and show the header when the user scrolls up or down:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Page {
        header: PageHeader {
            title: "Page with Flickable"
            flickable: myFlickable
        }
        Flickable {
            id: myFlickable
            anchors.fill: parent
            contentHeight: column.height
            Column {
                id: column
                Repeater {
                    model: 100
                    Label {
                        text: "line "+index
                    }
                }
            }
        }
    }
}
```

The same header behavior is automatic when using a [ListView](../QtQuick.ListView.md) instead of a Flickable in the above example.

The examples above show how to include a single [Page](../Ubuntu.Components.Page.md) inside a [MainView](index.html), but more advanced application structures are possible using [AdaptivePageLayout](../Ubuntu.Components.AdaptivePageLayout.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actionContext-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">actionContext</span> : <span class="type"><a href="Ubuntu.Components.ActionContext.md">ActionContext</a></span></p></td>
</tr>
</tbody>
</table>

The action context of the [MainView](index.html).

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="anchorToKeyboard-prop"></span><span class="name">anchorToKeyboard</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property holds if the application should automatically resize the contents when the input method appears

The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="applicationName-prop"></span><span class="name">applicationName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property holds the application's name, which must be the same as the desktop file's name. The name also sets the name of the QCoreApplication and defaults for data and cache folders that work on the desktop and under confinement, as well as the default gettext domain. C++ code that writes files may use QStandardPaths::writableLocation with QStandardPaths::DataLocation or QStandardPaths::CacheLocation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backgroundColor-prop"></span><span class="name">backgroundColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Color of the background.

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(60)
    backgroundColor: UbuntuColors.blue
}
```

