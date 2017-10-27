---
Title: ScopeJS.Registry
---

# ScopeJS.Registry

<p>White pages service for available scopes</p>
<ul>
<li>Methods</li>
</ul>
<a href="ScopeJS.ScopeMetadata.md">ScopeMetadata</a> <strong class="name"><code>get_metadata</code></strong>( <code>id </code> ) 
<br>
<p>Returns the metadata for the scope with the given ID</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;String&gt;</strong>
<p>Attribute definition</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;<a href="ScopeJS.ScopeMetadata.md">ScopeMetadata</a>&gt; 
Boolean <strong class="name"><code>is_scope_running</code></strong>( <code>scope_id </code> ) 
<br>
<p>Returns whether a scope is currently running or not</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>scope_id</code> <strong>&lt;String&gt;</strong>
<p>The ID of the scope from which we wish to retrieve state</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>True if the scope is running, and False if it is not running</p>
Dictionary of String -> ScopeMetadata <strong class="name"><code>list</code></strong>( <code>  </code> ) 
<br>
<p>Returns a map containing the metadata for all scopes</p>
<br><strong>Returns:</strong> &lt;Dictionary of String -> ScopeMetadata&gt; 
Dictionary of String -> ScopeMetadata <strong class="name"><code>list_if</code></strong>( <code>predicate </code> ) 
<br>
<p>Returns a map containing only those scopes for which predicate returns true</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>predicate</code> <strong>&lt;Function(ScopeMetadata)&gt;</strong>
<p>a function that must return true for each metadata item to be included in the map.</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Dictionary of String -> ScopeMetadata&gt; 
<strong class="name"><code>set_list_update_callback</code></strong>( <code>callback </code> ) 
<br>
<p>Assigns a callback method to be executed when the registry's scope list changes</p>
<p>Note: Upon receiving this callback, you should retrieve the updated scopes list via the list() method if you wish to retain synchronisation between client and server</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>The function that is invoked when an update occurs</p>
</li>
</ul>
<strong class="name"><code>set_scope_state_callback</code></strong>( <code>scope_id, callback </code> ) 
<br>
<p>Assigns a callback method to be executed when a scope's running state (started / stopped) changes</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>scope_id</code> <strong>&lt;String&gt;</strong>
<p>The ID of the scope from which we wish to retrieve state changes</p>
</li>
<li>
<code>callback</code> <strong>&lt;Function(is_running: Boolean)&gt;</strong>
<p>The function that is invoked when a scope changes running state</p>
</li>
</ul>
