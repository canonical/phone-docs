---
Title: ContentHub.ContentStore
---
        
ContentStore
============

ContentStore is an object returned by the ContentHub.

It represents a location where the resources imported or exported from a peer during a transfer operation are to be either saved or found.

<span id="ContentStore"></span>
**`ContentStore`**( `  ` )
##### Example

``` code
  var api = external.getUnityObject('1.0');
      var hub = api.ContentHub;
    
      var pictureContentType = hub.ContentType.Pictures;
    
      hub.defaultStoreForType(pictureContentType, function(store) {
        [do something with the store]
        });
```

-   Methods

<span id="destroy"></span>
**`destroy`**( `  ` )
Destroys the remote object. This proxy object is not valid anymore.

<span id="scope"></span>
ContentScope **`scope`**( `callback ` )
Retrieves the current scope.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(ContentScope)&gt;**

    (optional)

**Returns:** &lt;ContentScope&gt;
current scope

<span id="setScope"></span>
**`setScope`**( `scope, callback ` )
Sets the current scope.

**Parameters:**
-   `scope` **&lt;ContentScope&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the scope has been updated

<span id="uri"></span>
String **`uri`**( `callback ` )
Retrieves the uri of the associated store.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

**Returns:** &lt;String&gt;
current uri

