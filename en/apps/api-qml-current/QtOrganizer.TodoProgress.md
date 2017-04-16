---
Title: QtOrganizer.TodoProgress
---

# QtOrganizer.TodoProgress

<span class="subtitle"></span>
<!-- $$$TodoProgress-brief -->
<p>The TodoProgress element contains information about the progress of a todo item. More...</p>
<!-- @@@TodoProgress -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtOrganizer 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#finishedDateTime-prop">finishedDateTime</a></b></b> : date</li>
<li class="fn"><b><b><a href="#percentageComplete-prop">percentageComplete</a></b></b> : int</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onDetailChanged-signal">onDetailChanged</a></b></b>()</li>
</ul>
<!-- $$$TodoProgress-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The following fields are supported:</p>
<ul>
<li><a href="index.html">TodoProgress</a>.FieldStatus</li>
<li><a href="index.html">TodoProgress</a>.FieldPercentage</li>
<li><a href="index.html">TodoProgress</a>.FieldFinishedDateTime</li>
</ul>
<p><b>See also </b>QOrganizerTodoProgress.</p>
<!-- @@@TodoProgress -->
<h2>Property Documentation</h2>
<!-- $$$finishedDateTime -->
<table class="qmlname"><tr valign="top" id="finishedDateTime-prop"><td class="tblQmlPropNode"><p><span class="name">finishedDateTime</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the date time value which contains the date and time at which the todo item was completed.</p>
<!-- @@@finishedDateTime -->
<br/>
<!-- $$$percentageComplete -->
<table class="qmlname"><tr valign="top" id="percentageComplete-prop"><td class="tblQmlPropNode"><p><span class="name">percentageComplete</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the value which contains the current completion percentage of the todo item.</p>
<!-- @@@percentageComplete -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the value which describes the current completion status of the todo item. The value can be one of:</p>
<ul>
<li><a href="index.html">TodoProgress</a>.NotStarted</li>
<li><a href="index.html">TodoProgress</a>.InProgress</li>
<li><a href="index.html">TodoProgress</a>.Complete</li>
</ul>
<!-- @@@status -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onDetailChanged -->
<table class="qmlname"><tr valign="top" id="onDetailChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onDetailChanged</span>()</p></td></tr></table><p><b>See also </b><a href="QtOrganizer.Detail.md#onDetailChanged-signal">Detail::onDetailChanged</a>.</p>
<!-- @@@onDetailChanged -->
<br/>
