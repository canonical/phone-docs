---
Title: Ubuntu.OnlineAccounts.Application
---

# Ubuntu.OnlineAccounts.Application

<span class="subtitle"></span>
<!-- $$$Application-brief -->
<p>Represents a client application of Online Accounts. More...</p>
<!-- @@@Application -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.OnlineAccounts 0.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#applicationId-prop">applicationId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#description-prop">description</a></b></b> : string</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">string <b><b><a href="#serviceUsage-method">serviceUsage</a></b></b>(Service <i>service</i>)</li>
</ul>
<!-- $$$Application-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Application element represents an application using online accounts. Currently, instances of this object cannot be created directly, but are instantiated by the <a href="Ubuntu.OnlineAccounts.ApplicationModel.md">ApplicationModel</a> element.</p>
<!-- @@@Application -->
<h2>Property Documentation</h2>
<!-- $$$applicationId -->
<table class="qmlname"><tr valign="top" id="applicationId-prop"><td class="tblQmlPropNode"><p><span class="name">applicationId</span> : <span class="type">string</span></p></td></tr></table><p>Unique identifier for this application.</p>
<!-- @@@applicationId -->
<br/>
<!-- $$$description -->
<table class="qmlname"><tr valign="top" id="description-prop"><td class="tblQmlPropNode"><p><span class="name">description</span> : <span class="type">string</span></p></td></tr></table><p>Description of the application.</p>
<!-- @@@description -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$serviceUsage -->
<table class="qmlname"><tr valign="top" id="serviceUsage-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">serviceUsage</span>(<span class="type">Service</span><i> service</i>)</p></td></tr></table><p>Returns a textual description of how the application can make use of <i>service</i>.</p>
<!-- @@@serviceUsage -->
<br/>
