---
Title: QtQml.qtqml-typesystem-basictypes
---

# QtQml.qtqml-typesystem-basictypes

<span class="subtitle"></span>
<!-- $$$qtqml-typesystem-basictypes.html-description -->
<p>QML supports a number of basic types.</p>
<p>A <i>basic type</i> is one that refers to a simple value, such as an <code>int</code> or a <code>string</code>. This contrasts with a <a href="QtQml.qtqml-typesystem-topic.md#qml-object-types">QML Object Types</a>, which refers to an object with properties, signals, methods and so on. Unlike an object type, a basic type cannot be used to declare QML objects: it is not possible, for example, to declare an <code>int{}</code> object or a <code>size{}</code> object.</p>
<p>Basic types can be used to refer to:</p>
<ul>
<li>A single value (e.g&#x2e; int refers to a single number, var can refer to a single list of items)</li>
<li>A value that contains a simple set of property-value pairs (e.g&#x2e; size refers to a value with <code>width</code> and <code>height</code> attributes)</li>
</ul>
<h2 id="supported-basic-types">Supported Basic Types</h2>
<p>Some basic types are supported by the engine by default and do not require an <a href="QtQml.qtqml-syntax-imports.md">import statement</a> to be used, while others do require the client to import the module which provides them. All of the basic types listed below may be used as a <code>property</code> type in a QML document, with the following exceptions:</p>
<ul>
<li><code>list</code> must be used in conjunction with a QML object type</li>
<li><code>enumeration</code> cannot be used directly as the enumeration must be defined by a registered QML object type</li>
</ul>
<h3 >Basic Types Provided By The QML Language</h3>
<p>The basic types supported natively in the QML language are listed below: <table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>bool</p></td><td class="tblDescr"><p>Binary true/false value</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>double</p></td><td class="tblDescr"><p>Number with a decimal point, stored in double precision</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>enumeration</p></td><td class="tblDescr"><p>Named enumeration value</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>int</p></td><td class="tblDescr"><p>Whole number, e.g&#x2e; 0, 10, or -20</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>list</p></td><td class="tblDescr"><p>List of QML objects</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>real</p></td><td class="tblDescr"><p>Number with a decimal point</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>string</p></td><td class="tblDescr"><p>Free form text string</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>url</p></td><td class="tblDescr"><p>Resource locator</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>var</p></td><td class="tblDescr"><p>Generic property type</p></td></tr>
</table>
</p>
<h3 >Basic Types Provided By QML Modules</h3>
<p>QML modules may extend the QML language with more basic types. For example, the basic types provided by the <code>QtQuick</code> module are listed below: <table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>date</p></td><td class="tblDescr"><p>Date value</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>point</p></td><td class="tblDescr"><p>Value with x and y attributes</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>rect</p></td><td class="tblDescr"><p>Value with x, y, width and height attributes</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>size</p></td><td class="tblDescr"><p>Value with width and height attributes</p></td></tr>
</table>
</p>
<p>The <a href="QtQml.Qt.md">Qt</a> global object provides useful functions for manipulating values of basic types.</p>
<p>Currently only QML modules which are provided by Qt may provide their own basic types, however this may change in future releases of Qt QML. In order to use types provided by a particular QML module, clients must import that module in their QML documents.</p>
<h2 id="property-change-behavior-for-basic-types">Property Change Behavior for Basic Types</h2>
<p>Some basic types have properties: for example, the font type has <code>pixelSize</code>, <code>family</code> and <code>b</code> properties. Unlike properties of <a href="QtQml.qtqml-typesystem-topic.md#qml-object-types">object types</a>, properties of basic types do not provide their own property change signals. It is only possible to create a property change signal handler for the basic type property itself:</p>
<pre class="cpp">Text {
<span class="comment">// invalid!</span>
onFont<span class="operator">.</span>pixelSizeChanged: doSomething()
<span class="comment">// also invalid!</span>
font {
onPixelSizeChanged: doSomething()
}
<span class="comment">// but this is ok</span>
onFontChanged: doSomething()
}</pre>
<p>Be aware, however, that a property change signal for a basic type is emitted whenever <i>any</i> of its attributes have changed, as well as when the property itself changes. Take the following code, for example:</p>
<pre class="qml"><span class="type">Text</span> {
<span class="name">onFontChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;font changed&quot;</span>)
<span class="type">Text</span> { <span class="name">id</span>: <span class="name">otherText</span> }
<span class="name">focus</span>: <span class="number">true</span>
<span class="comment">// changing any of the font attributes, or reassigning the property</span>
<span class="comment">// to a different font value, will invoke the onFontChanged handler</span>
<span class="name">Keys</span>.onDigit1Pressed: <span class="name">font</span>.<span class="name">pixelSize</span> <span class="operator">+=</span> <span class="number">1</span>
<span class="name">Keys</span>.onDigit2Pressed: <span class="name">font</span>.<span class="name">b</span> <span class="operator">=</span> !<span class="name">font</span>.<span class="name">b</span>
<span class="name">Keys</span>.onDigit3Pressed: <span class="name">font</span> <span class="operator">=</span> <span class="name">otherText</span>.<span class="name">font</span>
}</pre>
<p>In contrast, properties of an <a href="QtQml.qtqml-typesystem-topic.md#qml-object-types">object type</a> emit their own property change signals, and a property change signal handler for an object-type property is only invoked when the property is reassigned to a different object value.</p>
<p><b>See also </b><a href="QtQml.qtqml-typesystem-topic.md">The QML Type System</a>.</p>
<!-- @@@qtqml-typesystem-basictypes.html -->
