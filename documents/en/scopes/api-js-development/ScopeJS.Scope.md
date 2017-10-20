---
Title: ScopeJS.Scope
---

# ScopeJS.Scope

<p>Scope corresponds to the bridge between the ubuntu scope runtime
and the actual scope.</p>
<p>A Scope object is not directly constructible but it is automatically created
when the scope module is imported and is accessible through the 'self' exported
member.</p>
<p>After the scopes runtime has obtained initialization runtime configurations from
the scope, it calls start(), which allows the scope to intialize itself. This is
followed by a call to run().</p>
<p>When the scope should complete its activities, the runtime calls stop().</p>
<ul>
<li>Methods</li>
<li>Properties</li>
</ul>
<strong class="name"><code>initialize</code></strong>( <code>options, runtime_config </code> ) 
<br>
<p>This member function is the entry point to setting up a scope's behavior
and configuring it to the runtime scope.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>options</code> <strong>&lt;Object&gt;</strong>
<p>A dictionary of options for the scope runtime.
The option keys are:
- scope_id: the scope id</p>
</li>
<li>
<code>runtime_config</code> <strong>&lt;Object&gt;</strong>
<p>A dictionary of runtime configuration settings for the scope runtime.
The configuration keys are:
- run {Function()}: Callback called by the scopes run time after it has called start() to hand a thread of control to the scope
- starting {Function(String: scope_id)}: Callback called by the scopes run time after the create function completes
- stop {Function()}: Callback called by the scopes run time when the scope should shut down
- search {Function(CannedQuery: canned_query, SearchMetaData: metadata)}: Callback called by the scopes run time when a scope needs to instantiate a query
- perform_action {Function(Result: result, ActionMetaData: metadata, String: widget_id, String: ation_id)}: Callback invoked when a scope is requested to handle a preview action
- preview {Function(Result: result, ActionMetaData: metadata)}: Callback invoked when a scope is requested to create a preview for a particular result</p>
</li>
</ul>
<h5>Example</h5>
<pre class="code prettyprint"><code>         var scopes = require('unity-js-scopes')
scopes.self.initialize(
{}, {
run: function() {}
start: function(scope_id) {
console.log('Starting scope id: '
+ scope_id
+ ', '
+ scopes.self.scope_config)
},
search: function(canned_query, metadata) {}
}
);</code></pre>
<code>cache_directory</code> &lt;<strong>Unknown</strong>&gt;<br>
<p>Returns a directory that is (exclusively) writable for the scope</p>
<code>registry</code> &lt;<strong>Unknown</strong>&gt;<br>
<p>Returns the scope registry</p>
<code>scope_directory</code> &lt;<strong>Unknown</strong>&gt;<br>
<p>Returns the directory that stores the scope's configuration files and shared library</p>
<code>settings</code> &lt;<strong>Unknown</strong>&gt;<br>
<p>Returns a dictionary with the scope's current settings</p>
<code>tmp_directory</code> &lt;<strong>Unknown</strong>&gt;<br>
<p>Returns a tmp directory that is (exclusively) writable for the scope</p>
