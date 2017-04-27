---
Title: ScopeJS.Result
---

# ScopeJS.Result

<p>The attributes of a result returned by a Scope
The Result API provides convenience methods for some typical attributes (title, art), but scopes are free to add and use any custom attributes with set/get methods. The only required attribute is 'uri' and it must not be empty before calling Reply.push().</p>
<ul>
<li>Methods</li>
</ul>
String <strong class="name"><code>art</code></strong>( <code>  </code> ) 
<br>
<p>Get the &quot;art&quot; property of this Result</p>
<br><strong>Returns:</strong> &lt;String&gt; 
Boolean <strong class="name"><code>contains</code></strong>( <code>  </code> ) 
<br>
<p>Check if this Result has an attribute</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; 
Boolean <strong class="name"><code>direct_activation</code></strong>( <code>  </code> ) 
<br>
<p>Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; 
String <strong class="name"><code>dnd_uri</code></strong>( <code>  </code> ) 
<br>
<p>Get the &quot;dnd_uri&quot; property of this Result</p>
<br><strong>Returns:</strong> &lt;String&gt; 
String <strong class="name"><code>get</code></strong>( <code>key </code> ) 
<br>
<p>Get the value of an attribute</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>key</code> <strong>&lt;String&gt;</strong>
</li>
</ul>
<br><strong>Returns:</strong> &lt;String&gt; <p>, {Number} or {Object}</p>
Boolean <strong class="name"><code>has_stored_result</code></strong>( <code>  </code> ) 
<br>
<p>Check if this Result instance has a stored result</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; 
<a href="index.html">Result</a> <strong class="name"><code>retrieve</code></strong>( <code>  </code> ) 
<br>
<p>Get a stored result</p>
<br><strong>Returns:</strong> &lt;<a href="index.html">Result</a>&gt; 
<strong class="name"><code>set</code></strong>( <code>key, value </code> ) 
<br>
<p>Set the value of an attribute</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>key</code> <strong>&lt;String&gt;</strong>
</li>
<li>
<code>value</code> <strong>&lt;String&gt;</strong>
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
<p>Indicates to the receiver that this scope should intercept activation requests for this result</p>
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
String <strong class="name"><code>title</code></strong>( <code>  </code> ) 
<br>
<p>Get the &quot;title&quot; property of this Result</p>
<br><strong>Returns:</strong> &lt;String&gt; 
String <strong class="name"><code>uri</code></strong>( <code>  </code> ) 
<br>
<p>Get the &quot;uri&quot; property of this Result</p>
<br><strong>Returns:</strong> &lt;String&gt; 
Dictonary <strong class="name"><code>value</code></strong>( <code>value </code> ) 
<br>
<p>Get the value of an attribute</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>value</code> <strong>&lt;String&gt;</strong>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Dictonary&gt; 
