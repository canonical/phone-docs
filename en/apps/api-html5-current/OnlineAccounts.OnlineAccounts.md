---
Title: OnlineAccounts.OnlineAccounts
---

# OnlineAccounts.OnlineAccounts

<p>The OnlineAccounts object is the entry point to online accounts service access.</p>
<ul>
<li>Methods</li>
</ul>
<div>
<strong class="name"><code>api.getAccounts</code></strong>( <code>filters, callback </code> ) 
<br>
</span><br>
<p>Gets the configured accounts satisfying the given filters.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>filters</code> <strong>&lt;Object&gt;</strong>
<p>A dictionary of parameters to filter the result. The filtering keys are:</p>
<ul>
<li>applicationId: the ID of a application (see /usr/share/accounts/applications/ or ~/.local/share/accounts/applications/ for a list of the available applications)</li>
<li>provider: the ID of a provider (see /usr/share/accounts/providers/ or ~/.local/share/accounts/providers/ for a list of the available providers)</li>
<li>service: the ID of a service (see /usr/share/accounts/services/ or ~/.local/share/accounts/services/ for a list of the available services)</li>
</ul>
</li>
<li>
<code>callback</code> <strong>&lt;Function(List of AccountService objects)&gt;</strong>
<p>Callback that receives the result or null</p>
</li>
</ul>
<h5>Example</h5>
<pre class="code prettyprint"><code>          var api = external.getUnityObject(1.0);
var oa = api.OnlineAccounts;
oa.api.getAccounts({'provider': 'facebook'}, function(result) {
for (var i = 0; i &lt; result.length; ++i) {
console.log(&quot;name: &quot; + result[i].displayName()
+ ', id: ' + result[i].accountId()
+ ', providerName: ' + result[i].provider().displayName
+ ', enabled: ' + (result[i].enabled() ? &quot;true&quot; : &quot;false&quot;)
);
}               
});
</code></pre>
<strong class="name"><code>api.getProviders</code></strong>( <code>filters, callback </code> ) 
<br>
</span><br>
<p>Gets list of available providers.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>filters</code> <strong>&lt;Object&gt;</strong>
<p>A dictionary of parameters to filter the result. The filtering keys are:</p>
<ul>
<li>applicationId: the ID of a application (see /usr/share/accounts/applications/ or ~/.local/share/accounts/applications/ for a list of the available applications)</li>
</ul>
</li>
<li>
<code>callback</code> <strong>&lt;Function(List of AccountService objects)&gt;</strong>
<p>Callback that receives the result or null.
The result is a dictionary with the following keys:
- displayName: the display name for the corresponding provider
- providerId: the provider id</p>
</li>
</ul>
<h5>Example</h5>
<pre class="code prettyprint"><code>          var api = external.getUnityObject(1.0);
var oa = api.OnlineAccounts;
oa.api.getProviders({}, function(result) {
for (var i = 0; i &lt; result.length; ++i) {
console.log(&quot;displayName: &quot; + result[i].displayName
+ ', providerId: ' + result[i].providerId);
}
});
</code></pre>
<strong class="name"><code>api.requestAccount</code></strong>( <code>applicationId, providerId, callback </code> ) 
<br>
</span><br>
<p>Requests access to an account.</p>
<p>Applications must invoke this method in order to obtain access
to an account.  The user will be prompted to grant access to
either an existing account, to create a new one or to decline
the request.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>applicationId</code> <strong>&lt;String&gt;</strong>
<p>The ID of the application
requesting the account (see /usr/share/accounts/applications/ or
~/.local/share/accounts/applications/ for a list of the
available applications)</p>
</li>
<li>
<code>providerId</code> <strong>&lt;String&gt;</strong>
<p>The ID of the provider of the desired
account (see /usr/share/accounts/providers/ or
~/.local/share/accounts/providers/ for a list of the available
providers)</p>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>Callback which will be invoked
after the access request has been decided (either with the
access to an account being granted, or with a refusal).</p>
</li>
</ul>
<h5>Example</h5>
<pre class="code prettyprint"><code>          var api = external.getUnityObject(1.0);
var oa = api.OnlineAccounts;
var appId = 'com.ubuntu.developer.me.MyPackage_MyApp';
oa.api.requestAccount(appId,
'facebook',
function() {
oa.api.getAccounts({ 'application': appId }, function(result) {
for (var i = 0; i &lt; result.length; ++i) {
console.log(&quot;name: &quot; + result[i].displayName()
+ ', id: ' + result[i].accountId()
+ ', providerName: ' + result[i].provider().displayName
+ ', enabled: ' + (result[i].enabled() ? &quot;true&quot; : &quot;false&quot;)
);
}
});
});</code></pre>
