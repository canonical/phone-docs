---
Title: ScopeJS.CategorisedResult
---

# ScopeJS.CategorisedResult

<p>A result, including the category it belongs to.</p>
<ul>
<li>Methods</li>
</ul>
String <strong class="name"><code>art</code></strong>( <code>  </code> ) 
<br>
<p>Get the &quot;art&quot; property of this Result.
This method returns an empty string if this attribute is not of type String.</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>The value of &quot;art&quot; or the empty string.</p>
<a href="ScopeJS.Category.md">Category</a> <strong class="name"><code>category</code></strong>( <code>  </code> ) 
<br>
<p>Get the category instance this result belongs to.</p>
<br><strong>Returns:</strong> &lt;<a href="ScopeJS.Category.md">Category</a>&gt; <p>The category instance.</p>
Boolean <strong class="name"><code>contains</code></strong>( <code>key </code> ) 
<br>
<p>Check if this Result has an attribute.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>key</code> <strong>&lt;Object&gt;</strong>
<p>The attribute name.</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>True if the attribute is set.</p>
Boolean <strong class="name"><code>direct_activation</code></strong>( <code>  </code> ) 
<br>
<p>Check if this result should be activated directly by the shell
because the scope doesn't handle activation of this result.</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>True if this result needs to be activated directly.</p>
String <strong class="name"><code>dnd_uri</code></strong>( <code>  </code> ) 
<br>
<p>Get the &quot;dnd_uri&quot; property of this Result.
This method returns an empty string if this attribute is not of type String.</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>The value of &quot;dnd_uri&quot; or the empty string.</p>
<strong class="name"><code>get</code></strong>( <code>key </code> ) 
<br>
<p>Gets the value of a custom metadata attribute.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>key</code> <strong>&lt;String&gt;</strong>
<p>The name of the attribute.</p>
</li>
</ul>
<br><strong>Returns:</strong> <p>Attribute value or null</p>
Boolean <strong class="name"><code>has_stored_result</code></strong>( <code>  </code> ) 
<br>
<p>Check if this Result instance has a stored result.</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>True if there is a stored result</p>
Boolean <strong class="name"><code>is_account_login_result</code></strong>( <code>  </code> ) 
<br>
<p>Check if this result is an online account login result.</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>True if this result is an online account login result.</p>
<a href="ScopeJS.Result.md">Result</a> <strong class="name"><code>retrieve</code></strong>( <code>  </code> ) 
<br>
<p>Get a stored result.</p>
<br><strong>Returns:</strong> &lt;<a href="ScopeJS.Result.md">Result</a>&gt; <p>stored result</p>
<strong class="name"><code>set</code></strong>( <code>key, value </code> ) 
<br>
<p>Sets the value of a custom metadata attribute.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>key</code> <strong>&lt;String&gt;</strong>
<p>The name of the attribute.</p>
</li>
<li>
<code>value</code> <strong>&lt;Object&gt;</strong>
<p>The value of the attribute.</p>
</li>
</ul>
<strong class="name"><code>set_art</code></strong>( <code>art </code> ) 
<br>
<p>Set the &quot;art&quot; attribute of this result.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>art</code> <strong>&lt;String&gt;</strong>
</li>
</ul>
<strong class="name"><code>set_category</code></strong>( <code>category </code> ) 
<br>
<p>Updates the category of this result.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>category</code> <strong>&lt;Object&gt;</strong>
<p>The category for the result.</p>
</li>
</ul>
<strong class="name"><code>set_dnd_uri</code></strong>( <code>dnd_uri </code> ) 
<br>
<p>Set the &quot;dnd_uri&quot; attribute of this result.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>dnd_uri</code> <strong>&lt;String&gt;</strong>
</li>
</ul>
<strong class="name"><code>set_intercept_activation</code></strong>( <code>  </code> ) 
<br>
<p>Indicates to the receiver that this scope should intercept
activation requests for this result.
By default, a scope receives preview requests for the results it
creates, but does not receive activation requests (they are handled
directly by the shell). Intercepting activation implies intercepting
preview requests as well; this is important for scopes that forward
results from other scopes and call set_intercept_activation() on these scopes.
A scope that sets intercept activation flag for a result should re-implement
Scope.activate() and provide an implementation of ActivationQuery that
handles the actual activation. If not called, the result will be activated
directly by the Unity shell whithout involving the scope, assuming an appropriate
URI schema handler is present on the system.</p>
<strong class="name"><code>set_title</code></strong>( <code>title </code> ) 
<br>
<p>Set the &quot;title&quot; attribute of this result.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>title</code> <strong>&lt;String&gt;</strong>
</li>
</ul>
<strong class="name"><code>set_uri</code></strong>( <code>uri </code> ) 
<br>
<p>Set the &quot;uri&quot; attribute of this result.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>uri</code> <strong>&lt;String&gt;</strong>
</li>
</ul>
<strong class="name"><code>store</code></strong>( <code>The, intercept_activation </code> ) 
<br>
<p>This method is meant to be used by aggregator scopes which want to modify
results they receive, but want to keep a copy of the original result so
that they can be correctly handled by the original scopes
who created them when it comes to activation or previews.
Scopes middleware will automatically pass the correct inner stored result
to the activation or preview request handler</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>The</code> <strong>&lt;<a href="ScopeJS.Result.md">Result</a>&gt;</strong>
<p>original result to store within this result.</p>
</li>
<li>
<code>intercept_activation</code> <strong>&lt;Boolean&gt;</strong>
<p>True if this scope should receive activation and preview requests.</p>
</li>
</ul>
String <strong class="name"><code>title</code></strong>( <code>  </code> ) 
<br>
<p>Get the &quot;title&quot; property of this Result.
This method returns an empty string if this attribute is not of type String.</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>The value of &quot;title&quot; or the empty string.</p>
String <strong class="name"><code>uri</code></strong>( <code>  </code> ) 
<br>
<p>Get the &quot;uri&quot; property of this Result.
This method returns an empty string if this attribute is not of type String.</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>The value of &quot;uri&quot; or the empty string.</p>
