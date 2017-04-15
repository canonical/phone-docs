---
Title: ContentHub.ContentTransfer
---
        
ContentTransfer
===============

ContentTransfer is an object created by the ContentHub to and allows one to properly setup and manage a data transfer between two peers.

<span id="ContentTransfer"></span>
**`ContentTransfer`**( `  ` )
##### Example

``` code
  var api = external.getUnityObject('1.0');
      var hub = api.ContentHub;
    
      var pictureContentType = hub.ContentType.Pictures;
    
      hub.defaultSourceForType(
         pictureContentType
         , function(peer) {
           hub.importContentForPeer(
             pictureContentType,
             peer,
             function(transfer) {
               [setup the transfer options and store]
               transfer.start(function(state) { [...] });
             });
          });
```

-   Methods

<span id="destroy"></span>
**`destroy`**( `  ` )
Destroys the remote object. This proxy object is not valid anymore.

<span id="direction"></span>
**`direction`**( `callback ` )
Retrieves the current transfer direction.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer.Direction)&gt;**

    (optional)

<span id="finalize"></span>
**`finalize`**( `  ` )
Sets State to ContentTransfer.Finalized and cleans up temporary files.

<span id="items"></span>
**`items`**( `callback ` )
Retrieves the list of items associated with the ContentTransfer.

**Parameters:**
-   `callback` **&lt;Function( Objectname: , url:&gt;**

    } )}

<span id="onStateChanged"></span>
**`onStateChanged`**( `callback ` )
Notifies the listener when the state of the transfer changes.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer.State)&gt;**

<span id="selectionType"></span>
**`selectionType`**( `callback ` )
Retrieves the current selection type.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer.SelectionType)&gt;**

<span id="setDirection"></span>
**`setDirection`**( `direction, callback ` )
Sets the transfer direction (import or export).

**Parameters:**
-   `direction` **&lt;ContentTransfer.Direction&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the state has been updated

<span id="setItems"></span>
**`setItems`**( `items, callback ` )
Sets the list of items for the associated ContentTransfer (used when exporting).

**Parameters:**
-   `items` **&lt;Array of Objectname: String, url: String&gt;**

    }

-   `callback` **&lt;Function()&gt;**

    called when the state has been updated

<span id="setSelectionType"></span>
**`setSelectionType`**( `selectionType, callback ` )
Sets the selection type (single or multiple).

**Parameters:**
-   `selectionType` **&lt;ContentTransfer.SelectionType&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the state has been updated

<span id="setState"></span>
**`setState`**( `state, callback ` )
Sets the state of the transfer.

**Parameters:**
-   `state` **&lt;ContentTransfer.State&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the state has been updated

<span id="setStore"></span>
**`setStore`**( `store, callback ` )
Sets the current store for the ContentTransfer.

**Parameters:**
-   `store` **&lt;<a href="ContentHub.ContentStore.md" class="crosslink">ContentStore</a>&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) called when the store has been updated

<span id="start"></span>
**`start`**( `callback ` )
Starts a transfer

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer.State)&gt;**

<span id="state"></span>
**`state`**( `callback ` )
Retrieves the current state.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer.State)&gt;**

    (optional)

<span id="store"></span>
**`store`**( `callback ` )
Retrieves the current store.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

