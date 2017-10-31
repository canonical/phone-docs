---
Title: QtQml.qtqml-syntax-directoryimports
---

# QtQml.qtqml-syntax-directoryimports

<span class="subtitle"></span>
<!-- $$$qtqml-syntax-directoryimports.html-description -->
<p>A local directory of QML files can be imported without any additional setup or configuration. A remote directory of QML files can also be imported, but requires a directory listing <code>qmldir</code> file to exist. A local directory may optionally contain a directory listing <code>qmldir</code> file in order to define the type names which should be provided to clients which import the directory, and to specify JavaScript resources which should be made available to importers.</p>
<h2 id="local-directory-imports">Local Directory Imports</h2>
<p>Any QML file on the local file system can import a local directory as using an import statement that refers to the directory's absolute or relative file system path, enabling the file to use the <a href="QtQml.qtqml-typesystem-objecttypes.md">object types</a> defined within that directory.</p>
<p>If the local directory contains a directory listing <code>qmldir</code> file, the types will be made available with the type names specified in the <code>qmldir</code> file; otherwise, they will be made available with type names derived from the filenames of the QML documents. Only filenames beginning with an uppercase letter and ending with &quot;.qml&quot; will be exposed as types if no <code>qmldir</code> file is specified in the directory.</p>
<h3 >An Example</h3>
<p>Consider the following QML project directory structure. Under the top level directory <code>myapp</code>, there are a set of common UI components in a sub-directory named <code>mycomponents</code>, and the main application code in a sub-directory named <code>main</code>, like this:</p>
<pre class="cpp">myapp
<span class="operator">|</span><span class="operator">-</span> mycomponents
<span class="operator">|</span><span class="operator">-</span> CheckBox<span class="operator">.</span>qml
<span class="operator">|</span><span class="operator">-</span> DialogBox<span class="operator">.</span>qml
<span class="operator">|</span><span class="operator">-</span> Slider<span class="operator">.</span>qml
<span class="operator">|</span><span class="operator">-</span> main
<span class="operator">|</span><span class="operator">-</span> application<span class="operator">.</span>qml</pre>
<p>The <code>main/application.qml</code> file can import the <code>mycomponents</code> directory using the relative path to that directory, allowing it to use the QML object types defined within that directory:</p>
<pre class="qml">import &quot;../mycomponents&quot;
<span class="type">DialogBox</span> {
<span class="type">CheckBox</span> {
<span class="comment">// ...</span>
}
<span class="type">Slider</span> {
<span class="comment">// ...</span>
}
}</pre>
<p>The directory may be imported into a qualified local namespace, in which case uses of any types provided in the directory must be qualified:</p>
<pre class="qml">import &quot;../mycomponents&quot; as MyComponents
<span class="type">MyComponents</span>.DialogBox {
<span class="comment">// ...</span>
}</pre>
<p>The ability to import a local directory is convenient for cases such as in-application component sets and application prototyping, although any code that imports such modules must update their relevant <code>import</code> statements if the module directory moves to another location. This can be avoided if <a href="QtQml.qtqml-modules-identifiedmodules.md">QML modules</a> are used instead, as an installed module is imported with a unique identifier string rather than a file system path.</p>
<h2 id="remotely-located-directories">Remotely Located Directories</h2>
<p>A directory of QML files can also be imported from a remote location if the directory contains a directory listing <code>qmldir</code> file.</p>
<p>For example, if the <code>myapp</code> directory in the previous example was hosted at &quot;http://www.my-example-server.com&quot;, and the <code>mycomponents</code> directory contained a <code>qmldir</code> file defined as follows:</p>
<pre class="cpp">CheckBox CheckBox<span class="operator">.</span>qml
DialogBox DialogBox<span class="operator">.</span>qml
Slider Slider<span class="operator">.</span>qml</pre>
<p>Then, the directory could be imported using the URL to the remote <code>mycomponents</code> directory:</p>
<pre class="qml">import &quot;http://www.my-example-server.com/myapp/mycomponents&quot;
<span class="type">DialogBox</span> {
<span class="type">CheckBox</span> {
<span class="comment">// ...</span>
}
<span class="type">Slider</span> {
<span class="comment">// ...</span>
}
}</pre>
<p>Note that when a file imports a directory over a network, it can only access QML and JavaScript files specified in the <code>qmldir</code> file located in the directory.</p>
<p><b>Warning:</b> When importing directories from a remote server, developers should always be careful to only load directories from trusted sources to avoid loading malicious code.</p>
<h2 id="directory-listing-qmldir-files">Directory Listing qmldir Files</h2>
<p>A directory listing <code>qmldir</code> file distinctly different from a <a href="QtQml.qtqml-modules-qmldir.md">module definition qmldir file</a>. A directory listing <code>qmldir</code> file allows a group of QML documents to be quickly and easily shared, but it does not define a type namespace into which the QML object types defined by the documents are registered, nor does it support versioning of those QML object types.</p>
<p>The syntax of a directory listing <code>qmldir</code> file is as follows:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Command</th><th >Syntax</th><th >Description</th></tr></thead>
<tr valign="top"><td >Object Type Declaration</td><td >&lt;TypeName&gt; &lt;FileName&gt;</td><td >An object type declaration allows a QML document to be exposed with the given <code>&lt;TypeName&gt;</code>.<p>Example:</p>
<pre class="cpp">RoundedButton RoundedBtn<span class="operator">.</span>qml</pre>
</td></tr>
<tr valign="top"><td >Internal Object Type Declaration</td><td >internal &lt;TypeName&gt; &lt;FileName&gt;</td><td >An internal object type declaration allows a QML document to be registered as a type which becomes available only to the other QML documents contained in the directory import. The internal type will not be made available to clients who import the directory.<p>Example:</p>
<pre class="cpp">internal HighlightedButton HighlightedBtn<span class="operator">.</span>qml</pre>
</td></tr>
<tr valign="top"><td >JavaScript Resource Declaration</td><td >&lt;Identifier&gt; &lt;FileName&gt;</td><td >A JavaScript resource declaration allows a JavaScript file to be exposed via the given identifier.<p>Example:</p>
<pre class="cpp">MathFunctions mathfuncs<span class="operator">.</span>js</pre>
</td></tr>
</table>
<p>A local file system directory may optionally include a <code>qmldir</code> file. This allows the engine to only expose certain QML types to clients who import the directory. Additionally, JavaScript resources in the directory are not exposed to clients unless they are declared in a <code>qmldir</code> file.</p>
<!-- @@@qtqml-syntax-directoryimports.html -->
