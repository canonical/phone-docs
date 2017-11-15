---
Title: QtContacts.DetailRangeFilter
---

# QtContacts.DetailRangeFilter

<span class="subtitle"></span>
<!-- $$$DetailRangeFilter-brief -->
<p>The DetailRangeFilter element provides a filter based around a detail value range criterion. More...</p>
<!-- @@@DetailRangeFilter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#detail-prop">detail</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#field-prop">field</a></b></b> : int</li>
<li class="fn"><b><b><a href="#matchFlags-prop">matchFlags</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#max-prop">max</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#min-prop">min</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#rangeFlags-prop">rangeFlags</a></b></b> : enumeration</li>
</ul>
<!-- $$$DetailRangeFilter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element is part of the <b>QtContacts</b> module.</p>
<p><b>See also </b>QContactDetailRangeFilter.</p>
<!-- @@@DetailRangeFilter -->
<h2>Property Documentation</h2>
<!-- $$$detail -->
<table class="qmlname"><tr valign="top" id="detail-prop"><td class="tblQmlPropNode"><p><span class="name">detail</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the detail type of which details will be matched to.</p>
<p><b>See also </b><a href="QtContacts.ContactDetail.md#type-prop">ContactDetail::type</a> and <a href="QtContacts.DetailFilter.md#detail-prop">DetailFilter::detail</a>.</p>
<!-- @@@detail -->
<br/>
<!-- $$$field -->
<table class="qmlname"><tr valign="top" id="field-prop"><td class="tblQmlPropNode"><p><span class="name">field</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the detail field type of which detail fields will be matched to. Detail field types are enumeration values defined in each detail elements.</p>
<p><b>See also </b><a href="QtContacts.DetailFilter.md#field-prop">DetailFilter::field</a>.</p>
<!-- @@@field -->
<br/>
<!-- $$$matchFlags -->
<table class="qmlname"><tr valign="top" id="matchFlags-prop"><td class="tblQmlPropNode"><p><span class="name">matchFlags</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the match flags of the criterion, which define semantics such as case sensitivity, and exact matching.</p>
<p><b>See also </b><a href="QtContacts.DetailFilter.md#matchFlags-prop">DetailFilter::matchFlags</a>.</p>
<!-- @@@matchFlags -->
<br/>
<!-- $$$max -->
<table class="qmlname"><tr valign="top" id="max-prop"><td class="tblQmlPropNode"><p><span class="name">max</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the upper bound of the value range criterion. By default, there is no upper bound.</p>
<!-- @@@max -->
<br/>
<!-- $$$min -->
<table class="qmlname"><tr valign="top" id="min-prop"><td class="tblQmlPropNode"><p><span class="name">min</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the lower bound of the value range criterion. By default, there is no lower bound.</p>
<!-- @@@min -->
<br/>
<!-- $$$rangeFlags -->
<table class="qmlname"><tr valign="top" id="rangeFlags-prop"><td class="tblQmlPropNode"><p><span class="name">rangeFlags</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds a set of flags which defines the boundary condition semantics of the value range criterion.The valid range flags include:</p>
<ul>
<li><a href="index.html">DetailRangeFilter</a>.IncludeLower</li>
<li><a href="index.html">DetailRangeFilter</a>.IncludeUpper</li>
<li><a href="index.html">DetailRangeFilter</a>.ExcludeLower</li>
<li><a href="index.html">DetailRangeFilter</a>.ExcludeUpper</li>
</ul>
<!-- @@@rangeFlags -->
<br/>
