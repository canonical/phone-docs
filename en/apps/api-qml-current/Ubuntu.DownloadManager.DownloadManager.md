---
Title: Ubuntu.DownloadManager.DownloadManager
---

# Ubuntu.DownloadManager.DownloadManager

<span class="subtitle"></span>
<!-- $$$DownloadManager-brief -->
<p>Manage downloads for several files. More...</p>
<!-- @@@DownloadManager -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.DownloadManager 1.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#autoStart-prop">autoStart</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#cleanDownloads-prop">cleanDownloads</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#downloads-prop">downloads</a></b></b> : list</li>
<li class="fn"><b><b><a href="#errorMessage-prop">errorMessage</a></b></b> : string</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#downloadCanceled-signal">downloadCanceled</a></b></b>(SingleDownload <i>download</i>)</li>
<li class="fn"><b><b><a href="#downloadFinished-signal">downloadFinished</a></b></b>(SingleDownload <i>download</i>, QString <i>path</i>)</li>
<li class="fn"><b><b><a href="#downloadPaused-signal">downloadPaused</a></b></b>(SingleDownload <i>download</i>)</li>
<li class="fn"><b><b><a href="#downloadResumed-signal">downloadResumed</a></b></b>(SingleDownload <i>download</i>)</li>
<li class="fn"><b><b><a href="#errorFound-signal">errorFound</a></b></b>(SingleDownload <i>download</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#download-method">download</a></b></b>(string <i>url</i>)</li>
</ul>
<!-- $$$DownloadManager-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">DownloadManager</a> provides facilities for downloading a several files, connect the downloads property to any Item that works with models, and dynamically update the content of those lists/repeaters/etc to show the current downloads and connect any UI to the <a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a> properties in the delegates.</p>
<p>Example usage:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.2
import Ubuntu.DownloadManager 1.2
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="type"><a href="index.html">DownloadManager</a></span> {
<span class="name">id</span>: <span class="name">manager</span>
}
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
<span class="name">manager</span>.<span class="name">download</span>(<span class="name">text</span>.<span class="name">text</span>);
}
}
<span class="type">ListView</span> {
<span class="name">id</span>: <span class="name">list</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">top</span>: <span class="name">text</span>.<span class="name">bottom</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">model</span>: <span class="name">manager</span>.<span class="name">downloads</span>
<span class="name">delegate</span>: <span class="name">ProgressBar</span> {
<span class="name">minimumValue</span>: <span class="number">0</span>
<span class="name">maximumValue</span>: <span class="number">100</span>
<span class="name">value</span>: <span class="name">modelData</span>.<span class="name">progress</span>
}
}
}</pre>
<p><b>See also </b><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a>.</p>
<!-- @@@DownloadManager -->
<h2>Property Documentation</h2>
<!-- $$$autoStart -->
<table class="qmlname"><tr valign="top" id="autoStart-prop"><td class="tblQmlPropNode"><p><span class="name">autoStart</span> : <span class="type">bool</span></p></td></tr></table><p>This property sets if the downloads should start automatically, or let the user decide when to start them calling the &quot;start()&quot; method on each download.</p>
<!-- @@@autoStart -->
<br/>
<!-- $$$cleanDownloads -->
<table class="qmlname"><tr valign="top" id="cleanDownloads-prop"><td class="tblQmlPropNode"><p><span class="name">cleanDownloads</span> : <span class="type">bool</span></p></td></tr></table><p>This property sets if the model with the list of downloads should be cleaned when a download finish. Removing those completed transfers, and only showing current downloads.</p>
<!-- @@@cleanDownloads -->
<br/>
<!-- $$$downloads -->
<table class="qmlname"><tr valign="top" id="downloads-prop"><td class="tblQmlPropNode"><p><span class="name">downloads</span> : <span class="type">list</span></p></td></tr></table><p>This property provides a model that can be used for Lists, Repeaters, etc. To handle those downloads in a UI component that changes automatically when a new download is started, and let a custom delegate how to represent the UI for each download.</p>
<!-- @@@downloads -->
<br/>
<!-- $$$errorMessage -->
<table class="qmlname"><tr valign="top" id="errorMessage-prop"><td class="tblQmlPropNode"><p><span class="name">errorMessage</span> : <span class="type">string</span></p></td></tr></table><p>The error message associated with the current download, if there is any.</p>
<!-- @@@errorMessage -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$downloadCanceled -->
<table class="qmlname"><tr valign="top" id="downloadCanceled-signal"><td class="tblQmlFuncNode"><p><span class="name">downloadCanceled</span>(<span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span><i> download</i>)</p></td></tr></table><p>This signal is emitted when a download has been canceled. The canceled download is provided via the 'download' parameter. The corresponding handler is <code>onDownloadCanceled</code></p>
<p>This QML signal was introduced in  Ubuntu.DownloadManager 1.2.</p>
<!-- @@@downloadCanceled -->
<br/>
<!-- $$$downloadFinished -->
<table class="qmlname"><tr valign="top" id="downloadFinished-signal"><td class="tblQmlFuncNode"><p><span class="name">downloadFinished</span>(<span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span><i> download</i>, <span class="type">QString</span><i> path</i>)</p></td></tr></table><p>This signal is emitted when a download has finished. The finished download is provided via the 'download' parameter and the downloaded file path is provided via the 'path' paremeter. The corresponding handler is <code>onDownloadFinished</code></p>
<p>This QML signal was introduced in  Ubuntu.DownloadManager 1.2.</p>
<!-- @@@downloadFinished -->
<br/>
<!-- $$$downloadPaused -->
<table class="qmlname"><tr valign="top" id="downloadPaused-signal"><td class="tblQmlFuncNode"><p><span class="name">downloadPaused</span>(<span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span><i> download</i>)</p></td></tr></table><p>This signal is emitted when a download has been paused. The paused download is provided via the 'download' parameter. The corresponding handler is <code>onDownloadPaused</code></p>
<p>This QML signal was introduced in  Ubuntu.DownloadManager 1.2.</p>
<!-- @@@downloadPaused -->
<br/>
<!-- $$$downloadResumed -->
<table class="qmlname"><tr valign="top" id="downloadResumed-signal"><td class="tblQmlFuncNode"><p><span class="name">downloadResumed</span>(<span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span><i> download</i>)</p></td></tr></table><p>This signal is emitted when a download has been resumed. The resumed download is provided via the 'download' parameter. The corresponding handler is <code>onDownloadResumed</code></p>
<p>This QML signal was introduced in  Ubuntu.DownloadManager 1.2.</p>
<!-- @@@downloadResumed -->
<br/>
<!-- $$$errorFound -->
<table class="qmlname"><tr valign="top" id="errorFound-signal"><td class="tblQmlFuncNode"><p><span class="name">errorFound</span>(<span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span><i> download</i>)</p></td></tr></table><p>This signal is emitted when an error occurs in a download. The download in which the error occurred is provided via the 'download' parameter, from which the error message can be accessed via download.<a href="#errorMessage-prop">errorMessage</a>. The corresponding handler is <code>onErrorFound</code></p>
<p>This QML signal was introduced in  Ubuntu.DownloadManager 1.2.</p>
<!-- @@@errorFound -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$download -->
<table class="qmlname"><tr valign="top" id="download-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">download</span>(<span class="type">string</span><i> url</i>)</p></td></tr></table><p>Starts the download for the given url and update the model with the list of the different downloads.</p>
<!-- @@@download -->
<br/>
