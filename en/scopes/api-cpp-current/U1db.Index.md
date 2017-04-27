---
Title: U1db.Index
---

# U1db.Index

<!-- $$$Index-brief -->
<p>The Index class defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database. More...</p>
<!-- @@@Index -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Header:</td><td class="memItemRight bottomAlign"> <span class="preprocessor">#include &lt;Index&gt;</span>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiated By:</td><td class="memItemRight bottomAlign"> <a href="#">Index</a></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> </td></tr></table><ul>
</ul>
<h2 id="public-functions">Public Functions</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> </td><td class="memItemRight bottomAlign"><b><a href="#Index">Index</a></b>(QObject *<i> parent</i> = 0)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> Database * </td><td class="memItemRight bottomAlign"><b><a href="#getDatabase">getDatabase</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QStringList </td><td class="memItemRight bottomAlign"><b><a href="#getExpression">getExpression</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QString </td><td class="memItemRight bottomAlign"><b><a href="#getName">getName</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setDatabase">setDatabase</a></b>(Database *<i> database</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setExpression">setExpression</a></b>(QStringList<i> expression</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setName">setName</a></b>(const QString &amp;<i> name</i>)</td></tr>
</table>
<!-- $$$Index-description -->
<h2 id="details">Detailed Description</h2>
<p>The Index class defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database.</p>
<!-- @@@Index -->
<h2>Member Function Documentation</h2>
<!-- $$$Index[overload1]$$$IndexQObject* -->
<h3 class="fn" id="Index">Index::<span class="name">Index</span>(<span class="type">QObject</span> *<i> parent</i> = 0)</h3>
<p>Instantiate a new Index with an optional <i>parent</i>, usually by declaring it as a QML item.</p>
<!-- @@@Index -->
<!-- $$$getDatabase[overload1]$$$getDatabase -->
<h3 class="fn" id="getDatabase"><span class="type"><a href="U1db.Database.md">Database</a></span> * Index::<span class="name">getDatabase</span>()</h3>
<p>Returns the <a href="U1db.Database.md">Database</a> to lookup documents from and store the index in.</p>
<!-- @@@getDatabase -->
<!-- $$$getExpression[overload1]$$$getExpression -->
<h3 class="fn" id="getExpression"><span class="type">QStringList</span> Index::<span class="name">getExpression</span>()</h3>
<p>Returns the expression of the index. Both name and expression must be specified.</p>
<!-- @@@getExpression -->
<!-- $$$getName[overload1]$$$getName -->
<h3 class="fn" id="getName"><span class="type">QString</span> Index::<span class="name">getName</span>()</h3>
<p>Returns the name of the index. Both name and expression must be specified.</p>
<!-- @@@getName -->
<!-- $$$setDatabase[overload1]$$$setDatabaseDatabase* -->
<h3 class="fn" id="setDatabase"><span class="type">void</span> Index::<span class="name">setDatabase</span>(<span class="type"><a href="U1db.Database.md">Database</a></span> *<i> database</i>)</h3>
<p>Sets the <i>database</i> to lookup documents from and store the index in. The dataInvalidated() signal will be emitted on all changes that could affect the index.</p>
<!-- @@@setDatabase -->
<!-- $$$setExpression[overload1]$$$setExpressionQStringList -->
<h3 class="fn" id="setExpression"><span class="type">void</span> Index::<span class="name">setExpression</span>(<span class="type">QStringList</span><i> expression</i>)</h3>
<p>Sets the <i>expression</i> used. Both an expression and a name must be specified for an index to be created.</p>
<p>Also starts the process of creating the Index result list, which can then be queried or populate the Query model as is.</p>
<!-- @@@setExpression -->
<!-- $$$setName[overload1]$$$setNameconstQString& -->
<h3 class="fn" id="setName"><span class="type">void</span> Index::<span class="name">setName</span>(const <span class="type">QString</span> &amp;<i> name</i>)</h3>
<p>Sets the <i>name</i> used. Both an expression and a name must be specified for an index to be created.</p>
<!-- @@@setName -->
