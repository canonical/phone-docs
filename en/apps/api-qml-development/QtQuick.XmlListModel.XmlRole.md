---
Title: QtQuick.XmlListModel.XmlRole
---

# QtQuick.XmlListModel.XmlRole

<span class="subtitle"></span>
<!-- $$$XmlRole-brief -->
<p>For specifying a role to an XmlListModel More...</p>
<!-- @@@XmlRole -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.XmlListModel 2.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#isKey-prop">isKey</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#query-prop">query</a></b></b> : string</li>
</ul>
<!-- $$$XmlRole-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>See also </b>Qt QML.</p>
<!-- @@@XmlRole -->
<h2>Property Documentation</h2>
<!-- $$$isKey -->
<table class="qmlname"><tr valign="top" id="isKey-prop"><td class="tblQmlPropNode"><p><span class="name">isKey</span> : <span class="type">bool</span></p></td></tr></table><p>Defines whether this is a key role. Key roles are used to determine whether a set of values should be updated or added to the XML list model when <a href="QtQuick.XmlListModel.XmlListModel.md#reload-method">XmlListModel::reload()</a> is called.</p>
<p><b>See also </b><a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a>.</p>
<!-- @@@isKey -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>The name for the role. This name is used to access the model data for this role.</p>
<p>For example, the following model has a role named &quot;title&quot;, which can be accessed from the view's delegate:</p>
<pre class="qml"><span class="type"><a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
<span class="name">id</span>: <span class="name">xmlModel</span>
<span class="comment">// ...</span>
<span class="type"><a href="index.html">XmlRole</a></span> {
<span class="name">name</span>: <span class="string">&quot;title&quot;</span>
<span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span>
}
}</pre>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">model</span>: <span class="name">xmlModel</span>
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">title</span> }
}</pre>
<!-- @@@name -->
<br/>
<!-- $$$query -->
<table class="qmlname"><tr valign="top" id="query-prop"><td class="tblQmlPropNode"><p><span class="name">query</span> : <span class="type">string</span></p></td></tr></table><p>The relative XPath expression query for this role. The query must be relative; it cannot start with a '/'.</p>
<p>For example, if there is an XML document like this:</p>
<pre class="cpp">&lt;?xml version=&quot;1.0&quot; encoding=&quot;iso-8859-1&quot; ?&gt;
&lt;catalog&gt;
&lt;book type=&quot;Online&quot; wanted=&quot;true&quot;&gt;
&lt;title&gt;Qt 5 Cadaques&lt;/title&gt;
&lt;year&gt;2014&lt;/year&gt;
&lt;author&gt;Juergen Bocklage-Ryannel&lt;/author&gt;
&lt;author&gt;Johan Thelin&lt;/author&gt;
&lt;/book&gt;
&lt;book type=&quot;Hardcover&quot;&gt;
&lt;title&gt;C++ GUI Programming with Qt 4&lt;/title&gt;
&lt;year&gt;2006&lt;/year&gt;
&lt;author&gt;Jasmin Blanchette&lt;/author&gt;
&lt;author&gt;Mark Summerfield&lt;/author&gt;
&lt;/book&gt;
&lt;book type=&quot;Paperback&quot;&gt;
&lt;title&gt;Programming with Qt&lt;/title&gt;
&lt;year&gt;2002&lt;/year&gt;
&lt;author&gt;Matthias Kalle Dalheimer&lt;/author&gt;
&lt;/book&gt;
&lt;/catalog&gt;</pre>
<p>Here are some valid XPath expressions for <a href="index.html">XmlRole</a> queries on this document:</p>
<pre class="qml"><span class="type"><a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
<span class="name">id</span>: <span class="name">model</span>
...
<span class="comment">// XmlRole queries will be made on &lt;book&gt; elements</span>
<span class="name">query</span>: <span class="string">&quot;/catalog/book&quot;</span>
<span class="comment">// query the book title</span>
<span class="type"><a href="index.html">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
<span class="comment">// query the book's year</span>
<span class="type"><a href="index.html">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;year&quot;</span>; <span class="name">query</span>: <span class="string">&quot;year/number()&quot;</span> }
<span class="comment">// query the book's type (the '@' indicates 'type' is an attribute, not an element)</span>
<span class="type"><a href="index.html">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;type&quot;</span>; <span class="name">query</span>: <span class="string">&quot;@type/string()&quot;</span> }
<span class="comment">// query the book's first listed author (note in XPath the first index is 1, not 0)</span>
<span class="type"><a href="index.html">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;first_author&quot;</span>; <span class="name">query</span>: <span class="string">&quot;author[1]/string()&quot;</span> }
<span class="comment">// query the wanted attribute as a boolean</span>
<span class="type"><a href="index.html">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;wanted&quot;</span>; <span class="name">query</span>: <span class="string">&quot;boolean(@wanted)&quot;</span> }
}</pre>
<p>Accessing the model data for the above roles from a delegate:</p>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">300</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">model</span>: <span class="name">model</span>
<span class="name">delegate</span>: <span class="name">Column</span> {
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">title</span> <span class="operator">+</span> <span class="string">&quot; (&quot;</span> <span class="operator">+</span> <span class="name">type</span> <span class="operator">+</span> <span class="string">&quot;)&quot;</span>; <span class="name">font</span>.bold: <span class="name">wanted</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">first_author</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">year</span> }
}</pre>
<p>See the <a href="http://www.w3.org/TR/xpath20/">W3C XPath 2.0 specification</a> for more information.</p>
<!-- @@@query -->
<br/>
