---
Title: Ubuntu.Web.SharedWebContext
---

# Ubuntu.Web.SharedWebContext

<span class="subtitle"></span>
<!-- $$$SharedWebContext-brief -->
<p>A singleton that exposes a shared WebContext that can be used by several WebView instances in the same application. More...</p>
<!-- @@@SharedWebContext -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Web 0.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//Ubuntu.Web.SharedWebContext.md#customUA-prop">customUA</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//Ubuntu.Web.SharedWebContext.md#sharedContext-prop">sharedContext</a></b></b> : WebContext</li>
</ul>
<!-- $$$SharedWebContext-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Note that the <a href="..//Ubuntu.Web.WebView.md">WebView</a> component already uses the shared context.</p>
<!-- @@@SharedWebContext -->
<h2>Property Documentation</h2>
<!-- $$$customUA -->
<table class="qmlname"><tr valign="top" id="customUA-prop"><td class="tblQmlPropNode"><p><span class="name">customUA</span> : <span class="type">string</span></p></td></tr></table><p>An alias to the shared context’s default user agent string.</p>
<!-- @@@customUA -->
<br/>
<!-- $$$sharedContext -->
<table class="qmlname"><tr valign="top" id="sharedContext-prop"><td class="tblQmlPropNode"><p><span class="name">sharedContext</span> : <span class="type"><a href="..//Ubuntu.Web.WebContext.md">WebContext</a></span></p></td></tr></table><p>The <a href="..//Ubuntu.Web.WebContext.md">WebContext</a> instance that several <a href="..//Ubuntu.Web.WebView.md">WebView</a> instances can share.</p>
<!-- @@@sharedContext -->
<br/>
