---
Title: Ubuntu.OnlineAccounts.Credentials
---

# Ubuntu.OnlineAccounts.Credentials

<span class="subtitle"></span>
<!-- $$$Credentials-brief -->
<p>Holds the account's credentials More...</p>
<!-- @@@Credentials -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.OnlineAccounts 0.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#acl-prop">acl</a></b></b> : list&lt;string&gt;</li>
<li class="fn"><b><b><a href="#caption-prop">caption</a></b></b> : string</li>
<li class="fn"><b><b><a href="#credentialsId-prop">credentialsId</a></b></b> : quint32</li>
<li class="fn"><b><b><a href="#methods-prop">methods</a></b></b> : jsobject</li>
<li class="fn"><b><b><a href="#secret-prop">secret</a></b></b> : string</li>
<li class="fn"><b><b><a href="#storeSecret-prop">storeSecret</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#userName-prop">userName</a></b></b> : string</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#removed-signal">removed</a></b></b>()</li>
<li class="fn"><b><b><a href="#synced-signal">synced</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#remove-method">remove</a></b></b>()</li>
<li class="fn">void <b><b><a href="#sync-method">sync</a></b></b>()</li>
</ul>
<!-- $$$Credentials-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Credentials element contains the information about an account's credentials. Informations like user name and password are stored into the account's secret storage via this object. If the <a href="#credentialsId-prop">credentialsId</a> property is set to a valid credentials ID (which can be obtained via the <a href="Ubuntu.OnlineAccounts.AccountService.md">AccountService</a>'s <a href="Ubuntu.OnlineAccounts.AccountService.md#authData-prop">authData.credentialsId</a> property) the Credentials element will load the informations stored in the secrets database, with the notable exception of the <a href="#secret-prop">secret</a> field, which cannot be read back via this interface (but only via the <a href="Ubuntu.OnlineAccounts.AccountService.md#authenticate-method">AccountService::authenticate</a> method); if the <a href="#credentialsId-prop">credentialsId</a> field is not set, then this interface can be used to create a new record in the secrets storage, by calling the <a href="#sync-method">sync()</a> method once all the desired fields have been set.</p>
<!-- @@@Credentials -->
<h2>Property Documentation</h2>
<!-- $$$acl -->
<table class="qmlname"><tr valign="top" id="acl-prop"><td class="tblQmlPropNode"><p><span class="name">acl</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>The ACL (Access Control List) for the credentials. The string <i>&quot;*&quot;</i> should be used when no access control needs to be performed.</p>
<!-- @@@acl -->
<br/>
<!-- $$$caption -->
<table class="qmlname"><tr valign="top" id="caption-prop"><td class="tblQmlPropNode"><p><span class="name">caption</span> : <span class="type">string</span></p></td></tr></table><p>A description of the credentials. This could be set to the name of the account provider, for instance.</p>
<!-- @@@caption -->
<br/>
<!-- $$$credentialsId -->
<table class="qmlname"><tr valign="top" id="credentialsId-prop"><td class="tblQmlPropNode"><p><span class="name">credentialsId</span> : <span class="type">quint32</span></p></td></tr></table><p>Numeric identifier of the credentials record in the secret storage database. A value of <i>0</i> means that this object has not been stored into the database yet.</p>
<p><b>See also </b><a href="#sync-method">sync</a>.</p>
<!-- @@@credentialsId -->
<br/>
<!-- $$$methods -->
<table class="qmlname"><tr valign="top" id="methods-prop"><td class="tblQmlPropNode"><p><span class="name">methods</span> : <span class="type">jsobject</span></p></td></tr></table><p>A dictionary describing the authentication methods and mechanisms which are allowed on the credentials. The keys of the dictionary should be the authentication methods, and the values should be lists of mechanisms.</p>
<pre class="qml"><span class="type"><a href="index.html">Credentials</a></span> {
<span class="name">methods</span>: { &quot;oauth2&quot;: [ <span class="string">&quot;web_server&quot;</span>, <span class="string">&quot;user_agent&quot;</span>], &quot;password&quot;: [ <span class="string">&quot;password&quot;</span> ] }
}</pre>
<!-- @@@methods -->
<br/>
<!-- $$$secret -->
<table class="qmlname"><tr valign="top" id="secret-prop"><td class="tblQmlPropNode"><p><span class="name">secret</span> : <span class="type">string</span></p></td></tr></table><p>The secret information for this credentials; usually this is the user's password. Note that when retrieving a Credentials object from the secrets database, this field will not be retrieved. See the detailed description of the Credentials element for a full explanation of this.</p>
<p><b>See also </b><a href="#credentialsId-prop">credentialsId</a>.</p>
<!-- @@@secret -->
<br/>
<!-- $$$storeSecret -->
<table class="qmlname"><tr valign="top" id="storeSecret-prop"><td class="tblQmlPropNode"><p><span class="name">storeSecret</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the secret should be stored in the secrets storage.</p>
<!-- @@@storeSecret -->
<br/>
<!-- $$$userName -->
<table class="qmlname"><tr valign="top" id="userName-prop"><td class="tblQmlPropNode"><p><span class="name">userName</span> : <span class="type">string</span></p></td></tr></table><p>The user name.</p>
<!-- @@@userName -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$removed -->
<table class="qmlname"><tr valign="top" id="removed-signal"><td class="tblQmlFuncNode"><p><span class="name">removed</span>()</p></td></tr></table><p>Emitted when the credentials have been deleted from the secrets storage.</p>
<!-- @@@removed -->
<br/>
<!-- $$$synced -->
<table class="qmlname"><tr valign="top" id="synced-signal"><td class="tblQmlFuncNode"><p><span class="name">synced</span>()</p></td></tr></table><p>Emitted when the changes have been stored into the permanent secrets storage.</p>
<!-- @@@synced -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">remove</span>()</p></td></tr></table><p>Deletes the credentials from the secrets storage.</p>
<p><b>See also </b><a href="#removed-signal">removed</a>.</p>
<!-- @@@remove -->
<br/>
<!-- $$$sync -->
<table class="qmlname"><tr valign="top" id="sync-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">sync</span>()</p></td></tr></table><p>Writes the changes to the secrets storage.</p>
<p><b>See also </b><a href="#synced-signal">synced</a>.</p>
<!-- @@@sync -->
<br/>
