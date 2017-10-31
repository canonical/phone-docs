---
Title: UbuntuUI.Progress
---

# UbuntuUI.Progress

<p>A Progress.</p>
<p>Note the Ubuntu CSS style classes: &lt;em&gt;infinite&lt;/em&gt;</p>
<strong class="name"><code>UbuntuUI.Progress</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> &lt;progress value=&quot;80&quot; max=&quot;100&quot;&gt;&lt;/progress&gt;
Javascript access:
var pre = UI.progress(&quot;progressID&quot;);</code></pre>
<ul>
<li>Methods</li>
</ul>
<strong class="name"><code>element</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns the DOM element associated with the id this widget is bind to.</p>
<h5>Example</h5>
<pre class="code prettyprint"><code>       var myprogress = UI.progress(&quot;progressid&quot;).element();</code></pre>
<strong class="name"><code>update</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Updates the value of the progress bar</p>
<h5>Example</h5>
<pre class="code prettyprint"><code>       myprogress.update(30);</code></pre>
