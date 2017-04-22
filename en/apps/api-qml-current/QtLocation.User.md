---
Title: QtLocation.User
---

# QtLocation.User

<span class="subtitle"></span>
<!-- $$$User-brief -->
<p>The User type identifies a user who contributed a particular Place content item. More...</p>
<!-- @@@User -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="QtLocation.User.md#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="QtLocation.User.md#user-prop">user</a></b></b> : QPlaceUser</li>
<li class="fn"><b><b><a href="QtLocation.User.md#userId-prop">userId</a></b></b> : string</li>
</ul>
<!-- $$$User-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Each <a href="QtLocation.location-cpp-qml.md#place">Place</a> content item has an associated user who contributed the content. This type provides information about that user.</p>
<h2 id="example">Example</h2>
<p>The following example shows how to display information about the user who submitted an editorial:</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
<span class="type"><a href="QtLocation.EditorialModel.md">EditorialModel</a></span> {
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
<p><b>See also </b><a href="QtLocation.ImageModel.md">ImageModel</a>, <a href="QtLocation.ReviewModel.md">ReviewModel</a>, and <a href="QtLocation.EditorialModel.md">EditorialModel</a>.</p>
<!-- @@@User -->
<h2>Property Documentation</h2>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of a user.</p>
<!-- @@@name -->
<br/>
<!-- $$$user -->
<table class="qmlname"><tr valign="top" id="user-prop"><td class="tblQmlPropNode"><p><span class="name">user</span> : <span class="type">QPlaceUser</span></p></td></tr></table><p>For details on how to use this property to interface between C++ and QML see &quot;Interfaces between C++ and QML Code&quot;.</p>
<!-- @@@user -->
<br/>
<!-- $$$userId -->
<table class="qmlname"><tr valign="top" id="userId-prop"><td class="tblQmlPropNode"><p><span class="name">userId</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the unique identifier of the user.</p>
<!-- @@@userId -->
<br/>
