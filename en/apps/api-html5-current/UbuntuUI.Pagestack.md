---
Title: UbuntuUI.Pagestack
---

# UbuntuUI.Pagestack

<p>The Pagestack manages all Pages in a stack data structure. Initially, the Pagestack contains no Pages. The &lt;em&gt;push()&lt;/em&gt; method is normally executed on load to display the app starting page.</p>
<pre class="code prettyprint"><code> UI.pagestack.push(&quot;pageID&quot;)
</code></pre>
<p>The topmost Page on the Pagestack is always displayed.</p>
<p>The Pagestack is declared as a direct child of the &lt;em&gt;content&lt;/em&gt; div.</p>
<p>#####Default application wide footer
The Pagestack contains a default &lt;em&gt;footer&lt;/em&gt; (represented in JavaScript as a Toolbar), even if you do not declare one in HTML. The &lt;em&gt;footer&lt;/em&gt; has a single Back button.
#####Customized application wide footer
This application-wide &lt;em&gt;footer&lt;/em&gt; can be customized (for example, you can add Buttons) by declaring a &lt;em&gt;footer&lt;/em&gt; as a direct child of the &lt;em&gt;pagestack&lt;/em&gt; div (see example).
######Page specific footers
A &lt;em&gt;page&lt;/em&gt; may declare a page-specific &lt;em&gt;footer&lt;/em&gt; as a child element.</p>
<strong class="name"><code>UbuntuUI.Pagestack</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code>&lt;div data-role=&quot;mainview&quot;&gt;
&lt;header data-role=&quot;header&quot;&gt;
&lt;/header&gt;
&lt;div data-role=&quot;content&quot;&gt;
&lt;div data-role=&quot;pagestack&quot;&gt;
&lt;div data-role=&quot;page&quot; id=&quot;main&quot; data-title=&quot;Page 1&quot;&gt;
&lt;/div&gt;
&lt;div data-role=&quot;page&quot; id=&quot;page2&quot; data-title=&quot;Page 2&quot;&gt;
[...]
&lt;footer data-role=&quot;footer&quot; class=&quot;revealed&quot; id=&quot;footerPage2&quot;&gt;
[...]
&lt;/footer&gt;
&lt;/div&gt;
&lt;footer data-role=&quot;footer&quot; class=&quot;revealed&quot; id=&quot;footerAppWide&quot;&gt;
[...]
&lt;/footer&gt;
&lt;/div&gt;  &lt;!-- end of Pagestack div --&gt;
&lt;/div&gt;
&lt;/div&gt;
JavaScript access:
UI.pagestack.METHOD();
</code></pre>
<ul>
<li>Methods</li>
</ul>
<strong class="name"><code>clear</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Clears the whole page stack</p>
PageID | Null <strong class="name"><code>currentPage</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Gets the id attribute of the page element on top of this pagestack</p>
<br><strong>Returns:</strong> &lt;PageID | Null&gt; <ul>
<li>The topmost page's id attribute, else null when there are no pages on this pagestack</li>
</ul>
Number <strong class="name"><code>depth</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Gets the number of pages in this pagestack</p>
<br><strong>Returns:</strong> &lt;Number&gt; <ul>
<li>The number of pages in this pagestack</li>
</ul>
Boolean <strong class="name"><code>isEmpty</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Checks for zero pages in this pagestack</p>
<br><strong>Returns:</strong> &lt;Boolean&gt; <ul>
<li>True when this pagestack has no pages, else false</li>
</ul>
<strong class="name"><code>pop</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Pops the current page off this pagestack, which causes the next page to become the top page and to display</p>
<strong class="name"><code>push</code></strong>( <code>id, properties </code> ) 
<br>
</span><br>
<p>Push a page to the top of this pagestack</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;String&gt;</strong>
<ul>
<li>The id attribute of the page element to be pushed</li>
</ul>
</li>
<li>
<code>properties</code> <strong>&lt;Object&gt;</strong>
<ul>
<li>A list of properties passed down to the page that is to be activated</li>
</ul>
</li>
</ul>
