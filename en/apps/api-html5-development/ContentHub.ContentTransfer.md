---
Title: ContentHub.ContentTransfer
---

# ContentHub.ContentTransfer

<p>ContentTransfer is an object created by the ContentHub to
and allows one to properly setup and manage a data
transfer between two peers.</p>
<strong class="name"><code>ContentTransfer</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code>  var api = external.getUnityObject('1.0');
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
});</code></pre>
<ul>
<li>Methods</li>
</ul>
<strong class="name"><code>destroy</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Destroys the remote object. This proxy object is not valid anymore.</p>
<strong class="name"><code>direction</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the current transfer direction.</p>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(ContentTransfer.Direction)&gt;</strong>
<p>(optional)</p>
</li>
</ul>
<strong class="name"><code>finalize</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Sets State to ContentTransfer.Finalized and cleans up temporary files.</p>
<strong class="name"><code>items</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the list of items associated with the ContentTransfer.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function( Objectname: , url:&gt;</strong>
<p>} )}</p>
</li>
</ul>
<strong class="name"><code>onStateChanged</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Notifies the listener when the state of the transfer changes.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(ContentTransfer.State)&gt;</strong>
</li>
</ul>
<strong class="name"><code>selectionType</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the current selection type.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(ContentTransfer.SelectionType)&gt;</strong>
</li>
</ul>
<strong class="name"><code>setDirection</code></strong>( <code>direction, callback </code> ) 
<br>
</span><br>
<p>Sets the transfer direction (import or export).</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>direction</code> <strong>&lt;ContentTransfer.Direction&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>called when the state has been updated</p>
</li>
</ul>
<strong class="name"><code>setItems</code></strong>( <code>items, callback </code> ) 
<br>
</span><br>
<p>Sets the list of items for the associated ContentTransfer (used when exporting).</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>items</code> <strong>&lt;Array of Objectname: String, url: String&gt;</strong>
<p>}</p>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>called when the state has been updated</p>
</li>
</ul>
<strong class="name"><code>setSelectionType</code></strong>( <code>selectionType, callback </code> ) 
<br>
</span><br>
<p>Sets the selection type (single or multiple).</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>selectionType</code> <strong>&lt;ContentTransfer.SelectionType&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>called when the state has been updated</p>
</li>
</ul>
<strong class="name"><code>setState</code></strong>( <code>state, callback </code> ) 
<br>
</span><br>
<p>Sets the state of the transfer.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>state</code> <strong>&lt;ContentTransfer.State&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>called when the state has been updated</p>
</li>
</ul>
<strong class="name"><code>setStore</code></strong>( <code>store, callback </code> ) 
<br>
</span><br>
<p>Sets the current store for the ContentTransfer.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>store</code> <strong>&lt;<a href="ContentHub.ContentStore.md">ContentStore</a>&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>(optional)  called when the store has been updated</p>
</li>
</ul>
<strong class="name"><code>start</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Starts a transfer</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(ContentTransfer.State)&gt;</strong>
</li>
</ul>
<strong class="name"><code>state</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the current state.</p>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(ContentTransfer.State)&gt;</strong>
<p>(optional)</p>
</li>
</ul>
<strong class="name"><code>store</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the current store.</p>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
<p>(optional)</p>
</li>
</ul>
