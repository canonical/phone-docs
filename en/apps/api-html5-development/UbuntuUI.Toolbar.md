---
Title: UbuntuUI.Toolbar
---

# UbuntuUI.Toolbar

<p>A Toolbar is the JavaScript representation of an Ubuntu HTML5 app &lt;em&gt;footer&lt;/em&gt;.</p>
<p>######Contained List provides buttons
The Toolbar contains a List, where each list item is treated as a Button (see below). List items (Buttons) are pushed to the right. The default Back button always exists to the left and does not need to be declared.</p>
<p>#####Default and custom footers
See the Pagestack class documentation for information about the default application-wide Footer, customizing it, and adding Page-specific Footers.</p>
<strong class="name"><code>UbuntuUI.Toolbar</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> &lt;footer data-role=&quot;footer&quot; class=&quot;revealed&quot; id=&quot;footerID&quot;&gt;
&lt;nav&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;a href=&quot;#&quot; id=&quot;home&quot;&gt;Home&lt;/a&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;/nav&gt;
&lt;/footer&gt;
JavaScript access:
var toolbar = UI.toolbar(&quot;toolbarID&quot;);
UI.button('home').click(function () {
UI.pagestack.push(&quot;main&quot;);
});
</code></pre>
<ul>
<li>Methods</li>
</ul>
<div>
<strong class="name"><code>element</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns the DOM element associated with the id this widget is bind to.</p>
<h5>Example</h5>
<pre class="code prettyprint"><code>       var mytoolbar = UI.toolbar(&quot;toolbarid&quot;).element();</code></pre>
<strong class="name"><code>hide</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Hide a Toolbar</p>
<strong class="name"><code>show</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Display a Toolbar</p>
<strong class="name"><code>toggle</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Toggle show/hide status of a Toolbar</p>
