---
Title: QtOrganizer.DetailFilter
---

# QtOrganizer.DetailFilter

<span class="subtitle"></span>
<!-- $$$DetailFilter-brief -->
<p>The DetailFilter element provides a filter based around a detail value criterion. More...</p>
<!-- @@@DetailFilter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#detail-prop">detail</a></b></b> : Detail</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onFilterChanged-signal">onFilterChanged</a></b></b>()</li>
</ul>
<!-- $$$DetailFilter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Simple example how to utilize <a href="index.html">DetailFilter</a> element together with <a href="QtOrganizer.OrganizerModel.md">OrganizerModel</a> and ListView elements:</p>
<pre class="cpp">Rectangle {
height: <span class="number">400</span>; width: <span class="number">400</span>;
OrganizerModel{
id: organizer
startPeriod: <span class="string">&quot;2009-01-01&quot;</span>
endPeriod: <span class="string">&quot;2012-12-31&quot;</span>
filter: todoFilter
}
Type {
id: typeDetailToMatch
type: Type<span class="operator">.</span>Todo
}
DetailFilter {
id: todoFilter
detail: typeDetailToMatch
}
ListView {
width: parent<span class="operator">.</span>width; height: parent<span class="operator">.</span>height;
model: organizer<span class="operator">.</span>items
delegate: Text {text: displayLabel}
}
}</pre>
<p><b>See also </b>QOrganizerItemDetailFilter.</p>
<!-- @@@DetailFilter -->
<h2>Property Documentation</h2>
<!-- $$$detail -->
<table class="qmlname"><tr valign="top" id="detail-prop"><td class="tblQmlPropNode"><p><span class="name">detail</span> : <span class="type"><a href="QtOrganizer.Detail.md">Detail</a></span></p></td></tr></table><p>This property holds the detail instance used by this filter for matching.</p>
<!-- @@@detail -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onFilterChanged -->
<table class="qmlname"><tr valign="top" id="onFilterChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onFilterChanged</span>()</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Filter.md#onFilterChanged-signal">QtOrganizer5::Filter::onFilterChanged</a>.</p>
<!-- @@@onFilterChanged -->
<br/>
