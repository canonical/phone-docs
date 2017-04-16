---
Title: QtLocation.CategoryModel
---

# QtLocation.CategoryModel

<span class="subtitle"></span>
<!-- $$$CategoryModel-brief -->
<p>The CategoryModel type provides a model of the categories supported by a Plugin. More...</p>
<!-- @@@CategoryModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.CategoryModel.md#hierarchical-prop">hierarchical</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.CategoryModel.md#plugin-prop">plugin</a></b></b> : Plugin</li>
<li class="fn"><b><b><a href="..//QtLocation.CategoryModel.md#status-prop">status</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.CategoryModel.md#dataChanged-signal">dataChanged</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">string <b><b><a href="..//QtLocation.CategoryModel.md#errorString-method">errorString</a></b></b>()</li>
</ul>
<!-- $$$CategoryModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="..//QtLocation.CategoryModel.md">CategoryModel</a> type provides a model of the categories that are available from the current <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a>. The model supports both a flat list of categories and a hierarchical tree representing category groupings. This can be controlled by the <a href="..//QtLocation.CategoryModel.md#hierarchical-prop">hierarchical</a> property.</p>
<p>The model supports the following roles:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Role</th><th >Type</th><th >Description</th></tr></thead>
<tr valign="top"><td >category</td><td ><a href="..//QtLocation.location-cpp-qml.md#category">Category</a></td><td >Category object for the current item.</td></tr>
<tr valign="top"><td >parentCategory</td><td ><a href="..//QtLocation.location-cpp-qml.md#category">Category</a></td><td >Parent category object for the current item. If there is no parent, null is returned.</td></tr>
</table>
<p>The following example displays a flat list of all available categories:</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">CategoryModel</span> {
<span class="name">plugin</span>: <span class="name">myPlugin</span>
<span class="name">hierarchical</span>: <span class="number">false</span>
}
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">category</span>.<span class="name">name</span> }
}</pre>
<p>To access the hierarchical category model it is necessary to use a DelegateModel to access the child items.</p>
<!-- @@@CategoryModel -->
<h2>Property Documentation</h2>
<!-- $$$hierarchical -->
<table class="qmlname"><tr valign="top" id="hierarchical-prop"><td class="tblQmlPropNode"><p><span class="name">hierarchical</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the model provides a hierarchical tree of categories or a flat list. The default is true.</p>
<!-- @@@hierarchical -->
<br/>
<!-- $$$plugin -->
<table class="qmlname"><tr valign="top" id="plugin-prop"><td class="tblQmlPropNode"><p><span class="name">plugin</span> : <span class="type"><a href="..//QtLocation.Plugin.md">Plugin</a></span></p></td></tr></table><p>This property holds the provider <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> used by this model.</p>
<!-- @@@plugin -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the status of the model. It can be one of:</p>
<table class="generic">
<tr valign="top"><td ><a href="..//QtLocation.CategoryModel.md">CategoryModel</a>.Null</td><td >No category fetch query has been executed. The model is empty.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.CategoryModel.md">CategoryModel</a>.Ready</td><td >No error occurred during the last operation, further operations may be performed on the model.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.CategoryModel.md">CategoryModel</a>.Loading</td><td >The model is being updated, no other operations may be performed until complete.</td></tr>
<tr valign="top"><td ><a href="..//QtLocation.CategoryModel.md">CategoryModel</a>.Error</td><td >An error occurred during the last operation, further operations can still be performed on the model.</td></tr>
</table>
<!-- @@@status -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$dataChanged -->
<table class="qmlname"><tr valign="top" id="dataChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">dataChanged</span>()</p></td></tr></table><p>This signal is emitted when significant changes have been made to the underlying datastore.</p>
<p>Applications should act on this signal at their own discretion. The data provided by the model could be out of date and so the model should be reupdated sometime, however an immediate reupdate may be disconcerting to users if the categories change without any action on their part.</p>
<p>The corresponding handler is <code>onDataChanged</code>.</p>
<!-- @@@dataChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">errorString</span>() const</p></td></tr></table><p>This read-only property holds the textual presentation of latest category model error. If no error has occurred, an empty string is returned.</p>
<p>An empty string may also be returned if an error occurred which has no associated textual representation.</p>
<!-- @@@errorString -->
<br/>
