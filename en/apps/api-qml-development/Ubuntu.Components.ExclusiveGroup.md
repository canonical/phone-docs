---
Title: Ubuntu.Components.ExclusiveGroup
---

# Ubuntu.Components.ExclusiveGroup

<span class="subtitle"></span>
<!-- $$$ExclusiveGroup-brief -->
<p>ExclusiveGroup provides a way to declare several checkable controls as mutually exclusive. More...</p>
<!-- @@@ExclusiveGroup -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ActionList.md">ActionList</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#current-prop">current</a></b></b> : Action</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#bindCheckable-method">bindCheckable</a></b></b>(object <i>object</i>)</li>
<li class="fn">void <b><b><a href="#unbindCheckable-method">unbindCheckable</a></b></b>(object <i>object</i>)</li>
</ul>
<!-- $$$ExclusiveGroup-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">ExclusiveGroup</a> will only allow a single object to have it's checkable property set to &quot;true&quot; at any one time. The exclusive group accepts child Actions, but objects other than Actions can be used by using the <a href="#bindCheckable-method">bindCheckable</a> function as long as they support one of the required signals, and a &quot;checked&quot; property.</p>
<pre class="qml"><span class="type"><a href="index.html">ExclusiveGroup</a></span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">parameterType</span>: <span class="name">Action</span>.<span class="name">Bool</span>
<span class="name">state</span>: <span class="number">true</span>
}
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">parameterType</span>: <span class="name">Action</span>.<span class="name">Bool</span>
<span class="name">state</span>: <span class="number">false</span>
}
}</pre>
<!-- @@@ExclusiveGroup -->
<h2>Property Documentation</h2>
<!-- $$$current -->
<table class="qmlname"><tr valign="top" id="current-prop"><td class="tblQmlPropNode"><p><span class="name">current</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>Returns the currently checked action</p>
<!-- @@@current -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$bindCheckable -->
<table class="qmlname"><tr valign="top" id="bindCheckable-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">bindCheckable</span>(<span class="type">object</span><i> object</i>)</p></td></tr></table><p>Explicitly bind an objects checkability to this exclusive group.</p>
<p><b>Note: </b>This only works with objects which support the following signals signals:</p><ul>
<li><b>toggled(bool)</b></li>
</ul>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="index.html">ExclusiveGroup</a></span> {
<span class="name">id</span>: <span class="name">exclusiveGroup</span>
}
<span class="type"><a href="QtQml.Instantiator.md">Instantiator</a></span> {
<span class="name">model</span>: <span class="number">4</span>
<span class="name">onObjectAdded</span>: <span class="name">exclusiveGroup</span>.<span class="name">bindCheckable</span>(<span class="name">object</span>)
<span class="name">onObjectRemoved</span>: <span class="name">exclusiveGroup</span>.<span class="name">unbindCheckable</span>(<span class="name">object</span>)
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">checkable</span>: <span class="number">true</span>
}
}
}</pre>
<p><b>See also </b><a href="#unbindCheckable-method">ExclusiveGroup::unbindCheckable</a>.</p>
<!-- @@@bindCheckable -->
<br/>
<!-- $$$unbindCheckable -->
<table class="qmlname"><tr valign="top" id="unbindCheckable-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">unbindCheckable</span>(<span class="type">object</span><i> object</i>)</p></td></tr></table><p>Explicitly unbind an objects checkability from this exclusive group.</p>
<p><b>See also </b><a href="#bindCheckable-method">ExclusiveGroup::bindCheckable</a>.</p>
<!-- @@@unbindCheckable -->
<br/>
