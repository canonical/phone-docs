---
Title: QtQml.qtqml-syntax-propertybinding
---

# QtQml.qtqml-syntax-propertybinding

<span class="subtitle"></span>
<!-- $$$qtqml-syntax-propertybinding.html-description -->
<p>An object's property can be assigned a static value which stays constant until it is explicitly assigned a new value. However, to make the fullest use of QML and its built-in support for dynamic object behaviors, most QML objects use <i>property bindings</i>.</p>
<p>Property bindings are a core feature of QML that lets developers specify relationships between different object properties. When a property's <i>dependencies</i> change in value, the property is automatically updated according to the specified relationship.</p>
<p>Behind the scenes, the QML engine monitors the property's dependencies (that is, the variables in the binding expression). When a change is detected, the QML engine re-evaluates the binding expression and applies the new result to the property.</p>
<h2 id="overview">Overview</h2>
<p>To create a property binding, a property is assigned a JavaScript expression that evaluates to the desired value. At its simplest, a binding may be a reference to another property. Take the following example, where the blue Rectangle's height is bound to the height of its parent:</p>
<pre class="qml"><span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
}
}</pre>
<p>Whenever the height of the parent rectangle changes, the height of the blue rectangle automatically updates to be of the same value.</p>
<p>A binding can contain any valid JavaScript expression or statement, as QML uses a standards compliant JavaScript engine. Bindings can access object properties, call methods and use built-in JavaScript objects such as <code>Date</code> and <code>Math</code>. Below are other possible bindings for the previous example:</p>
<pre class="cpp">height: parent<span class="operator">.</span>height <span class="operator">/</span> <span class="number">2</span>
height: Math<span class="operator">.</span>min(parent<span class="operator">.</span>width<span class="operator">,</span> parent<span class="operator">.</span>height)
height: parent<span class="operator">.</span>height <span class="operator">&gt;</span> <span class="number">100</span> <span class="operator">?</span> parent<span class="operator">.</span>height : parent<span class="operator">.</span>height<span class="operator">/</span><span class="number">2</span>
height: {
<span class="keyword">if</span> (parent<span class="operator">.</span>height <span class="operator">&gt;</span> <span class="number">100</span>)
<span class="keyword">return</span> parent<span class="operator">.</span>height
<span class="keyword">else</span>
<span class="keyword">return</span> parent<span class="operator">.</span>height <span class="operator">/</span> <span class="number">2</span>
}
height: someMethodThatReturnsHeight()</pre>
<p>Below is a more complex example involving more objects and types:</p>
<pre class="qml"><span class="type">Column</span> {
<span class="name">id</span>: <span class="name">column</span>
<span class="name">width</span>: <span class="number">200</span>
<span class="name">height</span>: <span class="number">200</span>
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">topRect</span>
<span class="name">width</span>: <span class="name">Math</span>.<span class="name">max</span>(<span class="name">bottomRect</span>.<span class="name">width</span>, <span class="name">parent</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>)
<span class="name">height</span>: (<span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>) <span class="operator">+</span> <span class="number">10</span>
<span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
<span class="type">TextInput</span> {
<span class="name">id</span>: <span class="name">myTextInput</span>
<span class="name">text</span>: <span class="string">&quot;Hello QML!&quot;</span>
}
}
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">bottomRect</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="name">myTextInput</span>.<span class="name">text</span>.<span class="name">length</span> <span class="operator">&lt;=</span> <span class="number">10</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;blue&quot;</span>
}
}</pre>
<p>In the previous example,</p>
<ul>
<li><code>topRect.width</code> depends on <code>bottomRect.width</code> and <code>column.width</code></li>
<li><code>topRect.height</code> depends on <code>column.height</code></li>
<li><code>bottomRect.color</code> depends on <code>myTextInput.text.length</code></li>
</ul>
<p>Syntactically, bindings are allowed to be of arbitrary complexity. However, if a binding is overly complex - such as involving multiple lines, or imperative loops - it could indicate that the binding is being used for more than describing property relationships. Complex bindings can reduce code performance, readability, and maintainability. It may be a good idea to redesign components that have complex bindings, or at least factor the binding out into a separate function.</p>
<h2 id="creating-property-bindings-from-javascript">Creating Property Bindings from JavaScript</h2>
<p>A property with a binding is automatically updated as necessary. However, if the property is later assigned a static value from a JavaScript statement, the binding will be removed.</p>
<p>For example, the Rectangle below initially ensures that its <code>height</code> is always twice its <code>width</code>. However, when the space key is pressed, the current value of <code>width*3</code> will be assigned to <code>height</code> as a <i>static</i> value. After that, <i>the <code>height</code> will remain fixed at this value, even if the <code>width</code> changes</i>. The assignment of the static value removes the binding.</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">2</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onSpacePressed: {
<span class="name">height</span> <span class="operator">=</span> <span class="name">width</span> <span class="operator">*</span> <span class="number">3</span>
}
}</pre>
<p>If the intention is to give the rectangle a fixed height and stop automatic updates, then this is not a problem. However, if the intention is to establish a new relationship between <code>width</code> and <code>height</code>, then the new binding expression must be wrapped in the Qt.binding() function instead:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">2</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onSpacePressed: {
<span class="name">height</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">width</span> <span class="operator">*</span> <span class="number">3</span> })
}
}</pre>
<p>Now, after the space key is pressed, the rectangle's height will continue auto-updating to always be three times its width.</p>
<h3 >Using <code>this</code> with Property Binding</h3>
<p>When creating a property binding from JavaScript, the <code>this</code> keyword can be used to refer to the object which receives the binding. This is helpful for resolving ambiguities with property names.</p>
<p>For example, the <code>Component.onCompleted</code> handler below is defined within the scope of the Item. In this scope, <code>width</code> refers to the Item's width, not the Rectangle's width. To bind the Rectangle's <code>height</code> to its own <code>width</code>, the binding expression must explicitly refer to <code>this.width</code> (or alternatively, <code>rect.width</code>):</p>
<pre class="qml"><span class="type">Item</span> {
<span class="name">width</span>: <span class="number">500</span>
<span class="name">height</span>: <span class="number">500</span>
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
}
<span class="name">Component</span>.onCompleted: {
<span class="name">rect</span>.<span class="name">height</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> this.<span class="name">width</span> <span class="operator">*</span> <span class="number">2</span> })
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;rect.height = &quot;</span> <span class="operator">+</span> <span class="name">rect</span>.<span class="name">height</span>) <span class="comment">// prints 200, not 1000</span>
}
}</pre>
<p><b>Note: </b>The value of <code>this</code> is not defined outside of property bindings. See <a href="QtQml.qtqml-javascript-hostenvironment.md#javascript-environment-restrictions">JavaScript Environment Restrictions</a> for details.</p>
<!-- @@@qtqml-syntax-propertybinding.html -->
