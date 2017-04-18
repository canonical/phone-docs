---
Title: QtQml.ListModel
---

# QtQml.ListModel

<span class="subtitle"></span>
<!-- $$$ListModel-brief -->
<p>Defines a free-form list data source More...</p>
<!-- @@@ListModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.Models 2.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#dynamicRoles-prop">dynamicRoles</a></b></b> : bool</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#append-method">append</a></b></b>(jsobject <i>dict</i>)</li>
<li class="fn"><b><b><a href="#clear-method">clear</a></b></b>()</li>
<li class="fn">object <b><b><a href="#get-method">get</a></b></b>(int <i>index</i>)</li>
<li class="fn"><b><b><a href="#insert-method">insert</a></b></b>(int <i>index</i>, jsobject <i>dict</i>)</li>
<li class="fn"><b><b><a href="#move-method">move</a></b></b>(int <i>from</i>, int <i>to</i>, int <i>n</i>)</li>
<li class="fn"><b><b><a href="#remove-method">remove</a></b></b>(int <i>index</i>, int <i>count</i>)</li>
<li class="fn"><b><b><a href="#set-method">set</a></b></b>(int <i>index</i>, jsobject <i>dict</i>)</li>
<li class="fn"><b><b><a href="#setProperty-method">setProperty</a></b></b>(int <i>index</i>, string <i>property</i>, variant <i>value</i>)</li>
<li class="fn"><b><b><a href="#sync-method">sync</a></b></b>()</li>
</ul>
<!-- $$$ListModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">ListModel</a> is a simple container of <a href="QtQml.ListElement.md">ListElement</a> definitions, each containing data roles. The contents can be defined dynamically, or explicitly in QML.</p>
<p>The number of elements in the model can be obtained from its <a href="#count-prop">count</a> property. A number of familiar methods are also provided to manipulate the contents of the model, including <a href="#append-method">append()</a>, <a href="#insert-method">insert()</a>, <a href="#move-method">move()</a>, <a href="#remove-method">remove()</a> and <a href="#set-method">set()</a>. These methods accept dictionaries as their arguments; these are translated to <a href="QtQml.ListElement.md">ListElement</a> objects by the model.</p>
<p>Elements can be manipulated via the model using the <a href="#setProperty-method">setProperty()</a> method, which allows the roles of the specified element to be set and changed.</p>
<h2 id="example-usage">Example Usage</h2>
<p>The following example shows a <a href="index.html">ListModel</a> containing three elements, with the roles &quot;name&quot; and &quot;cost&quot;.</p>
<p><img src="../../../../media/listmodel.png" alt="" /></p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">ListModel</a></span> {
<span class="name">id</span>: <span class="name">fruitModel</span>
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
<span class="name">name</span>: <span class="string">&quot;Apple&quot;</span>
<span class="name">cost</span>: <span class="number">2.45</span>
}
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
<span class="name">name</span>: <span class="string">&quot;Orange&quot;</span>
<span class="name">cost</span>: <span class="number">3.25</span>
}
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
<span class="name">name</span>: <span class="string">&quot;Banana&quot;</span>
<span class="name">cost</span>: <span class="number">1.95</span>
}
}</pre>
<p>Roles (properties) in each element must begin with a lower-case letter and should be common to all elements in a model. The <a href="QtQml.ListElement.md">ListElement</a> documentation provides more guidelines for how elements should be defined.</p>
<p>Since the example model contains an <code>id</code> property, it can be referenced by views, such as the ListView in this example:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type"><a href="index.html">ListModel</a></span> {
<span class="name">id</span>: <span class="name">fruitModel</span>
...
}
<span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">fruitDelegate</span>
<span class="type">Row</span> {
<span class="name">spacing</span>: <span class="number">10</span>
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">name</span> }
<span class="type">Text</span> { <span class="name">text</span>: <span class="string">'$'</span> <span class="operator">+</span> <span class="name">cost</span> }
}
}
<span class="type">ListView</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">fruitModel</span>
<span class="name">delegate</span>: <span class="name">fruitDelegate</span>
}
}</pre>
<p>It is possible for roles to contain list data. In the following example we create a list of fruit attributes:</p>
<pre class="qml"><span class="type"><a href="index.html">ListModel</a></span> {
<span class="name">id</span>: <span class="name">fruitModel</span>
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
<span class="name">name</span>: <span class="string">&quot;Apple&quot;</span>
<span class="name">cost</span>: <span class="number">2.45</span>
<span class="name">attributes</span>: [
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">description</span>: <span class="string">&quot;Core&quot;</span> },
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">description</span>: <span class="string">&quot;Deciduous&quot;</span> }
]
}
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
<span class="name">name</span>: <span class="string">&quot;Orange&quot;</span>
<span class="name">cost</span>: <span class="number">3.25</span>
<span class="name">attributes</span>: [
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">description</span>: <span class="string">&quot;Citrus&quot;</span> }
]
}
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> {
<span class="name">name</span>: <span class="string">&quot;Banana&quot;</span>
<span class="name">cost</span>: <span class="number">1.95</span>
<span class="name">attributes</span>: [
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">description</span>: <span class="string">&quot;Tropical&quot;</span> },
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">description</span>: <span class="string">&quot;Seedless&quot;</span> }
]
}
}</pre>
<p>The delegate displays all the fruit attributes:</p>
<p><img src="../../../../media/listmodel-nested.png" alt="" /></p>
<pre class="qml"><span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">fruitDelegate</span>
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="type">Text</span> { <span class="name">id</span>: <span class="name">nameField</span>; <span class="name">text</span>: <span class="name">name</span> }
<span class="type">Text</span> { <span class="name">text</span>: <span class="string">'$'</span> <span class="operator">+</span> <span class="name">cost</span>; <span class="name">anchors</span>.left: <span class="name">nameField</span>.<span class="name">right</span> }
<span class="type">Row</span> {
<span class="name">anchors</span>.top: <span class="name">nameField</span>.<span class="name">bottom</span>
<span class="name">spacing</span>: <span class="number">5</span>
<span class="type">Text</span> { <span class="name">text</span>: <span class="string">&quot;Attributes:&quot;</span> }
<span class="type">Repeater</span> {
<span class="name">model</span>: <span class="name">attributes</span>
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">description</span> }
}
}
}
}</pre>
<h2 id="modifying-list-models">Modifying List Models</h2>
<p>The content of a <a href="index.html">ListModel</a> may be created and modified using the <a href="#clear-method">clear()</a>, <a href="#append-method">append()</a>, <a href="#set-method">set()</a>, <a href="#insert-method">insert()</a> and <a href="#setProperty-method">setProperty()</a> methods. For example:</p>
<pre class="qml">    <span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">fruitDelegate</span>
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">name</span> }
<span class="type">Text</span> { <span class="name">text</span>: <span class="string">'$'</span> <span class="operator">+</span> <span class="name">cost</span>; <span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span> }
<span class="comment">// Double the price when clicked.</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">fruitModel</span>.<span class="name">setProperty</span>(<span class="name">index</span>, <span class="string">&quot;cost&quot;</span>, <span class="name">cost</span> <span class="operator">*</span> <span class="number">2</span>)
}
}
}</pre>
<p>Note that when creating content dynamically the set of available properties cannot be changed once set. Whatever properties are first added to the model are the only permitted properties in the model.</p>
<h2 id="using-threaded-list-models-with-workerscript">Using Threaded List Models with WorkerScript</h2>
<p><a href="index.html">ListModel</a> can be used together with <a href="QtQml.WorkerScript.md">WorkerScript</a> access a list model from multiple threads. This is useful if list modifications are synchronous and take some time: the list operations can be moved to a different thread to avoid blocking of the main GUI thread.</p>
<p>Here is an example that uses <a href="QtQml.WorkerScript.md">WorkerScript</a> to periodically append the current time to a list model:</p>
<pre class="qml">        <span class="type"><a href="QtQml.Timer.md">Timer</a></span> {
<span class="name">id</span>: <span class="name">timer</span>
<span class="name">interval</span>: <span class="number">2000</span>; <span class="name">repeat</span>: <span class="number">true</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="name">triggeredOnStart</span>: <span class="number">true</span>
<span class="name">onTriggered</span>: {
var <span class="name">msg</span> = {'action': <span class="string">'appendCurrentTime'</span>, 'model': <span class="name">listModel</span>};
<span class="name">worker</span>.<span class="name">sendMessage</span>(<span class="name">msg</span>);
}
}</pre>
<p>The included file, <code>dataloader.js</code>, looks like this:</p>
<pre class="js"><span class="name">WorkerScript</span>.<span class="name">onMessage</span> <span class="operator">=</span> <span class="keyword">function</span>(<span class="name">msg</span>) {
<span class="keyword">if</span> (<span class="name">msg</span>.<span class="name">action</span> <span class="operator">==</span> <span class="string">'appendCurrentTime'</span>) {
var <span class="name">data</span> = {'time': new <span class="name">Date</span>().<span class="name">toTimeString</span>()};
<span class="name">msg</span>.<span class="name">model</span>.<span class="name">append</span>(<span class="name">data</span>);
<span class="name">msg</span>.<span class="name">model</span>.<span class="name">sync</span>();   <span class="comment">// updates the changes to the list</span>
}
}</pre>
<p>The timer in the main example sends messages to the worker script by calling <a href="QtQml.WorkerScript.md#sendMessage-method">WorkerScript::sendMessage()</a>. When this message is received, <code>WorkerScript.onMessage()</code> is invoked in <code>dataloader.js</code>, which appends the current time to the list model.</p>
<p>Note the call to <a href="#sync-method">sync()</a> from the external thread. You must call <a href="#sync-method">sync()</a> or else the changes made to the list from that thread will not be reflected in the list model in the main thread.</p>
<p><b>See also </b>Data Models, Qt Quick Examples - Threading, and <a href="QtQml.qtqml-index.md">Qt QML</a>.</p>
<!-- @@@ListModel -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>The number of data entries in the model.</p>
<!-- @@@count -->
<br/>
<!-- $$$dynamicRoles -->
<table class="qmlname"><tr valign="top" id="dynamicRoles-prop"><td class="tblQmlPropNode"><p><span class="name">dynamicRoles</span> : <span class="type">bool</span></p></td></tr></table><p>By default, the type of a role is fixed the first time the role is used. For example, if you create a role called &quot;data&quot; and assign a number to it, you can no longer assign a string to the &quot;data&quot; role. However, when the dynamicRoles property is enabled, the type of a given role is not fixed and can be different between elements.</p>
<p>The dynamicRoles property must be set before any data is added to the <a href="index.html">ListModel</a>, and must be set from the main thread.</p>
<p>A <a href="index.html">ListModel</a> that has data statically defined (via the <a href="QtQml.ListElement.md">ListElement</a> QML syntax) cannot have the dynamicRoles property enabled.</p>
<p>There is a significant performance cost to using a <a href="index.html">ListModel</a> with dynamic roles enabled. The cost varies from platform to platform but is typically somewhere between 4-6x slower than using static role types.</p>
<p>Due to the performance cost of using dynamic roles, they are disabled by default.</p>
<!-- @@@dynamicRoles -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$append -->
<table class="qmlname"><tr valign="top" id="append-method"><td class="tblQmlFuncNode"><p><span class="name">append</span>(<span class="type">jsobject</span><i> dict</i>)</p></td></tr></table><p>Adds a new item to the end of the list model, with the values in <i>dict</i>.</p>
<pre class="cpp">fruitModel<span class="operator">.</span>append({<span class="string">&quot;cost&quot;</span>: <span class="number">5.95</span><span class="operator">,</span> <span class="string">&quot;name&quot;</span>:<span class="string">&quot;Pizza&quot;</span>})</pre>
<p><b>See also </b><a href="#set-method">set()</a> and <a href="#remove-method">remove()</a>.</p>
<!-- @@@append -->
<br/>
<!-- $$$clear -->
<table class="qmlname"><tr valign="top" id="clear-method"><td class="tblQmlFuncNode"><p><span class="name">clear</span>()</p></td></tr></table><p>Deletes all content from the model.</p>
<p><b>See also </b><a href="#append-method">append()</a> and <a href="#remove-method">remove()</a>.</p>
<!-- @@@clear -->
<br/>
<!-- $$$get -->
<table class="qmlname"><tr valign="top" id="get-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">get</span>(<span class="type">int</span><i> index</i>)</p></td></tr></table><p>Returns the item at <i>index</i> in the list model. This allows the item data to be accessed or modified from JavaScript:</p>
<pre class="cpp">Component<span class="operator">.</span>onCompleted: {
fruitModel<span class="operator">.</span>append({<span class="string">&quot;cost&quot;</span>: <span class="number">5.95</span><span class="operator">,</span> <span class="string">&quot;name&quot;</span>:<span class="string">&quot;Jackfruit&quot;</span>});
console<span class="operator">.</span>log(fruitModel<span class="operator">.</span>get(<span class="number">0</span>)<span class="operator">.</span>cost);
fruitModel<span class="operator">.</span>get(<span class="number">0</span>)<span class="operator">.</span>cost <span class="operator">=</span> <span class="number">10.95</span>;
}</pre>
<p>The <i>index</i> must be an element in the list.</p>
<p>Note that properties of the returned object that are themselves objects will also be models, and this get() method is used to access elements:</p>
<pre class="cpp">    fruitModel<span class="operator">.</span><a href="#append-method">append</a>(<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span><span class="operator">,</span> <span class="string">&quot;attributes&quot;</span>:
<span class="operator">[</span>{<span class="string">&quot;name&quot;</span>:<span class="string">&quot;spikes&quot;</span><span class="operator">,</span><span class="string">&quot;value&quot;</span>:<span class="string">&quot;7mm&quot;</span>}<span class="operator">,</span>
{<span class="string">&quot;name&quot;</span>:<span class="string">&quot;color&quot;</span><span class="operator">,</span><span class="string">&quot;value&quot;</span>:<span class="string">&quot;green&quot;</span>}<span class="operator">]</span>);
fruitModel<span class="operator">.</span>get(<span class="number">0</span>)<span class="operator">.</span>attributes<span class="operator">.</span>get(<span class="number">1</span>)<span class="operator">.</span>value; <span class="comment">// == &quot;green&quot;</span></pre>
<p><b>Warning:</b> The returned object is not guaranteed to remain valid. It should not be used in <a href="QtQml.qtqml-syntax-propertybinding.md">property bindings</a>.</p>
<p><b>See also </b><a href="#append-method">append()</a>.</p>
<!-- @@@get -->
<br/>
<!-- $$$insert -->
<table class="qmlname"><tr valign="top" id="insert-method"><td class="tblQmlFuncNode"><p><span class="name">insert</span>(<span class="type">int</span><i> index</i>, <span class="type">jsobject</span><i> dict</i>)</p></td></tr></table><p>Adds a new item to the list model at position <i>index</i>, with the values in <i>dict</i>.</p>
<pre class="cpp">fruitModel<span class="operator">.</span>insert(<span class="number">2</span><span class="operator">,</span> {<span class="string">&quot;cost&quot;</span>: <span class="number">5.95</span><span class="operator">,</span> <span class="string">&quot;name&quot;</span>:<span class="string">&quot;Pizza&quot;</span>})</pre>
<p>The <i>index</i> must be to an existing item in the list, or one past the end of the list (equivalent to append).</p>
<p><b>See also </b><a href="#set-method">set()</a> and <a href="#append-method">append()</a>.</p>
<!-- @@@insert -->
<br/>
<!-- $$$move -->
<table class="qmlname"><tr valign="top" id="move-method"><td class="tblQmlFuncNode"><p><span class="name">move</span>(<span class="type">int</span><i> from</i>, <span class="type">int</span><i> to</i>, <span class="type">int</span><i> n</i>)</p></td></tr></table><p>Moves <i>n</i> items <i>from</i> one position <i>to</i> another.</p>
<p>The from and to ranges must exist; for example, to move the first 3 items to the end of the list:</p>
<pre class="cpp">fruitModel<span class="operator">.</span>move(<span class="number">0</span><span class="operator">,</span> fruitModel<span class="operator">.</span>count <span class="operator">-</span> <span class="number">3</span><span class="operator">,</span> <span class="number">3</span>)</pre>
<p><b>See also </b><a href="#append-method">append()</a>.</p>
<!-- @@@move -->
<br/>
<!-- $$$remove -->
<table class="qmlname"><tr valign="top" id="remove-method"><td class="tblQmlFuncNode"><p><span class="name">remove</span>(<span class="type">int</span><i> index</i>, <span class="type">int</span><i> count</i> = 1)</p></td></tr></table><p>Deletes the content at <i>index</i> from the model.</p>
<p><b>See also </b><a href="#clear-method">clear()</a>.</p>
<!-- @@@remove -->
<br/>
<!-- $$$set -->
<table class="qmlname"><tr valign="top" id="set-method"><td class="tblQmlFuncNode"><p><span class="name">set</span>(<span class="type">int</span><i> index</i>, <span class="type">jsobject</span><i> dict</i>)</p></td></tr></table><p>Changes the item at <i>index</i> in the list model with the values in <i>dict</i>. Properties not appearing in <i>dict</i> are left unchanged.</p>
<pre class="cpp">fruitModel<span class="operator">.</span>set(<span class="number">3</span><span class="operator">,</span> {<span class="string">&quot;cost&quot;</span>: <span class="number">5.95</span><span class="operator">,</span> <span class="string">&quot;name&quot;</span>:<span class="string">&quot;Pizza&quot;</span>})</pre>
<p>If <i>index</i> is equal to count() then a new item is appended to the list. Otherwise, <i>index</i> must be an element in the list.</p>
<p><b>See also </b><a href="#append-method">append()</a>.</p>
<!-- @@@set -->
<br/>
<!-- $$$setProperty -->
<table class="qmlname"><tr valign="top" id="setProperty-method"><td class="tblQmlFuncNode"><p><span class="name">setProperty</span>(<span class="type">int</span><i> index</i>, <span class="type">string</span><i> property</i>, <span class="type">variant</span><i> value</i>)</p></td></tr></table><p>Changes the <i>property</i> of the item at <i>index</i> in the list model to <i>value</i>.</p>
<pre class="cpp">fruitModel<span class="operator">.</span>setProperty(<span class="number">3</span><span class="operator">,</span> <span class="string">&quot;cost&quot;</span><span class="operator">,</span> <span class="number">5.95</span>)</pre>
<p>The <i>index</i> must be an element in the list.</p>
<p><b>See also </b><a href="#append-method">append()</a>.</p>
<!-- @@@setProperty -->
<br/>
<!-- $$$sync -->
<table class="qmlname"><tr valign="top" id="sync-method"><td class="tblQmlFuncNode"><p><span class="name">sync</span>()</p></td></tr></table><p>Writes any unsaved changes to the list model after it has been modified from a worker script.</p>
<!-- @@@sync -->
<br/>
