---
Title: QtQml.qtqml-javascript-hostenvironment
---

# QtQml.qtqml-javascript-hostenvironment

<span class="subtitle"></span>
<!-- $$$qtqml-javascript-hostenvironment.html-description -->
<p>QML provides a JavaScript host environment tailored to writing QML applications. This environment is different from the host environment provided by a browser or a server-side JavaScript environment such as Node.js. For example, QML does not provide a <code>window</code> object or <code>DOM API</code> as commonly found in a browser environment.</p>
<h2 id="common-base">Common Base</h2>
<p>Like a browser or server-side JavaScript environment, the QML runtime implements the <a href="http://www.ecma-international.org/publications/standards/Ecma-262.htm">ECMAScript Language Specification</a> standard. This provides access to all of the built-in types and functions defined by the standard, such as Object, Array, and Math. The QML runtime implements the 5th edition of the standard, which is the same edition commonly implemented by browsers.</p>
<p>The standard ECMAScript built-ins are not explicitly documented in the QML documentation. For more information on their use, please refer to the ECMA-262 5th edition standard or one of the many online JavaScript reference and tutorial sites, such as the <a href="http://www.w3schools.com/jsref/default.asp">W3Schools JavaScript Reference</a> (JavaScript Objects Reference section). Many sites focus on JavaScript in the browser, so in some cases you may need to double check the specification to determine whether a given function or object is part of standard ECMAScript or specific to the browser environment. In the case of the W3Schools link above, the <code>JavaScript Objects Reference</code> section generally covers the standard, while the <code>Browser Objects Reference</code> and <code>HTML DOM Objects Reference</code> sections are browser specific (and thus not applicable to QML).</p>
<h2 id="qml-global-object">QML Global Object</h2>
<p>The QML JavaScript host environment implements a number of host objects and functions, as detailed in the <a href="QtQml.qtqml-javascript-qmlglobalobject.md">QML Global Object</a> documentation.</p>
<p>These host objects and functions are always available, regardless of whether any modules have been imported.</p>
<h2 id="javascript-objects-and-functions">JavaScript Objects and Functions</h2>
<p>A list of the JavaScript objects, functions and properties supported by the QML engine can be found in the <a href="QtQml.qtqml-javascript-functionlist.md">List of JavaScript Objects and Functions</a>.</p>
<p>Note that QML makes the following modifications to native objects:</p>
<ul>
<li>An <a href="QtQml.String.md#arg-method">arg()</a> function is added to the <a href="QtQml.String.md">String</a> prototype.</li>
<li>Locale-aware coversion functions are added to the <a href="QtQml.Date.md">Date</a> and <a href="QtQml.Number.md">Number</a> prototypes.</li>
</ul>
<h2 id="javascript-environment-restrictions">JavaScript Environment Restrictions</h2>
<p>QML implements the following restrictions for JavaScript code:</p>
<ul>
<li>JavaScript code cannot modify the global object.<p>In QML, the global object is constant - existing properties cannot be modified or deleted, and no new properties may be created.</p>
<p>Most JavaScript programs do not intentionally modify the global object. However, JavaScript's automatic creation of undeclared variables is an implicit modification of the global object, and is prohibited in QML.</p>
<p>Assuming that the <code>a</code> variable does not exist in the scope chain, the following code is illegal in QML:</p>
<pre class="cpp"><span class="comment">// Illegal modification of undeclared variable</span>
a <span class="operator">=</span> <span class="number">1</span>;
<span class="keyword">for</span> (var ii <span class="operator">=</span> <span class="number">1</span>; ii <span class="operator">&lt;</span> <span class="number">10</span>; <span class="operator">+</span><span class="operator">+</span>ii)
a <span class="operator">=</span> a <span class="operator">*</span> ii;
console<span class="operator">.</span>log(<span class="string">&quot;Result: &quot;</span> <span class="operator">+</span> a);</pre>
<p>It can be trivially modified to this legal code.</p>
<pre class="cpp">var a <span class="operator">=</span> <span class="number">1</span>;
<span class="keyword">for</span> (var ii <span class="operator">=</span> <span class="number">1</span>; ii <span class="operator">&lt;</span> <span class="number">10</span>; <span class="operator">+</span><span class="operator">+</span>ii)
a <span class="operator">=</span> a <span class="operator">*</span> ii;
console<span class="operator">.</span>log(<span class="string">&quot;Result: &quot;</span> <span class="operator">+</span> a);</pre>
<p>Any attempt to modify the global object - either implicitly or explicitly - will cause an exception. If uncaught, this will result in an warning being printed, that includes the file and line number of the offending code.</p>
</li>
<li>Global code is run in a reduced scope.<p>During startup, if a QML file includes an external JavaScript file with &quot;global&quot; code, it is executed in a scope that contains only the external file itself and the global object. That is, it will not have access to the QML objects and properties it <a href="QtQml.qtqml-documents-scope.md">normally would</a>.</p>
<p>Global code that only accesses script local variable is permitted. This is an example of valid global code.</p>
<pre class="cpp">var colors <span class="operator">=</span> <span class="operator">[</span> <span class="string">&quot;red&quot;</span><span class="operator">,</span> <span class="string">&quot;blue&quot;</span><span class="operator">,</span> <span class="string">&quot;green&quot;</span><span class="operator">,</span> <span class="string">&quot;orange&quot;</span><span class="operator">,</span> <span class="string">&quot;purple&quot;</span> <span class="operator">]</span>;</pre>
<p>Global code that accesses QML objects will not run correctly.</p>
<pre class="cpp"><span class="comment">// Invalid global code - the &quot;rootObject&quot; variable is undefined</span>
var initialPosition <span class="operator">=</span> { rootObject<span class="operator">.</span>x<span class="operator">,</span> rootObject<span class="operator">.</span>y }</pre>
<p>This restriction exists as the QML environment is not yet fully established. To run code after the environment setup has completed, see <a href="QtQml.qtqml-javascript-expressions.md#javascript-in-application-startup-code">JavaScript in Application Startup Code</a>.</p>
</li>
<li>The value of <code>this</code> is currently undefined in QML in the majority of contexts.<p>The <code>this</code> keyword is supported when binding properties from JavaScript. In all other situations, the value of <code>this</code> is undefined in QML.</p>
<p>To refer to a specific object, provide an <code>id</code>. For example:</p>
<pre class="qml"><span class="type">Item</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="keyword">function</span> <span class="name">mouseAreaClicked</span>(<span class="name">area</span>) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Clicked in area at: &quot;</span> <span class="operator">+</span> <span class="name">area</span>.<span class="name">x</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">area</span>.<span class="name">y</span>);
}
<span class="comment">// This will not work because this is undefined</span>
<span class="type">MouseArea</span> {
<span class="name">height</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">200</span>
<span class="name">onClicked</span>: <span class="name">mouseAreaClicked</span>(this)
}
<span class="comment">// This will pass area2 to the function</span>
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">area2</span>
<span class="name">y</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">200</span>
<span class="name">onClicked</span>: <span class="name">mouseAreaClicked</span>(<span class="name">area2</span>)
}
}</pre>
</li>
</ul>
<!-- @@@qtqml-javascript-hostenvironment.html -->
