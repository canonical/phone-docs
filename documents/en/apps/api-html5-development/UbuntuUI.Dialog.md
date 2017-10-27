---
Title: UbuntuUI.Dialog
---

# UbuntuUI.Dialog

<p>Dialogs are modal full-screen popups that prevent other GUI interactions with the application until dismissed.</p>
<p>Dialogs wrap arbitrary markup.</p>
<p>Dialogs are declared at the top level inside the &lt;em&gt;content&lt;/em&gt; div.</p>
<strong class="name"><code>UbuntuUI.Dialog</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> &lt;div data-role=&quot;content&quot;&gt;
&lt;div data-role=&quot;pagestack&quot;&gt;
[...]
&lt;/div&gt;
&lt;div data-role=&quot;dialog&quot; id=&quot;dialogID&quot;&gt;
[...]
&lt;/div&gt;
&lt;/div&gt;
JavaScript access:
var dialog = UI.dialog(&quot;dialogID&quot;);
</code></pre>
<ul>
<li>Methods</li>
</ul>
DOMElement <strong class="name"><code>element</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Returns the DOM element associated with the id this widget is bind to.</p>
<br><strong>Returns:</strong> &lt;DOMElement&gt; 
<h5>Example</h5>
<pre class="code prettyprint"><code>   var mydialog = UI.dialog(&quot;dialogid&quot;).element();</code></pre>
<strong class="name"><code>hide</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Hide a dialog by removing 'active' class</p>
<strong class="name"><code>show</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Display a dialog by adding 'active' CSS class</p>
<strong class="name"><code>toggle</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Toggle a dialog, which means removing its 'active' class if it has one, or adding the 'active' class if it does not have one</p>
