---
Title: QtContacts.FetchHint
---

# QtContacts.FetchHint

<span class="subtitle"></span>
<!-- $$$FetchHint-brief -->
<p>The FetchHint element provides hints to the manager about which contact information needs to be retrieved in an asynchronous fetch request or a synchronous function call. More...</p>
<!-- @@@FetchHint -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#detailTypesHint-prop">detailTypesHint</a></b></b> : list&lt;int&gt;</li>
<li class="fn"><b><b><a href="#imageHeight-prop">imageHeight</a></b></b> : int</li>
<li class="fn"><b><b><a href="#imageWidth-prop">imageWidth</a></b></b> : int</li>
<li class="fn"><b><b><a href="#optimizationHints-prop">optimizationHints</a></b></b> : FetchHint::OptimizationHints</li>
<li class="fn"><b><b><a href="#relationshipTypesHint-prop">relationshipTypesHint</a></b></b> : list&lt;string&gt;</li>
</ul>
<!-- $$$FetchHint-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element is part of the <b>QtContacts</b> module.</p>
<p><b>See also </b>QContactFetchHint.</p>
<!-- @@@FetchHint -->
<h2>Property Documentation</h2>
<!-- $$$detailTypesHint -->
<table class="qmlname"><tr valign="top" id="detailTypesHint-prop"><td class="tblQmlPropNode"><p><span class="name">detailTypesHint</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td></tr></table><p>This property holds a list of contact detail types the manager should (at a minimum) retrieve when fetching contacts.</p>
<!-- @@@detailTypesHint -->
<br/>
<!-- $$$imageHeight -->
<table class="qmlname"><tr valign="top" id="imageHeight-prop"><td class="tblQmlPropNode"><p><span class="name">imageHeight</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the preferred pixel height for any images returned by the manager for a given request. This hint may be ignored by the manager.</p>
<!-- @@@imageHeight -->
<br/>
<!-- $$$imageWidth -->
<table class="qmlname"><tr valign="top" id="imageWidth-prop"><td class="tblQmlPropNode"><p><span class="name">imageWidth</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the preferred pixel width for any images returned by the manager for a given request. This hint may be ignored by the manager.</p>
<!-- @@@imageWidth -->
<br/>
<!-- $$$optimizationHints -->
<table class="qmlname"><tr valign="top" id="optimizationHints-prop"><td class="tblQmlPropNode"><p><span class="name">optimizationHints</span> : <span class="type">FetchHint::OptimizationHints</span></p></td></tr></table><p>This property holds the optimization hint flags specified by the client. These hints may be ignored by the backend, in which case it will return the full set of information accessible in a contact, including relationships, action preferences, and binary blobs. The value of the flags can be:</p>
<ul>
<li><a href="index.html">FetchHint</a>.AllRequired - (default).</li>
<li><a href="index.html">FetchHint</a>.NoRelationships</li>
<li><a href="index.html">FetchHint</a>.NoActionPreferences</li>
<li><a href="index.html">FetchHint</a>.NoBinaryBlobs</li>
</ul>
<!-- @@@optimizationHints -->
<br/>
<!-- $$$relationshipTypesHint -->
<table class="qmlname"><tr valign="top" id="relationshipTypesHint-prop"><td class="tblQmlPropNode"><p><span class="name">relationshipTypesHint</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>This property holds a list of relationship types that the manager should (at a minimum) retrieve when fetching contacts.</p>
<!-- @@@relationshipTypesHint -->
<br/>
