---
Title: Ubuntu.Components.ActionList
---

# Ubuntu.Components.ActionList

<span class="subtitle"></span>
<!-- $$$ActionList-brief -->
<p>List of Action items An ActionList provies a way of grouping actions together. More...</p>
<!-- @@@ActionList -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ExclusiveGroup.md">ExclusiveGroup</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actions-prop">actions</a></b></b> : list&lt;Action&gt;</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#added-signal">added</a></b></b>(Action <i>action</i>)</li>
<li class="fn"><b><b><a href="#removed-signal">removed</a></b></b>(Action <i>action</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#addAction-method">addAction</a></b></b>(Action <i>action</i>)</li>
<li class="fn"><b><b><a href="#removeAction-method">removeAction</a></b></b>(Action <i>action</i>)</li>
</ul>
<!-- $$$ActionList-description -->
<h2 id="details">Detailed Description</h2>
</p>
<pre class="qml"><span class="type"><a href="index.html">ActionList</a></span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">id</span>: <span class="name">action1</span>
}
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">id</span>: <span class="name">action2</span>
}
}</pre>
<!-- @@@ActionList -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top" id="actions-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td></tr></table><p>List of Actions in this <a href="index.html">ActionList</a> Note that when you set this property, the children of the <a href="index.html">ActionList</a> will be ignored, so do not set the list and define children.</p>
<p>The advantage of setting actions over using the children is that the same <a href="Ubuntu.Components.Action.md">Action</a> items can be used in several sets of actions.</p>
<!-- @@@actions -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$added -->
<table class="qmlname"><tr valign="top" id="added-signal"><td class="tblQmlFuncNode"><p><span class="name">added</span>(<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span><i> action</i>)</p></td></tr></table><p>Signal called when an action is added to the list</p>
<p>This QML signal was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@added -->
<br/>
<!-- $$$removed -->
<table class="qmlname"><tr valign="top" id="removed-signal"><td class="tblQmlFuncNode"><p><span class="name">removed</span>(<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span><i> action</i>)</p></td></tr></table><p>Signal called when an action is removed from the list</p>
<p>This QML signal was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@removed -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$addAction -->
<table class="qmlname"><tr valign="top" id="addAction-method"><td class="tblQmlFuncNode"><p><span class="name">addAction</span>(<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span><i> action</i>)</p></td></tr></table><p>Adds an Action to the list programatically.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="QtQml.Instantiator.md">Instantiator</a></span> {
<span class="name">model</span>: <span class="number">4</span>
<span class="name">onObjectAdded</span>: <span class="name">actionList</span>.<span class="name">addAction</span>(<span class="name">object</span>)
<span class="name">onObjectRemoved</span>: <span class="name">actionList</span>.<span class="name">removeAction</span>(<span class="name">object</span>)
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {}
}
<span class="type"><a href="index.html">ActionList</a></span> {
<span class="name">id</span>: <span class="name">actionList</span>
}
}</pre>
<p>This QML method was introduced in  Ubuntu.Components 1.3.</p>
<p><b>See also </b><a href="#removeAction-method">ActionList::removeAction</a>.</p>
<!-- @@@addAction -->
<br/>
<!-- $$$removeAction -->
<table class="qmlname"><tr valign="top" id="removeAction-method"><td class="tblQmlFuncNode"><p><span class="name">removeAction</span>(<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span><i> action</i>)</p></td></tr></table><p>Removes an action from the list programatically.</p>
<p>This QML method was introduced in  Ubuntu.Components 1.3.</p>
<p><b>See also </b><a href="#addAction-method">ActionList::addAction</a>.</p>
<!-- @@@removeAction -->
<br/>
