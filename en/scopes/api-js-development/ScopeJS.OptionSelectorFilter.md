---
Title: ScopeJS.OptionSelectorFilter
---

# ScopeJS.OptionSelectorFilter

<p>A selection filter that displays a list of choices and allows one or more of them to be selected</p>
<ul>
<li>Methods</li>
</ul>
<div>
Array of FilterOption <strong class="name"><code>active_options</code></strong>( <code>filter_state </code> ) 
<br>
<p>Get active options from an instance of FilterState for this filter</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>filter_state</code> <strong>&lt;Object&gt;</strong>
<p>FilterState</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Array of FilterOption&gt; <p>LIst of active FilterOption</p>
<strong class="name"><code>add_option</code></strong>( <code>  </code> ) 
<br>
<p>Add a new option to this filter</p>
<br><strong>Returns:</strong> <p>FilterOption The added filter option</p>
String <strong class="name"><code>filter_type</code></strong>( <code>  </code> ) 
<br>
<p>Get the type name of this filter</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>type name of this filter</p>
Boolean <strong class="name"><code>has_active_option</code></strong>( <code>filter_state </code> ) 
<br>
<p>Check if an option is active for this filter</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>filter_state</code> <strong>&lt;Object&gt;</strong>
<p>FilterState</p>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>True if an option is active for this filter</p>
String <strong class="name"><code>id</code></strong>( <code>  </code> ) 
<br>
<p>Get the identifier of this filter</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>identifier of this filter</p>
String <strong class="name"><code>label</code></strong>( <code>  </code> ) 
<br>
<p>Get the label of this filter</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>label of this filter</p>
Boolean <strong class="name"><code>multi_select</code></strong>( <code>  </code> ) 
<br>
<p>Check if this filter supports multiple options to be selected</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>True if this filter multiple options to be selected</p>
Array of FilterOption <strong class="name"><code>options</code></strong>( <code>  </code> ) 
<br>
<p>Get all options of this filter, in the order they were added</p>
<br><strong>Returns:</strong> &lt;Array of FilterOption&gt; 
<strong class="name"><code>set_display_hints</code></strong>( <code>hints </code> ) 
<br>
<p>Sets display hints for the Shell UI</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>hints</code> <strong>&lt;Int&gt;</strong>
<p>0 is Default filter hint, 1 is Primary filter hint</p>
</li>
</ul>
<strong class="name"><code>update_state</code></strong>( <code>filter_state, option, active </code> ) 
<br>
<p>Marks given FilterOption of this filter instance as active (or not active) in a FilterState object.
Records the given FilterOption as &quot;selected&quot; in the FilterState. This is meant to be used to modify a FilterState received with a search request before sending it back to the client (UI shell).</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>filter_state</code> <strong>&lt;FilterState&gt;</strong>
</li>
<li>
<code>option</code> <strong>&lt;<a href="ScopeJS.FilterOption.md">FilterOption</a>&gt;</strong>
</li>
<li>
<code>active</code> <strong>&lt;Boolean&gt;</strong>
</li>
</ul>
