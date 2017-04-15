---
Title: Ubuntu.Components.PullToRefresh
---
        
PullToRefresh
=============

<span class="subtitle"></span>
Pull-to-refresh component for Flickables to reload a model upon pull. More...

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
<td>Ubuntu.Components 1.1</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[content](#content-prop)**** : Component
-   ****[offset](#offset-prop)**** : real
-   ****[refreshing](#refreshing-prop)**** : bool
-   ****[releaseToRefresh](#releaseToRefresh-prop)**** : bool
-   ****[target](#target-prop)**** : Flickable

<span id="signals"></span>
Signals
-------

-   ****[refresh](#refresh-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The component provides ability to initiate data model refresh by pulling the attached Flickable's content. The refresh can be initiated when the flickable content is at its top boundary. By dragging the content further, reaching the threshold value defined by the style will initiate the manual refresh by emitting the [refresh](#refresh-signal) signal. The progress of the refresh must be notified to the component by defining the completion clause to the [refreshing](#refreshing-prop) property.

``` qml
import QtQuick 2.4
import QtQuick.XmlListModel 2.0
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    XmlListModel {
        id: listModel
        source: "http://feeds.reuters.com/reuters/topNews"
        query: "/rss/channel/item"
        XmlRole { name: "title"; query: "title/string()" }
    }
    Page {
        title: "Reuters"
        ListView {
            id: view
            anchors.fill: parent
            model: listModel
            delegate: Standard {
                width: ListView.view.width
                height: units.gu(5)
                text: title
            }
            PullToRefresh {
                refreshing: view.model.status === XmlListModel.Loading
                onRefresh: view.model.reload()
            }
        }
    }
}
```

**Note:** [UbuntuListView](../Ubuntu.Components.UbuntuListView.md) has a built-in [PullToRefresh](index.html), therefore it is recommended to use [UbuntuListView](../Ubuntu.Components.UbuntuListView.md) instead of [ListView](../../sdk-14.10/QtQuick.ListView.md).

The component will also show the progress of the model's update when the refresh gets initiated by the model or from other party. Style implementations can decide whether to visualize that or not.

As default, the component displays a Label visualizing the two states of the component, which is pull to refresh and release to refresh. As mentioned, this is driven by the threshold value specified by the style, and the state is reported by the [releaseToRefresh](#releaseToRefresh-prop) property. The [content](#content-prop) specifies the visuals to be shown by the component. Custom implementations can hold any component, which will be anchor filled to the component itself.

``` qml
import QtQuick 2.4
import QtQuick.XmlListModel 2.0
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    XmlListModel {
        id: listModel
        source: "http://feeds.reuters.com/reuters/topNews"
        query: "/rss/channel/item"
        XmlRole { name: "title"; query: "title/string()" }
    }
    Page {
        title: "Reuters"
        ListView {
            id: view
            anchors.fill: parent
            model: listModel
            delegate: Standard {
                width: ListView.view.width
                height: units.gu(5)
                text: title
            }
            PullToRefresh {
                id: pullToRefresh
                refreshing: view.model.status === XmlListModel.Loading
                onRefresh: view.model.reload()
                content: Item {
                    Icon {
                        name: pullToRefresh.releaseToRefresh ? "search" : ""
                        height: parent.height
                        width: height
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }
    }
}
```

**Note:** When declared as child of Flickable, set parent to the flickable explicitly so the component does not land in the `content` of Flickable.

``` qml
import QtQuick 2.4
import QtQuick.XmlListModel 2.0
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
MainView {
    id: main
    width: units.gu(40)
    height: units.gu(71)
    XmlListModel {
        id: rssFeed
        source: "http://feeds.reuters.com/reuters/topNews"
        query: "/rss/channel/item"
        XmlRole { name: "title"; query: "title/string()" }
    }
    Page {
        title: "Reuters"
        Flickable {
            id: flickable
            anchors.fill: parent
            contentHeight: column.childrenRect.height
            contentWidth: column.childrenRect.width
            Column {
                id: column
                Repeater {
                    model: rssFeed
                    Standard {
                        width: main.width
                        height: units.gu(5)
                        text: title
                    }
                }
            }
            PullToRefresh {
                parent: flickable
                refreshing: rssFeed.status === XmlListModel.Loading
                onRefresh: rssFeed.reload()
            }
        }
    }
}
```

<span id="styling"></span>
### Styling

The component style API is defined by the [PullToRefreshStyle](../Ubuntu.Components.Styles.PullToRefreshStyle.md) component. Styles may define different ways to initiate refresh upon dragging.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="content-prop"></span><span class="name">content</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the visuals to be displayed when the component is revealed upon manual refresh. The default value is a Label showing "Pull to refresh..." text when the component is pulled down till the activation threshold, and "Release to refresh..." after that.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="offset-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">offset</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the offset the component is pulled from the [target](#target-prop) Flickable's *topMargin*. The property can be used to provide animations in custom contents.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="refreshing-prop"></span><span class="name">refreshing</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property notifies the component about the ongoing refresh operation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="releaseToRefresh-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">releaseToRefresh</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property specifies when the component is ready to trigger the refresh() signal. The logic is defined by the style and the value is transferred from the style's releaseToRefresh property. The property can be used to define custom visuals for [content](#content-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span></p></td>
</tr>
</tbody>
</table>

The Flickable or derivate the component is attached to. This can only be the parent or a sibling of the component. Defaults to the parent.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="refresh-signal"></span><span class="name">refresh</span>()</p></td>
</tr>
</tbody>
</table>

Signal emitted when the model refresh is initiated by the component.

