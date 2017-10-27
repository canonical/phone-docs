---
Title: QtQml.Instantiator
---

# QtQml.Instantiator

<span class="subtitle"></span>
<!-- $$$Instantiator-brief -->
<p>Dynamically creates objects More...</p>
<!-- @@@Instantiator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml 2.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#active-prop">active</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#asynchronous-prop">asynchronous</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : QtQml::Component</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#object-prop">object</a></b></b> : QtQml::QtObject</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#objectAdded-signal">objectAdded</a></b></b>(int <i>index</i>, QtObject <i>object</i>)</li>
<li class="fn"><b><b><a href="#objectRemoved-signal">objectRemoved</a></b></b>(int <i>index</i>, QtObject <i>object</i>)</li>
</ul>
<!-- $$$Instantiator-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A Instantiator can be used to control the dynamic creation of objects, or to dynamically create multiple objects from a template.</p>
<p>The Instantiator element will manage the objects it creates. Those objects are parented to the Instantiator and can also be deleted by the Instantiator if the Instantiator's properties change. Objects can also be destroyed dynamically through other means, and the Instantiator will not recreate them unless the properties of the Instantiator change.</p>
<!-- @@@Instantiator -->
<h2>Property Documentation</h2>
<!-- $$$active -->
<table class="qmlname"><tr valign="top" id="active-prop"><td class="tblQmlPropNode"><p><span class="name">active</span> : <span class="type">bool</span></p></td></tr></table><p>When active is true, and the delegate component is ready, the Instantiator will create objects according to the model. When active is false, no objects will be created and any previously created objects will be destroyed.</p>
<p>Default is true.</p>
<!-- @@@active -->
<br/>
<!-- $$$asynchronous -->
<table class="qmlname"><tr valign="top" id="asynchronous-prop"><td class="tblQmlPropNode"><p><span class="name">asynchronous</span> : <span class="type">bool</span></p></td></tr></table><p>When asynchronous is true the Instantiator will attempt to create objects asynchronously. This means that objects may not be available immediately, even if active is set to true.</p>
<p>You can use the <a href="#objectAdded-signal">objectAdded</a> signal to respond to items being created.</p>
<p>Default is false.</p>
<!-- @@@asynchronous -->
<br/>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>The number of objects the Instantiator is currently managing.</p>
<!-- @@@count -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">delegate</span> : <span class="type"><a href="QtQml.Component.md">QtQml::Component</a></span></p></td></tr></table><p>The component used to create all objects.</p>
<p>Note that an extra variable, index, will be available inside instances of the delegate. This variable refers to the index of the instance inside the Instantiator, and can be used to obtain the object through the itemAt method of the Instantiator.</p>
<p>If this property is changed, all instances using the old delegate will be destroyed and new instances will be created using the new delegate.</p>
<!-- @@@delegate -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type">variant</span></p></td></tr></table><p>This property can be set to any of the supported data models:</p>
<ul>
<li>A number that indicates the number of delegates to be created by the repeater</li>
<li>A model (e.g&#x2e; a <a href="QtQml.ListModel.md">ListModel</a> item, or a QAbstractItemModel subclass)</li>
<li>A string list</li>
<li>An object list</li>
</ul>
<p>The type of model affects the properties that are exposed to the <a href="#delegate-prop">delegate</a>.</p>
<p>Default value is 1, which creates a single delegate instance.</p>
<p><b>See also </b>Data Models.</p>
<!-- @@@model -->
<br/>
<!-- $$$object -->
<table class="qmlname"><tr valign="top" id="object-prop"><td class="tblQmlPropNode"><p><span class="name">object</span> : <span class="type"><a href="QtQml.QtObject.md">QtQml::QtObject</a></span></p></td></tr></table><p>This is a reference to the first created object, intended as a convenience for the case where only one object has been created.</p>
<!-- @@@object -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$objectAdded -->
<table class="qmlname"><tr valign="top" id="objectAdded-signal"><td class="tblQmlFuncNode"><p><span class="name">objectAdded</span>(<span class="type">int</span><i> index</i>, <span class="type"><a href="QtQml.QtObject.md">QtObject</a></span><i> object</i>)</p></td></tr></table><p>This signal is emitted when an object is added to the Instantiator. The <i>index</i> parameter holds the index which the object has been given, and the <i>object</i> parameter holds the <a href="QtQml.QtObject.md">QtObject</a> that has been added.</p>
<p>The corresponding handler is <code>onObjectAdded</code>.</p>
<!-- @@@objectAdded -->
<br/>
<!-- $$$objectRemoved -->
<table class="qmlname"><tr valign="top" id="objectRemoved-signal"><td class="tblQmlFuncNode"><p><span class="name">objectRemoved</span>(<span class="type">int</span><i> index</i>, <span class="type"><a href="QtQml.QtObject.md">QtObject</a></span><i> object</i>)</p></td></tr></table><p>This signal is emitted when an object is removed from the Instantiator. The <i>index</i> parameter holds the index which the object had been given, and the <i>object</i> parameter holds the <a href="QtQml.QtObject.md">QtObject</a> that has been removed.</p>
<p>Do not keep a reference to <i>object</i> if it was created by this Instantiator, as in these cases it will be deleted shortly after the signal is handled.</p>
<p>The corresponding handler is <code>onObjectRemoved</code>.</p>
<!-- @@@objectRemoved -->
<br/>
