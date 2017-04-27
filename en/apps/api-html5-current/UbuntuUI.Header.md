---
Title: UbuntuUI.Header
---

# UbuntuUI.Header

<p>An Ubuntu Header wraps the general Tabs definitions and interaction in the case of a Tab
navigation pattern or is used to display the title of the current page when using a PageStack navigation pattern.</p>
<p>In the case of a Tab navigation pattern, declare the Header and its Tabs in HTML as a direct child
of the top level MainView as a sibling to the &lt;em&gt;content&lt;/em&gt; div.</p>
<p>In the case of a PageStack navigation pattern, the Ubuntu Header HTML element should be present
and can be left empty. It will be automatically updated to hold the Title of the current Page being
visited. The value of such a title is taken from the data-title attribute of the currently visited
Page as it is being pushed at the top of the stack (see PageStack.push()).</p>
<p>######Contained list provides Page navigation
A contained unordered list has list items, each of which has &quot;data-page&quot; data attribute whose value of a Page ID that it targets. Clicking the Header/Tabs allows the user to navigate to the Pages identified by these IDs.</p>
<strong class="name"><code>UbuntuUI.Header</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> &lt;body&gt;
&lt;div data-role=&quot;mainview&quot;&gt;
&lt;header data-role=&quot;header&quot; id=&quot;headerID&quot;&gt;
&lt;ul data-role=&quot;tabs&quot;&gt;
&lt;li data-role=&quot;tabitem&quot; data-page=&quot;main&quot;&gt;Main&lt;/li&gt;
&lt;li data-role=&quot;tabitem&quot; data-page=&quot;two&quot;&gt;Two&lt;/li&gt;
&lt;/ul&gt;
&lt;/header&gt;
&lt;div data-role=&quot;content&quot;&gt;
&lt;div data-role=&quot;tab&quot; id=&quot;main&quot;&gt;
[...]
&lt;/div&gt;
&lt;div data-role=&quot;tab&quot; id=&quot;two&quot;&gt;
[...]
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/body&gt;
JavaScript access:
var header = UI.header(&quot;headerID&quot;);</code></pre>
<ul>
<li>Methods</li>
</ul>
DOMElement <strong class="name"><code>element</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns the DOM element associated with the id this widget is bind to.</p>
<br><strong>Returns:</strong> &lt;DOMElement&gt; 
<h5>Example</h5>
<pre class="code prettyprint"><code>   var myheader = UI.header(&quot;headerid&quot;).element();</code></pre>
