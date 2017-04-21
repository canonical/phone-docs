---
Title: QtLocation.Category
---

# QtLocation.Category

<span class="subtitle"></span>
<!-- $$$Category-brief -->
<p>The Category type represents a category that a Place can be associated with. More...</p>
<!-- @@@Category -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href=#category-prop">category</a></b></b> : QPlaceCategory</li>
<li class="fn"><b><b><a href=#categoryId-prop">categoryId</a></b></b> : string</li>
<li class="fn"><b><b><a href=#icon-prop">icon</a></b></b> : PlaceIcon</li>
<li class="fn"><b><b><a href=#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href=#plugin-prop">plugin</a></b></b> : Plugin</li>
<li class="fn"><b><b><a href=#status-prop">status</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href=#visibility-prop">visibility</a></b></b> : enumeration</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">string <b><b><a href=#errorString-method">errorString</a></b></b>()</li>
<li class="fn">void <b><b><a href=#remove-method">remove</a></b></b>()</li>
<li class="fn">void <b><b><a href=#save-method">save</a></b></b>()</li>
</ul>
<!-- $$$Category-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Categories are used to search for places based on the categories they are associated with. The list of available categories can be obtained from the <a href="QtLocation.CategoryModel.md">CategoryModel</a>. The <a href="QtLocation.PlaceSearchModel.md">PlaceSearchModel</a> has a <a href="QtLocation.PlaceSearchModel.md#categories-prop">categories</a> property that is used to limit the search results to places with the specified categories.</p>
<p>If the <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> supports it, categories can be created or removed. To create a new category construct a new Category object and set its properties, then invoke the <a href=#save-method">save()</a> method.</p>
<pre class="qml">import QtPositioning 5.2
import QtLocation 5.3
<span class="type"><a href=">Category</a></span> {
<span class="name">id</span>: <span class="name">category</span>
<span class="name">plugin</span>: <span class="name">myPlugin</span>
<span class="name">name</span>: <span class="string">&quot;New Category&quot;</span>
<span class="name">visibility</span>: <span class="name">Category</span>.<span class="name">PrivateVisibility</span>
}
...
<span class="name">category</span>.<span class="name">save</span>();</pre>
<p>To remove a category ensure that the <a href="QtLocation.location-places-qml.md#plugin">plugin</a> and <a href=#categoryId-prop">categoryId</a> properties are set and call the <a href=#remove-method">remove()</a> method.</p>
<p><b>See also </b><a href="QtLocation.CategoryModel.md">CategoryModel</a>.</p>
<!-- @@@Category -->
<h2>Property Documentation</h2>
<!-- $$$category -->
<table class="qmlname"><tr valign="top" id="category-prop"><td class="tblQmlPropNode"><p><span class="name">category</span> : <span class="type">QPlaceCategory</span></p></td></tr></table><p>For details on how to use this property to interface between C++ and QML see &quot;Interfaces between C++ and QML Code&quot;.</p>
<!-- @@@category -->
<br/>
<!-- $$$categoryId -->
<table class="qmlname"><tr valign="top" id="categoryId-prop"><td class="tblQmlPropNode"><p><span class="name">categoryId</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the identifier of the category. The categoryId is a string which uniquely identifies this category within the categories <a href="QtLocation.location-places-qml.md#plugin">plugin</a>.</p>
<!-- @@@categoryId -->
<br/>
<!-- $$$icon -->
<table class="qmlname"><tr valign="top" id="icon-prop"><td class="tblQmlPropNode"><p><span class="name">icon</span> : <span class="type">PlaceIcon</span></p></td></tr></table><p>This property holds the image source associated with the category. To display the icon you can use the Image type.</p>
<!-- @@@icon -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds string based name of the category.</p>
<!-- @@@name -->
<br/>
<!-- $$$plugin -->
<table class="qmlname"><tr valign="top" id="plugin-prop"><td class="tblQmlPropNode"><p><span class="name">plugin</span> : <span class="type"><a href="QtLocation.Plugin.md">Plugin</a></span></p></td></tr></table><p>This property holds the location based service to which the category belongs.</p>
<!-- @@@plugin -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the status of the category. It can be one of:</p>
<table class="generic">
<tr valign="top"><td >Category.Ready</td><td >No error occurred during the last operation, further operations may be performed on the category.</td></tr>
<tr valign="top"><td >Category.Saving</td><td >The category is currently being saved, no other operations may be performed until the current operation completes.</td></tr>
<tr valign="top"><td >Category.Removing</td><td >The category is currently being removed, no other operations can be performed until the current operation completes.</td></tr>
<tr valign="top"><td >Category.Error</td><td >An error occurred during the last operation, further operations can still be performed on the category.</td></tr>
</table>
<!-- @@@status -->
<br/>
<!-- $$$visibility -->
<table class="qmlname"><tr valign="top" id="visibility-prop"><td class="tblQmlPropNode"><p><span class="name">visibility</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the visibility of the category. It can be one of:</p>
<table class="generic">
<tr valign="top"><td >Category.UnspecifiedVisibility</td><td >The visibility of the category is unspecified. If saving a category, the plugin will automatically set a default visibility to the category saved in the backend. This default is dependent on the plugin implementation.</td></tr>
<tr valign="top"><td >Category.DeviceVisibility</td><td >The category is limited to the current device. The category will not be transferred off of the device.</td></tr>
<tr valign="top"><td >Category.PrivateVisibility</td><td >The category is private to the current user. The category may be transferred to an online service but is only ever visible to the current user.</td></tr>
<tr valign="top"><td >Category.PublicVisibility</td><td >The category is public.</td></tr>
</table>
<p>Note that visibility does not affect how <a href="QtLocation.location-cpp-qml.md#place">Place</a>s associated with the category are displayed in the user-interface of an application on the device. Instead, it defines the sharing semantics of the category.</p>
<!-- @@@visibility -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">errorString</span>()</p></td></tr></table><p>Returns a string description of the error of the last operation. If the last operation completed successfully then the string is empty.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">remove</span>()</p></td></tr></table><p>This method permanently removes the category from the backend service.</p>
<!-- @@@remove -->
<br/>
<!-- $$$save -->
<table class="qmlname"><tr valign="top" id="save-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">save</span>()</p></td></tr></table><p>This method saves the category to the backend service.</p>
<!-- @@@save -->
<br/>
