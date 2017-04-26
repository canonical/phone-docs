---
Title: Ubuntu.OnlineAccounts.AccountServiceModel
---

# Ubuntu.OnlineAccounts.AccountServiceModel

<span class="subtitle"></span>
<!-- $$$AccountServiceModel-brief -->
<p>A model of the user's Online Accounts More...</p>
<!-- @@@AccountServiceModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.OnlineAccounts 0.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#account-prop">account</a></b></b> : Account</li>
<li class="fn"><b><b><a href="#accountId-prop">accountId</a></b></b> : quint32</li>
<li class="fn"><b><b><a href="#applicationId-prop">applicationId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#includeDisabled-prop">includeDisabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#provider-prop">provider</a></b></b> : string</li>
<li class="fn"><b><b><a href="#service-prop">service</a></b></b> : string</li>
<li class="fn"><b><b><a href="#serviceType-prop">serviceType</a></b></b> : string</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">variant <b><b><a href="#get-method">get</a></b></b>(int <i>row</i>, string <i>roleName</i>)</li>
</ul>
<!-- $$$AccountServiceModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">AccountServiceModel</a> is a model representing the user's Online Accounts services. Please note that an Online Account can offer several different services (chat, e-mail, micro-blogging, etc.); these are the items represented by this model, and not the user accounts as a whole. Since most applications are interested on a small subset of the user's accounts, <a href="index.html">AccountServiceModel</a> offers some filtering functionalities: it is possible to restrict it to only one account provider, to a specific service type (for instance, an e-mail application will probably be interested in only those accounts which offer an e-mail service), or to a specific service (e.g&#x2e;, picasa; this is often equivalent to filtering by provider and by service-type, because it's rare for a provider to offer two different services of the same type). By default, only enabled accounts are returned. Use the <a href="#includeDisabled-prop">includeDisabled</a> property to list also disabled accounts; keep in mind, though, that an application should never use an account which has been disabled by the user.</p>
<p>The model defines the following roles:</p>
<ul>
<li><code>displayName</code> is the name of the account (usually the user's login)</li>
<li><code>providerName</code> is the name of the account provider (e.g&#x2e;, &quot;Google&quot;)</li>
<li><code>serviceName</code> is the name of the service (e.g&#x2e;, &quot;Picasa&quot;)</li>
<li><code>enabled</code></li>
<li><code>accountServiceHandle</code> is a handle to the underlying Qt object which can be used to instantiate an <a href="Ubuntu.OnlineAccounts.AccountService.md">AccountService</a> from QML</li>
<li><code>accountId</code> is the numeric ID of the account</li>
<li><code>accountHandle</code> is a handle to the underlying Qt object which can be used to instantiate an <a href="Ubuntu.OnlineAccounts.Account.md">Account</a> from QML</li>
</ul>
<p>Examples of use:</p>
<p>1. Model of all enabled microblogging accounts:</p>
<pre class="qml"><span class="type">Item</span> {
<span class="type"><a href="index.html">AccountServiceModel</a></span> {
<span class="name">id</span>: <span class="name">accounts</span>
<span class="name">serviceType</span>: <span class="string">&quot;microblogging&quot;</span>
}
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">accounts</span>
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">model</span>.<span class="name">displayName</span> <span class="operator">+</span> <span class="string">&quot; by &quot;</span> <span class="operator">+</span> <span class="name">model</span>.<span class="name">providerName</span> }
}
}</pre>
<p>2. List all Facebook account services:</p>
<pre class="qml"><span class="type">Item</span> {
<span class="type"><a href="index.html">AccountServiceModel</a></span> {
<span class="name">id</span>: <span class="name">accounts</span>
<span class="name">provider</span>: <span class="string">&quot;facebook&quot;</span>
<span class="name">includeDisabled</span>: <span class="number">true</span>
}
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">accounts</span>
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">model</span>.<span class="name">serviceName</span> <span class="operator">+</span> <span class="string">&quot; on &quot;</span> <span class="operator">+</span> <span class="name">model</span>.<span class="name">displayName</span> }
}
}</pre>
<p>3. List all Flickr accounts enabled for uploading:</p>
<pre class="qml"><span class="type">Item</span> {
<span class="type"><a href="index.html">AccountServiceModel</a></span> {
<span class="name">id</span>: <span class="name">accounts</span>
<span class="name">service</span>: <span class="string">&quot;flickr-sharing&quot;</span>
}
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">accounts</span>
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">rect</span>.<span class="name">model</span>.<span class="name">displayName</span> }
<span class="type"><a href="Ubuntu.OnlineAccounts.AccountService.md">AccountService</a></span> {
<span class="name">id</span>: <span class="name">accountService</span>
<span class="name">objectHandle</span>: <span class="name">rect</span>.<span class="name">model</span>.<span class="name">accountServiceHandle</span>
<span class="name">onAuthenticated</span>: { <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Access token is &quot;</span> <span class="operator">+</span> <span class="name">reply</span>.<span class="name">AccessToken</span>) }
<span class="name">onAuthenticationError</span>: { <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Authentication failed, code &quot;</span> <span class="operator">+</span> <span class="name">error</span>.<span class="name">code</span>) }
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">accountService</span>.<span class="name">authenticate</span>()
}
}
}
}</pre>
<p>4. List all the online accounts, without their services:</p>
<pre class="qml"><span class="type">Item</span> {
<span class="type"><a href="index.html">AccountServiceModel</a></span> {
<span class="name">id</span>: <span class="name">accounts</span>
<span class="name">service</span>: <span class="string">&quot;global&quot;</span>
}
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">accounts</span>
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">account</span>.<span class="name">displayName</span> }
<span class="type"><a href="Ubuntu.OnlineAccounts.Account.md">Account</a></span> {
<span class="name">id</span>: <span class="name">account</span>
<span class="name">objectHandle</span>: <span class="name">rect</span>.<span class="name">model</span>.<span class="name">accountHandle</span>
}
}
}
}</pre>
<!-- @@@AccountServiceModel -->
<h2>Property Documentation</h2>
<!-- $$$account -->
<table class="qmlname"><tr valign="top" id="account-prop"><td class="tblQmlPropNode"><p><span class="name">account</span> : <span class="type"><a href="Ubuntu.OnlineAccounts.Account.md">Account</a></span></p></td></tr></table><p>If set, the model will list only those accounts services available in the given account.</p>
<!-- @@@account -->
<br/>
<!-- $$$accountId -->
<table class="qmlname"><tr valign="top" id="accountId-prop"><td class="tblQmlPropNode"><p><span class="name">accountId</span> : <span class="type">quint32</span></p></td></tr></table><p>If set, the model will list only those accounts services available in the given account.</p>
<!-- @@@accountId -->
<br/>
<!-- $$$applicationId -->
<table class="qmlname"><tr valign="top" id="applicationId-prop"><td class="tblQmlPropNode"><p><span class="name">applicationId</span> : <span class="type">string</span></p></td></tr></table><p>If set, the model will only show those account services which are relevant for the given <i>applicationId</i>. This means that an account service will only be shown if it can be used by the application, as described in the application's manifest file.</p>
<!-- @@@applicationId -->
<br/>
<!-- $$$includeDisabled -->
<table class="qmlname"><tr valign="top" id="includeDisabled-prop"><td class="tblQmlPropNode"><p><span class="name">includeDisabled</span> : <span class="type">bool</span></p></td></tr></table><p>If true, even disabled account services will be listed. Note that an application should never use a disabled account.</p>
<p>By default, this property is false.</p>
<!-- @@@includeDisabled -->
<br/>
<!-- $$$provider -->
<table class="qmlname"><tr valign="top" id="provider-prop"><td class="tblQmlPropNode"><p><span class="name">provider</span> : <span class="type">string</span></p></td></tr></table><p>If set, the model will list only those accounts services provided by this provider.</p>
<!-- @@@provider -->
<br/>
<!-- $$$service -->
<table class="qmlname"><tr valign="top" id="service-prop"><td class="tblQmlPropNode"><p><span class="name">service</span> : <span class="type">string</span></p></td></tr></table><p>If set, the model will list only those accounts services for this specific service.</p>
<!-- @@@service -->
<br/>
<!-- $$$serviceType -->
<table class="qmlname"><tr valign="top" id="serviceType-prop"><td class="tblQmlPropNode"><p><span class="name">serviceType</span> : <span class="type">string</span></p></td></tr></table><p>If set, the model will list only those accounts services supporting this service type. Each provider-specific service is an instance of a generic service type (such as &quot;e-mail&quot;, &quot;IM&quot;, etc.) which identifies the main functionality provided by the service.</p>
<!-- @@@serviceType -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$get -->
<table class="qmlname"><tr valign="top" id="get-method"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">get</span>(<span class="type">int</span><i> row</i>, <span class="type">string</span><i> roleName</i>)</p></td></tr></table><p>Returns the data at <i>row</i> for the role <i>roleName</i>.</p>
<!-- @@@get -->
<br/>
