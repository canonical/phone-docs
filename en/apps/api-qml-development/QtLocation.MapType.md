---
Title: QtLocation.MapType
---

# QtLocation.MapType

<span class="subtitle"></span>
<!-- $$$MapType-brief -->
<p>The MapType type holds information about a map type. More...</p>
<!-- @@@MapType -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.MapType.md#description-prop">description</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.MapType.md#mobile-prop">mobile</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.MapType.md#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.MapType.md#night-prop">night</a></b></b> : bool</li>
<li class="fn"><b><b><a href="..//QtLocation.MapType.md#style-prop">style</a></b></b> : enumeration</li>
</ul>
<!-- $$$MapType-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This includes the map type's <a href="..//QtLocation.MapType.md#name-prop">name</a> and <a href="..//QtLocation.MapType.md#description-prop">description</a>, the <a href="..//QtLocation.MapType.md#style-prop">style</a> and a flag to indicate if the map type is optimized for mobile devices (<a href="..//QtLocation.MapType.md#mobile-prop">mobile</a>).</p>
<!-- @@@MapType -->
<h2>Property Documentation</h2>
<!-- $$$description -->
<table class="qmlname"><tr valign="top" id="description-prop"><td class="tblQmlPropNode"><p><span class="name">description</span> : <span class="type">string</span></p></td></tr></table><p>This read-only property holds the description of the map type as a single formatted string.</p>
<!-- @@@description -->
<br/>
<!-- $$$mobile -->
<table class="qmlname"><tr valign="top" id="mobile-prop"><td class="tblQmlPropNode"><p><span class="name">mobile</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the map type is optimized for the use on a mobile device.</p>
<p>Map types for mobile devices usually have higher constrast to counteract the effects of sunlight and a reduced color for improved readability.</p>
<!-- @@@mobile -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This read-only property holds the name of the map type as a single formatted string.</p>
<!-- @@@name -->
<br/>
<!-- $$$night -->
<table class="qmlname"><tr valign="top" id="night-prop"><td class="tblQmlPropNode"><p><span class="name">night</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the map type is optimized for use at night.</p>
<p>Map types suitable for use at night usually have a dark background.</p>
<p>This QML property was introduced in  Qt Location 5.4.</p>
<!-- @@@night -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top" id="style-prop"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type">enumeration</span></p></td></tr></table><p>This read-only property gives access to the style of the map type.</p>
<ul>
<li><a href="..//QtLocation.MapType.md">MapType</a>.NoMap - No map.</li>
<li><a href="..//QtLocation.MapType.md">MapType</a>.StreetMap - A street map.</li>
<li><a href="..//QtLocation.MapType.md">MapType</a>.SatelliteMapDay - A map with day-time satellite imagery.</li>
<li><a href="..//QtLocation.MapType.md">MapType</a>.SatelliteMapNight - A map with night-time satellite imagery.</li>
<li><a href="..//QtLocation.MapType.md">MapType</a>.TerrainMap - A terrain map.</li>
<li><a href="..//QtLocation.MapType.md">MapType</a>.HybridMap - A map with satellite imagery and street information.</li>
<li><a href="..//QtLocation.MapType.md">MapType</a>.GrayStreetMap - A gray-shaded street map.</li>
<li>MapType::PedestrianMap - A street map suitable for pedestriants.</li>
<li>MapType::CarNavigationMap - A street map suitable for car navigation.</li>
<li><a href="..//QtLocation.MapType.md">MapType</a>.CustomMap - A custom map type.</li>
</ul>
<!-- @@@style -->
<br/>
