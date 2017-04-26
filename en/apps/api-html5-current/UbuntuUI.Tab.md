---
Title: UbuntuUI.Tab
---

# UbuntuUI.Tab

<p>One of the navigation pattern that can be used within an Ubuntu App is the flat navigation. Tabs are the standard way to provide such a navigation pattern from within your application.</p>
<p>A Tab represents the UI element that hosts your tab content. This UI element is being activated by the user selecting it as part of the Header element.</p>
<strong class="name"><code>UbuntuUI.Tab</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> &lt;/body&gt;
&lt;div data-role=&quot;mainview&quot;&gt;
&lt;header data-role=&quot;header&quot; id=&quot;headerID&quot;&gt;
&lt;ul data-role=&quot;tabs&quot;&gt;
&lt;li data-role=&quot;tabitem&quot; data-page=&quot;tabID&quot;&gt;
Main
&lt;/li&gt;
&lt;li data-role=&quot;tabitem&quot; data-page=&quot;page2&quot;&gt;
Two
&lt;/li&gt;
&lt;/ul&gt;
&lt;/header&gt;
&lt;div data-role=&quot;content&quot;&gt;
&lt;div data-role=&quot;tab&quot; id=&quot;tabID&quot;&gt;
[...]
&lt;/div&gt;
&lt;div data-role=&quot;tab&quot; id=&quot;page2&quot;&gt;
[...]
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/body&gt;
JavaScript access:
var tab = UI.tab(&quot;tabID&quot;);</code></pre>
<ul>
<li>Methods</li>
</ul>
<div>
<strong class="name"><code>activate</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Activates the current tab.</p>
<strong class="name"><code>deactivate</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Deactivates the current tab.</p>
DOMElement <strong class="name"><code>element</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns the DOM element associated with the selector this widget is bind to.</p>
<br><strong>Returns:</strong> &lt;DOMElement&gt; 
<h5>Example</h5>
<pre class="code prettyprint"><code>  var mytab = UI.tab(&quot;tabid&quot;).element();</code></pre>
Boolean <strong class="name"><code>isTab</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Validates that a given DOM node element is a Ubuntu UI Tab.</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>if the DOM element is a tab</p>
