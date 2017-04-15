---
Title: Ubuntu.Content.index
---
        
Ubuntu Content API
==================

<span class="subtitle"></span>
details
Introduction
------------

Unity and the overall Ubuntu experience put heavy emphasis on the notion of content, with Unity's dash offering streamlined access to arbitrary content, both local to the device or online. More to this, Unity's dash is the primary way of surfacing content on mobile form factors without the need to access individual applications and their respective content silos. The content-hub deals with application-specific content management and implements an architecture that allows an app to define its own content silo, exchange content with other applications/the system, and a way to provide the user with content picking functionality.

<span id="definitions"></span>
Definitions
-----------

To ease conversations, we start over with a set of definitions:

-   **Content item**: A content item is an entity that consists of meta-data and data. E.g., an image is a content item, where the actual pixels are the data, and information like size, image format, bit depth, location etc. is considered meta data. See also [ContentItem](../Ubuntu.Content.ContentItem.md).
-   **Content types**: A set of well-known content types. E.g., images or music files. See also [ContentType](../Ubuntu.Content.ContentType.md)
-   **Content set**: A set of unique content items. Can be considered a content item itself, e.g., in the case of playlists.
-   **Content owner**: The unique owner of a content item. A content item has to be owned by exactly one app. See also [ContentPeer](../Ubuntu.Content.ContentPeer.md)
-   **Content store**: A container (think of it as a top-level folder in the filesystem) that contains content items of a certain type. Different stores exist for different scopes, where scope refers to either system-wide, user-wide or app-specific storage locations. See also [ContentStore](../Ubuntu.Content.ContentStore.md)
-   **Content transfer**: Transferring content item/s to and from a source or destination. A transfer is uniquely defined by a source, destination, direction (import or export), and a set of items that should be exchanged. See also [ContentTransfer](../Ubuntu.Content.ContentTransfer.md)
-   **Content picking**: Operation that allows a user to select content for subsequent import from a content source (e.g., an application). The content source is responsible for providing a UI to the user.

<span id="architectural-overview"></span>
Architectural Overview
----------------------

The architecture enforces complete application isolation, both in terms of content separation, sandboxing/confinement and in terms of the application lifecycle. As we cannot assume that two apps that want to exchange content are running at the same time, a system-level component needs to mediate and control the content exchange operation, making sure that neither app instance assumes the existence of the other one. We refer to this component as the content hub.

<span id="example-usage-importing-pictures"></span>
Example usage - Importing Pictures
----------------------------------

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Content 1.1
Rectangle {
  id: root
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
              root.activeTransfer = picSourceSingle.request()
          }
      }
      Button {
          text: "Import multiple items"
          onClicked: {
              root.activeTransfer = picSourceMulti.request()
          }
      }
  }
  ContentTransferHint {
      id: transferHint
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

general-topics
-   [ContentHub](../Ubuntu.Content.ContentHub.md)
-   [ContentPeer](../Ubuntu.Content.ContentPeer.md)
-   [ContentPeerModel](../Ubuntu.Content.ContentPeerModel.md)
-   [ContentPeerPicker](../Ubuntu.Content.ContentPeerPicker.md)
-   [ContentStore](../Ubuntu.Content.ContentStore.md)
-   [ContentTransfer](../Ubuntu.Content.ContentTransfer.md)
-   [ContentTransferHint](../Ubuntu.Content.ContentTransferHint.md)
-   [ContentType](../Ubuntu.Content.ContentType.md)

reporting-bugs
If you find any problems with the or this documentation, please file a bug in Ubuntu Content API [Launchpad page](https://bugs.launchpad.net/content-hub)

components
Available through:

``` cpp
    import Ubuntu.Content 1.1
```

**See also** [ContentHub](../Ubuntu.Content.ContentHub.md).

