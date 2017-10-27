---
Title: QtOrganizer.Filter
---

# QtOrganizer.Filter

<span class="subtitle"></span>
<!-- $$$Filter-brief -->
<p>The Filter element is used to filter items made available through a backend. More...</p>
<!-- @@@Filter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#type-prop">type</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onFilterChanged-signal">onFilterChanged</a></b></b>()</li>
</ul>
<!-- $$$Filter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>See also </b>QOrganizerItemFilter.</p>
<!-- @@@Filter -->
<h2>Property Documentation</h2>
<!-- $$$type -->
<table class="qmlname"><tr valign="top" id="type-prop"><td class="tblQmlPropNode"><p><span class="name">type</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the type value of this filter. It can be one of:</p>
<ul>
<li>Filter.DefaultFilter A filter which matches everything (default).</li>
<li>Filter.<a href="QtOrganizer.InvalidFilter.md">InvalidFilter</a> An invalid filter which matches nothing.</li>
<li>Filter.<a href="QtOrganizer.IntersectionFilter.md">IntersectionFilter</a> A filter which matches all organizer items that are matched by all filters it includes.</li>
<li>Filter.<a href="QtOrganizer.UnionFilter.md">UnionFilter</a> A filter which matches any organizer item that is matched by any of the filters it includes.</li>
<li>Filter.<a href="QtOrganizer.CollectionFilter.md">CollectionFilter</a> A filter which matches any organizer item that is matched by collection.</li>
<li>Filter.<a href="QtOrganizer.DetailFilter.md">DetailFilter</a> A filter which matches organizer items containing exactly one given detail.</li>
<li>Filter.<a href="QtOrganizer.DetailFieldFilter.md">DetailFieldFilter</a> A filter which matches organizer items containing one or more details of a particular type with a particular field having a particular value.</li>
<li>Filter.<a href="QtOrganizer.DetailRangeFilter.md">DetailRangeFilter</a> A filter which matches organizer items containing one or more details of a particular type whose values are within a particular range.</li>
<li>Filter.<a href="QtOrganizer.IdFilter.md">IdFilter</a> A filter which matches any organizer item whose ID is contained in a particular list of organizer item IDs.</li>
</ul>
<!-- @@@type -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onFilterChanged -->
<table class="qmlname"><tr valign="top" id="onFilterChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onFilterChanged</span>()</p></td></tr></table><p>This signal is emitted, when any of the Filter's or child element's (like <a href="QtOrganizer.DetailFilter.md">DetailFilter</a>, <a href="QtOrganizer.CollectionFilter.md">CollectionFilter</a> etc) properties have been changed.</p>
<!-- @@@onFilterChanged -->
<br/>
