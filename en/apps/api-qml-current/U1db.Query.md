---
Title: U1db.Query
---

# U1db.Query

<span class="subtitle"></span>
<!-- $$$Query-brief -->
<p>Query filters documents based on the query and index. More...</p>
<!-- @@@Query -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import U1db .</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiates:</td><td class="memItemRight bottomAlign"> <a href="#">Query</a></td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#documents-prop">documents</a></b></b> : list&lt;string&gt;</li>
<li class="fn"><b><b><a href="#index-prop">index</a></b></b> : Index</li>
<li class="fn"><b><b><a href="#query-prop">query</a></b></b> : Variant</li>
<li class="fn"><b><b><a href="#results-prop">results</a></b></b> : list&lt;Variant&gt;</li>
</ul>
<!-- $$$Query-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>In a ListView the Query can be used as a model.</p>
<pre class="qml"><span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">Query</span> {
<span class="name">index</span>: <span class="name">Index</span> {
<span class="name">name</span>: <span class="string">'colorIndex'</span>
<span class="name">expression</span>: [ <span class="string">'color'</span> ]
<span class="name">database</span>: <span class="name">myDatabase</span>
}
<span class="name">query</span>: [ <span class="string">'blue'</span> ]
}
<span class="name">delegate</span>: <span class="name">ListItem</span>.Subtitled {
<span class="name">text</span>: <span class="name">docId</span>
<span class="name">subText</span>: <span class="name">contents</span>.<span class="name">color</span>
}
}</pre>
<p><b>See also </b><a href="U1db.Index.md">Index</a>.</p>
<!-- @@@Query -->
<h2>Property Documentation</h2>
<!-- $$$documents -->
<table class="qmlname"><tr valign="top" id="documents-prop"><td class="tblQmlPropNode"><p><span class="name">documents</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>The docId's of all matched documents.</p>
<!-- @@@documents -->
<br/>
<!-- $$$index -->
<table class="qmlname"><tr valign="top" id="index-prop"><td class="tblQmlPropNode"><p><span class="name">index</span> : <span class="type"><a href="U1db.Index.md">Index</a></span></p></td></tr></table><p>Sets the Index to use. <i>index</i> must have a valid name and index expressions. If no query is set, the default is all results of the index.</p>
<!-- @@@index -->
<br/>
<!-- $$$query -->
<table class="qmlname"><tr valign="top" id="query-prop"><td class="tblQmlPropNode"><p><span class="name">query</span> : <span class="type">Variant</span></p></td></tr></table><p>A query in one of the allowed forms: 'value', ['value'] or [{'sub-field': 'value'}]. The default is equivalent to '*'.</p>
<!-- @@@query -->
<br/>
<!-- $$$results -->
<table class="qmlname"><tr valign="top" id="results-prop"><td class="tblQmlPropNode"><p><span class="name">results</span> : <span class="type">list</span>&lt;<span class="type">Variant</span>&gt;</p></td></tr></table><p>The results of the query as a list.</p>
<!-- @@@results -->
<br/>
