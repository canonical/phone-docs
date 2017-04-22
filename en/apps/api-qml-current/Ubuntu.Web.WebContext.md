---
Title: Ubuntu.Web.WebContext
---

# Ubuntu.Web.WebContext

<span class="subtitle"></span>
<!-- $$$WebContext-brief -->
<p>A default context implementation for use with WebView. More...</p>
<!-- @@@WebContext -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Web 0.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="Ubuntu.Web.WebContext.md#acceptLangs-prop">acceptLangs</a></b></b> : string</li>
<li class="fn"><b><b><a href="Ubuntu.Web.WebContext.md#cachePath-prop">cachePath</a></b></b> : url</li>
<li class="fn"><b><b><a href="Ubuntu.Web.WebContext.md#dataPath-prop">dataPath</a></b></b> : url</li>
<li class="fn"><b><b><a href="Ubuntu.Web.WebContext.md#userAgent-prop">userAgent</a></b></b> : string</li>
</ul>
<!-- $$$WebContext-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This default <a href="Ubuntu.Web.WebContext.md">WebContext</a> implementation has the default user agent string used by the Ubuntu browser as well as the UA override mechanism that allows sending an overridden user agent for given domains/websites, based on the form factor.</p>
<p>It has its data path (for cache and cookie database) set to the standard writable data location for the current application, which is based on the application name (see <code>Qt.application.name</code>), for example <i>~/.local/share/myApp/</i>.</p>
<p>Note that the <a href="Ubuntu.Web.WebView.md">WebView</a> component already uses this default context, so there is no need to explicitly instantiate a <code>WebContext</code> unless you want to override some of its default properties.</p>
<p><b>See also </b><a href="Ubuntu.Web.SharedWebContext.md">SharedWebContext</a>.</p>
<!-- @@@WebContext -->
<h2>Property Documentation</h2>
<!-- $$$acceptLangs -->
<table class="qmlname"><tr valign="top" id="acceptLangs-prop"><td class="tblQmlPropNode"><p><span class="name">acceptLangs</span> : <span class="type">string</span></p></td></tr></table><p>The list of accepted languages (the Accept-Language HTTP header), as a comma-separated list of language codes.</p>
<!-- @@@acceptLangs -->
<br/>
<!-- $$$cachePath -->
<table class="qmlname"><tr valign="top" id="cachePath-prop"><td class="tblQmlPropNode"><p><span class="name">cachePath</span> : <span class="type">url</span></p></td></tr></table><p>The local path where network data will be cached. If not set, it defaults to <a href="Ubuntu.Web.WebContext.md#dataPath-prop">dataPath</a>.</p>
<!-- @@@cachePath -->
<br/>
<!-- $$$dataPath -->
<table class="qmlname"><tr valign="top" id="dataPath-prop"><td class="tblQmlPropNode"><p><span class="name">dataPath</span> : <span class="type">url</span></p></td></tr></table><p>The local path where persistent data (such as cookies) will be stored.</p>
<!-- @@@dataPath -->
<br/>
<!-- $$$userAgent -->
<table class="qmlname"><tr valign="top" id="userAgent-prop"><td class="tblQmlPropNode"><p><span class="name">userAgent</span> : <span class="type">string</span></p></td></tr></table><p>The default user agent string that will be sent with each HTTP request.</p>
<!-- @@@userAgent -->
<br/>
