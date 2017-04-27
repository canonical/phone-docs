---
Title: UbuntuUI.UbuntuUI
---

# UbuntuUI.UbuntuUI

<p>UbuntuUI is the critical Ubuntu HTML5 framework class. You need to construct an UbuntuUI object and initialize it to have an Ubuntu HTML5 app. You then use this object to access Ubuntu HTML5 objects (and object methods) that correspond to the Ubuntu HTML5 DOM elements.</p>
<p>Note: The UbuntuUI object is &quot;UI&quot; in all API doc examples.</p>
<strong class="name"><code>UbuntuUI</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> var UI = new UbuntuUI();
window.onload = function () {
UI.init();
UI.pagestack.push('pageid');
[...]
};</code></pre>
<ul>
<li>Methods</li>
</ul>
Button <strong class="name"><code>button</code></strong>( <code>id </code> ) 
<br>
</span><br>
<p>Gets an Ubuntu Button object</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>The element's id attribute</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Button&gt; <ul>
<li>The Button with the specified id</li>
</ul>
Dialog <strong class="name"><code>dialog</code></strong>( <code>id </code> ) 
<br>
</span><br>
<p>Gets an Ubuntu Dialog object</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>The element's id attribute</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Dialog&gt; <ul>
<li>The Dialog with the specified id</li>
</ul>
Element <strong class="name"><code>element</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Gets the DOM element from a given selector</p>
<br><strong>Returns:</strong> &lt;Element&gt; <ul>
<li>The DOM element
Gets the HTML element associated with an Ubuntu HTML5 JavaScript object</li>
</ul>
Header <strong class="name"><code>header</code></strong>( <code>id </code> ) 
<br>
</span><br>
<p>Gets an Ubuntu Header object</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>The element's id attribute</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Header&gt; <ul>
<li>The Header with the specified id</li>
</ul>
<strong class="name"><code>init</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Required call that initializes the UbuntuUI object</p>
List <strong class="name"><code>list</code></strong>( <code>selector </code> ) 
<br>
</span><br>
<p>Gets an Ubuntu List</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>selector</code> <strong>&lt;Selector&gt;</strong>
<ul>
<li>A selector that JavaScript querySelector method understands</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;List&gt; 
OptionSelector <strong class="name"><code>optionselector</code></strong>( <code>id, expanded, multiSelection </code> ) 
<br>
</span><br>
<p>Gets an Ubuntu Option Selector</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>The element's id attribute</li>
</ul>
</li>
<li>
<code>expanded</code> <strong>&lt;Boolean&gt;</strong>
<ul>
<li>Specifies whether the list is always expanded</li>
</ul>
</li>
<li>
<code>multiSelection</code> <strong>&lt;Boolean&gt;</strong>
<ul>
<li>If multiple choice selection is enabled the list is always expanded.</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;OptionSelector&gt; 
Page <strong class="name"><code>page</code></strong>( <code>id </code> ) 
<br>
</span><br>
<p>Gets an Ubuntu Page object</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>The element's id attribute</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Page&gt; <ul>
<li>The Page with the specified id</li>
</ul>
Pagestack <strong class="name"><code>pagestack</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Gets this UbuntuUI's single Pagestack object</p>
<br><strong>Returns:</strong> &lt;Pagestack&gt; <ul>
<li>The Pagestack</li>
</ul>
Popover <strong class="name"><code>popover</code></strong>( <code>el, id </code> ) 
<br>
</span><br>
<p>Gets an Ubuntu Popover object</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>el</code> <strong>&lt;Element&gt;</strong>
<ul>
<li>The element to which the Popover's position is relative</li>
</ul>
</li>
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>The element's id attribute</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Popover&gt; <ul>
<li>The Popover with the specified id</li>
</ul>
Progress <strong class="name"><code>progress</code></strong>( <code>id </code> ) 
<br>
</span><br>
<p>Gets an Ubuntu Progress object</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>The element's id attribute</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Progress&gt; <ul>
<li>The Progress with the specified id</li>
</ul>
Shape <strong class="name"><code>shape</code></strong>( <code>id </code> ) 
<br>
</span><br>
<p>Gets an Ubuntu Shape object</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>The element's id attribute</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Shape&gt; <ul>
<li>The Shape with the specified id</li>
</ul>
Tab <strong class="name"><code>tab</code></strong>( <code>id </code> ) 
<br>
</span><br>
<p>Gets an Ubuntu Tab object</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>The element's id attribute</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Tab&gt; <ul>
<li>The Tab with the specified id</li>
</ul>
Tabs <strong class="name"><code>tabs</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Gets this UbuntuUI's single Tabs object</p>
<br><strong>Returns:</strong> &lt;Tabs&gt; <ul>
<li>The Tabs</li>
</ul>
Toolbar <strong class="name"><code>toolbar</code></strong>( <code>id </code> ) 
<br>
</span><br>
<p>Gets an Ubuntu Toolbar object</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>id</code> <strong>&lt;ID&gt;</strong>
<ul>
<li>The element's id attribute</li>
</ul>
</li>
</ul>
<br><strong>Returns:</strong> &lt;Toolbar&gt; <ul>
<li>The Toolbar with the specified id</li>
</ul>
