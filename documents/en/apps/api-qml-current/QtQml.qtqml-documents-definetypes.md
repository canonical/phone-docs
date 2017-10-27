---
Title: QtQml.qtqml-documents-definetypes
---

# QtQml.qtqml-documents-definetypes

<span class="subtitle"></span>
<!-- $$$qtqml-documents-definetypes.html-description -->
<p>One of the core features of QML is that it enables QML object types to be easily defined in a lightweight manner through QML documents to suit the needs of individual QML applications. The standard Qt Quick module provides various types like Rectangle, Text and Image for building a QML application; beyond these, you can easily define your own QML types to be reused within your application. This ability to create your own types forms the building blocks of any QML application.</p>
<h2 id="defining-an-object-type-with-a-qml-file">Defining an Object Type with a QML File</h2>
<p>To create an object type, a QML document should be placed into a text file named as <i>&lt;TypeName&gt;.qml</i> where <i>&lt;TypeName&gt;</i> is the desired name of the type, which must be comprised of alphanumeric characters or underscores and beginning with an uppercase letter. This document is then automatically recognized by the engine as a definition of a QML type. Additionally, a type defined in this manner is automatically made available to other QML files within the same directory as the engine searches within the immediate directory when resolving QML type names.</p>
<p>For example, below is a document that declares a Rectangle with a child MouseArea. The document has been saved to file named <code>SquareButton.qml</code>:</p>
<pre class="qml"><span class="comment">// SquareButton.qml</span>
import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Button clicked!&quot;</span>)
}
}</pre>
<p>Since the file is named <code>SquareButton.qml</code>, <b>this can now be used as a type named <code>SquareButton</code> by any other QML file within the same directory</b>. For example, if there was a <code>myapplication.qml</code> file in the same directory, it could refer to the <code>SquareButton</code> type:</p>
<pre class="qml"><span class="comment">// myapplication.qml</span>
import QtQuick 2.0
<span class="type">SquareButton</span> {}</pre>
<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/1775b72a-documents-definetypes-simple.png" alt="" /></p><p>This creates a 100 x 100 red Rectangle with an inner MouseArea, as defined in <code>SquareButton.qml</code>. When this <code>myapplication.qml</code> document is loaded by the engine, it loads the SquareButton.qml document as a component and instantiates it to create a <code>SquareButton</code> object.</p>
<p>The <code>SquareButton</code> type encapsulates the tree of QML objects declared in <code>SquareButton.qml</code>. When the QML engine instantiates a <code>SquareButton</code> object from this type, it is instantiating an object from the Rectangle tree declared in <code>SquareButton.qml</code>.</p>
<p><b>Note: </b>the letter case of the file name is significant on some (notably UNIX) filesystems. It is recommended the file name case matches the case of the desired QML type name exactly - for example, <code>Box.qml</code> and not <code>BoX.qml</code> - regardless of the platform to which the QML type will be deployed.</p>
<h3 >Importing Types Defined Outside the Current Directory</h3>
<p>If <code>SquareButton.qml</code> was not in the same directory as <code>myapplication.qml</code>, the <code>SquareButton</code> type would need to be specifically made available through an <i>import</i> statement in <code>myapplication.qml</code>. It could be imported from a relative path on the file system, or as an installed module; see <a href="QtQml.qtqml-modules-topic.md">module</a> for more details.</p>
<h2 id="accessible-attributes-of-custom-types">Accessible Attributes of Custom Types</h2>
<p>The <b>root object</b> definition in a .qml file <b>defines the attributes that are available for a QML type</b>. All properties, signals and methods that belong to this root object - whether they are custom declared, or come from the QML type of the root object - are externally accessible and can be read and modified for objects of this type.</p>
<p>For example, the root object type in the <code>SquareButton.qml</code> file above is Rectangle. This means any properties defined by the Rectangle type can be modified for a <code>SquareButton</code> object. The code below defines three <code>SquareButton</code> objects with customized values for some of the properties of the root Rectangle object of the <code>SquareButton</code> type:</p>
<pre class="qml"><span class="comment">// application.qml</span>
import QtQuick 2.0
<span class="type">Column</span> {
<span class="type">SquareButton</span> { <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
<span class="type">SquareButton</span> { <span class="name">x</span>: <span class="number">50</span>; <span class="name">color</span>: <span class="string">&quot;blue&quot;</span> }
<span class="type">SquareButton</span> { <span class="name">radius</span>: <span class="number">10</span> }
}</pre>
<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/d0d44e03-documents-definetypes-attributes.png" alt="" /></p><p>The attributes that are accessible to objects of the custom QML type include any <a href="QtQml.qtqml-syntax-objectattributes.md#defining-property-attributes">custom properties</a>, <a href="QtQml.qtqml-syntax-objectattributes.md#defining-method-attributes">methods</a> and <a href="QtQml.qtqml-syntax-objectattributes.md#defining-signal-attributes">signals</a> that have additionally been defined for an object. For example, suppose the Rectangle in <code>SquareButton.qml</code> had been defined as follows, with additional properties, methods and signals:</p>
<pre class="qml"><span class="comment">// SquareButton.qml</span>
import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">root</span>
property <span class="type">bool</span> <span class="name">pressed</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span>
signal <span class="type">buttonClicked</span>(real xPos, real yPos)
<span class="keyword">function</span> <span class="name">randomizeColor</span>() {
<span class="name">root</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>)
}
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">root</span>.<span class="name">buttonClicked</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
}
}</pre>
<p>Any <code>SquareButton</code> object could make use of the <code>pressed</code> property, <code>buttonClicked</code> signal and <code>randomizeColor()</code> method that have been added to the root Rectangle:</p>
<pre class="qml"><span class="comment">// application.qml</span>
import QtQuick 2.0
<span class="type">SquareButton</span> {
<span class="name">id</span>: <span class="name">squareButton</span>
<span class="name">onButtonClicked</span>: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Clicked&quot;</span>, <span class="name">xPos</span>, <span class="name">yPos</span>)
<span class="name">randomizeColor</span>()
}
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">squareButton</span>.<span class="name">pressed</span> ? <span class="string">&quot;Down&quot;</span> : <span class="string">&quot;Up&quot;</span> }
}</pre>
<p>Note that any of the <code>id</code> values defined in <code>SquareButton.qml</code> are not accessible to <code>SquareButton</code> objects, as id values are only accessible from within the component scope in which a component is declared. The <code>SquareButton</code> object definition above cannot refer to <code>mouseArea</code> in order to refer to the MouseArea child, and if it had an <code>id</code> of <code>root</code> rather than <code>squareButton</code>, this would not conflict with the <code>id</code> of the same value for the root object defined in <code>SquareButton.qml</code> as the two would be declared within separate scopes.</p>
<!-- @@@qtqml-documents-definetypes.html -->
