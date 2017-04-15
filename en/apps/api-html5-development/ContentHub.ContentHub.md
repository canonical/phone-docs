---
Title: ContentHub.ContentHub
---
        
ContentHub
==========

The ContentHub object.

<span id="ContentHub"></span>
**`ContentHub`**( `  ` )

-   Methods
-   Properties

<span id="api.importContent"></span>
**`api.importContent`**( `type, peer, transferOptions, onError, onSuccess ` )
Creates a ContentStore object for the given ContentPeer.

**Parameters:**
-   `type` **&lt;ContentType&gt;**

    type of the content to import

-   `peer` **&lt;<a href="ContentHub.ContentPeer.md" class="crosslink">ContentPeer</a>&gt;**

    peer who's content should be imported

-   `transferOptions` **&lt;Object&gt;**

    a dictionary of transfer options. The options are the following:

    -   multipleFiles {Bool}: specified if a transfer should involve multiple files or not
    -   scope {ContentScope}: specifies the location where the transferred files should be copied to

-   `onError` **&lt;Function(reason:)&gt;**

    called when the transfer has failed

-   `onSuccess` **&lt;Function(Array of ContentItem&gt;**

    )} called when the transfer has been a success and items are available

<span id="getPeers"></span>
**`getPeers`**( `filters, callback ` )
Creates a ContentPeer object for the given source type.

**Parameters:**
-   `filters` **&lt;Object&gt;**

    A dictionary of parameters to filter the result. The filtering keys are:

    -   contentType: desired ContentType
    -   handler: desired ContentHandler

-   `callback` **&lt;Function(List of ContentPeer objects)&gt;**

    Callback that receives the result or null

<span id="getStore"></span>
**`getStore`**( `scope, callback ` )
Creates a ContentStore object for the given scope type.

**Parameters:**
-   `scope` **&lt;ContentScope&gt;**

    The content scope for the store

-   `callback` **&lt;Function(ContentStore)&gt;**

    Callback that receives the result or null

<span id="launchContentPeerPicker"></span>
**`launchContentPeerPicker`**( `filters, onPeerSelected, onCancelPressed ` )
Launches the content peer picker ui that allows the user to select a peer.

**Parameters:**
-   `filters` **&lt;Object&gt;**

    A dictionary of parameters to filter the result. The filtering keys are:

    -   contentType: desired ContentType
    -   handler: desired ContentHandler
    -   showTitle: boolean value indicating if the title should be visible

-   `onPeerSelected` **&lt;Function(ContentPeer)&gt;**

    Called when the user has selected a peer

-   `onCancelPressed` **&lt;Function()&gt;**

    Called when the user has pressed cancel

<span id="onExportRequested"></span>
**`onExportRequested`**( `callback ` )
Sets a handler that is to be called when the current application is the target of an export request.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer)&gt;**

    Function when one requests a resource to be exported. The corresponding ContentTransfer is provided as a parameter.

##### Example

``` code
       var api = external.getUnityObject(1.0);
                       var hub = api.ContentHub;
                    
                       var transferState = hub.ContentTransfer.State;
                       
                       function _exportRequested(transfer) {
                         var url = window.location.href;
                         url = url.substr(0, url.lastIndexOf('/')+1) + 'img/ubuntuone-music.png';
                       
                         transfer.setItems([{name: 'Ubuntu One', url: url}],
                           function() {
                             transfer.setState(hub.ContentTransfer.State.Charged);
                           });
                         };
                       
                       hub.onExportRequested(_exportRequested);
                
```

<span id="onImportRequested"></span>
**`onImportRequested`**( `callback ` )
Sets a handler that is to be called when the current application is the target of an import request.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer)&gt;**

    Function when one requests a resource to be imported. The corresponding ContentTransfer is provided as a parameter.

##### Example

``` code
       var api = external.getUnityObject(1.0);
                       var hub = api.ContentHub;
                
                       var transferState = hub.ContentTransfer.State;
                
                       function _importRequested(transfer) {
                       };
                
                       hub.onImportRequested(_importRequested);
                
```

<span id="onShareRequested"></span>
**`onShareRequested`**( `callback ` )
Sets a handler that is to be called when the current application is the target of an share request.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer)&gt;**

    Function when one requests a resource to be shared. The corresponding ContentTransfer is provided as a parameter.

##### Example

``` code
       var api = external.getUnityObject(1.0);
                       var hub = api.ContentHub;
                
                       var transferState = hub.ContentTransfer.State;
                
                       function _shareRequested(transfer) {
                       };
                
                       hub.onShareRequested(_shareRequested);
                
```

<span id="ContentHandler"></span>
`ContentHandler` &lt;**String**&gt; *(static)*
ContentHandler is an enumeration of well known content handlers.

Values:

Source

Destination

Share

<span id="ContentScope"></span>
`ContentScope` &lt;**String**&gt; *(static)*
ContentScope is an enumeration of well known scope types.

Values:

System

User

App

<span id="ContentTransfer.Direction"></span>
`ContentTransfer.Direction` &lt;**String**&gt; *(static)*
ContentTransfer.Direction is an enumeration of the directions of a given ContentTransfer.

Values:

Import

Export

Share

<span id="ContentTransfer.SelectionType"></span>
`ContentTransfer.SelectionType` &lt;**String**&gt; *(static)*
ContentTransfer.SelectionType is an enumeration of the directions of a given ContentTransfer.

Values:

Single: Transfer should contain a single item

Multiple: Transfer can contain multiple items

<span id="ContentTransfer.State"></span>
`ContentTransfer.State` &lt;**String**&gt; *(static)*
ContentTransfer.State is an enumeration of the state of a given ongoing ContentTransfer.

Values:

Created: Transfer created, waiting to be initiated.

Initiated: Transfer has been initiated.

InProgress: Transfer is in progress.

Charged: Transfer is charged with items and ready to be collected.

Collected: Items in the transfer have been collected.

Aborted: Transfer has been aborted.

Finalized: Transfer has been finished and cleaned up.

Downloaded: Download specified by downloadId has completed.

Downloading: Transfer is downloading item specified by downloadId.

##### Example

var api = external.getUnityObject('1.0'); var hub = api.ContentHub;

var transferState = hub.ContentTransfer.State; var pictureContentType = hub.ContentType.Pictures;

hub.importContentForPeer( pictureContentType, peer, function(transfer) { hub.defaultStoreForType(pictureContentType, function(store) { transfer.setStore(store, function() { transfer.start(function(state) { if (transferState.Aborted === state) { \[...\] } \[...\] }); }); }); });

<span id="ContentType"></span>
`ContentType` &lt;**String**&gt; *(static)*
ContentType is an enumeration of well known content types.

Values:

``` code
Pictures
                
                Documents
                
                Music
                
                Contacts
                
                Videos
                
                Links
```

##### Example

var api = external.getUnityObject('1.0'); var hub = api.ContentHub;

var pictureContentType = hub.ContentType.Pictures;

