---
Title: UbuntuUI.Page
---

# UbuntuUI.Page

<p>One of the navigation pattern that can be used within an Ubuntu App is the deep navigation. This
pattern is implemented by the Pagestack. A Pagestack contains one or more Pages. Each page displays full-screen. See the Pagestack class.</p>
<p>Each Page must have &lt;em&gt;id&lt;/em&gt; and &lt;em&gt;data-title&lt;/em&gt; attributes. The &lt;em&gt;id&lt;/em&gt; attribute is used a unique reference to push the Page to the top of the Pagestack (see the Pagestack class). The &lt;em&gt;data-title&lt;/em&gt; attribute is used to update the Header title as pages are pushed and poped.</p>
<strong class="name"><code>UbuntuUI.Page</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> &lt;/body&gt;
&lt;div data-role=&quot;mainview&quot;&gt;
&lt;header data-role=&quot;header&quot;&gt;
&lt;/header&gt;
&lt;div data-role=&quot;content&quot;&gt;
&lt;div data-role=&quot;pagestack&quot;&gt;
&lt;div data-role=&quot;page&quot; data-title=&quot;Main&quot; id=&quot;main&quot;&gt;
[...]
&lt;/div&gt;
&lt;div data-role=&quot;page&quot; data-title=&quot;My Data&quot; id=&quot;data&quot;&gt;
[...]
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/body&gt;
JavaScript access:
var page = UI.page(&quot;pageID&quot;);</code></pre>
<ul>
<li>Methods</li>
<li>Properties</li>
</ul>
<div>
<strong class="name"><code>activate</code></strong>( <code>properties </code> ) 
<br>
</span><br>
<p>Activates the current page.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>properties</code> <strong>&lt;Object&gt;</strong>
<ul>
<li>Data to be passed down to any activation callback listening for the page activation (see Page.onactivated)</li>
</ul>
</li>
</ul>
<strong class="name"><code>deactivate</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Deactivates the current page.</p>
<strong class="name"><code>element</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns the DOM element associated with the selector this widget is bind to.</p>
<h5>Example</h5>
<pre class="code prettyprint"><code>  var mypage = UI.page(&quot;pageid&quot;).element();</code></pre>
Boolean <strong class="name"><code>isPage</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Validates that a given DOM node element is a Ubuntu UI Page.</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; <p>if the DOM element is a page</p>
<strong class="name"><code>onactivated</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Activates the current page.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function&gt;</strong>
<ul>
<li>Callback function called with activation properties (from Pagestack.push) when the page is activated</li>
</ul>
</li>
</ul>
<code>actions</code> &lt;<strong>List</strong>&gt;<br>
<p>actions property.</p>
<code>title</code> &lt;<strong>String</strong>&gt;<br>
<p>title property.</p>
