---
Title: QtQml.qtqml-syntax-basics
---

# QtQml.qtqml-syntax-basics

<span class="subtitle"></span>
<!-- $$$qtqml-syntax-basics.html-description -->
<p>QML is a multi-paradigm language that enables objects to be defined in terms of their attributes and how they relate and respond to changes in other objects. In contrast to purely imperative code, where changes in attributes and behavior are expressed through a series of statements that are processed step by step, QML's declarative syntax integrates attribute and behavioral changes directly into the definitions of individual objects. These attribute definitions can then include imperative code, in the case where complex custom application behavior is needed.</p>
<p>QML source code is generally loaded by the engine through QML <i>documents</i>, which are standalone documents of QML code. These can be used to define <a href="QtQml.qtqml-typesystem-objecttypes.md">QML object types</a> that can then be reused throughout an application.</p>
<h2 id="import-statements">Import Statements</h2>
<p>A QML document may have one or more imports at the top of the file. An import can be any one of:</p>
<ul>
<li>a versioned namespace into which types have been registered (e.g&#x2e;, by a plugin)</li>
<li>a relative directory which contains type-definitions as QML documents</li>
<li>a JavaScript file</li>
</ul>
<p>JavaScript file imports must be qualified when imported, so that the properties and methods they provide can be accessed.</p>
<p>The generic form of the various imports are as follows:</p>
<ul>
<li><code>import Namespace VersionMajor.VersionMinor</code></li>
<li><code>import Namespace VersionMajor.VersionMinor as SingletonTypeIdentifier</code></li>
<li><code>import &quot;directory&quot;</code></li>
<li><code>import &quot;file.js&quot; as ScriptIdentifier</code></li>
</ul>
<p>Examples:</p>
<ul>
<li><code>import QtQuick 2.0</code></li>
<li><code>import QtQuick.LocalStorage 2.0 as Database</code></li>
<li><code>import &quot;../privateComponents&quot;</code></li>
<li><code>import &quot;somefile.js&quot; as Script</code></li>
</ul>
<p>Please see the <a href="QtQml.qtqml-syntax-imports.md">QML Syntax - Import Statements</a> documentation for in-depth information about QML imports.</p>
<h2 id="object-declarations">Object Declarations</h2>
<p>Syntactically, a block of QML code defines a tree of QML objects to be created. Objects are defined using <i>object declarations</i> that describe the type of object to be created as well as the attributes that are to be given to the object. Each object may also declare child objects using nested object declarations.</p>
<p>An object declaration consists of the name of its object type, followed by a set of curly braces. All attributes and child objects are then declared within these braces.</p>
<p>Here is a simple object declaration:</p>
<pre class="qml"><span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}</pre>
<p>This declares an object of type Rectangle, followed by a set of curly braces that encompasses the attributes defined for that object. The Rectangle type is a type made available by the <code>QtQuick</code> module, and the attributes defined in this case are the values of the rectangle's <code>width</code>, <code>height</code> and <code>color</code> properties. (These are properties made available by the Rectangle type, as described in the Rectangle documentation.)</p>
<p>The above object can be loaded by the engine if it is part of a <a href="QtQml.qtqml-documents-topic.md">QML document</a>. That is, if the source code is complemented with <i>import</i> statement that imports the <code>QtQuick</code> module (to make the Rectangle type available), as below:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}</pre>
<p>When placed into a <code>.qml</code> file and loaded by the QML engine, the above code creates a Rectangle object using the Rectangle type supplied by the <code>QtQuick</code> module:</p>
<p class="centerAlign"><img src="../../../../media/qtqml-syntax-basics-object-declaration.png" alt="" /></p><p><b>Note: </b>If an object definition only has a small number of properties, it can be written on a single line like this, with the properties separated by semi-colons:</p><pre class="qml"><span class="type">Rectangle</span> { <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }</pre>
<p>Obviously, the Rectangle object declared in this example is very simple indeed, as it defines nothing more than a few property values. To create more useful objects, an object declaration may define many other types of attributes: these are discussed in the <a href="QtQml.qtqml-syntax-objectattributes.md">QML Object Attributes</a> documentation. Additionally, an object declaration may define child objects, as discussed below.</p>
<h3 >Child Objects</h3>
<p>Any object declaration can define child objects through nested object declarations. In this way, <b>any object declaration implicitly declares an object tree that may contain any number of child objects</b>.</p>
<p>For example, the Rectangle object declaration below includes a Gradient object declaration, which in turn contains two GradientStop declarations:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">gradient</span>: <span class="name">Gradient</span> {
<span class="type">GradientStop</span> { <span class="name">position</span>: <span class="number">0.0</span>; <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
<span class="type">GradientStop</span> { <span class="name">position</span>: <span class="number">1.0</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span> }
}
}</pre>
<p>When this code is loaded by the engine, it creates an object tree with a Rectangle object at the root; this object has a Gradient child object, which in turn has two GradientStop children.</p>
<p>Note, however, that this is a parent-child relationship in the context of the QML object tree, not in the context of the visual scene. The concept of a parent-child relationship in a visual scene is provided by the Item type from the <code>QtQuick</code> module, which is the base type for most QML types, as most QML objects are intended to be visually rendered. For example, Rectangle and Text are both Item-based types, and below, a Text object has been declared as a visual child of a Rectangle object:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">200</span>
<span class="name">height</span>: <span class="number">200</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type">Text</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Hello, QML!&quot;</span>
}
}</pre>
<p>When the Text object refers to its parent value in the above code, it is referring to its <i>visual parent</i>, not the parent in the object tree. In this case, they are one and the same: the Rectangle object is the parent of the Text object in both the context of the QML object tree as well as the context of the visual scene. However, while the parent property can be modified to change the visual parent, the parent of an object in the context of the object tree cannot be changed from QML.</p>
<p>(Additionally, notice that the Text object has been declared without assigning it to a property of the Rectangle, unlike the earlier example which assigned a Gradient object to the rectangle's <code>gradient</code> property. This is because the children property of Item has been set as the type's <a href="QtQml.qtqml-syntax-objectattributes.md#default-properties">default property</a> to enable this more convenient syntax.)</p>
<p>See the visual parent documentation for more information on the concept of visual parenting with the Item type.</p>
<h2 id="comments">Comments</h2>
<p>The syntax for commenting in QML is similar to that of JavaScript:</p>
<ul>
<li>Single line comments start with // and finish at the end of the line.</li>
<li>Multiline comments start with /* and finish with */</li>
</ul>
<pre class="qml"><span class="type">Text</span> {
<span class="name">text</span>: <span class="string">&quot;Hello world!&quot;</span>    <span class="comment">//a basic greeting</span>
<span class="comment">/*
We want this text to stand out from the rest so
we give it a large size and different font.
*/</span>
<span class="name">font</span>.family: <span class="string">&quot;Helvetica&quot;</span>
<span class="name">font</span>.pointSize: <span class="number">24</span>
}</pre>
<p>Comments are ignored by the engine when processing QML code. They are useful for explaining what a section of code is doing, whether for reference at a later date or for explaining the implementation to others.</p>
<p>Comments can also be used to prevent the execution of code, which is sometimes useful for tracking down problems.</p>
<pre class="qml">    <span class="type">Text</span> {
<span class="name">text</span>: <span class="string">&quot;Hello world!&quot;</span>
<span class="comment">//opacity: 0.5</span>
}</pre>
<p>In the above example, the Text object will have normal opacity, since the line opacity: 0.5 has been turned into a comment.</p>
<!-- @@@qtqml-syntax-basics.html -->
