---
Title: Ubuntu.OnlineAccounts.AccountService
---

# Ubuntu.OnlineAccounts.AccountService

<span class="subtitle"></span>
<!-- $$$AccountService-brief -->
<p>Represents an instance of a service in an Online Accounts More...</p>
<!-- @@@AccountService -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.OnlineAccounts 0.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accountId-prop">accountId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#authData-prop">authData</a></b></b> : jsobject</li>
<li class="fn"><b><b><a href="#autoSync-prop">autoSync</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#credentials-prop">credentials</a></b></b> : Credentials</li>
<li class="fn"><b><b><a href="#displayName-prop">displayName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#objectHandle-prop">objectHandle</a></b></b> : object</li>
<li class="fn"><b><b><a href="#provider-prop">provider</a></b></b> : jsobject</li>
<li class="fn"><b><b><a href="#service-prop">service</a></b></b> : jsobject</li>
<li class="fn"><b><b><a href="#serviceEnabled-prop">serviceEnabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#settings-prop">settings</a></b></b> : jsobject</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#authenticated-signal">authenticated</a></b></b>(jsobject <i>reply</i>)</li>
<li class="fn"><b><b><a href="#authenticationError-signal">authenticationError</a></b></b>(jsobject <i>error</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#authenticate-method">authenticate</a></b></b>(jsobject <i>sessionData</i>)</li>
<li class="fn">void <b><b><a href="#cancelAuthentication-method">cancelAuthentication</a></b></b>()</li>
<li class="fn">void <b><b><a href="#updateServiceEnabled-method">updateServiceEnabled</a></b></b>(bool <i>enabled</i>)</li>
<li class="fn">void <b><b><a href="#updateSettings-method">updateSettings</a></b></b>(jsobject <i>settings</i>)</li>
</ul>
<!-- $$$AccountService-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">AccountService</a> element represents a service within an existing online account. It can be used to obtain an authentication token to use the service it refers to.</p>
<p>Currently, an <a href="index.html">AccountService</a> is valid only if its <i>objectHandle</i> property is set to a value obtained from an <a href="Ubuntu.OnlineAccounts.AccountServiceModel.md">AccountServiceModel</a> or an Account.</p>
<p>See <a href="Ubuntu.OnlineAccounts.AccountServiceModel.md">AccountServiceModel</a>'s documentation for usage examples.</p>
<!-- @@@AccountService -->
<h2>Property Documentation</h2>
<!-- $$$accountId -->
<table class="qmlname"><tr valign="top" id="accountId-prop"><td class="tblQmlPropNode"><p><span class="name">accountId</span> : <span class="type">string</span></p></td></tr></table><p>The account's numeric ID; note that all <a href="index.html">AccountService</a> objects which work on the same online account will have the same ID.</p>
<!-- @@@accountId -->
<br/>
<!-- $$$authData -->
<table class="qmlname"><tr valign="top" id="authData-prop"><td class="tblQmlPropNode"><p><span class="name">authData</span> : <span class="type">jsobject</span></p></td></tr></table><p>An object providing information about the authentication. The returned object will have at least these members:</p>
<ul>
<li><code>method</code> is the authentication method</li>
<li><code>mechanism</code> is the authentication mechanism (a sub-specification of the method)</li>
<li><code>parameters</code> is a dictionary of authentication parameters</li>
<li><code>credentialsId</code> is the numeric identified of the credentials in the secrets storage. See the <a href="Ubuntu.OnlineAccounts.Credentials.md">Credentials</a> element for more info.</li>
</ul>
<!-- @@@authData -->
<br/>
<!-- $$$autoSync -->
<table class="qmlname"><tr valign="top" id="autoSync-prop"><td class="tblQmlPropNode"><p><span class="name">autoSync</span> : <span class="type">bool</span></p></td></tr></table><p>This property tells whether the <a href="index.html">AccountService</a> should invoke the <a href="Ubuntu.OnlineAccounts.Account.md#sync-method">Account::sync()</a> method whenever <a href="#updateSettings-method">updateSettings()</a>, updateDisplayName() or <a href="#updateServiceEnabled-method">updateServiceEnabled()</a> are called. By default, this property is true.</p>
<!-- @@@autoSync -->
<br/>
<!-- $$$credentials -->
<table class="qmlname"><tr valign="top" id="credentials-prop"><td class="tblQmlPropNode"><p><span class="name">credentials</span> : <span class="type"><a href="Ubuntu.OnlineAccounts.Credentials.md">Credentials</a></span></p></td></tr></table><p>The credentials used by this account service. This property is meant to be used only when creating or editing the account, and serves to bind a credentials record to the account: when the value of the <a href="Ubuntu.OnlineAccounts.Credentials.md#credentialsId-prop">Credentials::credentialsId</a> changes, an update of <a href="#authData-prop">authData.credentialsId</a> will be queued (and immediately executed if <a href="#autoSync-prop">autoSync</a> is <code>true</code>). By default, reading this property returns a null object.</p>
<!-- @@@credentials -->
<br/>
<!-- $$$displayName -->
<table class="qmlname"><tr valign="top" id="displayName-prop"><td class="tblQmlPropNode"><p><span class="name">displayName</span> : <span class="type">string</span></p></td></tr></table><p>The account's display name (usually the user's login or ID); note that all <a href="index.html">AccountService</a> objects which work on the same online account will share the same display name.</p>
<!-- @@@displayName -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This read-only property tells whether the <a href="index.html">AccountService</a> is enabled. An application shouldn't use an <a href="index.html">AccountService</a> which is disabled.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$objectHandle -->
<table class="qmlname"><tr valign="top" id="objectHandle-prop"><td class="tblQmlPropNode"><p><span class="name">objectHandle</span> : <span class="type">object</span></p></td></tr></table><p>An opaque handle to the underlying C++ object. Until the property is set, the <a href="index.html">AccountService</a> element is uninitialized. Similarly, if the C++ object is destroyed (for instance, because the <a href="Ubuntu.OnlineAccounts.AccountServiceModel.md">AccountServiceModel</a> which owns it is destroyed or if the account is deleted), expect the <a href="index.html">AccountService</a> to become invalid.</p>
<!-- @@@objectHandle -->
<br/>
<!-- $$$provider -->
<table class="qmlname"><tr valign="top" id="provider-prop"><td class="tblQmlPropNode"><p><span class="name">provider</span> : <span class="type">jsobject</span></p></td></tr></table><p>An immutable object representing the provider which provides the account. The returned object will have at least these members:</p>
<ul>
<li><code>id</code> is the unique identifier for this provider</li>
<li><code>displayName</code></li>
<li><code>iconName</code></li>
<li><code>isSingleAccount</code>, <i>true</i> if this provider supports creating one account at most</li>
<li><code>translations</code>, the localization domain for translating the provider's display name</li>
</ul>
<!-- @@@provider -->
<br/>
<!-- $$$service -->
<table class="qmlname"><tr valign="top" id="service-prop"><td class="tblQmlPropNode"><p><span class="name">service</span> : <span class="type">jsobject</span></p></td></tr></table><p>An immutable object representing the service which this <a href="index.html">AccountService</a> instantiates. The returned object will have at least these members:</p>
<ul>
<li><code>id</code> is the unique identified for this service</li>
<li><code>displayName</code></li>
<li><code>iconName</code></li>
<li><code>serviceTypeId</code> identifies the provided service type</li>
<li><code>translations</code>, the localization domain for translating the provider's display name</li>
</ul>
<!-- @@@service -->
<br/>
<!-- $$$serviceEnabled -->
<table class="qmlname"><tr valign="top" id="serviceEnabled-prop"><td class="tblQmlPropNode"><p><span class="name">serviceEnabled</span> : <span class="type">bool</span></p></td></tr></table><p>This read-only property tells whether the service is enabled within the account. This property differs from the <a href="#enabled-prop">enabled</a> property in that the <a href="#enabled-prop">enabled</a> property also considers whether the account is enabled, while this one only reflects the status of the service. Applications shouldn't rely on the value on this property to decide whether to use the account or not.</p>
<p><b>See also </b><a href="#enabled-prop">enabled</a>.</p>
<!-- @@@serviceEnabled -->
<br/>
<!-- $$$settings -->
<table class="qmlname"><tr valign="top" id="settings-prop"><td class="tblQmlPropNode"><p><span class="name">settings</span> : <span class="type">jsobject</span></p></td></tr></table><p>A dictionary of all the account service's settings. This does not include the authentication settings, which are available from the <a href="#authData-prop">AccountService::authData</a> property.</p>
<!-- @@@settings -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$authenticated -->
<table class="qmlname"><tr valign="top" id="authenticated-signal"><td class="tblQmlFuncNode"><p><span class="name">authenticated</span>(<span class="type">jsobject</span><i> reply</i>)</p></td></tr></table><p>Emitted when the authentication has been successfully completed. The <i>reply</i> object will contain the authentication data, which depends on the authentication method used.</p>
<!-- @@@authenticated -->
<br/>
<!-- $$$authenticationError -->
<table class="qmlname"><tr valign="top" id="authenticationError-signal"><td class="tblQmlFuncNode"><p><span class="name">authenticationError</span>(<span class="type">jsobject</span><i> error</i>)</p></td></tr></table><p>Emitted when the authentication fails. The <i>error</i> object will contain the following fields:</p>
<ul>
<li><code>code</code> is a numeric error code (see Signon::Error for the meaning)</li>
<li><code>message</code> is a textual description of the error, not meant for the end-user</li>
</ul>
<!-- @@@authenticationError -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$authenticate -->
<table class="qmlname"><tr valign="top" id="authenticate-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">authenticate</span>(<span class="type">jsobject</span><i> sessionData</i>)</p></td></tr></table><p>Perform the authentication on this account. The <i>sessionData</i> dictionary is optional and if not given the value of <a href="#authData-prop">authData::parameters</a> will be used.</p>
<p>Each call to this method will cause either of <a href="#authenticated-signal">authenticated</a> or <a href="#authenticationError-signal">authenticationError</a> signals to be emitted at some time later. Note that the authentication might involve interactions with the network or with the end-user, so don't expect these signals to be emitted immediately.</p>
<p><b>See also </b><a href="#authenticated-signal">authenticated</a> and <a href="#authenticationError-signal">authenticationError</a>.</p>
<!-- @@@authenticate -->
<br/>
<!-- $$$cancelAuthentication -->
<table class="qmlname"><tr valign="top" id="cancelAuthentication-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">cancelAuthentication</span>()</p></td></tr></table><p>Cancel an ongoing authentication on this account. This method does nothing if there isn't any authentication process going on.</p>
<p><b>See also </b><a href="#authenticate-method">authenticate</a>.</p>
<!-- @@@cancelAuthentication -->
<br/>
<!-- $$$updateServiceEnabled -->
<table class="qmlname"><tr valign="top" id="updateServiceEnabled-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">updateServiceEnabled</span>(<span class="type">bool</span><i> enabled</i>)</p></td></tr></table><p>Enables or disables the service within the account configuration. Since the <a href="#enabled-prop">enabled</a> property is the combination of the global account's enabledness status and the specific service's status, its value might not change after this method is called.</p>
<p><b>See also </b><a href="#enabled-prop">enabled</a>, <a href="#serviceEnabled-prop">serviceEnabled</a>, and <a href="#autoSync-prop">autoSync</a>.</p>
<!-- @@@updateServiceEnabled -->
<br/>
<!-- $$$updateSettings -->
<table class="qmlname"><tr valign="top" id="updateSettings-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">updateSettings</span>(<span class="type">jsobject</span><i> settings</i>)</p></td></tr></table><p>Change some settings. Only the settings which are present in the <i>settings</i> dictionary will be changed; all others settings will not be affected. To remove a settings, set its value to null.</p>
<p><b>See also </b><a href="#autoSync-prop">autoSync</a>.</p>
<!-- @@@updateSettings -->
<br/>
