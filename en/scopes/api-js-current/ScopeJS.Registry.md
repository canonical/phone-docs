---
Title: ScopeJS.Registry
---
        
Registry
========

White pages service for available scopes

-   Methods

<span id="get_metadata"></span>
<a href="ScopeJS.ScopeMetadata.md" class="crosslink">ScopeMetadata</a> **`get_metadata`**( `id ` )
Returns the metadata for the scope with the given ID

**Parameters:**
-   `id` **&lt;String&gt;**

    Attribute definition

**Returns:** &lt;<a href="ScopeJS.ScopeMetadata.md" class="crosslink">ScopeMetadata</a>&gt;

<span id="is_scope_running"></span>
Boolean **`is_scope_running`**( `scope_id ` )
Returns whether a scope is currently running or not

**Parameters:**
-   `scope_id` **&lt;String&gt;**

    The ID of the scope from which we wish to retrieve state

**Returns:** &lt;Boolean&gt;
True if the scope is running, and False if it is not running

<span id="list"></span>
Dictionary of String -&gt; ScopeMetadata **`list`**( `  ` )
Returns a map containing the metadata for all scopes

**Returns:** &lt;Dictionary of String -&gt; ScopeMetadata&gt;

<span id="list_if"></span>
Dictionary of String -&gt; ScopeMetadata **`list_if`**( `predicate ` )
Returns a map containing only those scopes for which predicate returns true

**Parameters:**
-   `predicate` **&lt;Function(ScopeMetadata)&gt;**

    a function that must return true for each metadata item to be included in the map.

**Returns:** &lt;Dictionary of String -&gt; ScopeMetadata&gt;

<span id="set_list_update_callback"></span>
**`set_list_update_callback`**( `callback ` )
Assigns a callback method to be executed when the registry's scope list changes

Note: Upon receiving this callback, you should retrieve the updated scopes list via the list() method if you wish to retain synchronisation between client and server

**Parameters:**
-   `callback` **&lt;Function()&gt;**

    The function that is invoked when an update occurs

<span id="set_scope_state_callback"></span>
**`set_scope_state_callback`**( `scope_id, callback ` )
Assigns a callback method to be executed when a scope's running state (started / stopped) changes

**Parameters:**
-   `scope_id` **&lt;String&gt;**

    The ID of the scope from which we wish to retrieve state changes

-   `callback` **&lt;Function(is\_running: Boolean)&gt;**

    The function that is invoked when a scope changes running state

