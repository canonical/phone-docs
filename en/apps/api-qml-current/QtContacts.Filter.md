---
Title: QtContacts.Filter
---

# QtContacts.Filter

<span class="subtitle"></span>
<!-- $$$Filter-brief -->
<p>The Filter element is used as a property of ContactModel, to allow selection of contacts which have certain details or properties. More...</p>
<!-- @@@Filter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#type-prop">type</a></b></b> : enumeration</li>
</ul>
<!-- $$$Filter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element is part of the <b>QtContacts</b> module.</p>
<p><b>See also </b>QContactFilter.</p>
<!-- @@@Filter -->
<h2>Property Documentation</h2>
<!-- $$$type -->
<table class="qmlname"><tr valign="top" id="type-prop"><td class="tblQmlPropNode"><p><span class="name">type</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the type value of this filter. It can be one of:</p>
<ul>
<li>Filter.DefaultFilter - A filter which matches everything (default).</li>
<li>Filter.<a href="QtContacts.InvalidFilter.md">InvalidFilter</a> - An invalid filter which matches nothing.</li>
<li>Filter.<a href="QtContacts.DetailFilter.md">DetailFilter</a> - A filter which matches contacts containing one or more details of a particular definition with a particular value.</li>
<li>Filter.<a href="QtContacts.DetailRangeFilter.md">DetailRangeFilter</a> - A filter which matches contacts containing one or more details of a particular definition whose values are within a particular range.</li>
<li>Filter.<a href="QtContacts.ChangeLogFilter.md">ChangeLogFilter</a> - A filter which matches contacts whose timestamps have been updated since some particular date and time.</li>
<li>Filter.<a href="QtContacts.ActionFilter.md">ActionFilter</a> - A filter which matches contacts for which a particular action is available, or which contain a detail with a particular value for which a particular action is available.</li>
<li>Filter.<a href="QtContacts.RelationshipFilter.md">RelationshipFilter</a> - A filter which matches contacts which participate in a particular type of relationship, or relationship with a specified contact.</li>
<li>Filter.<a href="QtContacts.IntersectionFilter.md">IntersectionFilter</a> - A filter which matches all contacts that are matched by all filters it includes.</li>
<li>Filter.<a href="QtContacts.UnionFilter.md">UnionFilter</a> - A filter which matches any contact that is matched by any of the filters it includes.</li>
<li>Filter.<a href="QtContacts.IdFilter.md">IdFilter</a> - A filter which matches any contact whose local id is contained in a particular list of contact local ids.</li>
</ul>
<!-- @@@type -->
<br/>
