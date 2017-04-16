---
Title: Ubuntu.OnlineAccounts.AccountModel
---

# Ubuntu.OnlineAccounts.AccountModel

<span class="subtitle"></span>
<!-- $$$AccountModel-brief -->
<p>Model of available online accounts. More...</p>
<!-- @@@AccountModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.OnlineAccounts .</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accountList-prop">accountList</a></b></b> : list&lt;Account&gt;</li>
<li class="fn"><b><b><a href="#applicationId-prop">applicationId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#ready-prop">ready</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#serviceId-prop">serviceId</a></b></b> : string</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#accessReply-signal">accessReply</a></b></b>(jsobject <i>reply</i>, jsobject <i>authenticationData</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">variant <b><b><a href="#get-method">get</a></b></b>(int <i>row</i>, string <i>roleName</i>)</li>
<li class="fn">void <b><b><a href="#requestAccess-method">requestAccess</a></b></b>(string <i>serviceId</i>, jsobject <i>parameters</i>)</li>
</ul>
<!-- $$$AccountModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">AccountModel</a> lists all the accounts available to the application.</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.OnlineAccounts 2.0
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">AccountModel</span> {
<span class="name">applicationId</span>: <span class="string">&quot;myapp.developer_myapp&quot;</span>
}
<span class="name">delegate</span>: <span class="name">Text</span> {
<span class="name">text</span>: <span class="name">model</span>.<span class="name">displayName</span>
}
}</pre>
<p>The model defines the following roles:</p>
<ul>
<li><code>displayName</code> is the name of the account (usually the user's login)</li>
<li><code>accountId</code> is a numeric ID for the account</li>
<li><code>serviceId</code> is a service identifier (e.g&#x2e;, &quot;myapp.developer_myapp_google&quot;)</li>
<li><code>authenticationMethod</code> is the authentication method used on this account;</li>
<li><code>settings</code> is a dictionary of the settings stored into the account</li>
<li><code>account</code> is the <a href="Ubuntu.OnlineAccounts.Account.md">Account</a> object</li>
</ul>
<p><b>See also </b><a href="Ubuntu.OnlineAccounts.Account.md#authenticationMethod-prop">Account::authenticationMethod</a> and <a href="Ubuntu.OnlineAccounts.Account.md">Account</a>.</p>
<!-- @@@AccountModel -->
<h2>Property Documentation</h2>
<!-- $$$accountList -->
<table class="qmlname"><tr valign="top" id="accountList-prop"><td class="tblQmlPropNode"><p><span class="name">accountList</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.OnlineAccounts.Account.md">Account</a></span>&gt;</p></td></tr></table><p>List of accounts in the model. This list has exactly the same contents as the model data, and is provided as a property just as a convenience for those cases when a model is not required.</p>
<!-- @@@accountList -->
<br/>
<!-- $$$applicationId -->
<table class="qmlname"><tr valign="top" id="applicationId-prop"><td class="tblQmlPropNode"><p><span class="name">applicationId</span> : <span class="type">string</span></p></td></tr></table><p>The short application identifier (that is, the <code>APP_ID</code> minus the version component) of the client. If not given, the identifier will be deduced from the APP_ID environment variable.</p>
<!-- @@@applicationId -->
<br/>
<!-- $$$ready -->
<table class="qmlname"><tr valign="top" id="ready-prop"><td class="tblQmlPropNode"><p><span class="name">ready</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the model is up to date: retrieving the account list is an asynchronous operation, and therefore short delays are expected between changing one model parameter and receiving the updated account list. Applications should not rely on the model contents while this property is false.</p>
<!-- @@@ready -->
<br/>
<!-- $$$serviceId -->
<table class="qmlname"><tr valign="top" id="serviceId-prop"><td class="tblQmlPropNode"><p><span class="name">serviceId</span> : <span class="type">string</span></p></td></tr></table><p>If this property is set, only accounts providing the given service will be returned.</p>
<!-- @@@serviceId -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$accessReply -->
<table class="qmlname"><tr valign="top" id="accessReply-signal"><td class="tblQmlFuncNode"><p><span class="name">accessReply</span>(<span class="type">jsobject</span><i> reply</i>, <span class="type">jsobject</span><i> authenticationData</i>)</p></td></tr></table><p>Emitted when the request initiated with <a href="#requestAccess-method">AccountModel::requestAccess()</a> completes. The <i>reply</i> object contains the access reply:</p>
<ul>
<li><code>account</code> if access to an account was granted, this property will hold an <a href="Ubuntu.OnlineAccounts.Account.md">Account</a> object</li>
<li><code>errorCode</code> <a href="Ubuntu.OnlineAccounts.Account.md#errorcode">error code</a>, if an error occurred</li>
<li><code>errorText</code> is a textual description of the error, not meant for the end-user; it can be used for debugging purposes</li>
</ul>
<p>The second parameter, the <i>authenticationData</i> object, will contain the authentication reply.</p>
<!-- @@@accessReply -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$get -->
<table class="qmlname"><tr valign="top" id="get-method"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">get</span>(<span class="type">int</span><i> row</i>, <span class="type">string</span><i> roleName</i>)</p></td></tr></table><p>Returns the data at <i>row</i> for the role <i>roleName</i>.</p>
<!-- @@@get -->
<br/>
<!-- $$$requestAccess -->
<table class="qmlname"><tr valign="top" id="requestAccess-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">requestAccess</span>(<span class="type">string</span><i> serviceId</i>, <span class="type">jsobject</span><i> parameters</i>)</p></td></tr></table><p>Requests the user to grant this application access to an account providing the given service. The user will be asked whether this application should be given access to the desired account; if no such accounts are currently registered in the system, the user will be guided to create a new one.</p>
<p>It should be noted that account authorizations persist across application restart; therefore, this method should be called only when the application needs a new account to appear in the model.</p>
<p>Each call to this method will cause the <a href="#accessReply-signal">accessReply</a> signal to be emitted at some time later. Note that the operation will involve interactions with the end-user, so don't expect a reply to be emitted immediately.</p>
<p>The <i>parameters</i> parameter can be used to pass authentication data (similarly to how the <a href="Ubuntu.OnlineAccounts.Account.md#authenticate-method">Account::authenticate()</a> method works), if it's desired to perform the authentication at the same time.</p>
<p><b>See also </b><a href="#accessReply-signal">accessReply</a>.</p>
<!-- @@@requestAccess -->
<br/>
