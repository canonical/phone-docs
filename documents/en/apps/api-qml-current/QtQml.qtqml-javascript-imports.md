---
Title: QtQml.qtqml-javascript-imports
---

# QtQml.qtqml-javascript-imports

<span class="subtitle"></span>
<!-- $$$qtqml-javascript-imports.html-description -->
<p>JavaScript resources may be imported by QML documents and other JavaScript resources. JavaScript resources may be imported via either relative or absolute URLs. In the case of a relative URL, the location is resolved relative to the location of the QML document or JavaScript Resource that contains the import. If the script file is not accessible, an error will occur. If the JavaScript needs to be fetched from a network resource, the component's status is set to &quot;Loading&quot; until the script has been downloaded.</p>
<p>JavaScript resources may also import QML modules and other JavaScript resources. The syntax of an import statement within a JavaScript resource differs slightly from an import statement within a QML document, which is documented thoroughly below.</p>
<h2 id="importing-a-javascript-resource-from-a-qml-document">Importing a JavaScript Resource from a QML Document</h2>
<p>A QML document may import a JavaScript resource with the following syntax:</p>
<pre class="cpp">import <span class="string">&quot;ResourceURL&quot;</span> as Qualifier</pre>
<p>For example:</p>
<pre class="cpp">import <span class="string">&quot;jsfile.js&quot;</span> as Logic</pre>
<p>Imported JavaScript resources are always qualified using the &quot;as&quot; keyword. The qualifier for JavaScript resources must be unique, so there is always a one-to-one mapping between qualifiers and JavaScript files. (This also means qualifiers cannot be named the same as built-in JavaScript objects such as <code>Date</code> and <code>Math</code>).</p>
<p>The functions defined in an imported JavaScript file are available to objects defined in the importing QML document, via the <code>&quot;Qualifier.functionName(params)&quot;</code> syntax. Functions in JavaScript resources may take parameters whose type can be any of the supported QML basic types or object types, as well as normal JavaScript types. The normal <a href="QtQml.qtqml-cppintegration-data.md">data type conversion rules</a> will apply to parameters and return values when calling such functions from QML.</p>
<h2 id="imports-within-javascript-resources">Imports Within JavaScript Resources</h2>
<p>In <code>QtQuick 2.0</code>, support has been added to allow JavaScript resources to import other JavaScript resources and also QML type namespaces using a variation of the standard QML import syntax (where all of the previously described rules and qualifications apply).</p>
<p>Due to the ability of a JavaScript resource to import another script or QML module in this fashion in <code>QtQuick 2.0</code>, some extra semantics are defined:</p>
<ul>
<li>a script with imports will not inherit imports from the QML document which imported it (so accessing Component.errorString will fail, for example)</li>
<li>a script without imports will inherit imports from the QML document which imported it (so accessing Component.errorString will succeed, for example)</li>
<li>a shared script (i.e&#x2e;, defined as .pragma library) does not inherit imports from any QML document even if it imports no other scripts or modules</li>
</ul>
<p>The first semantic is conceptually correct, given that a particular script might be imported by any number of QML files. The second semantic is retained for the purposes of backwards-compatibility. The third semantic remains unchanged from the current semantics for shared scripts, but is clarified here in respect to the newly possible case (where the script imports other scripts or modules).</p>
<h3 >Importing a JavaScript Resource from Another JavaScript Resource</h3>
<p>A JavaScript resource may import another in the following fashion:</p>
<pre class="cpp"><span class="operator">.</span>import <span class="string">&quot;filename.js&quot;</span> as Qualifier</pre>
<p>For example:</p>
<pre class="cpp"><span class="operator">.</span>import <span class="string">&quot;factorial.js&quot;</span> as MathFunctions</pre>
<h3 >Importing a QML Module from a JavaScript Resource</h3>
<p>A JavaScript resource may import a QML module in the following fashion:</p>
<pre class="cpp"><span class="operator">.</span>import TypeNamespace MajorVersion<span class="operator">.</span>MinorVersion as Qualifier</pre>
<p>For example:</p>
<pre class="cpp"><span class="operator">.</span>import <span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>test <span class="number">1.0</span> as JsQtTest</pre>
<p>In particular, this may be useful in order to access functionality provided via a singleton type; see qmlRegisterSingletonType() for more information.</p>
<p><b>Note: </b>The .import syntax doesn't work for scripts used in the <a href="QtQml.WorkerScript.md">WorkerScript</a></p>
<h2 id="including-a-javascript-resource-from-another-javascript-resource">Including a JavaScript Resource from Another JavaScript Resource</h2>
<p>When a JavaScript file is imported, it must be imported with a qualifier. The functions in that file are then accessible from the importing script via the qualifier (that is, as <code>Qualifier.functionName(params)</code>). Sometimes it is desirable to have the functions made available in the importing context without needing to qualify them, and in this circumstance the <a href="QtQml.Qt.md#include-method">Qt.include()</a> function may be used to include one JavaScript file from another. This copies all functions from the other file into the current file's namespace, but ignores all pragmas and imports defined in that file.</p>
<p>For example, the QML code below left calls <code>showCalculations()</code> in <code>script.js</code>, which in turn can call <code>factorial()</code> in <code>factorial.js</code>, as it has included <code>factorial.js</code> using <a href="QtQml.Qt.md#include-method">Qt.include()</a>.</p>
<table class="generic">
<tr valign="top"><td  rowspan="2"><pre class="qml">import QtQuick 2.0
import &quot;script.js&quot; as MyScript
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
<span class="name">MyScript</span>.<span class="name">showCalculations</span>(<span class="number">10</span>)
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Call factorial() from QML:&quot;</span>,
<span class="name">MyScript</span>.<span class="name">factorial</span>(<span class="number">10</span>))
}
}
}</pre>
</td><td ><pre class="js"><span class="comment">// script.js</span>
<span class="name">Qt</span>.<span class="name">include</span>(<span class="string">&quot;factorial.js&quot;</span>)
<span class="keyword">function</span> <span class="name">showCalculations</span>(<span class="name">value</span>) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Call factorial() from script.js:&quot;</span>,
<span class="name">factorial</span>(<span class="name">value</span>));
}</pre>
</td></tr>
<tr valign="top"><td ><pre class="js"><span class="comment">// factorial.js</span>
<span class="keyword">function</span> <span class="name">factorial</span>(<span class="name">a</span>) {
<span class="name">a</span> <span class="operator">=</span> <span class="name">parseInt</span>(<span class="name">a</span>);
<span class="keyword">if</span> (<span class="name">a</span> <span class="operator">&lt;=</span> <span class="number">0</span>)
<span class="keyword">return</span> <span class="number">1</span>;
<span class="keyword">else</span>
<span class="keyword">return</span> <span class="name">a</span> <span class="operator">*</span> <span class="name">factorial</span>(<span class="name">a</span> <span class="operator">-</span> <span class="number">1</span>);
}</pre>
</td></tr>
</table>
<p>Notice that calling <a href="QtQml.Qt.md#include-method">Qt.include()</a> copies all functions from <code>factorial.js</code> into the <code>MyScript</code> namespace, which means the QML component can also access <code>factorial()</code> directly as <code>MyScript.factorial()</code>.</p>
<!-- @@@qtqml-javascript-imports.html -->
