---
Title: Ubuntu.Components.MenuGroup
---

# Ubuntu.Components.MenuGroup

<span class="subtitle"></span>
<!-- $$$MenuGroup-brief -->
<p>Logical list of items for a menu. More...</p>
<!-- @@@MenuGroup -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#data-prop">data</a></b></b> : list&lt;Object&gt;</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#added-signal">added</a></b></b>(Object <i>action</i>)</li>
<li class="fn"><b><b><a href="#changed-signal">changed</a></b></b>()</li>
<li class="fn"><b><b><a href="#removed-signal">removed</a></b></b>(Object <i>action</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#addObject-method">addObject</a></b></b>(Object <i>object</i>)</li>
<li class="fn"><b><b><a href="#removeObject-method">removeObject</a></b></b>(Object <i>object</i>)</li>
</ul>
<!-- $$$MenuGroup-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Example usage:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span> {
<span class="name">text</span>: <span class="string">&quot;Edit&quot;</span>
<span class="type"><a href="index.html">MenuGroup</a></span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Undo&quot;</span> }
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Redo&quot;</span> }
}
<span class="type"><a href="index.html">MenuGroup</a></span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Cut&quot;</span> }
<span class="type"><a href="Ubuntu.Components.ActionList.md">ActionList</a></span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Copy&quot;</span> }
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Paste&quot;</span> }
}
}
<span class="type"><a href="index.html">MenuGroup</a></span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;Select All&quot;</span> }
}
}</pre>
<!-- @@@MenuGroup -->
<h2>Property Documentation</h2>
<!-- $$$data -->
<table class="qmlname"><tr valign="top" id="data-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>* * * List of Objects in this <a href="index.html">MenuGroup</a> * Note that when you set this property, the children of the <a href="index.html">MenuGroup</a> will be ignored, * so do not set the list and define children.</p>
<!-- @@@data -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$added -->
<table class="qmlname"><tr valign="top" id="added-signal"><td class="tblQmlFuncNode"><p><span class="name">added</span>(<span class="type">Object</span><i> action</i>)</p></td></tr></table><p>Signal called when a action is added to the list</p>
<!-- @@@added -->
<br/>
<!-- $$$changed -->
<table class="qmlname"><tr valign="top" id="changed-signal"><td class="tblQmlFuncNode"><p><span class="name">changed</span>()</p></td></tr></table><p>Signal called when the contents of the group change, including child content changes (eg. <a href="Ubuntu.Components.ActionList.md">ActionList</a> child add/remove)</p>
<!-- @@@changed -->
<br/>
<!-- $$$removed -->
<table class="qmlname"><tr valign="top" id="removed-signal"><td class="tblQmlFuncNode"><p><span class="name">removed</span>(<span class="type">Object</span><i> action</i>)</p></td></tr></table><p>Signal called when a action is removed from the list</p>
<!-- @@@removed -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$addObject -->
<table class="qmlname"><tr valign="top" id="addObject-method"><td class="tblQmlFuncNode"><p><span class="name">addObject</span>(<span class="type">Object</span><i> object</i>)</p></td></tr></table><p>Adds an Object to the list programatically.</p>
<!-- @@@addObject -->
<br/>
<!-- $$$removeObject -->
<table class="qmlname"><tr valign="top" id="removeObject-method"><td class="tblQmlFuncNode"><p><span class="name">removeObject</span>(<span class="type">Object</span><i> object</i>)</p></td></tr></table><p>Removes an object from the list programatically.</p>
<!-- @@@removeObject -->
<br/>
