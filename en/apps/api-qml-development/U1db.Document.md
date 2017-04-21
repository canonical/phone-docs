---
Title: U1db.Document
---

# U1db.Document

<span class="subtitle"></span>
<!-- $$$Document-brief -->
<p>Document proxies a single document stored in the Database. More...</p>
<!-- @@@Document -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import U1db .</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiates:</td><td class="memItemRight bottomAlign"> <a href="#">Document</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#content-prop">content</a></b></b> : Variant</li>
<li class="fn"><b><b><a href="#contents-prop">contents</a></b></b> : Variant</li>
<li class="fn"><b><b><a href="#create-prop">create</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#docId-prop">docId</a></b></b> : string</li>
</ul>
<!-- $$$Document-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This is the declarative API equivalent of <a href="U1db.Database.md#putDoc-method">Database::putDoc()</a> and <a href="U1db.Database.md#getDoc-method">Database::getDoc()</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">Document</a></span> {
<span class="name">docId</span>: <span class="string">'myId'</span>
<span class="name">defaults</span>: {
<span class="name">color</span>: <span class="string">'blue'</span>
}
<span class="name">create</span>: <span class="number">true</span>
}</pre>
<p><b>See also </b><a href="U1db.Database.md">Database</a>.</p>
<!-- @@@Document -->
<h2>Property Documentation</h2>
<!-- $$$content -->
<table class="qmlname"><tr valign="top" id="content-prop"><td class="tblQmlPropNode"><p><span class="name">content</span> : <span class="type">Variant</span></p></td></tr></table><p>The default contents of the document, which are used only if create is true, <a href="#docId-prop">docId</a> is not empty and no document with the same <a href="#docId-prop">docId</a> exists in the database yet. If the <i>defaults</i> change, it's up to the API user to handle it.</p>
<!-- @@@content -->
<br/>
<!-- $$$contents -->
<table class="qmlname"><tr valign="top" id="contents-prop"><td class="tblQmlPropNode"><p><span class="name">contents</span> : <span class="type">Variant</span></p></td></tr></table><p>Updates the <i>contents</i> of the document. A valid <a href="#docId-prop">docId</a> must be set.</p>
<!-- @@@contents -->
<br/>
<!-- $$$create -->
<table class="qmlname"><tr valign="top" id="create-prop"><td class="tblQmlPropNode"><p><span class="name">create</span> : <span class="type">bool</span></p></td></tr></table><p>If <i>create</i> is true, <a href="#docId-prop">docId</a> is not empty and no document with the same <a href="#docId-prop">docId</a> exists, defaults will be used to store the document.</p>
<!-- @@@create -->
<br/>
<!-- $$$docId -->
<table class="qmlname"><tr valign="top" id="docId-prop"><td class="tblQmlPropNode"><p><span class="name">docId</span> : <span class="type">string</span></p></td></tr></table><p>The docId can be that of an existing document in the database and will determine what getContents() returns. If no such documents exists, setDefaults() can be used to supply a preset.</p>
<!-- @@@docId -->
<br/>
