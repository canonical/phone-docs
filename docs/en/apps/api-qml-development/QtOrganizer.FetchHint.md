---
Title: QtOrganizer.FetchHint
---

# QtOrganizer.FetchHint

<span class="subtitle"></span>
<!-- $$$FetchHint-brief -->
<p>The FetchHint element provides hints to the manager about which organizer item information needs to be retrieved in an asynchronous fetch request or a synchronous function call. More...</p>
<!-- @@@FetchHint -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#detailTypesHint-prop">detailTypesHint</a></b></b> : list&lt;int&gt;</li>
<li class="fn"><b><b><a href="#optimizationHints-prop">optimizationHints</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onFetchHintChanged-signal">onFetchHintChanged</a></b></b>()</li>
</ul>
<!-- $$$FetchHint-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@FetchHint -->
<h2>Property Documentation</h2>
<!-- $$$detailTypesHint -->
<table class="qmlname"><tr valign="top" id="detailTypesHint-prop"><td class="tblQmlPropNode"><p><span class="name">detailTypesHint</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td></tr></table><p>This property holds a list of organizer item detail types the manager should (at a minimum) retrieve when fetching contacts.</p>
<!-- @@@detailTypesHint -->
<br/>
<!-- $$$optimizationHints -->
<table class="qmlname"><tr valign="top" id="optimizationHints-prop"><td class="tblQmlPropNode"><p><span class="name">optimizationHints</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the optimization hint flags specified by the client.</p>
<ul>
<li>AllRequired Tells the backend that all information is required.</li>
<li>NoActionPreferences Tells the backend that the client does not require retrieved organizer items to include a cache of action preferences.</li>
<li>NoBinaryBlobs Tells the backend that the client does not require retrieved organizer items to include binary blobs such as thumbnail images.</li>
</ul>
<!-- @@@optimizationHints -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onFetchHintChanged -->
<table class="qmlname"><tr valign="top" id="onFetchHintChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onFetchHintChanged</span>()</p></td></tr></table><p>This signal is emitted, when any of the <a href="index.html">FetchHint</a>'s properties have been changed.</p>
<!-- @@@onFetchHintChanged -->
<br/>
