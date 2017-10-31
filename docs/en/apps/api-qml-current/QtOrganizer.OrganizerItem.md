---
Title: QtOrganizer.OrganizerItem
---

# QtOrganizer.OrganizerItem

<span class="subtitle"></span>
<!-- $$$OrganizerItem-brief -->
<p>The OrganizerItem element represents the in-memory version of a organizer item. More...</p>
<!-- @@@OrganizerItem -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#collectionId-prop">collectionId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#description-prop">description</a></b></b> : string</li>
<li class="fn"><b><b><a href="#displayLabel-prop">displayLabel</a></b></b> : string</li>
<li class="fn"><b><b><a href="#guid-prop">guid</a></b></b> : string</li>
<li class="fn"><b><b><a href="#itemDetails-prop">itemDetails</a></b></b> : list&lt;Detail&gt;</li>
<li class="fn"><b><b><a href="#itemId-prop">itemId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#itemType-prop">itemType</a></b></b> : enum</li>
<li class="fn"><b><b><a href="#manager-prop">manager</a></b></b> : string</li>
<li class="fn"><b><b><a href="#modified-prop">modified</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onItemChanged-signal">onItemChanged</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#clearDetails-method">clearDetails</a></b></b>()</li>
<li class="fn">Detail <b><b><a href="#detail-method">detail</a></b></b>(type)</li>
<li class="fn">list&lt;Detail&gt; <b><b><a href="#details-method">details</a></b></b>(type)</li>
<li class="fn">void <b><b><a href="#removeDetail-method">removeDetail</a></b></b>(detail)</li>
<li class="fn"><b><b><a href="#save-method">save</a></b></b>()</li>
<li class="fn">void <b><b><a href="#setDetail-method">setDetail</a></b></b>(detail)</li>
</ul>
<!-- $$$OrganizerItem-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">OrganizerItem</a> has a number of mandatory details. Different subclasses of <a href="index.html">OrganizerItem</a> (i.e&#x2e;, Event, <a href="QtOrganizer.EventOccurrence.md">EventOccurrence</a>, Journal, Todo, <a href="QtOrganizer.TodoOccurrence.md">TodoOccurrence</a>, Note) may have more mandatory details.</p>
<p>Most frequently-used details can also be accessed through convenient properties, e.g&#x2e; <a href="#displayLabel-prop">displayLabel</a>, while all details can be accessed through <a href="#detail-method">detail()</a>, <a href="#details-method">details()</a>, saveDetail(), among others.</p>
<p><b>See also </b>Event, EventOccurrence, Journal, Todo, TodoOccurrence, Note, QOrganizerManager, and QOrganizerItem.</p>
<!-- @@@OrganizerItem -->
<h2>Property Documentation</h2>
<!-- $$$collectionId -->
<table class="qmlname"><tr valign="top" id="collectionId-prop"><td class="tblQmlPropNode"><p><span class="name">collectionId</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the id of collection where the item belongs to.</p>
<!-- @@@collectionId -->
<br/>
<!-- $$$description -->
<table class="qmlname"><tr valign="top" id="description-prop"><td class="tblQmlPropNode"><p><span class="name">description</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the description text of the organizer item.</p>
<!-- @@@description -->
<br/>
<!-- $$$displayLabel -->
<table class="qmlname"><tr valign="top" id="displayLabel-prop"><td class="tblQmlPropNode"><p><span class="name">displayLabel</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the display label of the organizer item.</p>
<!-- @@@displayLabel -->
<br/>
<!-- $$$guid -->
<table class="qmlname"><tr valign="top" id="guid-prop"><td class="tblQmlPropNode"><p><span class="name">guid</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the GUID string of the organizer item.</p>
<!-- @@@guid -->
<br/>
<!-- $$$itemDetails -->
<table class="qmlname"><tr valign="top" id="itemDetails-prop"><td class="tblQmlPropNode"><p><span class="name">itemDetails</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.Detail.md">Detail</a></span>&gt;</p></td></tr></table><p>This property holds the details of the <a href="index.html">OrganizerItem</a> object.</p>
<!-- @@@itemDetails -->
<br/>
<!-- $$$itemId -->
<table class="qmlname"><tr valign="top" id="itemId-prop"><td class="tblQmlPropNode"><p><span class="name">itemId</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the id of the <a href="index.html">OrganizerItem</a> object.</p>
<!-- @@@itemId -->
<br/>
<!-- $$$itemType -->
<table class="qmlname"><tr valign="top" id="itemType-prop"><td class="tblQmlPropNode"><p><span class="name">itemType</span> : <span class="type">enum</span></p></td></tr></table><p>This property holds the type of the <a href="index.html">OrganizerItem</a> object.</p>
<!-- @@@itemType -->
<br/>
<!-- $$$manager -->
<table class="qmlname"><tr valign="top" id="manager-prop"><td class="tblQmlPropNode"><p><span class="name">manager</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the manager uri which the <a href="index.html">OrganizerItem</a> object comes from.</p>
<!-- @@@manager -->
<br/>
<!-- $$$modified -->
<table class="qmlname"><tr valign="top" id="modified-prop"><td class="tblQmlPropNode"><p><span class="name">modified</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds the dirty flag of the <a href="index.html">OrganizerItem</a> object.</p>
<p><b>See also </b><a href="#save-method">save</a>.</p>
<!-- @@@modified -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onItemChanged -->
<table class="qmlname"><tr valign="top" id="onItemChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onItemChanged</span>()</p></td></tr></table><p>This signal is emitted, when any of the <a href="index.html">OrganizerItem</a>'s or child element's (like Event, Todo etc) properties have been changed.</p>
<!-- @@@onItemChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$clearDetails -->
<table class="qmlname"><tr valign="top" id="clearDetails-method"><td class="tblQmlFuncNode"><p><span class="name">clearDetails</span>()</p></td></tr></table><p>Removes all details from the organizer item.</p>
<p><b>See also </b><a href="#removeDetail-method">removeDetail</a>.</p>
<!-- @@@clearDetails -->
<br/>
<!-- $$$detail -->
<table class="qmlname"><tr valign="top" id="detail-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="QtOrganizer.Detail.md">Detail</a></span> <span class="name">detail</span>(<span class="type">type</span>)</p></td></tr></table><p>Returns the first detail stored in the organizer item with the given <i>type</i>.</p>
<p><b>See also </b><a href="QtOrganizer.Detail.md#type-prop">Detail::type</a>.</p>
<!-- @@@detail -->
<br/>
<!-- $$$details -->
<table class="qmlname"><tr valign="top" id="details-method"><td class="tblQmlFuncNode"><p><span class="type">list</span>&lt;<span class="type"><a href="QtOrganizer.Detail.md">Detail</a></span>&gt; <span class="name">details</span>(<span class="type">type</span>)</p></td></tr></table><p>Returns all the details stored in the organizer item with the given <i>type</i>.</p>
<p><b>See also </b><a href="QtOrganizer.Detail.md#type-prop">Detail::type</a>.</p>
<!-- @@@details -->
<br/>
<!-- $$$removeDetail -->
<table class="qmlname"><tr valign="top" id="removeDetail-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">removeDetail</span>(<span class="type"><a href="#detail-method">detail</a></span>)</p></td></tr></table><p>Removes given <i>detail</i> from the organizer item.</p>
<!-- @@@removeDetail -->
<br/>
<!-- $$$save -->
<table class="qmlname"><tr valign="top" id="save-method"><td class="tblQmlFuncNode"><p><span class="name">save</span>()</p></td></tr></table><p>Saves this <a href="index.html">OrganizerItem</a> if the item has been modified.</p>
<p><b>See also </b><a href="#modified-prop">modified</a>.</p>
<!-- @@@save -->
<br/>
<!-- $$$setDetail -->
<table class="qmlname"><tr valign="top" id="setDetail-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">setDetail</span>(<span class="type"><a href="#detail-method">detail</a></span>)</p></td></tr></table><p>Saves the given <i>detail</i> in the organizer item, and sets its id.</p>
<!-- @@@setDetail -->
<br/>
