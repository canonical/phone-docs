---
Title: ScopeJS.SearchQuery
---

# ScopeJS.SearchQuery

<p>Represents a particular query</p>
<p>A scope must return an instance of this class from its implementation of Scope.search().</p>
<ul>
<li>Methods</li>
</ul>
<div>
<strong class="name"><code>query</code></strong>( <code>  </code> ) 
<br>
<p>Get a canned query for this search request</p>
<br><strong>Returns:</strong> <p>CannedQuery</p>
<strong class="name"><code>search_metadata</code></strong>( <code>  </code> ) 
<br>
<p>Get metadata for this search request</p>
<br><strong>Returns:</strong> <p>SearchMetadata</p>
<strong class="name"><code>settings</code></strong>( <code>  </code> ) 
<br>
<p>Returns a dictionary with the scope's current settings</p>
<br><strong>Returns:</strong> <p>Dictionary</p>
<strong class="name"><code>valid</code></strong>( <code>  </code> ) 
<br>
<p>Check whether this query is still valid</p>
<br><strong>Returns:</strong> <p>Boolean False if the query is finished or was cancelled ealier.</p>
