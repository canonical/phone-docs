---
Title: UbuntuUI.Popover
---

# UbuntuUI.Popover

<p>A Popover is a div containng markup that can pop up and disappear. (Unlike a Dialog, Popovers are not full screen.)</p>
<p>A Popoves often contain a List whose items are connected to useful JavaScript functions.</p>
<p>######Popover Position
The Popover's position is set relative to a specified base element with the &lt;em&gt;data-gravity=&quot;LETTER&quot;&lt;/em&gt; attribute. LETTER values:</p>
<ul>
<li>'n': the base element is above the Popover</li>
<li>'s': the base element is below the Popover</li>
<li>'e': the base element is to the east of (to the right of) the Popover (in right-to-left locales)</li>
<li>'w': the base element is to the west of (to the left of) the Popover (in right-to-left locale)</li>
</ul>
<strong class="name"><code>UbuntuUI.Popover</code></strong>( <code>elem, id </code> ) 
<br>
</span><br>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>elem</code> <strong>&lt;String&gt;</strong>
<ul>
<li>The element to which the Popover's position is relative</li>
</ul>
</li>
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>The id attribute of the Popover in HTML</li>
</ul>
</li>
</ul>
<h5>Example</h5>
<pre class="code prettyprint"><code> &lt;p id=&quot;popoverBase&quot;&gt;Text&lt;/p&gt;
&lt;div class=&quot;popover active&quot; data-gravity=&quot;n&quot; id=&quot;popover&quot;&gt;
&lt;ul class=&quot;list&quot;&gt;
&lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Item1&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Item2&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;
Javascript:
var popBase = document.getElementById(&quot;popoverBase&quot;);
var popover = UI.popover(popBase, &quot;popover&quot;);</code></pre>
<ul>
<li>Methods</li>
</ul>
<strong class="name"><code>element</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns the DOM element associated with the id this widget is bind to.</p>
<h5>Example</h5>
<pre class="code prettyprint"><code>   var mypopover = UI.popover(&quot;popoverid&quot;).element();</code></pre>
<strong class="name"><code>hide</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Hide a Popover</p>
<strong class="name"><code>show</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Display a Popover</p>
<strong class="name"><code>toggle</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Toggle show/hide status of a Popover</p>
