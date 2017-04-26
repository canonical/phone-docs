---
Title: ScopeJS.Department
---

# ScopeJS.Department

<p>A department with optional sub-department</p>
<ul>
<li>Methods</li>
</ul>
<div>
<strong class="name"><code>add_subdepartment</code></strong>( <code>sub </code> ) 
<br>
<p>Add sub-department to this department</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>sub</code> <strong>&lt;<a href="index.html">Department</a>&gt;</strong>
<p>department</p>
</li>
</ul>
String <strong class="name"><code>alternate_label</code></strong>( <code>  </code> ) 
<br>
<p>Get the alternate label of this department
Return the alternate label of this department. The alternate label expresses the plural &quot;all&quot; form of the normal label. For example, if the normal label is &quot;Books&quot;, then the alternate label is &quot;All Books&quot;. Note that alternate label and can be empty - in that case the normal label should be displayed instead</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>alternate label</p>
String <strong class="name"><code>alternate_label</code></strong>( <code>  </code> ) 
<br>
<p>Get the alternate label of this department</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>alternate label of this department</p>
Boolean <strong class="name"><code>has_subdepartments</code></strong>( <code>  </code> ) 
<br>
<p>Check if this department has subdepartments or has_subdepartments flag is set</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>True if this department has subdepartments or has_subdepartments flag is set</p>
String <strong class="name"><code>id</code></strong>( <code>  </code> ) 
<br>
<p>Get the identifier of this department</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>identifier of this department</p>
String <strong class="name"><code>label</code></strong>( <code>  </code> ) 
<br>
<p>Get the label of this department</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>label of this department</p>
CannedQuery <strong class="name"><code>query</code></strong>( <code>  </code> ) 
<br>
<p>Get the canned query associated with this department</p>
<br><strong>Returns:</strong> &lt;CannedQuery&gt; <p>canned query associated with this department</p>
<strong class="name"><code>set_has_subdepartments</code></strong>( <code>subdepartments </code> ) 
<br>
<p>Sets has_subdepartments flag of this department</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>subdepartments</code> <strong>&lt;Boolean&gt;</strong>
</li>
</ul>
<strong class="name"><code>set_subdepartments</code></strong>( <code>departments </code> ) 
<br>
<p>Set sub-departments of this department</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>departments</code> <strong>&lt;Array of Department&gt;</strong>
</li>
</ul>
Array of Department <strong class="name"><code>subdepartments</code></strong>( <code>  </code> ) 
<br>
<p>Get list of sub-departments of this department</p>
<br><strong>Returns:</strong> &lt;Array of Department&gt; <p>list of sub-departments of this department</p>
