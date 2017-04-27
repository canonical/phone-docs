---
Title: ScopeJS.OnlineAccountClient
---

# ScopeJS.OnlineAccountClient

<p>A simple interface for integrating online accounts access and monitoring into scopes.</p>
<ul>
<li>Methods</li>
</ul>
Array of OnlineAccountClientServiceStatus <strong class="name"><code>get_service_statuses</code></strong>( <code>  </code> ) 
<br>
<p>Get statuses for all services matching the name, type and provider specified on construction</p>
<br><strong>Returns:</strong> &lt;Array of OnlineAccountClientServiceStatus&gt; <p>list of service statuses</p>
<strong class="name"><code>refresh_service_statuses</code></strong>( <code>  </code> ) 
<br>
<p>Refresh all service statuses
WARNING: If a service update callback is set, this method will invoke that callback for each service monitored. Therefore, DO NOT call this method from within your callback function!</p>
<strong class="name"><code>register_account_login_item</code></strong>( <code>result, query, login_passed_action, login_failed_action </code> ) 
<br>
<p>Register a result item that requires the user to be logged in.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>result</code> <strong>&lt;<a href="ScopeJS.Result.md">Result</a>&gt;</strong>
<p>The result item that needs account access</p>
</li>
<li>
<code>query</code> <strong>&lt;CannedQuery&gt;</strong>
<p>The scope's current query</p>
</li>
<li>
<code>login_passed_action</code> <strong>&lt;PostLoginAction&gt;</strong>
<p>The action to take upon successful login</p>
</li>
<li>
<code>login_failed_action</code> <strong>&lt;PostLoginAction&gt;</strong>
<p>The action to take upon unsuccessful login</p>
</li>
</ul>
<strong class="name"><code>register_account_login_item</code></strong>( <code>widget, login_passed_action, login_failed_action </code> ) 
<br>
<p>Refresh all service statuses</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>widget</code> <strong>&lt;<a href="ScopeJS.PreviewWidget.md">PreviewWidget</a>&gt;</strong>
<p>The widget item that needs account access</p>
</li>
<li>
<code>login_passed_action</code> <strong>&lt;PostLoginAction&gt;</strong>
<p>The action to take upon successful login</p>
</li>
<li>
<code>login_failed_action</code> <strong>&lt;PostLoginAction&gt;</strong>
<p>The action to take upon unsuccessful login</p>
</li>
</ul>
<strong class="name"><code>set_service_update_callback</code></strong>( <code>callback </code> ) 
<br>
<p>Set the callback function to be invoked when a service status changes</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(OnlineAccountServiceStatus)&gt;</strong>
</li>
</ul>
