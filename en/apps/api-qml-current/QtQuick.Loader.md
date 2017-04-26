---
Title: QtQuick.Loader
---

# QtQuick.Loader

<span class="subtitle"></span>
<!-- $$$Loader-brief -->
<p>Allows dynamic loading of a subtree from a URL or Component More...</p>
<!-- @@@Loader -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#active-prop">active</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#asynchronous-prop">asynchronous</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#item-prop">item</a></b></b> : object</li>
<li class="fn"><b><b><a href="#progress-prop">progress</a></b></b> : real</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
<li class="fn"><b><b><a href="#sourceComponent-prop">sourceComponent</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#loaded-signal">loaded</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">object <b><b><a href="#setSource-method">setSource</a></b></b>(url <i>source</i>, object <i>properties</i>)</li>
</ul>
<!-- $$$Loader-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Loader is used to dynamically load QML components.</p>
<p>Loader can load a QML file (using the <a href="#source-prop">source</a> property) or a Component object (using the <a href="#sourceComponent-prop">sourceComponent</a> property). It is useful for delaying the creation of a component until it is required: for example, when a component should be created on demand, or when a component should not be created unnecessarily for performance reasons.</p>
<p>Here is a Loader that loads &quot;Page1.qml&quot; as a component when the <a href="QtQuick.MouseArea.md">MouseArea</a> is clicked:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type"><a href="index.html">Loader</a></span> { <span class="name">id</span>: <span class="name">pageLoader</span> }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">pageLoader</span>.<span class="name">source</span> <span class="operator">=</span> <span class="string">&quot;Page1.qml&quot;</span>
}
}</pre>
<p>The loaded object can be accessed using the <a href="#item-prop">item</a> property.</p>
<p>If the <a href="#source-prop">source</a> or <a href="#sourceComponent-prop">sourceComponent</a> changes, any previously instantiated items are destroyed. Setting <a href="#source-prop">source</a> to an empty string or setting <a href="#sourceComponent-prop">sourceComponent</a> to <code>undefined</code> destroys the currently loaded object, freeing resources and leaving the Loader empty.</p>
<h3 >Loader sizing behavior</h3>
<p>If the source component is not an Item type, Loader does not apply any special sizing rules. When used to load visual types, Loader applies the following sizing rules:</p>
<ul>
<li>If an explicit size is not specified for the Loader, the Loader is automatically resized to the size of the loaded item once the component is loaded.</li>
<li>If the size of the Loader is specified explicitly by setting the width, height or by anchoring, the loaded item will be resized to the size of the Loader.</li>
</ul>
<p>In both scenarios the size of the item and the Loader are identical. This ensures that anchoring to the Loader is equivalent to anchoring to the loaded item.</p>
<table class="generic">
<tr valign="top"><td >sizeloader.qml</td><td >sizeitem.qml</td></tr>
<tr valign="top"><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type"><a href="index.html">Loader</a></span> {
<span class="comment">// Explicitly set the size of the Loader to the parent item's size</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">sourceComponent</span>: <span class="name">rect</span>
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
}
}</pre>
</td><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type"><a href="index.html">Loader</a></span> {
<span class="comment">// position the Loader in the center of the parent</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">sourceComponent</span>: <span class="name">rect</span>
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
}
}
}</pre>
</td></tr>
<tr valign="top"><td >The red rectangle will be sized to the size of the root item.</td><td >The red rectangle will be 50x50, centered in the root item.</td></tr>
</table>
<h3 >Receiving signals from loaded objects</h3>
<p>Any signals emitted from the loaded object can be received using the Connections type. For example, the following <code>application.qml</code> loads <code>MyItem.qml</code>, and is able to receive the <code>message</code> signal from the loaded item through a Connections object:</p>
<table class="generic">
<tr valign="top"><td >application.qml</td><td >MyItem.qml</td></tr>
<tr valign="top"><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="index.html">Loader</a></span> {
<span class="name">id</span>: <span class="name">myLoader</span>
<span class="name">source</span>: <span class="string">&quot;MyItem.qml&quot;</span>
}
<span class="type">Connections</span> {
<span class="name">target</span>: <span class="name">myLoader</span>.<span class="name">item</span>
<span class="name">onMessage</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">msg</span>)
}
}</pre>
</td><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">myItem</span>
signal <span class="type">message</span>(string msg)
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">myItem</span>.<span class="name">message</span>(<span class="string">&quot;clicked!&quot;</span>)
}
}</pre>
</td></tr>
</table>
<p>Alternatively, since <code>MyItem.qml</code> is loaded within the scope of the Loader, it could also directly call any function defined in the Loader or its parent <a href="QtQuick.Item.md">Item</a>.</p>
<h3 >Focus and key events</h3>
<p>Loader is a focus scope. Its <a href="QtQuick.Item.md#focus-prop">focus</a> property must be set to <code>true</code> for any of its children to get the <i>active focus</i>. (See <a href="QtQuick.qtquick-input-focus.md">Keyboard Focus in Qt Quick</a> for more details.) Any key events received in the loaded item should likely also be <a href="QtQuick.KeyEvent.md#accepted-prop">accepted</a> so they are not propagated to the Loader.</p>
<p>For example, the following <code>application.qml</code> loads <code>KeyReader.qml</code> when the <a href="QtQuick.MouseArea.md">MouseArea</a> is clicked. Notice the <a href="QtQuick.Item.md#focus-prop">focus</a> property is set to <code>true</code> for the Loader as well as the <a href="QtQuick.Item.md">Item</a> in the dynamically loaded object:</p>
<table class="generic">
<tr valign="top"><td >application.qml</td><td >KeyReader.qml</td></tr>
<tr valign="top"><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type"><a href="index.html">Loader</a></span> {
<span class="name">id</span>: <span class="name">loader</span>
<span class="name">focus</span>: <span class="number">true</span>
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">loader</span>.<span class="name">source</span> <span class="operator">=</span> <span class="string">&quot;KeyReader.qml&quot;</span>
}
<span class="name">Keys</span>.onPressed: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Captured:&quot;</span>, <span class="name">event</span>.<span class="name">text</span>);
}
}</pre>
</td><td ><pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Loaded item captured:&quot;</span>, <span class="name">event</span>.<span class="name">text</span>);
<span class="name">event</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">true</span>;
}
}
}</pre>
</td></tr>
</table>
<p>Once <code>KeyReader.qml</code> is loaded, it accepts key events and sets <code>event.accepted</code> to <code>true</code> so that the event is not propagated to the parent <a href="QtQuick.Rectangle.md">Rectangle</a>.</p>
<p>Since <code>QtQuick 2.0</code>, Loader can also load non-visual components.</p>
<h3 >Using a Loader within a view delegate</h3>
<p>In some cases you may wish to use a Loader within a view delegate to improve delegate loading performance. This works well in most cases, but there is one important issue to be aware of related to the creation context of a Component.</p>
<p>In the following example, the <code>index</code> context property inserted by the <a href="QtQuick.ListView.md">ListView</a> into <code>delegateComponent</code>'s context will be inaccessible to Text, as the Loader will use the creation context of <code>myComponent</code> as the parent context when instantiating it, and <code>index</code> does not refer to anything within that context chain.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">400</span>
<span class="name">height</span>: <span class="number">400</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">myComponent</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">index</span> }    <span class="comment">//fails</span>
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="number">5</span>
<span class="name">delegate</span>: <span class="name">Component</span> {
<span class="name">id</span>: <span class="name">delegateComponent</span>
<span class="type"><a href="index.html">Loader</a></span> {
<span class="name">sourceComponent</span>: <span class="name">myComponent</span>
}
}
}
}</pre>
<p>In this situation we can either move the component inline,</p>
<pre class="qml">        <span class="name">delegate</span>: <span class="name">Component</span> {
<span class="type"><a href="index.html">Loader</a></span> {
<span class="name">sourceComponent</span>: <span class="name">Component</span> {
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">index</span> }    <span class="comment">//okay</span>
}
}
}</pre>
<p>into a separate file,</p>
<pre class="qml">        <span class="name">delegate</span>: <span class="name">Component</span> {
<span class="type"><a href="index.html">Loader</a></span> {
<span class="name">source</span>: <span class="string">&quot;MyComponent.qml&quot;</span> <span class="comment">//okay</span>
}
}</pre>
<p>or explicitly set the required information as a property of the Loader (this works because the Loader sets itself as the context object for the component it is loading).</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">400</span>
<span class="name">height</span>: <span class="number">400</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">myComponent</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">modelIndex</span> }    <span class="comment">//okay</span>
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="number">5</span>
<span class="name">delegate</span>: <span class="name">Component</span> {
<span class="type"><a href="index.html">Loader</a></span> {
property <span class="type">int</span> <span class="name">modelIndex</span>: <span class="name">index</span>
<span class="name">sourceComponent</span>: <span class="name">myComponent</span>
}
}
}
}</pre>
<p><b>See also </b>Dynamic Object Creation.</p>
<!-- @@@Loader -->
<h2>Property Documentation</h2>
<!-- $$$active -->
<table class="qmlname"><tr valign="top" id="active-prop"><td class="tblQmlPropNode"><p><span class="name">active</span> : <span class="type">bool</span></p></td></tr></table><p>This property is <code>true</code> if the Loader is currently active. The default value for this property is <code>true</code>.</p>
<p>If the Loader is inactive, changing the <a href="#source-prop">source</a> or <a href="#sourceComponent-prop">sourceComponent</a> will not cause the item to be instantiated until the Loader is made active.</p>
<p>Setting the value to inactive will cause any <a href="#item-prop">item</a> loaded by the loader to be released, but will not affect the <a href="#source-prop">source</a> or <a href="#sourceComponent-prop">sourceComponent</a>.</p>
<p>The <a href="#status-prop">status</a> of an inactive loader is always <code>Null</code>.</p>
<p><b>See also </b><a href="#source-prop">source</a> and <a href="#sourceComponent-prop">sourceComponent</a>.</p>
<!-- @@@active -->
<br/>
<!-- $$$asynchronous -->
<table class="qmlname"><tr valign="top" id="asynchronous-prop"><td class="tblQmlPropNode"><p><span class="name">asynchronous</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the component will be instantiated asynchronously.</p>
<p>When used in conjunction with the <a href="#source-prop">source</a> property, loading and compilation will also be performed in a background thread.</p>
<p>Loading asynchronously creates the objects declared by the component across multiple frames, and reduces the likelihood of glitches in animation. When loading asynchronously the status will change to Loader.Loading. Once the entire component has been created, the <a href="#item-prop">item</a> will be available and the status will change to Loader.Ready.</p>
<p>To avoid seeing the items loading progressively set <code>visible</code> appropriately, e.g&#x2e;</p>
<pre class="cpp">Loader {
source: <span class="string">&quot;mycomponent.qml&quot;</span>
asynchronous: <span class="keyword">true</span>
visible: status <span class="operator">=</span><span class="operator">=</span> Loader<span class="operator">.</span>Ready
}</pre>
<p>Note that this property affects object instantiation only; it is unrelated to loading a component asynchronously via a network.</p>
<!-- @@@asynchronous -->
<br/>
<!-- $$$item -->
<table class="qmlname"><tr valign="top" id="item-prop"><td class="tblQmlPropNode"><p><span class="name">item</span> : <span class="type">object</span></p></td></tr></table><p>This property holds the top-level object that is currently loaded.</p>
<p>Since <code>QtQuick 2.0</code>, Loader can load any object type.</p>
<!-- @@@item -->
<br/>
<!-- $$$progress -->
<table class="qmlname"><tr valign="top" id="progress-prop"><td class="tblQmlPropNode"><p><span class="name">progress</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the progress of loading QML data from the network, from 0.0 (nothing loaded) to 1.0 (finished). Most QML files are quite small, so this value will rapidly change from 0 to 1.</p>
<p><b>See also </b><a href="#status-prop">status</a>.</p>
<!-- @@@progress -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>This property holds the URL of the QML component to instantiate.</p>
<p>Since <code>QtQuick 2.0</code>, Loader is able to load any type of object; it is not restricted to Item types.</p>
<p>To unload the currently loaded object, set this property to an empty string, or set <a href="#sourceComponent-prop">sourceComponent</a> to <code>undefined</code>. Setting <code>source</code> to a new URL will also cause the item created by the previous URL to be unloaded.</p>
<p><b>See also </b><a href="#sourceComponent-prop">sourceComponent</a>, <a href="#status-prop">status</a>, and <a href="#progress-prop">progress</a>.</p>
<!-- @@@source -->
<br/>
<!-- $$$sourceComponent -->
<table class="qmlname"><tr valign="top" id="sourceComponent-prop"><td class="tblQmlPropNode"><p><span class="name">sourceComponent</span> : <span class="type">Component</span></p></td></tr></table><p>This property holds the Component to instantiate.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">redSquare</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;red&quot;</span>; <span class="name">width</span>: <span class="number">10</span>; <span class="name">height</span>: <span class="number">10</span> }
}
<span class="type"><a href="index.html">Loader</a></span> { <span class="name">sourceComponent</span>: <span class="name">redSquare</span> }
<span class="type"><a href="index.html">Loader</a></span> { <span class="name">sourceComponent</span>: <span class="name">redSquare</span>; <span class="name">x</span>: <span class="number">10</span> }
}</pre>
<p>To unload the currently loaded object, set this property to <code>undefined</code>.</p>
<p>Since <code>QtQuick 2.0</code>, Loader is able to load any type of object; it is not restricted to Item types.</p>
<p><b>See also </b><a href="#source-prop">source</a> and <a href="#progress-prop">progress</a>.</p>
<!-- @@@sourceComponent -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the status of QML loading. It can be one of:</p>
<ul>
<li>Loader.Null - the loader is inactive or no QML source has been set</li>
<li>Loader.Ready - the QML source has been loaded</li>
<li>Loader.Loading - the QML source is currently being loaded</li>
<li>Loader.Error - an error occurred while loading the QML source</li>
</ul>
<p>Use this status to provide an update or respond to the status change in some way. For example, you could:</p>
<ul>
<li>Trigger a state change:<pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> { <span class="name">name</span>: <span class="string">'loaded'</span>; <span class="name">when</span>: <span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Loader</span>.<span class="name">Ready</span> }</pre>
</li>
<li>Implement an <code>onStatusChanged</code> signal handler:<pre class="qml"><span class="type"><a href="index.html">Loader</a></span> {
<span class="name">id</span>: <span class="name">loader</span>
<span class="name">onStatusChanged</span>: <span class="keyword">if</span> (<span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Loader</span>.<span class="name">Ready</span>) <span class="name">console</span>.<span class="name">log</span>(<span class="string">'Loaded'</span>)
}</pre>
</li>
<li>Bind to the status value:<pre class="qml"><span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">loader</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Loader</span>.<span class="name">Ready</span> ? <span class="string">'Loaded'</span> : <span class="string">'Not loaded'</span> }</pre>
</li>
</ul>
<p>Note that if the source is a local file, the status will initially be Ready (or Error). While there will be no onStatusChanged signal in that case, the onLoaded will still be invoked.</p>
<p><b>See also </b><a href="#progress-prop">progress</a>.</p>
<!-- @@@status -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$loaded -->
<table class="qmlname"><tr valign="top" id="loaded-signal"><td class="tblQmlFuncNode"><p><span class="name">loaded</span>()</p></td></tr></table><p>This signal is emitted when the <a href="#status-prop">status</a> becomes <code>Loader.Ready</code>, or on successful initial load.</p>
<p>The corresponding handler is <code>onLoaded</code>.</p>
<!-- @@@loaded -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$setSource -->
<table class="qmlname"><tr valign="top" id="setSource-method"><td class="tblQmlFuncNode"><p><span class="type">object</span> <span class="name">setSource</span>(<span class="type">url</span><i> source</i>, <span class="type">object</span><i> properties</i>)</p></td></tr></table><p>Creates an object instance of the given <i>source</i> component that will have the given <i>properties</i>. The <i>properties</i> argument is optional. The instance will be accessible via the <a href="#item-prop">item</a> property once loading and instantiation is complete.</p>
<p>If the <a href="#active-prop">active</a> property is <code>false</code> at the time when this function is called, the given <i>source</i> component will not be loaded but the <i>source</i> and initial <i>properties</i> will be cached. When the loader is made <a href="#active-prop">active</a>, an instance of the <i>source</i> component will be created with the initial <i>properties</i> set.</p>
<p>Setting the initial property values of an instance of a component in this manner will <b>not</b> trigger any associated <a href="QtQuick.Behavior.md">Behavior</a>s.</p>
<p>Note that the cached <i>properties</i> will be cleared if the <a href="#source-prop">source</a> or <a href="#sourceComponent-prop">sourceComponent</a> is changed after calling this function but prior to setting the loader <a href="#active-prop">active</a>.</p>
<p>Example:</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml"><span class="comment">// ExampleComponent.qml</span>
import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="number">10</span>
<span class="name">height</span>: <span class="number">10</span>
Behavior on <span class="name">color</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
<span class="name">target</span>: <span class="name">rect</span>
<span class="name">property</span>: <span class="string">&quot;width&quot;</span>
<span class="name">to</span>: (<span class="name">rect</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">20</span>)
<span class="name">duration</span>: <span class="number">0</span>
}
}
}</pre>
</td><td ><pre class="qml"><span class="comment">// example.qml</span>
import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="index.html">Loader</a></span> {
<span class="name">id</span>: <span class="name">squareLoader</span>
<span class="name">onLoaded</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="name">squareLoader</span>.<span class="name">item</span>.<span class="name">width</span>); <span class="comment">// prints [10], not [30]</span>
}
<span class="name">Component</span>.onCompleted: {
<span class="name">squareLoader</span>.<span class="name">setSource</span>(<span class="string">&quot;ExampleComponent.qml&quot;</span>, { &quot;color&quot;: <span class="string">&quot;blue&quot;</span> });
<span class="comment">// will trigger the onLoaded code when complete.</span>
}
}</pre>
</td></tr>
</table>
<p><b>See also </b><a href="#source-prop">source</a> and <a href="#active-prop">active</a>.</p>
<!-- @@@setSource -->
<br/>
