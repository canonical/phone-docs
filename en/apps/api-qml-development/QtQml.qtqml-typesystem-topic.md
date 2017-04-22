---
Title: QtQml.qtqml-typesystem-topic
---

# QtQml.qtqml-typesystem-topic

<span class="subtitle"></span>
<!-- $$$qtqml-typesystem-topic.html-description -->
<p>The types which may be used in the definition of an object hierarchy in a QML document can come from various sources. They may be:</p>
<ul>
<li>provided natively by the QML language</li>
<li>registered via C++ by QML modules</li>
<li>provided as QML documents by QML modules</li>
</ul>
<p>Furthermore, application developers can provide their own types, either by registering C++ types directly, or by defining reusable components in QML documents which can then be imported.</p>
<p>Wherever the type definitions come from, the engine will enforce type-safety for properties and instances of those types.</p>
<h2 id="basic-types">Basic Types</h2>
<p>The QML language has built-in support for various primitive types including integers, double-precision floating point numbers, strings, and boolean values. Objects may have properties of these types, and values of these types may be passed as arguments to methods of objects.</p>
<p>See the <a href="QtQml.qtqml-typesystem-basictypes.md">QML Basic Types</a> documentation for more information about basic types.</p>
<h2 id="javascript-types">JavaScript Types</h2>
<p>JavaScript objects and arrays are supported by the QML engine. Any standard JavaScript type can be created and stored using the generic var type.</p>
<p>For example, the standard <code>Date</code> and <code>Array</code> types are available, as below:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Item</span> {
property <span class="type">var</span> <span class="name">theArray</span>: new <span class="name">Array</span>()
property <span class="type">var</span> <span class="name">theDate</span>: new <span class="name">Date</span>()
<span class="name">Component</span>.onCompleted: {
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">10</span>; i++)
<span class="name">theArray</span>.<span class="name">push</span>(<span class="string">&quot;Item &quot;</span> <span class="operator">+</span> <span class="name">i</span>)
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;There are&quot;</span>, <span class="name">theArray</span>.<span class="name">length</span>, <span class="string">&quot;items in the array&quot;</span>)
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The time is&quot;</span>, <span class="name">theDate</span>.<span class="name">toUTCString</span>())
}
}</pre>
<p>See <a href="QtQml.qtqml-javascript-expressions.md">JavaScript Expressions in QML Documents</a> for more details.</p>
<h2 id="qml-object-types">QML Object Types</h2>
<p>A QML object type is a type from which a QML object can be instantiated. QML object types are derived from <a href="QtQml.QtObject.md">QtObject</a>, and are provided by QML modules. Applications can import these modules to use the object types they provide. The <code>QtQuick</code> module provides the most common object types needed to create user interfaces in QML.</p>
<p>Finally, every QML document implicitly defines a QML object type, which can be re-used in other QML documents. See the documentation about <a href="QtQml.qtqml-typesystem-objecttypes.md">object types in the QML type system</a> for in-depth information about object types.</p>
<!-- @@@qtqml-typesystem-topic.html -->
