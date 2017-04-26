---
Title: Ubuntu.DownloadManager.SingleDownload
---

# Ubuntu.DownloadManager.SingleDownload

<span class="subtitle"></span>
<!-- $$$SingleDownload-brief -->
<p>Manage file downloads and tracking the progress. More...</p>
<!-- @@@SingleDownload -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.DownloadManager 1.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#allowMobileDownload-prop">allowMobileDownload</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#autoStart-prop">autoStart</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#downloadId-prop">downloadId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#downloadInProgress-prop">downloadInProgress</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#downloading-prop">downloading</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#errorMessage-prop">errorMessage</a></b></b> : string</li>
<li class="fn"><b><b><a href="#headers-prop">headers</a></b></b> : QVariantMap</li>
<li class="fn"><b><b><a href="#isCompleted-prop">isCompleted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#metadata-prop">metadata</a></b></b> : Metadata</li>
<li class="fn"><b><b><a href="#progress-prop">progress</a></b></b> : int</li>
<li class="fn"><b><b><a href="#throttle-prop">throttle</a></b></b> : long</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#finished-signal">finished</a></b></b>(QString <i>path</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#cancel-method">cancel</a></b></b>()</li>
<li class="fn">void <b><b><a href="#download-method">download</a></b></b>(string <i>url</i>)</li>
<li class="fn">void <b><b><a href="#pause-method">pause</a></b></b>()</li>
<li class="fn">void <b><b><a href="#resume-method">resume</a></b></b>()</li>
<li class="fn">void <b><b><a href="#start-method">start</a></b></b>()</li>
</ul>
<!-- $$$SingleDownload-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">SingleDownload</a> provides facilities for downloading a single file, track the process, react to error conditions, etc.</p>
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
<span class="type"><a href="index.html">SingleDownload</a></span> {
<span class="name">id</span>: <span class="name">single</span>
}
}
}</pre>
<p><b>See also </b><a href="Ubuntu.DownloadManager.DownloadManager.md">DownloadManager</a>.</p>
<!-- @@@SingleDownload -->
<h2>Property Documentation</h2>
<!-- $$$allowMobileDownload -->
<table class="qmlname"><tr valign="top" id="allowMobileDownload-prop"><td class="tblQmlPropNode"><p><span class="name">allowMobileDownload</span> : <span class="type">bool</span></p></td></tr></table><p>This property sets if the download handled by this object will work under mobile data connection.</p>
<!-- @@@allowMobileDownload -->
<br/>
<!-- $$$autoStart -->
<table class="qmlname"><tr valign="top" id="autoStart-prop"><td class="tblQmlPropNode"><p><span class="name">autoStart</span> : <span class="type">bool</span></p></td></tr></table><p>This property sets if the downloads should start automatically, or let the user decide when to start them calling the &quot;<a href="#start-method">start()</a>&quot; method.</p>
<!-- @@@autoStart -->
<br/>
<!-- $$$downloadId -->
<table class="qmlname"><tr valign="top" id="downloadId-prop"><td class="tblQmlPropNode"><p><span class="name">downloadId</span> : <span class="type">string</span></p></td></tr></table><p>This property provides the unique identifier that represents the download within the download manager.</p>
<!-- @@@downloadId -->
<br/>
<!-- $$$downloadInProgress -->
<table class="qmlname"><tr valign="top" id="downloadInProgress-prop"><td class="tblQmlPropNode"><p><span class="name">downloadInProgress</span> : <span class="type">bool</span></p></td></tr></table><p>This property represents if the download is active, no matter if it's paused or anything. If a download is active, the value will be True. It will become False when the download finished or get canceled.</p>
<!-- @@@downloadInProgress -->
<br/>
<!-- $$$downloading -->
<table class="qmlname"><tr valign="top" id="downloading-prop"><td class="tblQmlPropNode"><p><span class="name">downloading</span> : <span class="type">bool</span></p></td></tr></table><p>This property represents the current state of the download. False if paused or not downloading anything. True if the file is currently being downloaded.</p>
<!-- @@@downloading -->
<br/>
<!-- $$$errorMessage -->
<table class="qmlname"><tr valign="top" id="errorMessage-prop"><td class="tblQmlPropNode"><p><span class="name">errorMessage</span> : <span class="type">string</span></p></td></tr></table><p>The error message associated with the current download, if there is any.</p>
<!-- @@@errorMessage -->
<br/>
<!-- $$$headers -->
<table class="qmlname"><tr valign="top" id="headers-prop"><td class="tblQmlPropNode"><p><span class="name">headers</span> : <span class="type">QVariantMap</span></p></td></tr></table><p>This property allows to get and set the headers that will be used to perform the download request. All headers must be strings or at least QVariant should be able to convert them to strings.</p>
<!-- @@@headers -->
<br/>
<!-- $$$isCompleted -->
<table class="qmlname"><tr valign="top" id="isCompleted-prop"><td class="tblQmlPropNode"><p><span class="name">isCompleted</span> : <span class="type">bool</span></p></td></tr></table><p>The current state of the download. True if the download already finished, False otherwise.</p>
<!-- @@@isCompleted -->
<br/>
<!-- $$$metadata -->
<table class="qmlname"><tr valign="top" id="metadata-prop"><td class="tblQmlPropNode"><p><span class="name">metadata</span> : <span class="type"><a href="Ubuntu.DownloadManager.Metadata.md">Metadata</a></span></p></td></tr></table><p>This property allows to get and set the metadata that will be linked to the download request.</p>
<!-- @@@metadata -->
<br/>
<!-- $$$progress -->
<table class="qmlname"><tr valign="top" id="progress-prop"><td class="tblQmlPropNode"><p><span class="name">progress</span> : <span class="type">int</span></p></td></tr></table><p>This property reports the current progress in percentage of the download, from 0 to 100.</p>
<!-- @@@progress -->
<br/>
<!-- $$$throttle -->
<table class="qmlname"><tr valign="top" id="throttle-prop"><td class="tblQmlPropNode"><p><span class="name">throttle</span> : <span class="type">long</span></p></td></tr></table><p>This property can be used to limit the bandwidth used for the download.</p>
<!-- @@@throttle -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$finished -->
<table class="qmlname"><tr valign="top" id="finished-signal"><td class="tblQmlFuncNode"><p><span class="name">finished</span>(<span class="type">QString</span><i> path</i>)</p></td></tr></table><p>This signal is emitted when a download has finished. The downloaded file path is provided via the 'path' paremeter. The corresponding handler is <code>onFinished</code></p>
<!-- @@@finished -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cancel -->
<table class="qmlname"><tr valign="top" id="cancel-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">cancel</span>()</p></td></tr></table><p>Cancels a download.</p>
<!-- @@@cancel -->
<br/>
<!-- $$$download -->
<table class="qmlname"><tr valign="top" id="download-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">download</span>(<span class="type">string</span><i> url</i>)</p></td></tr></table><p>Creates the download for the given url and reports the different states through the properties.</p>
<!-- @@@download -->
<br/>
<!-- $$$pause -->
<table class="qmlname"><tr valign="top" id="pause-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">pause</span>()</p></td></tr></table><p>Pauses the download. An error is returned if the download was already paused.</p>
<!-- @@@pause -->
<br/>
<!-- $$$resume -->
<table class="qmlname"><tr valign="top" id="resume-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">resume</span>()</p></td></tr></table><p>Resumes and already paused download. An error is returned if the download was already resumed or not paused.</p>
<!-- @@@resume -->
<br/>
<!-- $$$start -->
<table class="qmlname"><tr valign="top" id="start-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">start</span>()</p></td></tr></table><p>Starts the download, used when <a href="#autoStart-prop">autoStart</a> is False.</p>
<!-- @@@start -->
<br/>
