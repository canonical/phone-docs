---
Title: UbuntuUI.Tabs
---

# UbuntuUI.Tabs

<p>One of the navigation pattern that can be used within an Ubuntu App is the flat navigation. Tabs are the standard way to provide such a navigation pattern from within your application.</p>
<p>Tabs are defined from within the Header part of your application HTML. See the Header class for more information.</p>
<p>Declare the Header and Tabs in HTML as a direct child of the top level Page as a sibling to the content div.</p>
<strong class="name"><code>UbuntuUI.Tabs</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> &lt;body&gt;
&lt;div data-role=&quot;mainview&quot;&gt;
&lt;header data-role=&quot;header&quot;&gt;
&lt;ul data-role=&quot;tabs&quot;&gt;
&lt;li data-role=&quot;tabitem&quot; data-page=&quot;main&quot;&gt;
Main
&lt;/li&gt;
&lt;li data-role=&quot;tabitem&quot; data-page=&quot;page2&quot;&gt;
Two
&lt;/li&gt;
&lt;/ul&gt;
&lt;/header&gt;
&lt;div data-role=&quot;content&quot;&gt;
&lt;div data-role=&quot;tab&quot; id=&quot;main&quot;&gt;
[...]
&lt;/div&gt;
&lt;div data-role=&quot;tab&quot; id=&quot;page2&quot;&gt;
[...]
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/body&gt;
JavaScript access:
UI.tabs.METHOD();</code></pre>
<ul>
<li>Properties</li>
</ul>
<code>count</code> &lt;<strong>Unknown</strong>&gt;<br>
<p>Return the number of tab elements in the header</p>
<code>currentPage</code> &lt;<strong>Unknown</strong>&gt;<br>
<p>Return the page associated with the currently selected tab</p>
<code>selectedTab</code> &lt;<strong>Unknown</strong>&gt;<br>
<p>Return the currently selected tab element</p>
<code>selectedTabIndex</code> &lt;<strong>Unknown</strong>&gt;<br>
<p>Return the index of the selected tab</p>
<code>selectedTabIndex</code> &lt;<strong>Unknown</strong>&gt;<br>
<p>Sets the index of the selected tab</p>
<code>tabChildren</code> &lt;<strong>Unknown</strong>&gt;<br>
<p>Return the list of DOM elements of the tab</p>
