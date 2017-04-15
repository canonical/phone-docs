---
Title: Ubuntu.Content.ContentHub
---
        
ContentHub
==========

<span class="subtitle"></span>
The central manager for all content operations More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Content 1.1 |

<span id="signals"></span>
Signals
-------

-   ****[exportRequested](#exportRequested-signal)****(ContentTransfer *transfer*)
-   ****[importRequested](#importRequested-signal)****(ContentTransfer *transfer*)
-   ****[shareRequested](#shareRequested-signal)****(ContentTransfer *transfer*)

<span id="details"></span>
Detailed Description
--------------------

Example usage for importing content:

``` qml
import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Content 0.1
MainView {
    id: root
    width: units.gu(60)
    height: units.gu(90)
    property list<ContentItem> importItems
    property var activeTransfer
    ContentPeer {
        id: picSourceSingle
        contentType: ContentType.Pictures
        handler: ContentHandler.Source
        selectionType: ContentTransfer.Single
    }
    ContentPeer {
        id: picSourceMulti
        contentType: ContentType.Pictures
        handler: ContentHandler.Source
        selectionType: ContentTransfer.Multiple
    }
    Row {
        Button {
            text: "Import single item"
            onClicked: {
                activeTransfer = picSourceSingle.request()
            }
        }
        Button {
            text: "Import multiple items"
            onClicked: {
                activeTransfer = picSourceMulti.request()
            }
        }
    }
    ContentTransferHint {
        id: importHint
        anchors.fill: parent
        activeTransfer: root.activeTransfer
    }
    Connections {
        target: root.activeTransfer
        onStateChanged: {
            if (root.activeTransfer.state === ContentTransfer.Charged)
                importItems = root.activeTransfer.items;
        }
    }
}
```

Example usage for providing a content export:

``` qml
import QtQuick 2.0
import Ubuntu.Content 0.1
Rectangle {
    property list<ContentItem> selectedItems
    Connections {
        target: ContentHub
        onExportRequested: {
            // show content picker
            transfer.items = selectedItems;
            transfer.state = ContentTransfer.Charged;
        }
    }
}
```

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exportRequested-signal"></span><span class="name">exportRequested</span>(<span class="type"><a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a></span> <em>transfer</em>)</p></td>
</tr>
</tbody>
</table>

The signal is triggered when an export is requested.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="importRequested-signal"></span><span class="name">importRequested</span>(<span class="type"><a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a></span> <em>transfer</em>)</p></td>
</tr>
</tbody>
</table>

The signal is triggered when an import is requested.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shareRequested-signal"></span><span class="name">shareRequested</span>(<span class="type"><a href="Ubuntu.Content.ContentTransfer.md">ContentTransfer</a></span> <em>transfer</em>)</p></td>
</tr>
</tbody>
</table>

The signal is triggered when a share is requested.

