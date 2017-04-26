---
Title: QtContacts.RelationshipFilter
---

# QtContacts.RelationshipFilter

<span class="subtitle"></span>
<!-- $$$RelationshipFilter-brief -->
<p>The RelationshipFilter element provides a filter based around relationship criteria. More...</p>
<!-- @@@RelationshipFilter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#relatedContactId-prop">relatedContactId</a></b></b> : int</li>
<li class="fn"><b><b><a href="#relatedContactRole-prop">relatedContactRole</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#relationshipType-prop">relationshipType</a></b></b> : variant</li>
</ul>
<!-- $$$RelationshipFilter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element is part of the <b>QtContacts</b> module.</p>
<p><b>See also </b>Relationship, RelationshipModel, QContactRelationshipFilter, and QContactRelationship.</p>
<!-- @@@RelationshipFilter -->
<h2>Property Documentation</h2>
<!-- $$$relatedContactId -->
<table class="qmlname"><tr valign="top" id="relatedContactId-prop"><td class="tblQmlPropNode"><p><span class="name">relatedContactId</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the id of the contact with whom the tested contact must have a relationship in order for the tested contact to match this filter</p>
<!-- @@@relatedContactId -->
<br/>
<!-- $$$relatedContactRole -->
<table class="qmlname"><tr valign="top" id="relatedContactRole-prop"><td class="tblQmlPropNode"><p><span class="name">relatedContactRole</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the role in the relationship with the tested contact that the related contact must play in order for the tested contact to match this filter. The role can be one of:</p>
<ul>
<li>Relationship.First - The contact is the first contact in the relationship.</li>
<li>Relationship.Second - The contact is the second contact in the relationship.</li>
<li>Relationship.Either - The contact is either the first or second contact in the relationship (default).</li>
</ul>
<!-- @@@relatedContactRole -->
<br/>
<!-- $$$relationshipType -->
<table class="qmlname"><tr valign="top" id="relationshipType-prop"><td class="tblQmlPropNode"><p><span class="name">relationshipType</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the type of relationship that a contact must have in order to match the filter.</p>
<p><b>See also </b><a href="QtContacts.Relationship.md#type-prop">Relationship::type</a>.</p>
<!-- @@@relationshipType -->
<br/>
