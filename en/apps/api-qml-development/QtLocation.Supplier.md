---
Title: QtLocation.Supplier
---

# QtLocation.Supplier

<span class="subtitle"></span>
<!-- $$$Supplier-brief -->
<p>Holds data regarding the supplier of a place, a place's image, review, or editorial. More...</p>
<!-- @@@Supplier -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.Supplier.md#icon-prop">icon</a></b></b> : PlaceIcon</li>
<li class="fn"><b><b><a href="..//QtLocation.Supplier.md#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.Supplier.md#supplier-prop">supplier</a></b></b> : QPlaceSupplier</li>
<li class="fn"><b><b><a href="..//QtLocation.Supplier.md#supplierId-prop">supplierId</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.Supplier.md#url-prop">url</a></b></b> : url</li>
</ul>
<!-- $$$Supplier-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Each instance represents a set of data about a supplier, which can include supplier's name, url and icon. The supplier is typically a business or organization.</p>
<p>Note: The Places API only supports suppliers as 'retrieve-only' objects. Submitting suppliers to a provider is not a supported use case.</p>
<h2 id="example">Example</h2>
<p>The following example shows how to create and display a supplier in QML:</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
<span class="type"><a href="..//QtLocation.Supplier.md">Supplier</a></span> {
<span class="name">id</span>: <span class="name">placeSupplier</span>
<span class="name">name</span>: <span class="string">&quot;Example&quot;</span>
<span class="name">url</span>: <span class="string">&quot;http://www.example.com/&quot;</span>
}
<span class="type">Text</span> {
<span class="name">text</span>: <span class="string">&quot;This place is was provided by &quot;</span> <span class="operator">+</span> <span class="name">placeSupplier</span>.<span class="name">name</span> <span class="operator">+</span> <span class="string">&quot;\n&quot;</span> <span class="operator">+</span> <span class="name">placeSupplier</span>.<span class="name">url</span>
}</pre>
<p><b>See also </b><a href="..//QtLocation.ImageModel.md">ImageModel</a>, <a href="..//QtLocation.ReviewModel.md">ReviewModel</a>, and <a href="..//QtLocation.EditorialModel.md">EditorialModel</a>.</p>
<!-- @@@Supplier -->
<h2>Property Documentation</h2>
<!-- $$$icon -->
<table class="qmlname"><tr valign="top" id="icon-prop"><td class="tblQmlPropNode"><p><span class="name">icon</span> : <span class="type">PlaceIcon</span></p></td></tr></table><p>This property holds the icon of the supplier.</p>
<!-- @@@icon -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the supplier which can be displayed to the user.</p>
<p>The name can potentially be localized. The language is dependent on the entity that sets it, typically this is the <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a>. The <a href="..//QtLocation.Plugin.md#locales-prop">Plugin::locales</a> property defines what language is used.</p>
<!-- @@@name -->
<br/>
<!-- $$$supplier -->
<table class="qmlname"><tr valign="top" id="supplier-prop"><td class="tblQmlPropNode"><p><span class="name">supplier</span> : <span class="type">QPlaceSupplier</span></p></td></tr></table><p>For details on how to use this property to interface between C++ and QML see &quot;Interfaces between C++ and QML Code&quot;.</p>
<!-- @@@supplier -->
<br/>
<!-- $$$supplierId -->
<table class="qmlname"><tr valign="top" id="supplierId-prop"><td class="tblQmlPropNode"><p><span class="name">supplierId</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the identifier of the supplier. The identifier is unique to the Plugin backend which provided the supplier and is generally not suitable for displaying to the user.</p>
<!-- @@@supplierId -->
<br/>
<!-- $$$url -->
<table class="qmlname"><tr valign="top" id="url-prop"><td class="tblQmlPropNode"><p><span class="name">url</span> : <span class="type"><a href="..//QtLocation.Supplier.md#url-prop">url</a></span></p></td></tr></table><p>This property holds the URL of the supplier's website.</p>
<!-- @@@url -->
<br/>
