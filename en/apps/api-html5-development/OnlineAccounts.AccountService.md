---
Title: OnlineAccounts.AccountService
---

# OnlineAccounts.AccountService

<p>AccountService represents an instance of a service in an Online Accounts.</p>
<p>The AcountService object is not directly constructible but returned as a result of
OnlineAccounts api calls.</p>
<ul>
<li>Methods</li>
</ul>
<div>
String <strong class="name"><code>accountId</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns the account's numeric ID; note that all
AccountService objects which work on the same online account will have the same ID.</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>Value for the accountId</p>
<strong class="name"><code>authenticate</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Perform the authentication on this account.</p>
<p>The callback will be called with the authentication result object which will have
these properties:</p>
<ul>
<li>'error': error message if the authentication was a failure</li>
<li>'authenticated': boolean value that identifies if the operation was a success</li>
<li>'data': Object with the data returned by the authentication process. An 'AccessToken' property can be usually found (when it applies) with the OAuth access token.</li>
</ul>
<p>If the callback parameter is not set, the current &quot;local&quot; value is retrieved.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(Object)&gt;</strong>
</li>
</ul>
<strong class="name"><code>destroy</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Destroys the remote object. This proxy object is not valid anymore.</p>
String <strong class="name"><code>displayName</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns The account's display name (usually the user's login or ID).
Note that all AccountService objects which work on the same online account
will share the same display name.</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>Value of the displayName</p>
Boolean <strong class="name"><code>enabled</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>This read-only property returns whether the AccountService is enabled.
An application shouldn't use an AccountService which is disabled</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>Value for the enabled flag</p>
Object <strong class="name"><code>provider</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns an object representing the provider which provides the account.</p>
<p>The returned object will have at least these properties:</p>
<ul>
<li>'id' is the unique identifier for this provider</li>
<li>'displayName'</li>
<li>'iconName'</li>
</ul>
<br><strong>Returns:</strong> &lt;Object&gt; <p>Value object for the provider</p>
Object <strong class="name"><code>service</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns an object representing the service which this AccountService instantiates</p>
<p>The returned object will have at least these properties:</p>
<ul>
<li>'id' is the unique identifier for this service</li>
<li>'displayName'</li>
<li>'iconName'</li>
<li>'serviceTypeId' identifies the provided service type</li>
</ul>
<br><strong>Returns:</strong> &lt;Object&gt; <p>Value object for the service</p>
