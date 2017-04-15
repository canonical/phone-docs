---
Title: Ubuntu.Components.UbuntuListView
---
        
UbuntuListView
==============

<span class="subtitle"></span>
A ListView with special features tailored for a look and feel fitting the Ubuntu Touch platform. The UbuntuListView works just like a regular ListView, but it adds special features such as expanding/collapsing items (when used together with the Expandable item). It provides features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it. More...

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
<td><p><a href="../../sdk-14.10/QtQuick.ListView.md">ListView</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[pullToRefresh](#pullToRefresh-prop)**** : pullToRefresh

<span id="details"></span>
Detailed Description
--------------------

Examples:

``` qml
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
Item {
    ListModel {
        id: listModel
    }
    UbuntuListView {
        id: ubuntuListView
        anchors { left: parent.left; right: parent.right }
        height: units.gu(24)
        model: listModel
        delegate: ListItem.Expandable {
            id: expandingItem
            expandedHeight: units.gu(30)
            onClicked: {
                ubuntuListView.expandedIndex = index;
            }
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
<td><p><span id="pullToRefresh-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">pullToRefresh</span> : <span class="type"><a href="#pullToRefresh-prop">pullToRefresh</a></span></p></td>
</tr>
</tbody>
</table>

Attached [PullToRefresh](../Ubuntu.Components.PullToRefresh.md) to control manual model refresh. The component is disabled by default.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
UbuntuListView {
    width: units.gu(40)
    height: units.gu(71)
    model: XmlListModel {
        source: "http://feeds.reuters.com/reuters/topNews"
        query: "/rss/channel/item"
        XmlRole { name: "title"; query: "title/string()" }
    }
    // let refresh control know when the refresh gets completed
    pullToRefresh {
        enable: true
        refreshing: model.status === XmlListModel.Loading
        onRefresh: model.reload()
    }
    delegate: ListItem {
        ListItemLayout {
            title.text: modelData
        }
        onClicked: {
            ListView.view.model.reload();
        }
    }
}
```

This QML property was introduced in Ubuntu.Components 1.1.

