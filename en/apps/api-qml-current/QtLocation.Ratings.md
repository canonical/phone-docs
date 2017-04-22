---
Title: QtLocation.Ratings
---

# QtLocation.Ratings

<span class="subtitle"></span>
<!-- $$$Ratings-brief -->
<p>The Ratings type holds place rating information. More...</p>
<!-- @@@Ratings -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="QtLocation.Ratings.md#average-prop">average</a></b></b> : real</li>
<li class="fn"><b><b><a href="QtLocation.Ratings.md#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="QtLocation.Ratings.md#maximum-prop">maximum</a></b></b> : real</li>
<li class="fn"><b><b><a href="QtLocation.Ratings.md#ratings-prop">ratings</a></b></b> : QPlaceRatings</li>
</ul>
<!-- $$$Ratings-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Rating information is used to describe how <i>good</i> a place is conceived to be. Typically this information is visualized as a number of stars. The <a href="QtLocation.Ratings.md#average-prop">average</a> property gives an aggregated ratings value out of a possible maximum as given by the <a href="QtLocation.Ratings.md#maximum-prop">maximum</a> property.</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
<span class="type">Text</span> {
<span class="name">text</span>: <span class="string">&quot;This place is rated &quot;</span> <span class="operator">+</span> <span class="name">place</span>.<span class="name">ratings</span>.<span class="name">average</span> <span class="operator">+</span> <span class="string">&quot; out of &quot;</span> <span class="operator">+</span> <span class="name">place</span>.<span class="name">ratings</span>.<span class="name">maximum</span> <span class="operator">+</span> <span class="string">&quot; stars.&quot;</span>
}</pre>
<!-- @@@Ratings -->
<h2>Property Documentation</h2>
<!-- $$$average -->
<table class="qmlname"><tr valign="top" id="average-prop"><td class="tblQmlPropNode"><p><span class="name">average</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the average of the individual ratings.</p>
<p><b>See also </b><a href="QtLocation.Ratings.md#maximum-prop">maximum</a>.</p>
<!-- @@@average -->
<br/>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the total number of individual user ratings used in determining the overall ratings <a href="QtLocation.Ratings.md#average-prop">average</a>.</p>
<!-- @@@count -->
<br/>
<!-- $$$maximum -->
<table class="qmlname"><tr valign="top" id="maximum-prop"><td class="tblQmlPropNode"><p><span class="name">maximum</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the maximum rating value.</p>
<!-- @@@maximum -->
<br/>
<!-- $$$ratings -->
<table class="qmlname"><tr valign="top" id="ratings-prop"><td class="tblQmlPropNode"><p><span class="name">ratings</span> : <span class="type">QPlaceRatings</span></p></td></tr></table><p>For details on how to use this property to interface between C++ and QML see &quot;Interfaces between C++ and QML Code&quot;.</p>
<!-- @@@ratings -->
<br/>
