---
Title: Ubuntu.OnlineAccounts.ProviderModel
---

# Ubuntu.OnlineAccounts.ProviderModel

<span class="subtitle"></span>
<!-- $$$ProviderModel-brief -->
<p>A model of the account providers More...</p>
<!-- @@@ProviderModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.OnlineAccounts 0.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#applicationId-prop">applicationId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">variant <b><b><a href="#get-method">get</a></b></b>(int <i>row</i>, string <i>roleName</i>)</li>
</ul>
<!-- $$$ProviderModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">ProviderModel</a> is a model representing the account providers installed on the system.</p>
<p>The model defines the following roles:</p>
<ul>
<li><code>displayName</code>, the user-visible name of this provider</li>
<li><code>providerId</code>, the unique identifier of the account provider</li>
<li><code>iconName</code>, the name of the icon representing this provider</li>
<li><code>isSingleAccount</code>, <i>true</i> if this provider supports creating one account at most</li>
<li><code>translations</code>, the localization domain for translating the provider's display name</li>
</ul>
<!-- @@@ProviderModel -->
<h2>Property Documentation</h2>
<!-- $$$applicationId -->
<table class="qmlname"><tr valign="top" id="applicationId-prop"><td class="tblQmlPropNode"><p><span class="name">applicationId</span> : <span class="type">string</span></p></td></tr></table><p>If set, the model will only show those providers which are relevant for the given <i>applicationId</i>. This means that a provider will only be shown if at least one of its services can be used by the application, as described in the application's manifest file.</p>
<!-- @@@applicationId -->
<br/>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>The number of items in the model.</p>
<!-- @@@count -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$get -->
<table class="qmlname"><tr valign="top" id="get-method"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">get</span>(<span class="type">int</span><i> row</i>, <span class="type">string</span><i> roleName</i>)</p></td></tr></table><p>Returns the data at <i>row</i> for the role <i>roleName</i>.</p>
<!-- @@@get -->
<br/>
