---
Title: Ubuntu.Components.UriHandler
---

# Ubuntu.Components.UriHandler

<span class="subtitle"></span>
<!-- $$$UriHandler-brief -->
<p>Singleton signalling for opened URIs. More...</p>
<!-- @@@UriHandler -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onOpened-signal">onOpened</a></b></b>(list&lt;string&gt; <i>uris</i>)</li>
</ul>
<!-- $$$UriHandler-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">UriHandler</a> is a singleton handling opened URIs. The application can be signalled of opened URIs through the opened signal. The content of the &quot;APP_ID&quot; environment variable is used to determine the object path. If the D-Bus session bus is not connected or the &quot;APP_ID&quot; variable is not set or empty, the handler stays uninitialized.</p>
<p>Example of use:</p>
<pre class="qml"><span class="type"><a href="QtQml.Connections.md">Connections</a></span> {
<span class="name">target</span>: <span class="name">UriHandler</span>
<span class="name">onOpened</span>: <span class="name">print</span>(<span class="name">uris</span>)
}</pre>
<!-- @@@UriHandler -->
<h2>Signal Documentation</h2>
<!-- $$$onOpened -->
<table class="qmlname"><tr valign="top" id="onOpened-signal"><td class="tblQmlFuncNode"><p><span class="name">onOpened</span>(<span class="type">list</span>&lt;<span class="type">string</span>&gt;<i> uris</i>)</p></td></tr></table><p>The signal is triggered when URIs are opened.</p>
<!-- @@@onOpened -->
<br/>
