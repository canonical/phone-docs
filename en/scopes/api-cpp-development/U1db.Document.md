---
Title: U1db.Document
---

# U1db.Document

<!-- $$$Document-brief -->
<p>The Document class proxies a single document stored in the Database. More...</p>
<!-- @@@Document -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Header:</td><td class="memItemRight bottomAlign"> <span class="preprocessor">#include &lt;Document&gt;</span>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiated By:</td><td class="memItemRight bottomAlign"> Document</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> </td></tr></table><ul>
</ul>
<h2 id="public-functions">Public Functions</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> </td><td class="memItemRight bottomAlign"><b><a href="#Document">Document</a></b>(QObject *<i> parent</i> = 0)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QVariant </td><td class="memItemRight bottomAlign"><b><a href="#getContents">getContents</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> bool </td><td class="memItemRight bottomAlign"><b><a href="#getCreate">getCreate</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> Database * </td><td class="memItemRight bottomAlign"><b><a href="#getDatabase">getDatabase</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QVariant </td><td class="memItemRight bottomAlign"><b><a href="#getDefaults">getDefaults</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QString </td><td class="memItemRight bottomAlign"><b><a href="#getDocId">getDocId</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setContents">setContents</a></b>(QVariant<i> contents</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setCreate">setCreate</a></b>(bool<i> create</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setDatabase">setDatabase</a></b>(Database *<i> database</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setDefaults">setDefaults</a></b>(QVariant<i> defaults</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setDocId">setDocId</a></b>(const QString &amp;<i> docId</i>)</td></tr>
</table>
<!-- $$$Document-description -->
<h2 id="details">Detailed Description</h2>
<p>The Document class proxies a single document stored in the Database.</p>
<!-- @@@Document -->
<h2>Member Function Documentation</h2>
<!-- $$$Document[overload1]$$$DocumentQObject* -->
<h3 class="fn" id="Document">Document::<span class="name">Document</span>(<span class="type">QObject</span> *<i> parent</i> = 0)</h3>
<p>Instantiate a new Document with an optional <i>parent</i>, usually by declaring it as a QML item.</p>
<!-- @@@Document -->
<!-- $$$getContents[overload1]$$$getContents -->
<h3 class="fn" id="getContents"><span class="type">QVariant</span> Document::<span class="name">getContents</span>()</h3>
<p>Returns the current contents of the document.</p>
<!-- @@@getContents -->
<!-- $$$getCreate[overload1]$$$getCreate -->
<h3 class="fn" id="getCreate"><span class="type">bool</span> Document::<span class="name">getCreate</span>()</h3>
<p>Returns whether the document will be newly created if it doesn't exist.</p>
<!-- @@@getCreate -->
<!-- $$$getDatabase[overload1]$$$getDatabase -->
<h3 class="fn" id="getDatabase"><span class="type">Database</span> * Document::<span class="name">getDatabase</span>()</h3>
<p>Returns the Database.</p>
<!-- @@@getDatabase -->
<!-- $$$getDefaults[overload1]$$$getDefaults -->
<h3 class="fn" id="getDefaults"><span class="type">QVariant</span> Document::<span class="name">getDefaults</span>()</h3>
<p>Returns the defaults to be used when the document is newly created because it doesn't exist, if create is true.</p>
<!-- @@@getDefaults -->
<!-- $$$getDocId[overload1]$$$getDocId -->
<h3 class="fn" id="getDocId"><span class="type">QString</span> Document::<span class="name">getDocId</span>()</h3>
<p>Returns the docId.</p>
<!-- @@@getDocId -->
<!-- $$$setContents[overload1]$$$setContentsQVariant -->
<h3 class="fn" id="setContents"><span class="type">void</span> Document::<span class="name">setContents</span>(<span class="type">QVariant</span><i> contents</i>)</h3>
<p>Updates the <i>contents</i> of the document. A valid docId must be set.</p>
<!-- @@@setContents -->
<!-- $$$setCreate[overload1]$$$setCreatebool -->
<h3 class="fn" id="setCreate"><span class="type">void</span> Document::<span class="name">setCreate</span>(<span class="type">bool</span><i> create</i>)</h3>
<p>If <i>create</i> is true, docId is not empty and no document with the same docId exists, defaults will be used to store the document.</p>
<!-- @@@setCreate -->
<!-- $$$setDatabase[overload1]$$$setDatabaseDatabase* -->
<h3 class="fn" id="setDatabase"><span class="type">void</span> Document::<span class="name">setDatabase</span>(<span class="type">Database</span> *<i> database</i>)</h3>
<p>The <i>database</i> is used to lookup the contents of the document, reflecting changes done to it and conversely changes are saved to the database.</p>
<!-- @@@setDatabase -->
<!-- $$$setDefaults[overload1]$$$setDefaultsQVariant -->
<h3 class="fn" id="setDefaults"><span class="type">void</span> Document::<span class="name">setDefaults</span>(<span class="type">QVariant</span><i> defaults</i>)</h3>
<p>The default contents of the document, which are used only if create is true, docId is not empty and no document with the same docId exists in the database yet. If the <i>defaults</i> change, it's up to the API user to handle it.</p>
<!-- @@@setDefaults -->
<!-- $$$setDocId[overload1]$$$setDocIdconstQString& -->
<h3 class="fn" id="setDocId"><span class="type">void</span> Document::<span class="name">setDocId</span>(const <span class="type">QString</span> &amp;<i> docId</i>)</h3>
<p>The <i>docId</i> can be that of an existing document in the database and will determine what <a href="#getContents">getContents</a>() returns. If no such documents exists, <a href="#setDefaults">setDefaults</a>() can be used to supply a preset.</p>
<!-- @@@setDocId -->
