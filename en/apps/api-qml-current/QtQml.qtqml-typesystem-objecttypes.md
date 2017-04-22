---
Title: QtQml.qtqml-typesystem-objecttypes
---

# QtQml.qtqml-typesystem-objecttypes

<span class="subtitle"></span>
<!-- $$$qtqml-typesystem-objecttypes.html-description -->
<p>A QML object type is a type from which a QML object can be instantiated.</p>
<p>In syntactic terms, a QML object type is one which can be used to declare an object by specifying the <i>type name</i> followed by a set of curly braces that encompasses the attributes of that object. This differs from <i>basic types</i>, which cannot be used in the same way. For example, Rectangle is a QML object type: it can be used to create <code>Rectangle</code> type objects. This cannot be done with primitive types such as <code>int</code> and <code>bool</code>, which are used to hold simple data types rather than objects.</p>
<p>Custom QML object types can be defined by creating a .qml file that defines the type, as discussed in <a href="QtQml.qtqml-documents-definetypes.md">Documents as QML object type definitions</a>, or by defining a QML type from C++ and registering the type with the QML engine, as discussed in <a href="QtQml.qtqml-cppintegration-definetypes.md">Defining QML Types from C++</a>.</p>
<h2 id="defining-object-types-from-qml">Defining Object Types from QML</h2>
<h3 >Defining Object Types through QML Documents</h3>
<p>Plugin writers and application developers may provide types defined as QML documents. A QML document, when visible to the QML import system, defines a type identified by the name of the file minus the file extensions.</p>
<p>Thus, if a QML document named &quot;MyButton.qml&quot; exists, it provides the definition of the &quot;MyButton&quot; type, which may be used in a QML application.</p>
<p>See the documentation about <a href="QtQml.qtqml-documents-topic.md">QML Documents</a> for information on how to define a QML document, and the syntax of the QML language. Once you are familiar with the QML language and how to define QML documents, see the documentation which explains how to <a href="QtQml.qtqml-documents-definetypes.md">define and use your own reusable QML types in QML documents</a>.</p>
<p>See <a href="QtQml.qtqml-documents-definetypes.md">Defining Object Types through QML Documents</a> for more information.</p>
<h3 >Defining Anonymous Types with Component</h3>
<p>Another method of creating object types from within QML is to use the <a href="QtQml.Component.md">Component</a> type. This allows a type to be defined inline within a QML document, instead of using a separate document in a <code>.qml</code> file.</p>
<pre class="qml"><span class="type">Item</span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="name">width</span>: <span class="number">500</span>; <span class="name">height</span>: <span class="number">500</span>
<span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">myComponent</span>
<span class="type">Rectangle</span> { <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
}
<span class="name">Component</span>.onCompleted: {
<span class="name">myComponent</span>.<span class="name">createObject</span>(<span class="name">root</span>)
<span class="name">myComponent</span>.<span class="name">createObject</span>(<span class="name">root</span>, {&quot;x&quot;: <span class="number">200</span>})
}
}</pre>
<p>Here the <code>myComponent</code> object essentially defines an anonymous type that can be instantiated using <a href="QtQml.Component.md#createObject-method">Component::createObject</a> to create objects of this anonymous type.</p>
<p>Inline components share all the characteristics of regular top-level components and use the same <code>import</code> list as their containing QML document.</p>
<p>Note that each <a href="QtQml.Component.md">Component</a> object declaration creates its own <i>component scope</i>. Any <i>id</i> values used and referred to from within a <a href="QtQml.Component.md">Component</a> object declaration must be unique within that scope, but do not need to be unique within the document within which the inline component is declared. So, the Rectangle declared in the <code>myComponent</code> object declaration could have an <i>id</i> of <code>root</code> without conflicting with the <code>root</code> declared for the Item object in the same document, as these two <i>id</i> values are declared within different component scopes.</p>
<p>See <a href="QtQml.qtqml-documents-scope.md">Scope and Naming Resolution</a> for more details.</p>
<h2 id="defining-object-types-from-c">Defining Object Types from C++</h2>
<p>C++ plugin writers and application developers may register types defined in C++ through API provided by the Qt QML module. There are various registration functions which each allow different use-cases to be fulfilled. For more information about those registration functions, and the specifics of exposing custom C++ types to QML, see the documentation regarding <a href="QtQml.qtqml-cppintegration-definetypes.md">Defining QML Types from C++</a>.</p>
<p>The QML type-system relies on imports, plugins and extensions being installed into a known import path. Plugins may be provided by third-party developers and reused by client application developers. Please see the documentation about <a href="QtQml.qtqml-modules-topic.md">QML modules</a> for more information about how to create and deploy a QML extension module.</p>
<!-- @@@qtqml-typesystem-objecttypes.html -->
