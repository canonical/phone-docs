---
Title: QtOrganizer.Parent
---

# QtOrganizer.Parent

<span class="subtitle"></span>
<!-- $$$Parent-brief -->
<p>The Parent element contains information about the event or todo that generated this item. More...</p>
<!-- @@@Parent -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#isDetached-prop">isDetached</a></b></b> : string</li>
<li class="fn"><b><b><a href="#originalDate-prop">originalDate</a></b></b> : date</li>
<li class="fn"><b><b><a href="#parentId-prop">parentId</a></b></b> : string</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onDetailChanged-signal">onDetailChanged</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="#setValue-method">setValue</a></b></b>(field, value)</li>
<li class="fn">variant <b><b><a href="#value-method">value</a></b></b>(field)</li>
</ul>
<!-- $$$Parent-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The following fields are supported:</p>
<ul>
<li>Parent.FieldParentId</li>
<li>Parent.FieldOriginalDate</li>
</ul>
<p><b>See also </b>QOrganizerItemParent.</p>
<!-- @@@Parent -->
<h2>Property Documentation</h2>
<!-- $$$isDetached -->
<table class="qmlname"><tr valign="top" id="isDetached-prop"><td class="tblQmlPropNode"><p><span class="name">isDetached</span> : <span class="type">string</span></p></td></tr></table><p>This property holds if the event is a detached recurrence or not.</p>
<!-- @@@isDetached -->
<br/>
<!-- $$$originalDate -->
<table class="qmlname"><tr valign="top" id="originalDate-prop"><td class="tblQmlPropNode"><p><span class="name">originalDate</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the original date of this instance origin item.</p>
<!-- @@@originalDate -->
<br/>
<!-- $$$parentId -->
<table class="qmlname"><tr valign="top" id="parentId-prop"><td class="tblQmlPropNode"><p><span class="name">parentId</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the organizer item id of the parent recurrent event or todo.</p>
<!-- @@@parentId -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onDetailChanged -->
<table class="qmlname"><tr valign="top" id="onDetailChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onDetailChanged</span>()</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Detail.md#onDetailChanged-signal">Detail::onDetailChanged</a>.</p>
<!-- @@@onDetailChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$setValue -->
<table class="qmlname"><tr valign="top" id="setValue-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">setValue</span>(<span class="type">field</span>, <span class="type">value</span>)</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Detail.md#setValue-method">Detail::setValue</a>.</p>
<!-- @@@setValue -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-method"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">value</span>(<span class="type">field</span>)</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Detail.md#value-method">Detail::value</a>.</p>
<!-- @@@value -->
<br/>
