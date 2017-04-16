---
Title: Ubuntu.Components.Clipboard
---

# Ubuntu.Components.Clipboard

<span class="subtitle"></span>
<!-- $$$Clipboard-brief -->
<p>This is a singleton type providing access to the system clipboard. More...</p>
<!-- @@@Clipboard -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#data-prop">data</a></b></b> : MimeData</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#dataChanged-signal">dataChanged</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#clear-method">clear</a></b></b>()</li>
<li class="fn">MimeData <b><b><a href="#newData-method">newData</a></b></b>()</li>
<li class="fn"><b><b><a href="#push-method">push</a></b></b>(var <i>data</i>)</li>
</ul>
<!-- $$$Clipboard-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Clipboard data can be retrieved through data property, which returns an object of <a href="Ubuntu.Components.MimeData.md">MimeData</a> type. The actual content of the clipboard can be accessed through this object. Data can be pushed to the clipboard using <a href="#push-method">push()</a> function.</p>
<p>The clipboard data cannot be modified through the type returned by the data property, for this a new instance of <a href="Ubuntu.Components.MimeData.md">MimeData</a> type must be used. This instance can be either a standalone MimeDala component or an object created using <a href="#newData-method">newData()</a> function. Remember that standalone <a href="Ubuntu.Components.MimeData.md">MimeData</a> types duplicate the clipboard data which may cause extensive memory use.</p>
<p>Examples of use:</p>
<p>1. Using standard MimeType component - the following example copies the selected text from the text area into the clipboard pushing also a color</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="Ubuntu.Components.TextArea.md">TextArea</a></span> {
<span class="name">id</span>: <span class="name">editor</span>
}
<span class="type"><a href="Ubuntu.Components.MimeData.md">MimeData</a></span> {
<span class="name">id</span>: <span class="name">mimeData</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">text</span>: <span class="name">editor</span>.<span class="name">text</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Copy&quot;</span>
<span class="name">onClicked</span>: <span class="name">Clipboard</span>.<span class="name">push</span>(<span class="name">mimeData</span>)
}
}</pre>
<p>2. Pushing data straight to clipboard</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="Ubuntu.Components.TextArea.md">TextArea</a></span> {
<span class="name">id</span>: <span class="name">editor</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Copy&quot;</span>
<span class="name">onClicked</span>: {
<span class="name">Clipboard</span>.<span class="name">push</span>(<span class="name">editor</span>.<span class="name">text</span>);
<span class="name">Clipboard</span>.<span class="name">push</span>([<span class="string">&quot;application/x-color&quot;</span>, <span class="string">&quot;green&quot;</span>]);
}
}
}</pre>
<p>3. Pushing data using <a href="Ubuntu.Components.MimeData.md">MimeData</a> object</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="Ubuntu.Components.TextArea.md">TextArea</a></span> {
<span class="name">id</span>: <span class="name">editor</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Copy&quot;</span>
<span class="name">onClicked</span>: {
var <span class="name">mimeData</span> = <span class="name">Clipboard</span>.<span class="name">newData</span>();
<span class="name">mimeData</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">editor</span>.<span class="name">text</span>;
<span class="name">mimeData</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;green&quot;</span>;
<span class="name">Clipboard</span>.<span class="name">push</span>(<span class="name">mimeData</span>);
}
}
}</pre>
<!-- @@@Clipboard -->
<h2>Property Documentation</h2>
<!-- $$$data -->
<table class="qmlname"><tr valign="top" id="data-prop"><td class="tblQmlPropNode"><p><span class="name">data</span> : <span class="type"><a href="Ubuntu.Components.MimeData.md">MimeData</a></span></p></td></tr></table><p>Provides access to the Clipboard's current data.</p>
<!-- @@@data -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$dataChanged -->
<table class="qmlname"><tr valign="top" id="dataChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">dataChanged</span>()</p></td></tr></table><p>The signal is triggered when clipboard content gets changed.</p>
<!-- @@@dataChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$clear -->
<table class="qmlname"><tr valign="top" id="clear-method"><td class="tblQmlFuncNode"><p><span class="name">clear</span>()</p></td></tr></table><p>The function clears the clipboard content.</p>
<!-- @@@clear -->
<br/>
<!-- $$$newData -->
<table class="qmlname"><tr valign="top" id="newData-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="Ubuntu.Components.MimeData.md">MimeData</a></span> <span class="name">newData</span>()</p></td></tr></table><p>The function returns a new <a href="Ubuntu.Components.MimeData.md">MimeData</a> object that can be used in Java script code to push pultiple MIME types at the same time.</p>
<!-- @@@newData -->
<br/>
<!-- $$$push -->
<table class="qmlname"><tr valign="top" id="push-method"><td class="tblQmlFuncNode"><p><span class="name">push</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span><i> data</i>)</p></td></tr></table><p>The function copies data provided as parameter to the clipboard. The parameter can be a <a href="Ubuntu.Components.MimeData.md">MimeData</a> instance or object created using <a href="#newData-method">newData()</a> beside the ones listed at <a href="Ubuntu.Components.MimeData.md#data-prop">MimeData::data</a>.</p>
<p>When <a href="Ubuntu.Components.MimeData.md">MimeData</a> instance or object is given, the entire object content will be pushed to the clipboard.</p>
<!-- @@@push -->
<br/>
