---
Title: QtQuick.XmlListModel.XmlListModel
---

# QtQuick.XmlListModel.XmlListModel

<span class="subtitle"></span>
<!-- $$$XmlListModel-brief -->
<p>For specifying a read-only model using XPath expressions More...</p>
<!-- @@@XmlListModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.XmlListModel 2.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#namespaceDeclarations-prop">namespaceDeclarations</a></b></b> : string</li>
<li class="fn"><b><b><a href="#progress-prop">progress</a></b></b> : real</li>
<li class="fn"><b><b><a href="#query-prop">query</a></b></b> : string</li>
<li class="fn"><b><b><a href="#roles-prop">roles</a></b></b> : list&lt;XmlRole&gt;</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#xml-prop">xml</a></b></b> : string</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#errorString-method">errorString</a></b></b>()</li>
<li class="fn">object <b><b><a href="#get-method">get</a></b></b>(int <i>index</i>)</li>
<li class="fn">void <b><b><a href="#reload-method">reload</a></b></b>()</li>
</ul>
<!-- $$$XmlListModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>To use this element, you will need to import the module with the following line:</p>
<pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>XmlListModel <span class="number">2.0</span></pre>
<p><a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a> is used to create a read-only model from XML data. It can be used as a data source for view elements (such as <a href="QtQuick.ListView.md">ListView</a>, <a href="QtQuick.PathView.md">PathView</a>, <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview">GridView</a>) and other elements that interact with model data (such as <a href="QtQuick.Repeater.md">Repeater</a>).</p>
<p>For example, if there is a XML document at http://www.mysite.com/feed.xml like this:</p>
<pre class="cpp"><span class="operator">&lt;</span><span class="operator">?</span>xml version<span class="operator">=</span><span class="string">&quot;1.0&quot;</span> encoding<span class="operator">=</span><span class="string">&quot;utf-8&quot;</span><span class="operator">?</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>rss version<span class="operator">=</span><span class="string">&quot;2.0&quot;</span><span class="operator">&gt;</span>
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
<span class="operator">&lt;</span>channel<span class="operator">&gt;</span>
<span class="operator">&lt;</span>item<span class="operator">&gt;</span>
<span class="operator">&lt;</span>title<span class="operator">&gt;</span>A blog post<span class="operator">&lt;</span><span class="operator">/</span>title<span class="operator">&gt;</span>
<span class="operator">&lt;</span>pubDate<span class="operator">&gt;</span>Sat<span class="operator">,</span> <span class="number">07</span> Sep <span class="number">2010</span> <span class="number">10</span>:<span class="number">00</span>:<span class="number">01</span> GMT<span class="operator">&lt;</span><span class="operator">/</span>pubDate<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>item<span class="operator">&gt;</span>
<span class="operator">&lt;</span>item<span class="operator">&gt;</span>
<span class="operator">&lt;</span>title<span class="operator">&gt;</span>Another blog post<span class="operator">&lt;</span><span class="operator">/</span>title<span class="operator">&gt;</span>
<span class="operator">&lt;</span>pubDate<span class="operator">&gt;</span>Sat<span class="operator">,</span> <span class="number">07</span> Sep <span class="number">2010</span> <span class="number">15</span>:<span class="number">35</span>:<span class="number">01</span> GMT<span class="operator">&lt;</span><span class="operator">/</span>pubDate<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>item<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>channel<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>rss<span class="operator">&gt;</span></pre>
<p>A <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a> could create a model from this data, like this:</p>
<pre class="qml">import QtQuick 2.0
import QtQuick.XmlListModel 2.0
<span class="type"><a href="index.html">XmlListModel</a></span> {
<span class="name">id</span>: <span class="name">xmlModel</span>
<span class="name">source</span>: <span class="string">&quot;http://www.mysite.com/feed.xml&quot;</span>
<span class="name">query</span>: <span class="string">&quot;/rss/channel/item&quot;</span>
<span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
<span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;pubDate&quot;</span>; <span class="name">query</span>: <span class="string">&quot;pubDate/string()&quot;</span> }
}</pre>
<p>The <a href="#query-prop">query</a> value of &quot;/rss/channel/item&quot; specifies that the <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a> should generate a model item for each <code>&lt;item&gt;</code> in the XML document.</p>
<p>The <a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a> objects define the model item attributes. Here, each model item will have <code>title</code> and <code>pubDate</code> attributes that match the <code>title</code> and <code>pubDate</code> values of its corresponding <code>&lt;item&gt;</code>. (See <a href="QtQuick.XmlListModel.XmlRole.md#query-prop">XmlRole::query</a> for more examples of valid XPath expressions for <a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a>.)</p>
<p>The model could be used in a <a href="QtQuick.ListView.md">ListView</a>, like this:</p>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">180</span>; <span class="name">height</span>: <span class="number">300</span>
<span class="name">model</span>: <span class="name">xmlModel</span>
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">title</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">pubDate</span> }
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/f0229ed8-797d-4637-b819-29ecfc918931-../QtQuick.XmlListModel.XmlListModel/images/qml-xmllistmodel-example.png" alt="" /></p><p>The <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a> data is loaded asynchronously, and <a href="#status-prop">status</a> is set to <code>XmlListModel.Ready</code> when loading is complete. Note this means when <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a> is used for a view, the view is not populated until the model is loaded.</p>
<h3 >Using key XML roles</h3>
<p>You can define certain roles as &quot;keys&quot; so that when <a href="#reload-method">reload()</a> is called, the model will only add and refresh data that contains new values for these keys.</p>
<p>For example, if above role for &quot;pubDate&quot; was defined like this instead:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;pubDate&quot;</span>; <span class="name">query</span>: <span class="string">&quot;pubDate/string()&quot;</span>; <span class="name">isKey</span>: <span class="number">true</span> }</pre>
<p>Then when <a href="#reload-method">reload()</a> is called, the model will only add and reload items with a &quot;pubDate&quot; value that is not already present in the model.</p>
<p>This is useful when displaying the contents of XML documents that are incrementally updated (such as RSS feeds) to avoid repainting the entire contents of a model in a view.</p>
<p>If multiple key roles are specified, the model only adds and reload items with a combined value of all key roles that is not already present in the model.</p>
<p><b>See also </b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.demos-rssnews/">Qt Quick Demo - RSS News</a>.</p>
<!-- @@@XmlListModel -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>The number of data entries in the model.</p>
<!-- @@@count -->
<br/>
<!-- $$$namespaceDeclarations -->
<table class="qmlname"><tr valign="top" id="namespaceDeclarations-prop"><td class="tblQmlPropNode"><p><span class="name">namespaceDeclarations</span> : <span class="type">string</span></p></td></tr></table><p>The namespace declarations to be used in the XPath queries.</p>
<p>The namespaces should be declared as in XQuery. For example, if a requested document at http://mysite.com/feed.xml uses the namespace &quot;http://www.w3.org/2005/Atom&quot;, this can be declared as the default namespace:</p>
<pre class="qml"><span class="type"><a href="index.html">XmlListModel</a></span> {
<span class="name">source</span>: <span class="string">&quot;http://mysite.com/feed.xml&quot;</span>
<span class="name">query</span>: <span class="string">&quot;/feed/entry&quot;</span>
<span class="name">namespaceDeclarations</span>: <span class="string">&quot;declare default element namespace 'http://www.w3.org/2005/Atom';&quot;</span>
<span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
}</pre>
<!-- @@@namespaceDeclarations -->
<br/>
<!-- $$$progress -->
<table class="qmlname"><tr valign="top" id="progress-prop"><td class="tblQmlPropNode"><p><span class="name">progress</span> : <span class="type">real</span></p></td></tr></table><p>This indicates the current progress of the downloading of the XML data source. This value ranges from 0.0 (no data downloaded) to 1.0 (all data downloaded). If the XML data is not from a remote source, the progress becomes 1.0 as soon as the data is read.</p>
<p>Note that when the progress is 1.0, the XML data has been downloaded, but it is yet to be loaded into the model at this point. Use the status property to find out when the XML data has been read and loaded into the model.</p>
<p><b>See also </b><a href="#status-prop">status</a> and <a href="#source-prop">source</a>.</p>
<!-- @@@progress -->
<br/>
<!-- $$$query -->
<table class="qmlname"><tr valign="top" id="query-prop"><td class="tblQmlPropNode"><p><span class="name">query</span> : <span class="type">string</span></p></td></tr></table><p>An absolute XPath query representing the base query for creating model items from this model's <a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a> objects. The query should start with '/' or '//'.</p>
<!-- @@@query -->
<br/>
<!-- $$$roles -->
<table class="qmlname"><tr valign="top" id="roles-prop"><td class="tblQmlPropNode"><p><span class="name">roles</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span>&gt;</p></td></tr></table><p>The roles to make available for this model.</p>
<!-- @@@roles -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>The location of the XML data source.</p>
<p>If both <code>source</code> and <a href="#xml-prop">xml</a> are set, <a href="#xml-prop">xml</a> is used.</p>
<!-- @@@source -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>Specifies the model loading status, which can be one of the following:</p>
<ul>
<li><a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a>.Null - No XML data has been set for this model.</li>
<li><a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a>.Ready - The XML data has been loaded into the model.</li>
<li><a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a>.Loading - The model is in the process of reading and loading XML data.</li>
<li><a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a>.Error - An error occurred while the model was loading. See <a href="#errorString-method">errorString()</a> for details about the error.</li>
</ul>
<p><b>See also </b><a href="#progress-prop">progress</a>.</p>
<!-- @@@status -->
<br/>
<!-- $$$xml -->
<table class="qmlname"><tr valign="top" id="xml-prop"><td class="tblQmlPropNode"><p><span class="name">xml</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the XML data for this model, if set.</p>
<p>The text is assumed to be UTF-8 encoded.</p>
<p>If both <a href="#source-prop">source</a> and <code>xml</code> are set, <code>xml</code> is used.</p>
<!-- @@@xml -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">errorString</span>()</p></td></tr></table><p>Returns a string description of the last error that occurred if <a href="#status-prop">status</a> is XmlListModel::Error.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$get -->
<table class="qmlname"><tr valign="top" id="get-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">get</span>(<span class="type">int</span><i> index</i>)</p></td></tr></table><p>Returns the item at <i>index</i> in the model.</p>
<p>For example, for a model like this:</p>
<pre class="qml"><span class="type"><a href="index.html">XmlListModel</a></span> {
<span class="name">id</span>: <span class="name">model</span>
<span class="name">source</span>: <span class="string">&quot;http://mysite.com/feed.xml&quot;</span>
<span class="name">query</span>: <span class="string">&quot;/feed/entry&quot;</span>
<span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
}</pre>
<p>This will access the <code>title</code> value for the first item in the model:</p>
<pre class="js">var <span class="name">title</span> = <span class="name">model</span>.<span class="name">get</span>(<span class="number">0</span>).<span class="name">title</span>;</pre>
<!-- @@@get -->
<br/>
<!-- $$$reload -->
<table class="qmlname"><tr valign="top" id="reload-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">reload</span>()</p></td></tr></table><p>Reloads the model.</p>
<p>If no key roles have been specified, all existing model data is removed, and the model is rebuilt from scratch.</p>
<p>Otherwise, items are only added if the model does not already contain items with matching key role values.</p>
<p><b>See also </b><a href="#using-key-xml-roles">Using key XML roles</a> and <a href="QtQuick.XmlListModel.XmlRole.md#isKey-prop">XmlRole::isKey</a>.</p>
<!-- @@@reload -->
<br/>
