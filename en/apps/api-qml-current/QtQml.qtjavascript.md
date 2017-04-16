---
Title: QtQml.qtjavascript
---

# QtQml.qtjavascript

<span class="subtitle"></span>
<!-- $$$qtjavascript.html-description -->
<p>Qt provides support for application scripting with JavaScript. The following guides and references cover aspects of programming with JavaScript and Qt.</p>
<h2 id="scripting-classes">Scripting Classes</h2>
<p>The following classes add scripting capabilities to Qt applications.</p>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QJSEngine</p></td><td class="tblDescr"><p>Environment for evaluating JavaScript code</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QJSValue</p></td><td class="tblDescr"><p>Acts as a container for Qt/JavaScript data types</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QJSValueIterator</p></td><td class="tblDescr"><p>Java-style iterator for QJSValue</p></td></tr>
</table>
<h2 id="basic-usage">Basic Usage</h2>
<p>To evaluate script code, you create a QJSEngine and call its evaluate() function, passing the script code (text) to evaluate as argument.</p>
<pre class="cpp"><span class="type">QJSEngine</span> engine;
qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;the magic number is:&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> engine<span class="operator">.</span>evaluate(<span class="string">&quot;1 + 2&quot;</span>)<span class="operator">.</span>toNumber();</pre>
<p>The return value will be the result of the evaluation (represented as a QJSValue object); this can be converted to standard C++ and Qt types.</p>
<p>Custom properties can be made available to scripts by registering them with the script engine. This is most easily done by setting properties of the script engine's <i>Global Object</i>:</p>
<pre class="cpp">engine<span class="operator">.</span>globalObject()<span class="operator">.</span>setProperty(<span class="string">&quot;foo&quot;</span><span class="operator">,</span> <span class="number">123</span>);
qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;foo times two is:&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> engine<span class="operator">.</span>evaluate(<span class="string">&quot;foo * 2&quot;</span>)<span class="operator">.</span>toNumber();</pre>
<p>This places the properties in the script environment, thus making them available to script code.</p>
<h2 id="making-a-qobject-available-to-the-script-engine">Making a QObject Available to the Script Engine</h2>
<p>Any QObject-based instance can be made available for use with scripts.</p>
<p>When a QObject is passed to the QJSEngine::newQObject() function, a Qt Script wrapper object is created that can be used to make the QObject's signals, slots, properties, and child objects available to scripts.</p>
<p>Here's an example of making an instance of a QObject subclass available to script code under the name <code>&quot;myObject&quot;</code>:</p>
<pre class="cpp"><span class="type">QJSEngine</span> engine;
<span class="type">QObject</span> <span class="operator">*</span>someObject <span class="operator">=</span> <span class="keyword">new</span> MyObject;
<span class="type">QJSValue</span> objectValue <span class="operator">=</span> engine<span class="operator">.</span>newQObject(someObject);
engine<span class="operator">.</span>globalObject()<span class="operator">.</span>setProperty(<span class="string">&quot;myObject&quot;</span><span class="operator">,</span> objectValue);</pre>
<p>This will create a global variable called <code>myObject</code> in the script environment. The variable serves as a proxy to the underlying C++ object. Note that the name of the script variable can be anything; i.e&#x2e;, it is not dependent upon QObject::objectName().</p>
<!-- @@@qtjavascript.html -->
