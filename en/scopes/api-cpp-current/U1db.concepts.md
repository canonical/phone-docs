---
Title: U1db.concepts
---

# U1db.concepts

<span class="subtitle"></span>
<!-- $$$concepts.html-description -->
<p>This concept guide will describe a wide variety of U1Db-Qt functionality and usage. It will cover:</p>
<ol class="1">
<li>Overview of U1Db Documents and Databases</li>
<li>Creating Documents and Databases</li>
<li>Database keys and Document contents</li>
<li>Listing docId values in a Database</li>
<li>Retrieving Documents</li>
<li>Searching and retrieving Documents by docId</li>
<li>Modifying Existing Documents</li>
<li>Document Functions</li>
<li>Index expressions</li>
<li>Querying an index</li>
<li>Index functions</li>
<li>Blending the U1Db-Qt plugin with QML and Javascript</li>
<li>U1Db-Qt with QML Elements and Components</li>
<li>Using U1Db-Qt with elements and components that support models</li>
<li>Using U1Db-Qt with elements and components that do not utilize models</li>
<li>Using a Document without a Database</li>
</ol>
<h2 id="brief-description-of-u1db">Brief Description of U1DB</h2>
<p>U1DB is a database API for synchronised databases of JSON documents. Itâs simple to use in applications, and allows apps to store documents and synchronise them between machines and devices. U1DB is the database designed to work everywhere, backed by the platformâs native data storage capabilities. This means that you can use u1db on different platforms, from different languages, and backed on to different databases, and sync between all of them.</p>
<h2 id="what-is-the-difference-between-u1db-and-u1db-qt">What is the difference between U1DB and U1Db-Qt</h2>
<p>U1Db-Qt is the QML implementation of U1DB. It is a QML plugin written in C++ and allows for creating and manipulating U1DB databases via a more declarative approach within a QML application.</p>
<p>A Database is very simple to create. It only needs an id and a path where the file will be created. A Database is a model, which can be used by elements, such as the ListView further in this example.</p>
<pre class="qml"><span class="type">U1db</span>.Database {
<span class="name">id</span>: <span class="name">aDatabase</span>
<span class="name">path</span>: <span class="string">&quot;aU1DbDSatabase2&quot;</span>
}</pre>
<p>A Document can be declared at runtime. It requires at the very least a unique 'docId', but that alone won't do anything special. The snipet below snippet demonstrates the basic requirements.</p>
<p>In addition to this, this example displays text from the database for a specific docId and id key in a text area called 'documentContent. To update the text area at startup with either the default value or a value from the database the onCompleted function is utilized, which is also demonstrated below.</p>
<pre class="qml"><span class="type">U1db</span>.Document {
<span class="name">id</span>: <span class="name">aDocument</span>
<span class="name">database</span>: <span class="name">aDatabase</span>
<span class="name">docId</span>: <span class="string">'helloworld'</span>
<span class="name">create</span>: <span class="number">true</span>
<span class="name">defaults</span>: { &quot;helloworld&quot;:<span class="string">&quot;Hello World&quot;</span> }
<span class="name">Component</span>.onCompleted: {
<span class="name">documentContent</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">aDocument</span>.<span class="name">contents</span>.<span class="name">helloworld</span>
}
}</pre>
<p>It should be possible to use a document without a database, as demonstrated in this snippet. Additionally this document will use the concept of sub-keys, as exemplified by the &quot;bookmarks&quot; id key + contents. This example will attempt to use the bookmark document to store docId values from the database, which will be displayed in a ListView on the second tab of the application. The user will be able to select a value from the ListView and the first tab will be modified accordingly.</p>
<pre class="qml"><span class="type">U1db</span>.Document {
<span class="name">id</span>: <span class="name">aBookmarkDocument</span>
<span class="name">docId</span>: <span class="string">'bookmarks'</span>
<span class="name">create</span>: <span class="number">true</span>
<span class="name">defaults</span>: { &quot;bookmarks&quot;: [{}] }
}</pre>
<p>The listDocs method retrieves all the docId values from the current database. In this demonstration the values are put into an array, which is then checked to locate the docId for the current and previous documents within the database.</p>
<pre class="cpp">        var documentIds <span class="operator">=</span> documentObject<span class="operator">.</span>database<span class="operator">.</span>listDocs()
<span class="keyword">for</span>(var i <span class="operator">=</span> <span class="number">0</span>; i <span class="operator">&lt;</span> documentIds<span class="operator">.</span>length; i<span class="operator">+</span><span class="operator">+</span>){
<span class="keyword">if</span>(documentIds<span class="operator">[</span>i<span class="operator">]</span><span class="operator">=</span><span class="operator">=</span><span class="operator">=</span>documentObject<span class="operator">.</span>docId <span class="operator">&amp;</span><span class="operator">&amp;</span> i <span class="operator">&gt;</span> <span class="number">0</span>){
<span class="keyword">return</span> documentIds<span class="operator">[</span>i<span class="operator">-</span><span class="number">1</span><span class="operator">]</span>
}
<span class="keyword">else</span> <span class="keyword">if</span>(documentIds<span class="operator">[</span>i<span class="operator">]</span><span class="operator">=</span><span class="operator">=</span><span class="operator">=</span>documentObject<span class="operator">.</span>docId <span class="operator">&amp;</span><span class="operator">&amp;</span> i<span class="operator">=</span><span class="operator">=</span><span class="number">0</span>){
<span class="keyword">return</span> documentIds<span class="operator">[</span>documentIds<span class="operator">.</span>length<span class="operator">-</span><span class="number">1</span><span class="operator">]</span>
}
}</pre>
<p>These steps demonstrate the creation of a temporary document, based on a copy of the global document. This will then be used to determine if there is already a document in the database with the same docId as the address bar, and additionally with a key id with the same name.</p>
<pre class="cpp">         var tempFieldName <span class="operator">=</span> addressBarText;
var tempDocument <span class="operator">=</span> aDocument
tempDocument<span class="operator">.</span>docId <span class="operator">=</span> addressBarText;
var tempContents <span class="operator">=</span> tempDocument<span class="operator">.</span>contents</pre>
<p><b>Note: For simplicity sake this example sometimes uses the same value for both the docId and the key id, as seen here. Real life implimentations can and will differ, and this will be demonstrated elsewhere in the example code.</b></p>
<p>Here the contents of the temporary document are modified, which then replaces the global document.</p>
<pre class="cpp">             documentContent<span class="operator">.</span>text <span class="operator">=</span> <span class="char">'More Hello World...'</span>;
var tempContents <span class="operator">=</span> {}
tempContents<span class="operator">[</span>tempFieldName<span class="operator">]</span> <span class="operator">=</span> documentContent<span class="operator">.</span>text
tempDocument<span class="operator">.</span>contents <span class="operator">=</span> tempContents
aDocument <span class="operator">=</span> tempDocument</pre>
<p>In this instance the current document's content is updated from the text view. The unique key and docId are not modified because the database already contains a record with those properties.</p>
<pre class="cpp">         var tempContents <span class="operator">=</span> {}
tempFieldName <span class="operator">=</span> getCurrentDocumentKey(aDocument<span class="operator">.</span>contents)
tempContents<span class="operator">[</span>tempFieldName<span class="operator">]</span> <span class="operator">=</span> documentContent<span class="operator">.</span>text
aDocument<span class="operator">.</span>contents <span class="operator">=</span> tempContents</pre>
<p>Here a rectangle is defined that represents the lower portion of our application. It will contain all the main parts of the application.</p>
<pre class="qml">             <span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">45</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
<span class="name">color</span>: <span class="string">&quot;#00FFFFFF&quot;</span>
<span class="comment">// The remainder of the main part of the application goes here ...</span>
}</pre>
<p>The following <a href="../apps/api-qml-current/Ubuntu.Components.TextArea.md">TextArea</a> is for displaying contents for the current state of the global document, as defined by the key / name in the address bar.</p>
<pre class="qml">                     <span class="type"><a href="../apps/api-qml-current/Ubuntu.Components.TextArea.md">TextArea</a></span>{
<span class="name">id</span>: <span class="name">documentContent</span>
<span class="name">selectByMouse</span> : <span class="number">false</span>
<span class="name">x</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="name">y</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">43</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">58</span>)
<span class="name">color</span>: <span class="string">&quot;#000000&quot;</span>
}</pre>
<p>There is an object within in the 'aDocument' model defined earlier called 'contents', which contains a key called 'hello', which represents a search string. In this example the key will represent the name of a document in the database, which will be displayed in the address bar. Displaying the key is demonstrated here:</p>
<pre class="qml">                     <span class="type"><a href="../apps/api-qml-current/Ubuntu.Components.TextArea.md">TextArea</a></span>{
<span class="name">text</span>: <span class="name">displayKey</span>(<span class="name">aDocument</span>.<span class="name">contents</span>)
<span class="keyword">function</span> <span class="name">displayKey</span>(<span class="name">documentObject</span>){
var <span class="name">keys</span> = <span class="name">Object</span>.<span class="name">keys</span>(<span class="name">documentObject</span>);
<span class="keyword">return</span> <span class="name">keys</span>[<span class="number">0</span>]
}
}</pre>
<!-- @@@concepts.html -->
