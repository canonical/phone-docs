---
Title: Ubuntu.OnlineAccounts.Account
---

# Ubuntu.OnlineAccounts.Account

<span class="subtitle"></span>
<!-- $$$Account-brief -->
<p>Representation of an online account More...</p>
<!-- @@@Account -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.OnlineAccounts .</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accountId-prop">accountId</a></b></b> : int</li>
<li class="fn"><b><b><a href="#authenticationMethod-prop">authenticationMethod</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#displayName-prop">displayName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#service-prop">service</a></b></b> : int</li>
<li class="fn"><b><b><a href="#serviceId-prop">serviceId</a></b></b> : int</li>
<li class="fn"><b><b><a href="#settings-prop">settings</a></b></b> : jsobject</li>
<li class="fn"><b><b><a href="#valid-prop">valid</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#authenticationReply-signal">authenticationReply</a></b></b>(jsobject <i>authenticationData</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#authenticate-method">authenticate</a></b></b>(jsobject <i>params</i>)</li>
</ul>
<!-- $$$Account-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Account object holds the information related to an account and provides methods to interact with it. It's not possible to create such objects from QML; instead, they are returned by the <a href="Ubuntu.OnlineAccounts.AccountModel.md">AccountModel</a> in the <code>account</code> role or in the <a href="Ubuntu.OnlineAccounts.AccountModel.md#accountList-prop"> <code>accountList</code></a> property.</p>
<p>Here's an example on how to use the account object in a delegate:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.OnlineAccounts 2.0
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">AccountModel</span> {}
<span class="name">delegate</span>: <span class="name">Button</span> {
<span class="name">text</span>: <span class="string">&quot;Authenticate &quot;</span> <span class="operator">+</span> <span class="name">model</span>.<span class="name">displayName</span>
<span class="name">onClicked</span>: <span class="name">model</span>.<span class="name">account</span>.<span class="name">authenticate</span>({})
<span class="type">Connections</span> {
<span class="name">target</span>: <span class="name">model</span>.<span class="name">account</span>
<span class="name">onAuthenticationReply</span>: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Access token is &quot;</span> <span class="operator">+</span> <span class="name">reply</span>[<span class="string">'AccessToken'</span>])
}
}
}
}</pre>
<h4 >Error codes used in this module</h4>
<p>Some operations, such as the <a href="#authenticate-method">Account::authenticate()</a> and the <a href="Ubuntu.OnlineAccounts.AccountModel.md#requestAccess-method">AccountModel::requestAccess()</a> methods, can fail and return one of these error codes:</p>
<ul>
<li><code>Account.ErrorCodeNoAccount</code> - The accounts is invalid</li>
<li><code>Account.ErrorCodeUserCanceled</code> - The operation was canceled by the user</li>
<li><code>Account.ErrorCodePermissionDenied</code> - The application has no permission to complete the operation</li>
</ul>
<!-- @@@Account -->
<h2>Property Documentation</h2>
<!-- $$$accountId -->
<table class="qmlname"><tr valign="top" id="accountId-prop"><td class="tblQmlPropNode"><p><span class="name">accountId</span> : <span class="type">int</span></p></td></tr></table><p>Numeric identifier of the account. This property remains constant during the lifetime of the account. Note, however, that if the user deletes the account and re-creates it, its ID will be different.</p>
<!-- @@@accountId -->
<br/>
<!-- $$$authenticationMethod -->
<table class="qmlname"><tr valign="top" id="authenticationMethod-prop"><td class="tblQmlPropNode"><p><span class="name">authenticationMethod</span> : <span class="type">enumeration</span></p></td></tr></table><p>The authentication method used when authenticating with the account. Currently, these authentication methods are supported:</p>
<ul>
<li><code>Account.AuthenticationMethodOAuth1</code> - OAuth 1.0</li>
<li><code>Account.AuthenticationMethodOAuth2</code> - OAuth 2.0</li>
<li><code>Account.AuthenticationMethodSasl</code> - SASL</li>
<li><code>Account.AuthenticationMethodPassword</code> - username/password</li>
</ul>
<!-- @@@authenticationMethod -->
<br/>
<!-- $$$displayName -->
<table class="qmlname"><tr valign="top" id="displayName-prop"><td class="tblQmlPropNode"><p><span class="name">displayName</span> : <span class="type">string</span></p></td></tr></table><p>The display name of the account. This is usually the user's login name, but applications should not rely on the value of this property. Use it only for display purposes.</p>
<!-- @@@displayName -->
<br/>
<!-- $$$service -->
<table class="qmlname"><tr valign="top" id="service-prop"><td class="tblQmlPropNode"><p><span class="name">service</span> : <span class="type">int</span></p></td></tr></table><p>Service data associated with this account. This is an object containing the following properties:</p>
<ul>
<li><code>serviceId</code> - same service ID returned by <a href="#serviceId-prop">Account::serviceId</a></li>
<li><code>displayName</code> - the localized display name for the service</li>
<li><code>iconSource</code> - URL for the icon; can be a &quot;file://&quot; URL to a local file, or an icon from the theme if the URL starts with &quot;image://theme/&quot;<!-- @@@service -->
<br/>
<!-- $$$serviceId -->
<table class="qmlname"><tr valign="top" id="serviceId-prop"><td class="tblQmlPropNode"><p><span class="name">serviceId</span> : <span class="type">int</span></p></td></tr></table><p>Identifier for the service used with the account.</p>
<!-- @@@serviceId -->
<br/>
<!-- $$$settings -->
<table class="qmlname"><tr valign="top" id="settings-prop"><td class="tblQmlPropNode"><p><span class="name">settings</span> : <span class="type">jsobject</span></p></td></tr></table><p>A dictionary of the settings stored into the account.</p>
<!-- @@@settings -->
<br/>
<!-- $$$valid -->
<table class="qmlname"><tr valign="top" id="valid-prop"><td class="tblQmlPropNode"><p><span class="name">valid</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the account object is valid; this is usually <code>true</code>, because the <code>AccountModel</code> never gives out invalid accounts. However, it can happen that a valid account becomes invalid while the application is using it (if, for instance, the user deleted the account or revoked the application's access rights to use it). As soon as this property becomes <code>false</code>, the application should stop using this account.</p>
<!-- @@@valid -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$authenticationReply -->
<table class="qmlname"><tr valign="top" id="authenticationReply-signal"><td class="tblQmlFuncNode"><p><span class="name">authenticationReply</span>(<span class="type">jsobject</span><i> authenticationData</i>)</p></td></tr></table><p>Emitted when the authentication completes. The <i>authenticationData</i> object will contain the authentication reply. If the authentication failed, the following two keys will be present:</p>
<ul>
<li><code>errorCode</code> is an <a href="#errorcode">error code</a></li>
<li><code>errorText</code> is a textual description of the error, not meant for the end-user; it can be used for debugging purposes</li>
</ul>
<!-- @@@authenticationReply -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$authenticate -->
<table class="qmlname"><tr valign="top" id="authenticate-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">authenticate</span>(<span class="type">jsobject</span><i> params</i>)</p></td></tr></table><p>Perform the authentication on this account. The <i>params</i> parameter can be used to pass authentication data, such as the ClientId and ClientSecret used in the OAuth flow. The list of the supported authentication parameters depend on the authentication method being used, and are documented in the Online Accounts development Guide in the Ubuntu Developer Portal.</p>
<p>There are, however, two authentication parameters which are available regardless of the authentication method being used:</p>
<ul>
<li><code>invalidateCachedReply</code> can be set to <code>true</code> when the previous authentication reply returned an invalid access token. It will ensure the creation of a new access token.</li>
<li><code>interactive</code> is <code>true</code> by default; if set to <code>false</code>, it will ensure that no interaction with the user will occur.</li>
</ul>
<p>Each call to this method will cause the <a href="#authenticationReply-signal">authenticationReply</a> signal to be emitted at some time later. Note that the authentication might involve interactions with the network or with the end-user, so don't expect a reply to be emitted immediately.</p>
<p><b>See also </b><a href="#authenticationReply-signal">authenticationReply</a>.</p>
<!-- @@@authenticate -->
<br/>
