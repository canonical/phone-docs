---
Title: ScopeJS.SearchMetadata
---

# ScopeJS.SearchMetadata

<p>Metadata passed with search requests.
Two forms of construction are allowed depending on the number
and types of the parameters:</p>
<ul>
<li>with locale and form factor
or</li>
<li>with cardinality, locale, and form factor.</li>
</ul>
<ul>
<li>Methods</li>
</ul>
<div>
Array of String <strong class="name"><code>aggregated_keywords</code></strong>( <code>  </code> ) 
<br>
<p>Get the list of scope keywords used to initiate this search request.</p>
<br><strong>Returns:</strong> &lt;Array of String&gt; <p>The list of scope keywords used to initiate this search request.</p>
Int <strong class="name"><code>cardinality</code></strong>( <code>  </code> ) 
<br>
<p>Get cardinality.</p>
<br><strong>Returns:</strong> &lt;Int&gt; 
Boolean <strong class="name"><code>contains_hint</code></strong>( <code>key </code> ) 
<br>
<p>Check if this SearchMetadata has a hint.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>key</code> <strong>&lt;String&gt;</strong>
<p>The hint name.</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>True if the hint is set.</p>
<strong class="name"><code>form_factor</code></strong>( <code>  </code> ) 
<br>
<p>Get the form factor string.</p>
<br><strong>Returns:</strong> <p>The form factor string</p>
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
Boolean <strong class="name"><code>has_location</code></strong>( <code>  </code> ) 
<br>
<p>Does the SearchMetadata have a location.</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>True if there is a location property.</p>
Dictionary <strong class="name"><code>hints</code></strong>( <code>  </code> ) 
<br>
<p>Get all hints.</p>
<br><strong>Returns:</strong> &lt;Dictionary&gt; 
ConnectivityStatus <strong class="name"><code>internet_connectivity</code></strong>( <code>  </code> ) 
<br>
<p>Get internet connectivity status.</p>
<br><strong>Returns:</strong> &lt;ConnectivityStatus&gt; <p>The internet connectivity status.</p>
Boolean <strong class="name"><code>is_aggregated</code></strong>( <code>  </code> ) 
<br>
<p>Check if this search request originated from an aggregator scope.</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>True if this search request originated from an aggregator scope.</p>
<strong class="name"><code>locale</code></strong>( <code>  </code> ) 
<br>
<p>Get the locale string.</p>
<br><strong>Returns:</strong> <p>The locale string</p>
Location <strong class="name"><code>location</code></strong>( <code>  </code> ) 
<br>
<p>Get location.</p>
<br><strong>Returns:</strong> &lt;Location&gt; <p>data representing the current location, including attributes such as city and country.</p>
<strong class="name"><code>remove_location</code></strong>( <code>  </code> ) 
<br>
<p>Remove location data entirely.
This method does nothing if no location data is present.</p>
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
<p>, {Number} or {Object}</p>
</li>
</ul>
<strong class="name"><code>set_aggregated_keywords</code></strong>( <code>aggregated_keywords </code> ) 
<br>
<p>Set the list of scope keywords used to initiate this search request.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>aggregated_keywords</code> <strong>&lt;Array of String&gt;</strong>
<p>The list of scope keywords used to initiate this search request.</p>
</li>
</ul>
<strong class="name"><code>set_cardinality</code></strong>( <code>cardinality </code> ) 
<br>
<p>Set cardinality.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>cardinality</code> <strong>&lt;Int&gt;</strong>
</li>
</ul>
<strong class="name"><code>set_hint</code></strong>( <code>key, value </code> ) 
<br>
<p>Sets a hint.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>key</code> <strong>&lt;String&gt;</strong>
<p>The name of the hint.</p>
</li>
<li>
<code>value</code> <strong>&lt;Object&gt;</strong>
<p>Hint value</p>
</li>
</ul>
<strong class="name"><code>set_internet_connectivity</code></strong>( <code>The </code> ) 
<br>
<p>Set internet connectivity status.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>The</code> <strong>&lt;ConnectivityStatus&gt;</strong>
<p>internet connectivity status.</p>
</li>
</ul>
<strong class="name"><code>set_location</code></strong>( <code>location </code> ) 
<br>
<p>Set location.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>location</code> <strong>&lt;Location&gt;</strong>
<p>data</p>
</li>
</ul>
