---
Title: QtLocation.ImageModel
---

# QtLocation.ImageModel

<span class="subtitle"></span>
<!-- $$$ImageModel-brief -->
<p>The ImageModel type provides a model of place images. More...</p>
<!-- @@@ImageModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="QtLocation.ImageModel.md#batchSize-prop">batchSize</a></b></b> : int</li>
<li class="fn"><b><b><a href="QtLocation.ImageModel.md#place-prop">place</a></b></b> : Place</li>
<li class="fn"><b><b><a href="QtLocation.ImageModel.md#totalCount-prop">totalCount</a></b></b> : int</li>
</ul>
<!-- $$$ImageModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="QtLocation.ImageModel.md">ImageModel</a> is a read-only model used to fetch images related to a <a href="QtLocation.location-cpp-qml.md#place">Place</a>. Binding a <a href="QtLocation.location-cpp-qml.md#place">Place</a> via <a href="QtLocation.ImageModel.md#place-prop">ImageModel::place</a> initiates an initial fetch of images. The model performs fetches incrementally and is intended to be used in conjunction with a View such as a ListView. When the View reaches the last of the images currently in the model, a fetch is performed to retrieve more if they are available. The View is automatically updated as the images are received. The number of images which are fetched at a time is specified by the <a href="QtLocation.ImageModel.md#batchSize-prop">batchSize</a> property. The total number of images available can be accessed via the <a href="QtLocation.ImageModel.md#totalCount-prop">totalCount</a> property.</p>
<p>The model returns data for the following roles:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Role</th><th >Type</th><th >Description</th></tr></thead>
<tr valign="top"><td >url</td><td >url</td><td >The URL of the image.</td></tr>
<tr valign="top"><td >imageId</td><td >string</td><td >The identifier of the image.</td></tr>
<tr valign="top"><td >mimeType</td><td >string</td><td >The MIME type of the image.</td></tr>
<tr valign="top"><td >supplier</td><td ><a href="QtLocation.Supplier.md">Supplier</a></td><td >The supplier of the image.</td></tr>
<tr valign="top"><td >user</td><td ><a href="QtLocation.User.md">User</a></td><td >The user who contributed the image.</td></tr>
<tr valign="top"><td >attribution</td><td >string</td><td >Attribution text which must be displayed when displaying the image.</td></tr>
</table>
<h2 id="example">Example</h2>
<p>The following example shows how to display images for a place:</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
<span class="type"><a href="QtLocation.ImageModel.md">ImageModel</a></span> {
<span class="name">id</span>: <span class="name">imageModel</span>
<span class="name">batchSize</span>: <span class="number">3</span>
<span class="name">place</span>: <span class="name">place</span>
}
<span class="type">ListView</span> {
<span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">spacing</span>: <span class="number">10</span>
<span class="name">model</span>: <span class="name">imageModel</span>
<span class="name">orientation</span>: <span class="name">ListView</span>.<span class="name">Horizontal</span>
<span class="name">snapMode</span>: <span class="name">ListView</span>.<span class="name">SnapOneItem</span>
<span class="name">delegate</span>: <span class="name">Item</span> {
<span class="name">width</span>: <span class="name">listView</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">listView</span>.<span class="name">height</span>
<span class="type">Image</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">source</span>: <span class="name">url</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectFit</span>
}
<span class="type">Text</span> {
<span class="name">text</span>: <span class="name">supplier</span>.<span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;\n&quot;</span> <span class="operator">+</span> <span class="name">supplier</span>.<span class="name">url</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
}
}
}</pre>
<!-- @@@ImageModel -->
<h2>Property Documentation</h2>
<!-- $$$batchSize -->
<table class="qmlname"><tr valign="top" id="batchSize-prop"><td class="tblQmlPropNode"><p><span class="name">batchSize</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the batch size to use when fetching more image items.</p>
<!-- @@@batchSize -->
<br/>
<!-- $$$place -->
<table class="qmlname"><tr valign="top" id="place-prop"><td class="tblQmlPropNode"><p><span class="name">place</span> : <span class="type"><a href="QtLocation.Place.md">Place</a></span></p></td></tr></table><p>This property holds the Place that the images are for.</p>
<!-- @@@place -->
<br/>
<!-- $$$totalCount -->
<table class="qmlname"><tr valign="top" id="totalCount-prop"><td class="tblQmlPropNode"><p><span class="name">totalCount</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the total number of image items for the place.</p>
<!-- @@@totalCount -->
<br/>
