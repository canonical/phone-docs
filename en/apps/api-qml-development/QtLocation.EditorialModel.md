---
Title: QtLocation.EditorialModel
---

# QtLocation.EditorialModel

<span class="subtitle"></span>
<!-- $$$EditorialModel-brief -->
<p>The EditorialModel type provides a model of place editorials. More...</p>
<!-- @@@EditorialModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#batchSize-prop">batchSize</a></b></b> : int</li>
<li class="fn"><b><b><a href="#place-prop">place</a></b></b> : Place</li>
<li class="fn"><b><b><a href="#totalCount-prop">totalCount</a></b></b> : int</li>
</ul>
<!-- $$$EditorialModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="#totalCount-prop">totalCount</a> property.</p>
<p>The model returns data for the following roles:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Role</th><th >Type</th><th >Description</th></tr></thead>
<tr valign="top"><td >text</td><td >string</td><td >The editorial's textual description of the place. It can be either rich (HTML based) text or plain text depending upon the provider.</td></tr>
<tr valign="top"><td >title</td><td >string</td><td >The title of the editorial.</td></tr>
<tr valign="top"><td >language</td><td >string</td><td >The language that the editorial is written in.</td></tr>
<tr valign="top"><td >supplier</td><td ><a href="QtLocation.Supplier.md">Supplier</a></td><td >The supplier of the editorial.</td></tr>
<tr valign="top"><td >user</td><td ><a href="QtLocation.User.md">User</a></td><td >The user who contributed the editorial.</td></tr>
<tr valign="top"><td >attribution</td><td >string</td><td >Attribution text which must be displayed when displaying the editorial.</td></tr>
</table>
<h2 id="example">Example</h2>
<p>The following example shows how to display editorials for a place:</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
<span class="type"><a href="#">EditorialModel</a></span> {
<span class="name">id</span>: <span class="name">editorialModel</span>
<span class="name">batchSize</span>: <span class="number">3</span>
<span class="name">place</span>: <span class="name">place</span>
}
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">editorialModel</span>
<span class="name">delegate</span>: <span class="name">Item</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type">Column</span> {
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">clip</span>: <span class="number">true</span>
<span class="type">Text</span> {
<span class="name">text</span>: <span class="name">title</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">WordWrap</span>
<span class="name">font</span>.pixelSize: <span class="number">24</span>
}
<span class="type">Text</span> {
<span class="name">text</span>: <span class="name">text</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">wrapMode</span>: <span class="name">Text</span>.<span class="name">WordWrap</span>
<span class="name">font</span>.pixelSize: <span class="number">20</span>
}
<span class="type">Row</span> {
<span class="type">Image</span> {
<span class="name">width</span>: <span class="number">16</span>
<span class="name">height</span>: <span class="number">16</span>
<span class="name">source</span>: <span class="name">supplier</span>.<span class="name">icon</span>.<span class="name">url</span>(<span class="name">Qt</span>.<span class="name">size</span>(<span class="name">width</span>, <span class="name">height</span>), <span class="name">Icon</span>.<span class="name">List</span>)
}
<span class="type">Text</span> {
<span class="name">text</span>: <span class="string">&quot;Provided by &quot;</span> <span class="operator">+</span> <span class="name">supplier</span>.<span class="name">name</span>
<span class="name">font</span>.pixelSize: <span class="number">16</span>
}
}
<span class="type">Text</span> {
<span class="name">text</span>: <span class="string">&quot;Contributed by &quot;</span> <span class="operator">+</span> <span class="name">user</span>.<span class="name">name</span>
<span class="name">font</span>.pixelSize: <span class="number">16</span>
}
<span class="type">Text</span> {
<span class="name">text</span>: <span class="name">attribution</span>
<span class="name">font</span>.pixelSize: <span class="number">8</span>
}
}
}
}</pre>
<!-- @@@EditorialModel -->
<h2>Property Documentation</h2>
<!-- $$$batchSize -->
<table class="qmlname"><tr valign="top" id="batchSize-prop"><td class="tblQmlPropNode"><p><span class="name">batchSize</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the batch size to use when fetching more editorials items.</p>
<!-- @@@batchSize -->
<br/>
<!-- $$$place -->
<table class="qmlname"><tr valign="top" id="place-prop"><td class="tblQmlPropNode"><p><span class="name">place</span> : <span class="type"><a href="QtLocation.Place.md">Place</a></span></p></td></tr></table><p>This property holds the Place that the editorials are for.</p>
<!-- @@@place -->
<br/>
<!-- $$$totalCount -->
<table class="qmlname"><tr valign="top" id="totalCount-prop"><td class="tblQmlPropNode"><p><span class="name">totalCount</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the total number of editorial items for the place.</p>
<!-- @@@totalCount -->
<br/>
