---
Title: Ubuntu.OnlineAccounts.Account
---

# Ubuntu.OnlineAccounts.Account

<span class="subtitle"></span>
<!-- $$$Account-brief -->
<p>Represents an instance of an online account. More...</p>
<!-- @@@Account -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.OnlineAccounts 0.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accountId-prop">accountId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#accountServiceHandle-prop">accountServiceHandle</a></b></b> : object</li>
<li class="fn"><b><b><a href="#displayName-prop">displayName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#objectHandle-prop">objectHandle</a></b></b> : object</li>
<li class="fn"><b><b><a href="#provider-prop">provider</a></b></b> : jsobject</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#synced-signal">synced</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#remove-method">remove</a></b></b>()</li>
<li class="fn">void <b><b><a href="#sync-method">sync</a></b></b>()</li>
<li class="fn">void <b><b><a href="#updateDisplayName-method">updateDisplayName</a></b></b>(string <i>displayName</i>)</li>
<li class="fn">void <b><b><a href="#updateEnabled-method">updateEnabled</a></b></b>(bool <i>enabled</i>)</li>
</ul>
<!-- $$$Account-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Account element represents an online account. It is functional only if its <i>objectHandle</i> property is set to a valid account, which can be obtained with Manager.loadAccount() or Manager.createAccount().</p>
<!-- @@@Account -->
<h2>Property Documentation</h2>
<!-- $$$accountId -->
<table class="qmlname"><tr valign="top" id="accountId-prop"><td class="tblQmlPropNode"><p><span class="name">accountId</span> : <span class="type">string</span></p></td></tr></table><p>The account's numeric ID. This is 0 until the account has been stored into the DB.</p>
<!-- @@@accountId -->
<br/>
<!-- $$$accountServiceHandle -->
<table class="qmlname"><tr valign="top" id="accountServiceHandle-prop"><td class="tblQmlPropNode"><p><span class="name">accountServiceHandle</span> : <span class="type">object</span></p></td></tr></table><p>A C++ object which can be used to instantiate an <a href="Ubuntu.OnlineAccounts.AccountService.md">AccountService</a> by setting it as the value for the <a href="Ubuntu.OnlineAccounts.AccountService.md#objectHandle-prop">AccountService::objectHandle</a> property.</p>
<!-- @@@accountServiceHandle -->
<br/>
<!-- $$$displayName -->
<table class="qmlname"><tr valign="top" id="displayName-prop"><td class="tblQmlPropNode"><p><span class="name">displayName</span> : <span class="type">string</span></p></td></tr></table><p>The account's display name (usually the user's login or ID).</p>
<!-- @@@displayName -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This read-only property tells whether the Account is enabled. An application shouldn't use an Account which is disabled.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$objectHandle -->
<table class="qmlname"><tr valign="top" id="objectHandle-prop"><td class="tblQmlPropNode"><p><span class="name">objectHandle</span> : <span class="type">object</span></p></td></tr></table><p>An opaque handle to the underlying C++ object. Until the property is set, the Account element is uninitialized. Similarly, if the C++ object is destroyed, expect the Account to become invalid.</p>
<!-- @@@objectHandle -->
<br/>
<!-- $$$provider -->
<table class="qmlname"><tr valign="top" id="provider-prop"><td class="tblQmlPropNode"><p><span class="name">provider</span> : <span class="type">jsobject</span></p></td></tr></table><p>An immutable object representing the provider which provides the account. The returned object will have at least these members:</p>
<ul>
<li><code>id</code> is the unique identified for this provider</li>
<li><code>displayName</code></li>
<li><code>iconName</code></li>
</ul>
<!-- @@@provider -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$synced -->
<table class="qmlname"><tr valign="top" id="synced-signal"><td class="tblQmlFuncNode"><p><span class="name">synced</span>()</p></td></tr></table><p>Emitted when the account changes have been stored into the permanent storage.</p>
<!-- @@@synced -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">remove</span>()</p></td></tr></table><p>Deletes the account from the permanent storage. This method accepts an optional parameter, which tells whether the credentials associated with the account should also be removed:</p>
<ul>
<li><code>Account.RemoveAccountOnly</code></li>
<li><code>Account.RemoveCredentials</code> - the default</li>
</ul>
<!-- @@@remove -->
<br/>
<!-- $$$sync -->
<table class="qmlname"><tr valign="top" id="sync-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">sync</span>()</p></td></tr></table><p>Writes the changes to the permanent account storage.</p>
<!-- @@@sync -->
<br/>
<!-- $$$updateDisplayName -->
<table class="qmlname"><tr valign="top" id="updateDisplayName-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">updateDisplayName</span>(<span class="type">string</span><i> displayName</i>)</p></td></tr></table><p>Changes the display name of the account.</p>
<p><b>See also </b><a href="#sync-method">sync()</a>.</p>
<!-- @@@updateDisplayName -->
<br/>
<!-- $$$updateEnabled -->
<table class="qmlname"><tr valign="top" id="updateEnabled-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">updateEnabled</span>(<span class="type">bool</span><i> enabled</i>)</p></td></tr></table><p>Enables or disables the account.</p>
<p><b>See also </b><a href="#sync-method">sync()</a>.</p>
<!-- @@@updateEnabled -->
<br/>
