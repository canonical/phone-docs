---
Title: ContentHub.ContentPeer
---

# ContentHub.ContentPeer

<p>ContentPeer is an object returned by the ContentHub.
It represents a remote peer that can be used in a request
to import, export or share content.</p>
<strong class="name"><code>ContentPeer</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code>  var api = external.getUnityObject('1.0');
var hub = api.ContentHub;
var pictureContentType = hub.ContentType.Pictures;
hub.defaultSourceForType(
pictureContentType
, function(peer) {
[do something with the peer]
});</code></pre>
<ul>
<li>Methods</li>
</ul>
<div>
String <strong class="name"><code>appId</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the app Id of the associated peer.</p>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
<p>(optional)</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;String&gt; <p>Application Id for this peer</p>
String <strong class="name"><code>contentType</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the specific ContentType for this peer.</p>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
<p>(optional)</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;String&gt; <p>ContentType for this peer</p>
<strong class="name"><code>destroy</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Destroys the remote object. This proxy object is not valid anymore.</p>
String <strong class="name"><code>handler</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the specific ContentHandler for this peer.</p>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
<p>(optional)</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;String&gt; <p>ContentHandler for this peer</p>
<strong class="name"><code>isDefaultPeer</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Returns true if the peer is a default one, false otherwise.</p>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(Bool)&gt;</strong>
<p>(optional)</p>
</li>
</ul>
<strong class="name"><code>name</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the name of the associated peer.</p>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
<p>(optional)</p>
</li>
</ul>
<strong class="name"><code>request</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Request to exchange content with this ContentPeer.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(ContentTransfer)&gt;</strong>
<p>Called with the resulting content transfer</p>
</li>
</ul>
<strong class="name"><code>requestForStore</code></strong>( <code>store, callback </code> ) 
<br>
</span><br>
<p>Request to import content from this ContentPeer and use a ContentStore for permanent storage.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>store</code> <strong>&lt;<a href="ContentHub.ContentStore.md">ContentStore</a>&gt;</strong>
<p>Store used as a permanent storage</p>
</li>
<li>
<code>callback</code> <strong>&lt;Function(ContentTransfer)&gt;</strong>
<p>Called with the resulting content transfer</p>
</li>
</ul>
String <strong class="name"><code>selectionType</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the specific SelectionType for this peer.</p>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
<p>(optional)</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;String&gt; <p>ContentTransfer.SelectionType for this peer</p>
<strong class="name"><code>setAppId</code></strong>( <code>appId, callback </code> ) 
<br>
</span><br>
<p>Sets the app Id of the associated peer.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>appId</code> <strong>&lt;String&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>called when the appId has been updated</p>
</li>
</ul>
<strong class="name"><code>setContentType</code></strong>( <code>contentType, callback </code> ) 
<br>
</span><br>
<p>Sets specific ContentType for this peer.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>contentType</code> <strong>&lt;ContentType&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>called when the content type has been updated</p>
</li>
</ul>
<strong class="name"><code>setHandler</code></strong>( <code>handler, callback </code> ) 
<br>
</span><br>
<p>Sets specific ContentHandler for this peer.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>handler</code> <strong>&lt;ContentHandler&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>called when the appId has been updated</p>
</li>
</ul>
<strong class="name"><code>setSelectionType</code></strong>( <code>selectionType, callback </code> ) 
<br>
</span><br>
<p>Sets specific SelectionType for this peer.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>selectionType</code> <strong>&lt;ContentTransfer.SelectionType&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>called when the content type has been updated</p>
</li>
</ul>
