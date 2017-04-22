---
Title: QtOrganizer.Collection
---

# QtOrganizer.Collection

<span class="subtitle"></span>
<!-- $$$Collection-brief -->
<p>The Collection element represents a collection of items in an organizer manager. More...</p>
<!-- @@@Collection -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#collectionId-prop">collectionId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#description-prop">description</a></b></b> : string</li>
<li class="fn"><b><b><a href="#image-prop">image</a></b></b> : url</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#secondaryColor-prop">secondaryColor</a></b></b> : color</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">var <b><b><a href="#extendedMetaData-method">extendedMetaData</a></b></b>(key)</li>
<li class="fn">var <b><b><a href="#metaData-method">metaData</a></b></b>(key)</li>
<li class="fn"><b><b><a href="#setExtendedMetaData-method">setExtendedMetaData</a></b></b>(key, value)</li>
<li class="fn"><b><b><a href="#setMetaData-method">setMetaData</a></b></b>(key, value)</li>
</ul>
<!-- $$$Collection-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@Collection -->
<h2>Property Documentation</h2>
<!-- $$$collectionId -->
<table class="qmlname"><tr valign="top" id="collectionId-prop"><td class="tblQmlPropNode"><p><span class="name">collectionId</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the ID of the collection.</p>
<!-- @@@collectionId -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>This property holds the color meta data of a collection.</p>
<!-- @@@color -->
<br/>
<!-- $$$description -->
<table class="qmlname"><tr valign="top" id="description-prop"><td class="tblQmlPropNode"><p><span class="name">description</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the description meta data of a collection.</p>
<!-- @@@description -->
<br/>
<!-- $$$image -->
<table class="qmlname"><tr valign="top" id="image-prop"><td class="tblQmlPropNode"><p><span class="name">image</span> : <span class="type">url</span></p></td></tr></table><p>This property holds the image url meta data of a collection.</p>
<!-- @@@image -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name meta data of a collection.</p>
<!-- @@@name -->
<br/>
<!-- $$$secondaryColor -->
<table class="qmlname"><tr valign="top" id="secondaryColor-prop"><td class="tblQmlPropNode"><p><span class="name">secondaryColor</span> : <span class="type">color</span></p></td></tr></table><p>This property holds the secondary color meta data of a collection.</p>
<!-- @@@secondaryColor -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$extendedMetaData -->
<table class="qmlname"><tr valign="top" id="extendedMetaData-method"><td class="tblQmlFuncNode"><p><span class="type">var</span> <span class="name">extendedMetaData</span>(<span class="type">key</span>)</p></td></tr></table><p>Returns the value of extended metadata with the given <i>key</i>.</p>
<!-- @@@extendedMetaData -->
<br/>
<!-- $$$metaData -->
<table class="qmlname"><tr valign="top" id="metaData-method"><td class="tblQmlFuncNode"><p><span class="type">var</span> <span class="name">metaData</span>(<span class="type">key</span>)</p></td></tr></table><p>Returns the meta data stored in this collection for the given <i>key</i>. Possible keys include:</p>
<ul>
<li>Collection.KeyName</li>
<li>Collection.KeyDescription</li>
<li>Collection.KeyColor</li>
<li>Collection.KeyImage</li>
<li>Collection.KeyExtended</li>
</ul>
<!-- @@@metaData -->
<br/>
<!-- $$$setExtendedMetaData -->
<table class="qmlname"><tr valign="top" id="setExtendedMetaData-method"><td class="tblQmlFuncNode"><p><span class="name">setExtendedMetaData</span>(<span class="type">key</span>, <span class="type">value</span>)</p></td></tr></table><p>Sets the value of the extended metadata with the given <i>key</i> to <i>value</i>.</p>
<!-- @@@setExtendedMetaData -->
<br/>
<!-- $$$setMetaData -->
<table class="qmlname"><tr valign="top" id="setMetaData-method"><td class="tblQmlFuncNode"><p><span class="name">setMetaData</span>(<span class="type">key</span>, <span class="type">value</span>)</p></td></tr></table><p>Sets the meta data of the collection for the given <i>key</i> to the given <i>value</i>. Possible keys include:</p>
<ul>
<li>Collection.KeyName</li>
<li>Collection.KeyDescription</li>
<li>Collection.KeyColor</li>
<li>Collection.KeySecondaryColor</li>
<li>Collection.KeyImage</li>
<li>Collection.KeyExtended</li>
</ul>
<!-- @@@setMetaData -->
<br/>
