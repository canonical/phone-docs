---
Title: UbuntuUI.List
---

# UbuntuUI.List

<p>A List comes with various options, including: a &lt;em&gt;header&lt;/em&gt;, main text (pushed left), an icon (pushed left), and a secondary label (pushed right).</p>
<strong class="name"><code>UbuntuUI.List</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code>&lt;section data-role=&quot;list&quot; id=&quot;testlist&quot;&gt;
&lt;header&gt;My header text&lt;/header&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;a href=&quot;#&quot;&gt;Main text, to the left&lt;/a&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;a href=&quot;#&quot;&gt;Main text&lt;/a&gt;
&lt;label&gt;Right text&lt;/label&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;aside&gt;
&lt;img src=&quot;someicon.png&quot;&gt;
&lt;/aside&gt;
&lt;a href=&quot;#&quot;&gt;Main text&lt;/a&gt;
&lt;label&gt;Right&lt;/label&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;/section&gt;
JavaScript access:
var list = UI.list('[id=&quot;testlist&quot;]');</code></pre>
<ul>
<li>Methods</li>
</ul>
<div>
Element <strong class="name"><code>append</code></strong>( <code>text, label, id, onclick, user_data </code> ) 
<br>
</span><br>
<p>Append an item to a list</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>text</code> <strong>&lt;String&gt;</strong>
<ul>
<li>The main text, flushed left (no markup)</li>
</ul>
</li>
<li>
<code>label</code> <strong>&lt;String&gt;</strong>
<ul>
<li>Additional text, flushed right (no markup)</li>
</ul>
</li>
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>An id attribute value set for the new list item (must be unique in DOM)</li>
</ul>
</li>
<li>
<code>onclick</code> <strong>&lt;Function&gt;</strong>
<ul>
<li>The click callback function</li>
</ul>
</li>
<li>
<code>user_data</code> <strong>&lt;Object&gt;</strong>
<ul>
<li>Additional data that is passed to the click callback</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Element&gt; <ul>
<li>The created list item, or null on failure ot create</li>
</ul>
<strong class="name"><code>at</code></strong>( <code>index </code> ) 
<br>
</span><br>
<p>Gets a list item &lt;li&gt; by its index, where index counting starts from 1</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>index</code> <strong>&lt;Number&gt;</strong>
</li>
</ul>
<br><strong>Returns:</strong> <p>The list item, or null on failure</p>
DOMElement <strong class="name"><code>element</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns the DOM element associated with the selector this widget is bind to.</p>
<br><strong>Returns:</strong> &lt;DOMElement&gt; 
<h5>Example</h5>
<pre class="code prettyprint"><code>       var mylist = UI.list(&quot;#listid&quot;).element();</code></pre>
<strong class="name"><code>forEach</code></strong>( <code>func </code> ) 
<br>
</span><br>
<p>Iterates over all list items and runs a provided function on each</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>func</code> <strong>&lt;Function&gt;</strong>
<ul>
<li>The function to run on each list item</li>
</ul>
</li>
</ul>
<strong class="name"><code>remove</code></strong>( <code>index </code> ) 
<br>
</span><br>
<p>Removes a list item &lt;li&gt; by its index, where index counting starts from 1</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>index</code> <strong>&lt;Number&gt;</strong>
</li>
</ul>
<strong class="name"><code>removeAllItems</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Removes all items from a list</p>
<strong class="name"><code>setHeader</code></strong>( <code>text </code> ) 
<br>
</span><br>
<p>Add or Set the List Header</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>text</code> <strong>&lt;String&gt;</strong>
<ul>
<li>The header text</li>
</ul>
</li>
</ul>
