---
Title: ScopeJS.SearchReply
---

# ScopeJS.SearchReply

<p>Allows the results of a preview to be sent to the preview requester.</p>
<ul>
<li>Methods</li>
</ul>
<div>
<strong class="name"><code>error</code></strong>( <code>  </code> ) 
<br>
<p>Informs the source of a query that the query was terminated due to an error</p>
<br><strong>Returns:</strong> <p>error String error</p>
<strong class="name"><code>finished</code></strong>( <code>  </code> ) 
<br>
<p>Informs the source of a query that the query results are complete</p>
<strong class="name"><code>id</code></strong>( <code>id </code> ) 
<br>
<p>Returns a previously registered category</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;Object&gt;</strong>
</li>
</ul>
<strong class="name"><code>push</code></strong>( <code>result </code> ) 
<br>
<p>Sends a single result to the source of a query</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>result</code> <strong>&lt;Object&gt;</strong>
<p>CategorisedResult</p>
</li>
</ul>
<strong class="name"><code>register_category</code></strong>( <code>id, title, icon, category_renderer </code> ) 
<br>
<p>Register new category and send it to the source of the query</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;Object&gt;</strong>
<p>String id</p>
</li>
<li>
<code>title</code> <strong>&lt;Object&gt;</strong>
<p>String title</p>
</li>
<li>
<code>icon</code> <strong>&lt;Object&gt;</strong>
<p>String icon</p>
</li>
<li>
<code>category_renderer</code> <strong>&lt;Object&gt;</strong>
<p>CategoryRenderer</p>
</li>
</ul>
