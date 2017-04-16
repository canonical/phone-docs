---
Title: U1db.Index
---

# U1db.Index

<span class="subtitle"></span>
<!-- $$$Index-brief -->
<p>An Index defines what fields can be filtered using Query. More...</p>
<!-- @@@Index -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import U1db .</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiates:</td><td class="memItemRight bottomAlign"> <a href="index.html"><a href="../sdk-14.10/Ubuntu.DownloadManager.index.md">Index</a></td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#database-prop">database</a></b></b> : Database</li>
<li class="fn"><b><b><a href="#expression-prop">expression</a></b></b> : list&lt;string&gt;</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
</ul>
<!-- $$$Index-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Documents in the database will be included if they contain all fields in the expression.</p>
<pre class="qml"><span class="type"><a href="index.html">Index</a></span> {
<span class="name">database</span>: <span class="name">myDatabase</span>
<span class="name">name</span>: <span class="string">'colorIndex'</span>
<span class="name">expression</span>: [ <span class="string">'color'</span> ]
}</pre>
<p><b>See also </b><a href="U1db.Query.md">Query</a>.</p>
<!-- @@@Index -->
<h2>Property Documentation</h2>
<!-- $$$database -->
<table class="qmlname"><tr valign="top" id="database-prop"><td class="tblQmlPropNode"><p><span class="name">database</span> : <span class="type"><a href="U1db.Database.md">Database</a></span></p></td></tr></table><p>Sets the Database to lookup documents from and store the index in. The dataInvalidated() signal will be emitted on all changes that could affect the index.</p>
<!-- @@@database -->
<br/>
<!-- $$$expression -->
<table class="qmlname"><tr valign="top" id="expression-prop"><td class="tblQmlPropNode"><p><span class="name">expression</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>Sets the expression used. Both an expression and a name must be specified for an index to be created.</p>
<p>Also starts the process of creating the Index result list, which can then be queried or populate the Query model as is.</p>
<!-- @@@expression -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>Sets the name used. Both an expression and a name must be specified for an index to be created.</p>
<!-- @@@name -->
<br/>
