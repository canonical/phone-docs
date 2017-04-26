---
Title: QtContacts.RelationshipModel
---

# QtContacts.RelationshipModel

<span class="subtitle"></span>
<!-- $$$RelationshipModel-brief -->
<p>The RelationshipModel provides a model of contact relationships from the contacts store. More...</p>
<!-- @@@RelationshipModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#autoUpdate-prop">autoUpdate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#error-prop">error</a></b></b> : string</li>
<li class="fn"><b><b><a href="#manager-prop">manager</a></b></b> : string</li>
<li class="fn"><b><b><a href="#participantId-prop">participantId</a></b></b> : int</li>
<li class="fn"><b><b><a href="#relationshipType-prop">relationshipType</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#relationships-prop">relationships</a></b></b> : list&lt;Relationship&gt;</li>
<li class="fn"><b><b><a href="#role-prop">role</a></b></b> : enumeration</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#addRelationship-method">addRelationship</a></b></b>(relationship)</li>
<li class="fn"><b><b><a href="#removeRelationship-method">removeRelationship</a></b></b>(relationship)</li>
</ul>
<!-- $$$RelationshipModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element is part of the <b>QtContacts</b> module.</p>
<p>The contents of the model can be specified with <a href="#participantId-prop">participantId</a>, <a href="#role-prop">role</a> and <a href="#relationshipType-prop">relationshipType</a> properties. Whether the model is automatically updated when the store or filter changes, can be controlled with <a href="#autoUpdate-prop">RelationshipModel::autoUpdate</a> property.</p>
<p>There are two ways of accessing the relationship data: through model by using views and delegates, or alternatively via <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtContacts.qtcontacts-overview/#relationships">relationships</a> list property.</p>
<p>At the moment only data role provided by the model is <code>relationship</code> (<a href="QtContacts.Relationship.md">Relationship</a>). Through that one can access any data provided by the Relationship element.</p>
<p><b>See also </b>Relationship and QContactRelationship.</p>
<!-- @@@RelationshipModel -->
<h2>Property Documentation</h2>
<!-- $$$autoUpdate -->
<table class="qmlname"><tr valign="top" id="autoUpdate-prop"><td class="tblQmlPropNode"><p><span class="name">autoUpdate</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether or not the relationship model should be updated automatically, default value is true.</p>
<!-- @@@autoUpdate -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the latest error code returned by the contact manager.</p>
<p>This property is read only.</p>
<!-- @@@error -->
<br/>
<!-- $$$manager -->
<table class="qmlname"><tr valign="top" id="manager-prop"><td class="tblQmlPropNode"><p><span class="name">manager</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the manager uri of the contact backend engine.</p>
<!-- @@@manager -->
<br/>
<!-- $$$participantId -->
<table class="qmlname"><tr valign="top" id="participantId-prop"><td class="tblQmlPropNode"><p><span class="name">participantId</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the participant which the list of relationships returned by <a href="index.html">RelationshipModel</a> should contain.</p>
<p><b>See also </b><a href="QtContacts.RelationshipFilter.md#relatedContactId-prop">RelationshipFilter::relatedContactId</a> and <a href="#role-prop">RelationshipModel::role</a>.</p>
<!-- @@@participantId -->
<br/>
<!-- $$$relationshipType -->
<table class="qmlname"><tr valign="top" id="relationshipType-prop"><td class="tblQmlPropNode"><p><span class="name">relationshipType</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the relationship type which the list of relationships returned by <a href="index.html">RelationshipModel</a> should contain.</p>
<p><b>See also </b><a href="QtContacts.Relationship.md#type-prop">Relationship::type</a>.</p>
<!-- @@@relationshipType -->
<br/>
<!-- $$$relationships -->
<table class="qmlname"><tr valign="top" id="relationships-prop"><td class="tblQmlPropNode"><p><span class="name">relationships</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Relationship.md">Relationship</a></span>&gt;</p></td></tr></table><p>This property holds a list of relationships.</p>
<p><b>See also </b><a href="QtContacts.Relationship.md">Relationship</a>.</p>
<!-- @@@relationships -->
<br/>
<!-- $$$role -->
<table class="qmlname"><tr valign="top" id="role-prop"><td class="tblQmlPropNode"><p><span class="name">role</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the relationship role which the list of relationships returned by <a href="index.html">RelationshipModel</a> should contain.</p>
<p><b>See also </b><a href="QtContacts.RelationshipFilter.md#relatedContactRole-prop">RelationshipFilter::relatedContactRole</a>.</p>
<!-- @@@role -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$addRelationship -->
<table class="qmlname"><tr valign="top" id="addRelationship-method"><td class="tblQmlFuncNode"><p><span class="name">addRelationship</span>(<span class="type">relationship</span>)</p></td></tr></table><p>Addes the given <i>relationship</i> to the backend store.</p>
<!-- @@@addRelationship -->
<br/>
<!-- $$$removeRelationship -->
<table class="qmlname"><tr valign="top" id="removeRelationship-method"><td class="tblQmlFuncNode"><p><span class="name">removeRelationship</span>(<span class="type">relationship</span>)</p></td></tr></table><p>Removes the given <i>relationship</i> from the backend store.</p>
<!-- @@@removeRelationship -->
<br/>
