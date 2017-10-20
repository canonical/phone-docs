---
Title: QtQml.Binding
---

# QtQml.Binding

<span class="subtitle"></span>
<!-- $$$Binding-brief -->
<p>Enables the arbitrary creation of property bindings More...</p>
<!-- @@@Binding -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml 2.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#property-prop">property</a></b></b> : string</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Object</li>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : any</li>
<li class="fn"><b><b><a href="#when-prop">when</a></b></b> : bool</li>
</ul>
<!-- $$$Binding-description -->
<h2 id="details">Detailed Description</h2>
</p>
<h2 id="binding-to-an-inaccessible-property">Binding to an Inaccessible Property</h2>
<p>Sometimes it is necessary to bind to a property of an object that wasn't directly instantiated by QML - generally a property of a class exported to QML by C++. In these cases, regular property binding doesn't work. Binding allows you to bind any value to any property.</p>
<p>For example, imagine a C++ application that maps an &quot;app.enteredText&quot; property into QML. You could use Binding to update the enteredText property like this.</p>
<pre class="cpp">TextEdit { id: myTextField; text: <span class="string">&quot;Please type here...&quot;</span> }
Binding { target: app; property: <span class="string">&quot;enteredText&quot;</span>; value: myTextField<span class="operator">.</span>text }</pre>
<p>Whenever the text in the TextEdit is updated, the C++ property will be updated also.</p>
<h2 id="single-branch-conditional-binding">&quot;Single-branch&quot; conditional binding</h2>
<p>In some circumstances you may want to control the value of a property only when a certain condition is true (and relinquish control in all other circumstances). This often isn't possible to accomplish with a direct binding, as you need to supply values for all possible branches.</p>
<pre class="cpp"><span class="comment">// produces warning: &quot;Unable to assign [undefined] to double value&quot;</span>
value: <span class="keyword">if</span> (mouse<span class="operator">.</span>pressed) mouse<span class="operator">.</span>mouseX</pre>
<p>The above example will produce a warning whenever we release the mouse, as the value of the binding is undefined when the mouse isn't pressed. We can use the Binding type to rewrite the above code and avoid the warning.</p>
<pre class="cpp">Binding on value {
when: mouse<span class="operator">.</span>pressed
value: mouse<span class="operator">.</span>mouseX
}</pre>
<p>The Binding type will also restore any previously set direct bindings on the property. In that sense, it functions much like a simplified State.</p>
<pre class="qml"><span class="comment">// this is equivalent to the above Binding</span>
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;pressed&quot;</span>
<span class="name">when</span>: <span class="name">mouse</span>.<span class="name">pressed</span>
<span class="type">PropertyChanges</span> {
<span class="name">target</span>: <span class="name">obj</span>
<span class="name">value</span>: <span class="name">mouse</span>.<span class="name">mouseX</span>
}
}</pre>
<p>If the binding target or binding property is changed, the bound value is immediately pushed onto the new target.</p>
<p><b>See also </b><a href="QtQml.qtqml-index.md">Qt QML</a>.</p>
<!-- @@@Binding -->
<h2>Property Documentation</h2>
<!-- $$$property -->
<table class="qmlname"><tr valign="top" id="property-prop"><td class="tblQmlPropNode"><p><span class="name">property</span> : <span class="type">string</span></p></td></tr></table><p>The property to be updated.</p>
<!-- @@@property -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type">Object</span></p></td></tr></table><p>The object to be updated.</p>
<!-- @@@target -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">any</span></p></td></tr></table><p>The value to be set on the target object and property. This can be a constant (which isn't very useful), or a bound expression.</p>
<!-- @@@value -->
<br/>
<!-- $$$when -->
<table class="qmlname"><tr valign="top" id="when-prop"><td class="tblQmlPropNode"><p><span class="name">when</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds when the binding is active. This should be set to an expression that evaluates to true when you want the binding to be active.</p>
<pre class="cpp">Binding {
target: contactName; property: <span class="char">'text'</span>
value: name; when: list<span class="operator">.</span>ListView<span class="operator">.</span>isCurrentItem
}</pre>
<p>When the binding becomes inactive again, any direct bindings that were previously set on the property will be restored.</p>
<!-- @@@when -->
<br/>
