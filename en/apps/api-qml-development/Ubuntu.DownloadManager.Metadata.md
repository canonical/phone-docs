---
Title: Ubuntu.DownloadManager.Metadata
---

# Ubuntu.DownloadManager.Metadata

<span class="subtitle"></span>
<!-- $$$Metadata-brief -->
<p>Provides additional properties for downloads More...</p>
<!-- @@@Metadata -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.DownloadManager 1.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#custom-prop">custom</a></b></b> : array</li>
<li class="fn"><b><b><a href="#extract-prop">extract</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#showInIndicator-prop">showInIndicator</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : string</li>
</ul>
<!-- $$$Metadata-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Metadata provides the ability to set a number of special properties on a <a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a>, e.g&#x2e; to display a download in the transfer indicator, or automatically extract a download of a zip file upon completion.</p>
<p>Example usage:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.2
import Ubuntu.DownloadManager 1.2
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="type">TextField</span> {
<span class="name">id</span>: <span class="name">text</span>
<span class="name">placeholderText</span>: <span class="string">&quot;File URL to download...&quot;</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">button</span>.<span class="name">left</span>
<span class="name">rightMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
}
}
<span class="type">Button</span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="name">text</span>: <span class="string">&quot;Download&quot;</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">onClicked</span>: {
<span class="name">single</span>.<span class="name">download</span>(<span class="name">text</span>.<span class="name">text</span>);
}
}
<span class="type">ProgressBar</span> {
<span class="name">minimumValue</span>: <span class="number">0</span>
<span class="name">maximumValue</span>: <span class="number">100</span>
<span class="name">value</span>: <span class="name">single</span>.<span class="name">progress</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span> {
<span class="name">id</span>: <span class="name">single</span>
<span class="name">metadata</span>: <span class="name">Metadata</span> {
<span class="name">showInIndicator</span>: <span class="number">true</span>
<span class="name">title</span>: <span class="string">&quot;Example download&quot;</span>
}
}
}
}</pre>
<p><b>See also </b><a href="Ubuntu.DownloadManager.DownloadManager.md">DownloadManager</a>.</p>
<!-- @@@Metadata -->
<h2>Property Documentation</h2>
<!-- $$$custom -->
<table class="qmlname"><tr valign="top" id="custom-prop"><td class="tblQmlPropNode"><p><span class="name">custom</span> : <span class="type">array</span></p></td></tr></table><p>Metadata specific to your application that you wish to associate with this download. This metadata will persist across application restarts.</p>
<!-- @@@custom -->
<br/>
<!-- $$$extract -->
<table class="qmlname"><tr valign="top" id="extract-prop"><td class="tblQmlPropNode"><p><span class="name">extract</span> : <span class="type">bool</span></p></td></tr></table><p>When set to True the download manager will attempt to automatically extract zip files when the download finishes. This property defaults to False.</p>
<!-- @@@extract -->
<br/>
<!-- $$$showInIndicator -->
<table class="qmlname"><tr valign="top" id="showInIndicator-prop"><td class="tblQmlPropNode"><p><span class="name">showInIndicator</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether this download should be displayed in the transfers indicator, defaults to False.</p>
<!-- @@@showInIndicator -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top" id="title-prop"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type">string</span></p></td></tr></table><p>This sets the name to display in the transfer indicator for this download, this property is only used if <a href="#showInIndicator-prop">showInIndicator</a> is True.</p>
<!-- @@@title -->
<br/>
