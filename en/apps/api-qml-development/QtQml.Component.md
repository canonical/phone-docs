---
Title: QtQml.Component
---

# QtQml.Component

<span class="subtitle"></span>
<!-- $$$Component-brief -->
<p>Encapsulates a QML component definition More...</p>
<!-- @@@Component -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml 2.2</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiates:</td><td class="memItemRight bottomAlign"> <a href="https://developer.ubuntu.com../qqmlcomponent.html">QQmlComponent</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#progress-prop">progress</a></b></b> : real</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#url-prop">url</a></b></b> : url</li>
</ul>
<h2 id="attached-signals">Attached Signals</h2>
<ul>
<li class="fn"><b><b><a href="#completed-signal">completed</a></b></b>()</li>
<li class="fn"><b><b><a href="#destruction-signal">destruction</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">object <b><b><a href="#createObject-method">createObject</a></b></b>(Item <i>parent</i>, object <i>properties</i>)</li>
<li class="fn">string <b><b><a href="#errorString-method">errorString</a></b></b>()</li>
<li class="fn">object <b><b><a href="#incubateObject-method">incubateObject</a></b></b>(Item <i>parent</i>, object <i>properties</i>, enumeration <i>mode</i>)</li>
</ul>
<!-- $$$Component-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Components are reusable, encapsulated QML types with well-defined interfaces.</p>
<p>Components are often defined by <a href="QtQml.qtqml-documents-topic.md">component files</a> - that is, <code>.qml</code> files. The <i>Component</i> type essentially allows QML components to be defined inline, within a <a href="QtQml.qtqml-documents-topic.md">QML document</a>, rather than as a separate QML file. This may be useful for reusing a small component within a QML file, or for defining a component that logically belongs with other QML components within a file.</p>
<p>For example, here is a component that is used by multiple Loader objects. It contains a single item, a Rectangle:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="index.html">Component</a></span> {
<span class="name">id</span>: <span class="name">redSquare</span>
<span class="type">Rectangle</span> {
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">10</span>
<span class="name">height</span>: <span class="number">10</span>
}
}
<span class="type">Loader</span> { <span class="name">sourceComponent</span>: <span class="name">redSquare</span> }
<span class="type">Loader</span> { <span class="name">sourceComponent</span>: <span class="name">redSquare</span>; <span class="name">x</span>: <span class="number">20</span> }
}</pre>
<p>Notice that while a Rectangle by itself would be automatically rendered and displayed, this is not the case for the above rectangle because it is defined inside a <code>Component</code>. The component encapsulates the QML types within, as if they were defined in a separate QML file, and is not loaded until requested (in this case, by the two Loader objects). Because Component is not derived from Item, you cannot anchor anything to it.</p>
<p>Defining a <code>Component</code> is similar to defining a <a href="QtQml.qtqml-documents-topic.md">QML document</a>. A QML document has a single top-level item that defines the behavior and properties of that component, and cannot define properties or behavior outside of that top-level item. In the same way, a <code>Component</code> definition contains a single top level item (which in the above example is a Rectangle) and cannot define any data outside of this item, with the exception of an <i>id</i> (which in the above example is <i>redSquare</i>).</p>
<p>The <code>Component</code> type is commonly used to provide graphical components for views. For example, the ListView::delegate property requires a <code>Component</code> to specify how each list item is to be displayed.</p>
<p><code>Component</code> objects can also be created dynamically using <a href="QtQml.Qt.md#createComponent-method">Qt.createComponent()</a>.</p>
<h3 >Creation Context</h3>
<p>The creation context of a Component corresponds to the context where the Component was declared. This context is used as the parent context (creating a <a href="QtQml.qtqml-documents-scope.md#component-instance-hierarchy">context hierarchy</a>) when the component is instantiated by an object such as a ListView or a Loader.</p>
<p>In the following example, <code>comp1</code> is created within the root context of MyItem.qml, and any objects instantiated from this component will have access to the ids and properties within that context, such as <code>internalSettings.color</code>. When <code>comp1</code> is used as a ListView delegate in another context (as in main.qml below), it will continue to have access to the properties of its creation context (which would otherwise be private to external users).</p>
<table class="generic">
<tr valign="top"><td >MyItem.qml</td><td >main.qml</td></tr>
<tr valign="top"><td ><pre class="qml"><span class="type">Item</span> {
property <span class="type"><a href="index.html">Component</a></span> <span class="name">mycomponent</span>: <span class="name">comp1</span>
<span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> {
<span class="name">id</span>: <span class="name">internalSettings</span>
property <span class="type">color</span> <span class="name">color</span>: <span class="string">&quot;green&quot;</span>
}
<span class="type"><a href="index.html">Component</a></span> {
<span class="name">id</span>: <span class="name">comp1</span>
<span class="type">Rectangle</span> { <span class="name">color</span>: <span class="name">internalSettings</span>.<span class="name">color</span>; <span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">50</span> }
}
}</pre>
</td><td ><pre class="qml"><span class="type">ListView</span> {
<span class="name">width</span>: <span class="number">400</span>; <span class="name">height</span>: <span class="number">400</span>
<span class="name">model</span>: <span class="number">5</span>
<span class="name">delegate</span>: <span class="name">myItem</span>.<span class="name">mycomponent</span>    <span class="comment">//will create green Rectangles</span>
<span class="type">MyItem</span> { <span class="name">id</span>: <span class="name">myItem</span> }
}</pre>
</td></tr>
</table>
<!-- @@@Component -->
<h2>Property Documentation</h2>
<!-- $$$progress -->
<table class="qmlname"><tr valign="top" id="progress-prop"><td class="tblQmlPropNode"><p><span class="name">progress</span> : <span class="type">real</span></p></td></tr></table><p>The progress of loading the component, from 0.0 (nothing loaded) to 1.0 (finished).</p>
<!-- @@@progress -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the status of component loading. The status can be one of the following:</p>
<ul>
<li>Component.Null - no data is available for the component</li>
<li>Component.Ready - the component has been loaded, and can be used to create instances.</li>
<li>Component.Loading - the component is currently being loaded</li>
<li>Component.Error - an error occurred while loading the component. Calling <a href="#errorString-method">errorString()</a> will provide a human-readable description of any errors.</li>
</ul>
<!-- @@@status -->
<br/>
<!-- $$$url -->
<table class="qmlname"><tr valign="top" id="url-prop"><td class="tblQmlPropNode"><p><span class="name">url</span> : <span class="type"><a href="#url-prop">url</a></span></p></td></tr></table><p>The component URL. This is the URL that was used to construct the component.</p>
<!-- @@@url -->
<br/>
<h2>Attached Signal Documentation</h2>
<!-- $$$completed -->
<table class="qmlname"><tr valign="top" id="completed-signal"><td class="tblQmlFuncNode"><p><span class="name">completed</span>()</p></td></tr></table><p>Emitted after the object has been instantiated. This can be used to execute script code at startup, once the full QML environment has been established.</p>
<p>The corresponding handler is <code>onCompleted</code>. It can be declared on any object. The order of running the <code>onCompleted</code> handlers is undefined.</p>
<pre class="qml"><span class="type">Rectangle</span> {
<span class="name">Component</span>.onCompleted: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Completed Running!&quot;</span>)
<span class="type">Rectangle</span> {
<span class="name">Component</span>.onCompleted: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Nested Completed Running!&quot;</span>)
}
}</pre>
<!-- @@@completed -->
<br/>
<!-- $$$destruction -->
<table class="qmlname"><tr valign="top" id="destruction-signal"><td class="tblQmlFuncNode"><p><span class="name">destruction</span>()</p></td></tr></table><p>Emitted as the object begins destruction. This can be used to undo work done in response to the <a href="#completed-signal">completed()</a> signal, or other imperative code in your application.</p>
<p>The corresponding handler is <code>onDestruction</code>. It can be declared on any object. The order of running the <code>onDestruction</code> handlers is undefined.</p>
<pre class="qml"><span class="type">Rectangle</span> {
<span class="name">Component</span>.onDestruction: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Destruction Beginning!&quot;</span>)
<span class="type">Rectangle</span> {
<span class="name">Component</span>.onDestruction: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Nested Destruction Beginning!&quot;</span>)
}
}</pre>
<p><b>See also </b><a href="QtQml.qtqml-index.md">Qt QML</a>.</p>
<!-- @@@destruction -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$createObject -->
<table class="qmlname"><tr valign="top" id="createObject-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">createObject</span>(<span class="type">Item</span><i> parent</i>, <span class="type">object</span><i> properties</i>)</p></td></tr></table><p>Creates and returns an object instance of this component that will have the given <i>parent</i> and <i>properties</i>. The <i>properties</i> argument is optional. Returns null if object creation fails.</p>
<p>The object will be created in the same context as the one in which the component was created. This function will always return null when called on components which were not created in QML.</p>
<p>If you wish to create an object without setting a parent, specify <code>null</code> for the <i>parent</i> value. Note that if the returned object is to be displayed, you must provide a valid <i>parent</i> value or set the returned object's parent property, otherwise the object will not be visible.</p>
<p>If a <i>parent</i> is not provided to createObject(), a reference to the returned object must be held so that it is not destroyed by the garbage collector. This is true regardless of whether Item::parent is set afterwards, because setting the Item parent does not change object ownership. Only the graphical parent is changed.</p>
<p>As of <code>QtQuick 1.1</code>, this method accepts an optional <i>properties</i> argument that specifies a map of initial property values for the created object. These values are applied before the object creation is finalized. This is more efficient than setting property values after object creation, particularly where large sets of property values are defined, and also allows property bindings to be set up (using <a href="QtQml.Qt.md#binding-method">Qt.binding</a>) before the object is created.</p>
<p>The <i>properties</i> argument is specified as a map of property-value items. For example, the code below creates an object with initial <code>x</code> and <code>y</code> values of 100 and 100, respectively:</p>
<pre class="js">var <span class="name">component</span> = <span class="name">Qt</span>.<span class="name">createComponent</span>(<span class="string">&quot;Button.qml&quot;</span>);
<span class="keyword">if</span> (<span class="name">component</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Ready</span>)
<span class="name">component</span>.<span class="name">createObject</span>(<span class="name">parent</span>, {&quot;x&quot;: <span class="number">100</span>, &quot;y&quot;: <span class="number">100</span>});</pre>
<p>Dynamically created instances can be deleted with the <code>destroy()</code> method. See <a href="QtQml.qtqml-javascript-dynamicobjectcreation.md">Dynamic QML Object Creation from JavaScript</a> for more information.</p>
<p><b>See also </b><a href="#incubateObject-method">incubateObject()</a>.</p>
<!-- @@@createObject -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">errorString</span>()</p></td></tr></table><p>Returns a human-readable description of any error.</p>
<p>The string includes the file, location, and description of each error. If multiple errors are present, they are separated by a newline character.</p>
<p>If no errors are present, an empty string is returned.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$incubateObject -->
<table class="qmlname"><tr valign="top" id="incubateObject-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">incubateObject</span>(<span class="type">Item</span><i> parent</i>, <span class="type">object</span><i> properties</i>, <span class="type">enumeration</span><i> mode</i>)</p></td></tr></table><p>Creates an incubator for an instance of this component. Incubators allow new component instances to be instantiated asynchronously and do not cause freezes in the UI.</p>
<p>The <i>parent</i> argument specifies the parent the created instance will have. Omitting the parameter or passing null will create an object with no parent. In this case, a reference to the created object must be held so that it is not destroyed by the garbage collector.</p>
<p>The <i>properties</i> argument is specified as a map of property-value items which will be set on the created object during its construction. <i>mode</i> may be Qt.Synchronous or Qt.Asynchronous, and controls whether the instance is created synchronously or asynchronously. The default is asynchronous. In some circumstances, even if Qt.Synchronous is specified, the incubator may create the object asynchronously. This happens if the component calling incubateObject() is itself being created asynchronously.</p>
<p>All three arguments are optional.</p>
<p>If successful, the method returns an incubator, otherwise null. The incubator has the following properties:</p>
<ul>
<li>status The status of the incubator. Valid values are Component.Ready, Component.Loading and Component.Error.</li>
<li>object The created object instance. Will only be available once the incubator is in the Ready status.</li>
<li>onStatusChanged Specifies a callback function to be invoked when the status changes. The status is passed as a parameter to the callback.</li>
<li>forceCompletion() Call to complete incubation synchronously.</li>
</ul>
<p>The following example demonstrates how to use an incubator:</p>
<pre class="js">var <span class="name">component</span> = <span class="name">Qt</span>.<span class="name">createComponent</span>(<span class="string">&quot;Button.qml&quot;</span>);
var <span class="name">incubator</span> = <span class="name">component</span>.<span class="name">incubateObject</span>(<span class="name">parent</span>, { x: <span class="number">10</span>, y: <span class="number">10</span> });
<span class="keyword">if</span> (<span class="name">incubator</span>.<span class="name">status</span> <span class="operator">!=</span> <span class="name">Component</span>.<span class="name">Ready</span>) {
<span class="name">incubator</span>.<span class="name">onStatusChanged</span> <span class="operator">=</span> <span class="keyword">function</span>(<span class="name">status</span>) {
<span class="keyword">if</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">Component</span>.<span class="name">Ready</span>) {
<span class="name">print</span> (<span class="string">&quot;Object&quot;</span>, <span class="name">incubator</span>.<span class="name">object</span>, <span class="string">&quot;is now ready!&quot;</span>);
}
}
} <span class="keyword">else</span> {
<span class="name">print</span> (<span class="string">&quot;Object&quot;</span>, <span class="name">incubator</span>.<span class="name">object</span>, <span class="string">&quot;is ready immediately!&quot;</span>);
}</pre>
<p>Dynamically created instances can be deleted with the <code>destroy()</code> method. See <a href="QtQml.qtqml-javascript-dynamicobjectcreation.md">Dynamic QML Object Creation from JavaScript</a> for more information.</p>
<p><b>See also </b><a href="#createObject-method">createObject()</a>.</p>
<!-- @@@incubateObject -->
<br/>
