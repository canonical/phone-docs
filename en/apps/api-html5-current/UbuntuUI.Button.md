---
Title: UbuntuUI.Button
---

# UbuntuUI.Button

<p>A Button.</p>
<p>Note the Ubuntu CSS style classes: &lt;em&gt;positive&lt;/em&gt;, &lt;em&gt;information&lt;/em&gt;, &lt;em&gt;secondary&lt;/em&gt;, and &lt;em&gt;negative&lt;/em&gt;</p>
<strong class="name"><code>UbuntuUI.Button</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> &lt;button data-role=&quot;button&quot; id=&quot;buttonID&quot;&gt;text&lt;/button&gt;
Javascript access:
var button = UI.button(&quot;buttonID&quot;);</code></pre>
<ul>
<li>Methods</li>
</ul>
<strong class="name"><code>click</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Associate a function with the button's Click event</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function&gt;</strong>
<ul>
<li>The function to execute on click</li>
</ul>
</li>
</ul>
<h5>Example</h5>
<pre class="code prettyprint"><code>   UI.button(&quot;buttonid&quot;).click(function(){
console.log(&quot;clicked&quot;);
});</code></pre>
DOMElement <strong class="name"><code>element</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns the DOM element associated with the id this widget is bind to.</p>
<br><strong>Returns:</strong> &lt;DOMElement&gt; 
<h5>Example</h5>
<pre class="code prettyprint"><code>   var mybutton = UI.button(&quot;buttonid&quot;).element();</code></pre>
