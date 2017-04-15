---
Title: ContentHub.ContentPeer
---
        
ContentPeer
===========

ContentPeer is an object returned by the ContentHub. It represents a remote peer that can be used in a request to import, export or share content.

<span id="ContentPeer"></span>
**`ContentPeer`**( `  ` )
##### Example

``` code
  var api = external.getUnityObject('1.0');
      var hub = api.ContentHub;
    
      var pictureContentType = hub.ContentType.Pictures;
    
      hub.defaultSourceForType(
         pictureContentType
         , function(peer) {
            [do something with the peer]
          });
```

-   Methods

<span id="appId"></span>
String **`appId`**( `callback ` )
Retrieves the app Id of the associated peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

**Returns:** &lt;String&gt;
Application Id for this peer

<span id="contentType"></span>
String **`contentType`**( `callback ` )
Retrieves the specific ContentType for this peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

**Returns:** &lt;String&gt;
ContentType for this peer

<span id="destroy"></span>
**`destroy`**( `  ` )
Destroys the remote object. This proxy object is not valid anymore.

<span id="handler"></span>
String **`handler`**( `callback ` )
Retrieves the specific ContentHandler for this peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

**Returns:** &lt;String&gt;
ContentHandler for this peer

<span id="isDefaultPeer"></span>
**`isDefaultPeer`**( `callback ` )
Returns true if the peer is a default one, false otherwise.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(Bool)&gt;**

    (optional)

<span id="name"></span>
**`name`**( `callback ` )
Retrieves the name of the associated peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

<span id="request"></span>
**`request`**( `callback ` )
Request to exchange content with this ContentPeer.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer)&gt;**

    Called with the resulting content transfer

<span id="requestForStore"></span>
**`requestForStore`**( `store, callback ` )
Request to import content from this ContentPeer and use a ContentStore for permanent storage.

**Parameters:**
-   `store` **&lt;<a href="ContentHub.ContentStore.md" class="crosslink">ContentStore</a>&gt;**

    Store used as a permanent storage

-   `callback` **&lt;Function(ContentTransfer)&gt;**

    Called with the resulting content transfer

<span id="selectionType"></span>
String **`selectionType`**( `callback ` )
Retrieves the specific SelectionType for this peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

**Returns:** &lt;String&gt;
ContentTransfer.SelectionType for this peer

<span id="setAppId"></span>
**`setAppId`**( `appId, callback ` )
Sets the app Id of the associated peer.

**Parameters:**
-   `appId` **&lt;String&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the appId has been updated

<span id="setContentType"></span>
**`setContentType`**( `contentType, callback ` )
Sets specific ContentType for this peer.

**Parameters:**
-   `contentType` **&lt;ContentType&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the content type has been updated

<span id="setHandler"></span>
**`setHandler`**( `handler, callback ` )
Sets specific ContentHandler for this peer.

**Parameters:**
-   `handler` **&lt;ContentHandler&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the appId has been updated

<span id="setSelectionType"></span>
**`setSelectionType`**( `selectionType, callback ` )
Sets specific SelectionType for this peer.

**Parameters:**
-   `selectionType` **&lt;ContentTransfer.SelectionType&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the content type has been updated

