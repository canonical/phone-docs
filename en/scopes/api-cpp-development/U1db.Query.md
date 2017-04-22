---
Title: U1db.Query
---

# U1db.Query

<!-- $$$Query-brief -->
<p>The Query class generates a filtered list of documents based on a query using the given Index. More...</p>
<!-- @@@Query -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Header:</td><td class="memItemRight bottomAlign"> <span class="preprocessor">#include &lt;Query&gt;</span>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiated By:</td><td class="memItemRight bottomAlign"> Query</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> </td></tr></table><ul>
</ul>
<h2 id="public-functions">Public Functions</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> </td><td class="memItemRight bottomAlign"><b><a href="#Query">Query</a></b>(QObject *<i> parent</i> = 0)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QStringList </td><td class="memItemRight bottomAlign"><b><a href="#getDocuments">getDocuments</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> Index * </td><td class="memItemRight bottomAlign"><b><a href="#getIndex">getIndex</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QVariant </td><td class="memItemRight bottomAlign"><b><a href="#getQuery">getQuery</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QList&lt;QVariant&gt; </td><td class="memItemRight bottomAlign"><b><a href="#getResults">getResults</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#resetModel">resetModel</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setIndex">setIndex</a></b>(Index *<i> index</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setQuery">setQuery</a></b>(QVariant<i> query</i>)</td></tr>
</table>
<!-- $$$Query-description -->
<h2 id="details">Detailed Description</h2>
<p>The Query class generates a filtered list of documents based on a query using the given Index.</p>
<p>Query can be used as a QAbstractListModel, delegates will then have access to <i>docId</i> and <i>contents</i> analogous to the properties of Document.</p>
<!-- @@@Query -->
<h2>Member Function Documentation</h2>
<!-- $$$Query[overload1]$$$QueryQObject* -->
<h3 class="fn" id="Query">Query::<span class="name">Query</span>(<span class="type">QObject</span> *<i> parent</i> = 0)</h3>
<p>Instantiate a new Query with an optional <i>parent</i>, usually by declaring it as a QML item.</p>
<p><b>See also </b><a href="#setQuery">setQuery</a>().</p>
<!-- @@@Query -->
<!-- $$$getDocuments[overload1]$$$getDocuments -->
<h3 class="fn" id="getDocuments"><span class="type">QStringList</span> Query::<span class="name">getDocuments</span>()</h3>
<p>FIXME</p>
<!-- @@@getDocuments -->
<!-- $$$getIndex[overload1]$$$getIndex -->
<h3 class="fn" id="getIndex"><span class="type">Index</span> * Query::<span class="name">getIndex</span>()</h3>
<p>FIXME</p>
<!-- @@@getIndex -->
<!-- $$$getQuery[overload1]$$$getQuery -->
<h3 class="fn" id="getQuery"><span class="type">QVariant</span> Query::<span class="name">getQuery</span>()</h3>
<p>FIXME</p>
<!-- @@@getQuery -->
<!-- $$$getResults[overload1]$$$getResults -->
<h3 class="fn" id="getResults"><span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt; Query::<span class="name">getResults</span>()</h3>
<p>FIXME</p>
<!-- @@@getResults -->
<!-- $$$resetModel[overload1]$$$resetModel -->
<h3 class="fn" id="resetModel"><span class="type">void</span> Query::<span class="name">resetModel</span>()</h3>
<p>Query::resetModel</p>
<p>Resets the model of the Query</p>
<!-- @@@resetModel -->
<!-- $$$setIndex[overload1]$$$setIndexIndex* -->
<h3 class="fn" id="setIndex"><span class="type">void</span> Query::<span class="name">setIndex</span>(<span class="type">Index</span> *<i> index</i>)</h3>
<p>FIXME <i>index</i></p>
<!-- @@@setIndex -->
<!-- $$$setQuery[overload1]$$$setQueryQVariant -->
<h3 class="fn" id="setQuery"><span class="type">void</span> Query::<span class="name">setQuery</span>(<span class="type">QVariant</span><i> query</i>)</h3>
<p>FIXME <i>query</i></p>
<!-- @@@setQuery -->
