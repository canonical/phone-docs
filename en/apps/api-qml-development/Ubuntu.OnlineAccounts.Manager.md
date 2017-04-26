---
Title: Ubuntu.OnlineAccounts.Manager
---

# Ubuntu.OnlineAccounts.Manager

<span class="subtitle"></span>
<!-- $$$Manager-brief -->
<p>The account manager More...</p>
<!-- @@@Manager -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.OnlineAccounts 0.1</td></tr></table><ul>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">object <b><b><a href="#createAccount-method">createAccount</a></b></b>(string <i>providerName</i>)</li>
<li class="fn">object <b><b><a href="#loadAccount-method">loadAccount</a></b></b>(uint <i>accountId</i>)</li>
</ul>
<!-- $$$Manager-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Manager element is a singleton class which can be used to create new online accounts or load existing ones.</p>
<!-- @@@Manager -->
<h2>Method Documentation</h2>
<!-- $$$createAccount -->
<table class="qmlname"><tr valign="top" id="createAccount-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">createAccount</span>(<span class="type">string</span><i> providerName</i>)</p></td></tr></table><p>Create a new account interfacing to the provider identified by <i>providerName</i>.</p>
<p><b>See also </b><a href="#loadAccount-method">loadAccount()</a>.</p>
<!-- @@@createAccount -->
<br/>
<!-- $$$loadAccount -->
<table class="qmlname"><tr valign="top" id="loadAccount-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">loadAccount</span>(<span class="type">uint</span><i> accountId</i>)</p></td></tr></table><p>Loads the account identified by <i>accountId</i>. The returned object can be used to instantiate an <a href="Ubuntu.OnlineAccounts.Account.md">Account</a>.</p>
<p><b>See also </b><a href="#createAccount-method">createAccount()</a>.</p>
<!-- @@@loadAccount -->
<br/>
