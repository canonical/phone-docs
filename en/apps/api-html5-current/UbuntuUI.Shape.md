---
Title: UbuntuUI.Shape
---

# UbuntuUI.Shape

<p>An Ubuntu Shape contains and decorates (with CSS styles) some markup, often an &lt;em&gt;img&lt;/em&gt;.</p>
<strong class="name"><code>UbuntuUI.Shape</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> &lt;div data-role=&quot;shape&quot; id=&quot;shapeID&quot;&gt;
&lt;img src=&quot;URI&quot;/&gt;
&lt;/div&gt;
JavaScript access:
var shape = UI.shape(&quot;shapeID&quot;);
</code></pre>
<ul>
<li>Methods</li>
</ul>
<div>
<strong class="name"><code>click</code></strong>( <code>- </code> ) 
<br>
</span><br>
<p>Associate a function with the Click event</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>-</code> <strong>&lt;Function&gt;</strong>
<p>The function to execute on click</p>
</li>
</ul>
<h5>Example</h5>
<pre class="code prettyprint"><code>   UI.shape(&quot;id&quot;).click(function(){
console.log(&quot;Clicked&quot;);
});</code></pre>
<strong class="name"><code>element</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns the DOM element associated with the id this widget is bind to.</p>
<h5>Example</h5>
<pre class="code prettyprint"><code>   var myshape = UI.shape(&quot;shapeid&quot;).element();</code></pre>
