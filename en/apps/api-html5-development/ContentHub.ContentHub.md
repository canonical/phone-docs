---
Title: ContentHub.ContentHub
---

# ContentHub.ContentHub

<p>The ContentHub object.</p>
<strong class="name"><code>ContentHub</code></strong>( <code>  </code> ) 
<br>
</span><br>
<ul>
<li>Methods</li>
<li>Properties</li>
</ul>
<strong class="name"><code>api.importContent</code></strong>( <code>type, peer, transferOptions, onError, onSuccess </code> ) 
<br>
</span><br>
<p>Creates a ContentStore object for the given ContentPeer.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>type</code> <strong>&lt;ContentType&gt;</strong>
<p>type of the content to import</p>
</li>
<li>
<code>peer</code> <strong>&lt;<a href="ContentHub.ContentPeer.md">ContentPeer</a>&gt;</strong>
<p>peer who's content should be imported</p>
</li>
<li>
<code>transferOptions</code> <strong>&lt;Object&gt;</strong>
<p>a dictionary of transfer options. The options are the following:</p>
<ul>
<li>multipleFiles {Bool}: specified if a transfer should involve multiple files or not</li>
<li>scope {ContentScope}: specifies the location where the transferred files should be copied to</li>
</ul>
</li>
<li>
<code>onError</code> <strong>&lt;Function(reason:)&gt;</strong>
<p>called when the transfer has failed</p>
</li>
<li>
<code>onSuccess</code> <strong>&lt;Function(Array of ContentItem&gt;</strong>
<p>)} called when the transfer has been a success and items are available</p>
</li>
</ul>
<strong class="name"><code>getPeers</code></strong>( <code>filters, callback </code> ) 
<br>
</span><br>
<p>Creates a ContentPeer object for the given source type.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>filters</code> <strong>&lt;Object&gt;</strong>
<p>A dictionary of parameters to filter the result. The filtering keys are:</p>
<ul>
<li>contentType: desired ContentType</li>
<li>handler: desired ContentHandler</li>
</ul>
</li>
<li>
<code>callback</code> <strong>&lt;Function(List of ContentPeer objects)&gt;</strong>
<p>Callback that receives the result or null</p>
</li>
</ul>
<strong class="name"><code>getStore</code></strong>( <code>scope, callback </code> ) 
<br>
</span><br>
<p>Creates a ContentStore object for the given scope type.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>scope</code> <strong>&lt;ContentScope&gt;</strong>
<p>The content scope for the store</p>
</li>
<li>
<code>callback</code> <strong>&lt;Function(ContentStore)&gt;</strong>
<p>Callback that receives the result or null</p>
</li>
</ul>
<strong class="name"><code>launchContentPeerPicker</code></strong>( <code>filters, onPeerSelected, onCancelPressed </code> ) 
<br>
</span><br>
<p>Launches the content peer picker ui that allows the user to select a peer.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>filters</code> <strong>&lt;Object&gt;</strong>
<p>A dictionary of parameters to filter the result. The filtering keys are:</p>
<ul>
<li>contentType: desired ContentType</li>
<li>handler: desired ContentHandler</li>
<li>showTitle: boolean value indicating if the title should be visible</li>
</ul>
</li>
<li>
<code>onPeerSelected</code> <strong>&lt;Function(ContentPeer)&gt;</strong>
<p>Called when the user has selected a peer</p>
</li>
<li>
<code>onCancelPressed</code> <strong>&lt;Function()&gt;</strong>
<p>Called when the user has pressed cancel</p>
</li>
</ul>
<strong class="name"><code>onExportRequested</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Sets a handler that is to be called when the current application is the
target of an export request.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(ContentTransfer)&gt;</strong>
<p>Function when one requests a resource to be exported.
The corresponding ContentTransfer is provided as a parameter.</p>
</li>
</ul>
<h5>Example</h5>
<pre class="code prettyprint"><code>       var api = external.getUnityObject(1.0);
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
</code></pre>
<strong class="name"><code>onImportRequested</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Sets a handler that is to be called when the current application is the
target of an import request.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(ContentTransfer)&gt;</strong>
<p>Function when one requests a resource to be imported.
The corresponding ContentTransfer is provided as a parameter.</p>
</li>
</ul>
<h5>Example</h5>
<pre class="code prettyprint"><code>       var api = external.getUnityObject(1.0);
var hub = api.ContentHub;
var transferState = hub.ContentTransfer.State;
function _importRequested(transfer) {
};
hub.onImportRequested(_importRequested);
</code></pre>
<strong class="name"><code>onShareRequested</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Sets a handler that is to be called when the current application is the
target of an share request.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(ContentTransfer)&gt;</strong>
<p>Function when one requests a resource to be shared.
The corresponding ContentTransfer is provided as a parameter.</p>
</li>
</ul>
<h5>Example</h5>
<pre class="code prettyprint"><code>       var api = external.getUnityObject(1.0);
var hub = api.ContentHub;
var transferState = hub.ContentTransfer.State;
function _shareRequested(transfer) {
};
hub.onShareRequested(_shareRequested);
</code></pre>
<code>ContentHandler</code> &lt;<strong>String</strong>&gt; <em>(static)</em><br>
<p>ContentHandler is an enumeration of well known content handlers.</p>
<p>Values:</p>
<p>Source</p>
<p>Destination</p>
<p>Share</p>
<code>ContentScope</code> &lt;<strong>String</strong>&gt; <em>(static)</em><br>
<p>ContentScope is an enumeration of well known scope types.</p>
<p>Values:</p>
<p>System</p>
<p>User</p>
<p>App</p>
<code>ContentTransfer.Direction</code> &lt;<strong>String</strong>&gt; <em>(static)</em><br>
<p>ContentTransfer.Direction is an enumeration of the directions of a given ContentTransfer.</p>
<p>Values:</p>
<p>Import</p>
<p>Export</p>
<p>Share</p>
<code>ContentTransfer.SelectionType</code> &lt;<strong>String</strong>&gt; <em>(static)</em><br>
<p>ContentTransfer.SelectionType is an enumeration of the directions of a given ContentTransfer.</p>
<p>Values:</p>
<p>Single: Transfer should contain a single item</p>
<p>Multiple: Transfer can contain multiple items</p>
<code>ContentTransfer.State</code> &lt;<strong>String</strong>&gt; <em>(static)</em><br>
<p>ContentTransfer.State is an enumeration of the state of a given ongoing ContentTransfer.</p>
<p>Values:</p>
<p>Created: Transfer created, waiting to be initiated.</p>
<p>Initiated: Transfer has been initiated.</p>
<p>InProgress: Transfer is in progress.</p>
<p>Charged: Transfer is charged with items and ready to be collected.</p>
<p>Collected: Items in the transfer have been collected.</p>
<p>Aborted: Transfer has been aborted.</p>
<p>Finalized: Transfer has been finished and cleaned up.</p>
<p>Downloaded: Download specified by downloadId has completed.</p>
<p>Downloading: Transfer is downloading item specified by downloadId.</p>
<h5>Example</h5>
<p>var api = external.getUnityObject('1.0');
var hub = api.ContentHub;</p>
<p>var transferState = hub.ContentTransfer.State;
var pictureContentType = hub.ContentType.Pictures;</p>
<p>hub.importContentForPeer(
pictureContentType,
peer,
function(transfer) {
hub.defaultStoreForType(pictureContentType, function(store) {
transfer.setStore(store, function() {
transfer.start(function(state) {
if (transferState.Aborted === state) {
[...]
}
[...]
});
});
});
});</p>
<code>ContentType</code> &lt;<strong>String</strong>&gt; <em>(static)</em><br>
<p>ContentType is an enumeration of well known content types.</p>
<p>Values:</p>
<pre class="code prettyprint"><code>Pictures
Documents
Music
Contacts
Videos
Links</code></pre>
<h5>Example</h5>
<p>var api = external.getUnityObject('1.0');
var hub = api.ContentHub;</p>
<p>var pictureContentType = hub.ContentType.Pictures;</p>
