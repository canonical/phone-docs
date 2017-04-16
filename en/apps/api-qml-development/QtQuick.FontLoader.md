---
Title: QtQuick.FontLoader
---

# QtQuick.FontLoader

<span class="subtitle"></span>
<!-- $$$FontLoader-brief -->
<p>Allows fonts to be loaded by name or URL More...</p>
<!-- @@@FontLoader -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
</ul>
<!-- $$$FontLoader-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">FontLoader</a> type is used to load fonts by name or URL.</p>
<p>The <a href="#status-prop">status</a> indicates when the font has been loaded, which is useful for fonts loaded from remote sources.</p>
<p>For example:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="index.html">FontLoader</a></span> { <span class="name">id</span>: <span class="name">fixedFont</span>; <span class="name">name</span>: <span class="string">&quot;Courier&quot;</span> }
<span class="type"><a href="index.html">FontLoader</a></span> { <span class="name">id</span>: <span class="name">webFont</span>; <span class="name">source</span>: <span class="string">&quot;http://www.mysite.com/myfont.ttf&quot;</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Fixed-size font&quot;</span>; <span class="name">font</span>.family: <span class="name">fixedFont</span>.<span class="name">name</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Fancy font&quot;</span>; <span class="name">font</span>.family: <span class="name">webFont</span>.<span class="name">name</span> }
}</pre>
<p><b>See also </b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.text/#fonts">Qt Quick Examples - Text Fonts</a>.</p>
<!-- @@@FontLoader -->
<h2>Property Documentation</h2>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the font family. It is set automatically when a font is loaded using the <code>url</code> property.</p>
<p>Use this to set the <code>font.family</code> property of a <code>Text</code> item.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="type"><a href="index.html">FontLoader</a></span> {
<span class="name">id</span>: <span class="name">webFont</span>
<span class="name">source</span>: <span class="string">&quot;http://www.mysite.com/myfont.ttf&quot;</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="string">&quot;Fancy font&quot;</span>
<span class="name">font</span>.family: <span class="name">webFont</span>.<span class="name">name</span>
}
}</pre>
<!-- @@@name -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>The url of the font to load.</p>
<!-- @@@source -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the status of font loading. It can be one of:</p>
<ul>
<li><a href="index.html">FontLoader</a>.Null - no font has been set</li>
<li><a href="index.html">FontLoader</a>.Ready - the font has been loaded</li>
<li><a href="index.html">FontLoader</a>.Loading - the font is currently being loaded</li>
<li><a href="index.html">FontLoader</a>.Error - an error occurred while loading the font</li>
</ul>
<p>Use this status to provide an update or respond to the status change in some way. For example, you could:</p>
<ul>
<li>Trigger a state change:<pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> { <span class="name">name</span>: <span class="string">'loaded'</span>; <span class="name">when</span>: <span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">FontLoader</span>.<span class="name">Ready</span> }</pre>
</li>
<li>Implement an <code>onStatusChanged</code> signal handler:<pre class="qml"><span class="type"><a href="index.html">FontLoader</a></span> {
<span class="name">id</span>: <span class="name">loader</span>
<span class="name">onStatusChanged</span>: <span class="keyword">if</span> (<span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">FontLoader</span>.<span class="name">Ready</span>) <span class="name">console</span>.<span class="name">log</span>(<span class="string">'Loaded'</span>)
}</pre>
</li>
<li>Bind to the status value:<pre class="qml"><span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">FontLoader</span>.<span class="name">Ready</span> ? <span class="string">'Loaded'</span> : <span class="string">'Not loaded'</span> }</pre>
</li>
</ul>
<!-- @@@status -->
<br/>
