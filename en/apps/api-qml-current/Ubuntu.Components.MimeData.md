---
Title: Ubuntu.Components.MimeData
---

# Ubuntu.Components.MimeData

<span class="subtitle"></span>
<!-- $$$MimeData-brief -->
<p>MimeData type provides interface to access and store data to the Clipboard. More...</p>
<!-- @@@MimeData -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#data-prop">data</a></b></b> : var</li>
<li class="fn"><b><b><a href="#format-prop">format</a></b></b> : list&lt;string&gt;</li>
<li class="fn"><b><b><a href="#html-prop">html</a></b></b> : string</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#urls-prop">urls</a></b></b> : list&lt;url&gt;</li>
</ul>
<!-- $$$MimeData-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@MimeData -->
<h2>Property Documentation</h2>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><!-- @@@color -->
<br/>
<!-- $$$data -->
<table class="qmlname"><tr valign="top" id="data-prop"><td class="tblQmlPropNode"><p><span class="name">data</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>Reading the property returns a list of MIME type and data pairs representing the data stored in the object. Users can set custom MIME types which are not covered by the other properties.</p>
<p>When setting the property value can take one of the following types:</p>
<ul>
<li>- string - the data will be set as <code>text/plain</code> MIME type, or as <code>text/html</code> in case HTML tags are detected</li>
<li>- color - the data will be set as <code>application/x-color</code> MIME type</li>
<li>- list&lt;url&gt; - the data will be set as <code>text/uri-list</code></li>
<li>- list&lt;string&gt; - the data will be set as <code>text/uri-list</code> in case the first element of the list is a valid URL with scheme; otherwise if the list size is even, the list will be set as pairs of (MIME type,data)</li>
<li>- list&lt;var&gt; - same as list&lt;url&gt; or list&lt;string&gt;</li>
</ul>
<!-- @@@data -->
<br/>
<!-- $$$format -->
<table class="qmlname"><tr valign="top" id="format-prop"><td class="tblQmlPropNode"><p><span class="name">format</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>Returns a list of formats supported by the object. This is a list of MIME types for which the object can return suitable data. The formats in the list are in a priority order.</p>
<p><b>See also </b><a href="#data-prop">data</a>.</p>
<!-- @@@format -->
<br/>
<!-- $$$html -->
<table class="qmlname"><tr valign="top" id="html-prop"><td class="tblQmlPropNode"><p><span class="name">html</span> : <span class="type">string</span></p></td></tr></table><p>Contains a string if the data stored in the object is HTML (MIME type text/html); otherwise contains an empty string.</p>
<!-- @@@html -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>Contains a plain text (MIME type text/plain) representation of the data.</p>
<!-- @@@text -->
<br/>
<!-- $$$urls -->
<table class="qmlname"><tr valign="top" id="urls-prop"><td class="tblQmlPropNode"><p><span class="name">urls</span> : <span class="type">list</span>&lt;<span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span>&gt;</p></td></tr></table><p>Contains a list of URLs contained within the MIME data object. URLs correspond to the MIME type text/uri-list.</p>
<!-- @@@urls -->
<br/>
