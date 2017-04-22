---
Title: QtContacts.Relationship
---

# QtContacts.Relationship

<span class="subtitle"></span>
<!-- $$$Relationship-brief -->
<p>The Relationship element describes a one-to-one relationship between a locally-stored contact and another (possibly remote) contact. More...</p>
<!-- @@@Relationship -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#first-prop">first</a></b></b> : int</li>
<li class="fn"><b><b><a href="#second-prop">second</a></b></b> : int</li>
<li class="fn"><b><b><a href="#type-prop">type</a></b></b> : string</li>
</ul>
<!-- $$$Relationship-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element is part of the <b>QtContacts</b> module.</p>
<p><b>See also </b>QContactRelationship and RelationshipModel.</p>
<!-- @@@Relationship -->
<h2>Property Documentation</h2>
<!-- $$$first -->
<table class="qmlname"><tr valign="top" id="first-prop"><td class="tblQmlPropNode"><p><span class="name">first</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the locally-stored contact which has a relationship of the given type with the second contact.</p>
<!-- @@@first -->
<br/>
<!-- $$$second -->
<table class="qmlname"><tr valign="top" id="second-prop"><td class="tblQmlPropNode"><p><span class="name">second</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the contact with which the first contact has a relationship of the given type.</p>
<!-- @@@second -->
<br/>
<!-- $$$type -->
<table class="qmlname"><tr valign="top" id="type-prop"><td class="tblQmlPropNode"><p><span class="name">type</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the type of relationship which the source contact has with the destination contacts. The value for this property can be one of:</p>
<ul>
<li>HasMember</li>
<li>Aggregates</li>
<li>IsSameAs</li>
<li>HasAssistant</li>
<li>HasManager</li>
<li>HasSpouse</li>
</ul>
<p>or any other customized relationship type string.</p>
<!-- @@@type -->
<br/>
