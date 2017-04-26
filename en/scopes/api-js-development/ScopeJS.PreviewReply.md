---
Title: ScopeJS.PreviewReply
---

# ScopeJS.PreviewReply

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
<br><strong>Returns:</strong> <p>Boolean</p>
<strong class="name"><code>push</code></strong>( <code>widget_list </code> ) 
<br>
<p>Sends widget definitions to the sender of the preview query</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>widget_list</code> <strong>&lt;Array of PreviewWidget&gt;</strong>
</li>
</ul>
<strong class="name"><code>register_layout</code></strong>( <code>layout </code> ) 
<br>
<p>Registers a list of column layouts for the current preview</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>layout</code> <strong>&lt;Array of Column layout&gt;</strong>
</li>
</ul>
