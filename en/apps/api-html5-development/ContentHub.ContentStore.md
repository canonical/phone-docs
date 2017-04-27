---
Title: ContentHub.ContentStore
---

# ContentHub.ContentStore

<p>ContentStore is an object returned by the ContentHub.</p>
<p>It represents a location where the resources imported or
exported from a peer during a transfer operation are to be
either saved or found.</p>
<strong class="name"><code>ContentStore</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code>  var api = external.getUnityObject('1.0');
var hub = api.ContentHub;
var pictureContentType = hub.ContentType.Pictures;
hub.defaultStoreForType(pictureContentType, function(store) {
[do something with the store]
});</code></pre>
<ul>
<li>Methods</li>
</ul>
<strong class="name"><code>destroy</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Destroys the remote object. This proxy object is not valid anymore.</p>
ContentScope <strong class="name"><code>scope</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the current scope.</p>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(ContentScope)&gt;</strong>
<p>(optional)</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;ContentScope&gt; <p>current scope</p>
<strong class="name"><code>setScope</code></strong>( <code>scope, callback </code> ) 
<br>
</span><br>
<p>Sets the current scope.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>scope</code> <strong>&lt;ContentScope&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>called when the scope has been updated</p>
</li>
</ul>
String <strong class="name"><code>uri</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the uri of the associated store.</p>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
<p>(optional)</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;String&gt; <p>current uri</p>
