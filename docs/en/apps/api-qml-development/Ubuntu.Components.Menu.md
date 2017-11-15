---
Title: Ubuntu.Components.Menu
---

# Ubuntu.Components.Menu

<span class="subtitle"></span>
<!-- $$$Menu-brief -->
<p>Menu defines a context menu or submenu structure of a MenuBar More...</p>
<!-- @@@Menu -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#data-prop">data</a></b></b> : list&lt;Object&gt;</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#appendObject-method">appendObject</a></b></b>(object <i>o</i>)</li>
<li class="fn"><b><b><a href="#dismiss-method">dismiss</a></b></b>()</li>
<li class="fn"><b><b><a href="#insertObject-method">insertObject</a></b></b>(int <i>index</i>, object <i>o</i>)</li>
<li class="fn"><b><b><a href="#removeObject-method">removeObject</a></b></b>(object <i>o</i>)</li>
<li class="fn"><b><b><a href="#show-method">show</a></b></b>(point <i>point</i>)</li>
</ul>
<!-- $$$Menu-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Example usage:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">Menu</a></span> {
<span class="name">text</span>: <span class="string">&quot;&amp;File&quot;</span>
<span class="type"><a href="Ubuntu.Components.MenuGroup.md">MenuGroup</a></span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">text</span>: <span class="string">&quot;&amp;New&quot;</span>
<span class="name">shortcut</span>: <span class="string">&quot;Ctrl+N&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">text</span>: <span class="string">&quot;&amp;Open&quot;</span>
<span class="name">shortcut</span>: <span class="string">&quot;Ctrl+O&quot;</span>
}
}
<span class="type"><a href="index.html">Menu</a></span> {
<span class="name">text</span>: <span class="string">&quot;Recent Files&quot;</span>
<span class="type"><a href="Ubuntu.Components.ActionList.md">ActionList</a></span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;1.txt&quot;</span> }
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;2.txt&quot;</span> }
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;3.txt&quot;</span> }
}
}
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">action</span>: <span class="name">Action</span> {
<span class="name">text</span>: <span class="string">&quot;E&amp;xit&quot;</span>
<span class="name">shortcut</span>: <span class="string">&quot;Ctrl+X&quot;</span>
}
}
}</pre>
<!-- @@@Menu -->
<h2>Property Documentation</h2>
<!-- $$$data -->
<table class="qmlname"><tr valign="top" id="data-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>List of objects representing menu items within the menu.</p>
<p>Currently supports Menu, Action, AcionList &amp; <a href="Ubuntu.Components.MenuGroup.md">MenuGroup</a> objects.</p>
<p><b>Note: </b>Item object which do not support platformItem will not be exported for native menus.</p><!-- @@@data -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$appendObject -->
<table class="qmlname"><tr valign="top" id="appendObject-method"><td class="tblQmlFuncNode"><p><span class="name">appendObject</span>(<span class="type">object</span><i> o</i>)</p></td></tr></table><p>Add a object tto the menu</p>
<!-- @@@appendObject -->
<br/>
<!-- $$$dismiss -->
<table class="qmlname"><tr valign="top" id="dismiss-method"><td class="tblQmlFuncNode"><p><span class="name">dismiss</span>()</p></td></tr></table><p>Dismiss and destroy the menu popup.</p>
<!-- @@@dismiss -->
<br/>
<!-- $$$insertObject -->
<table class="qmlname"><tr valign="top" id="insertObject-method"><td class="tblQmlFuncNode"><p><span class="name">insertObject</span>(<span class="type">int</span><i> index</i>, <span class="type">object</span><i> o</i>)</p></td></tr></table><p>Inserts an item at the index in the menu.</p>
<p>Currently supports Menu, Action, AcionList &amp; <a href="Ubuntu.Components.MenuGroup.md">MenuGroup</a> objects.</p>
<p><b>Note: </b>Item object which do not support platformItem will not be exported for native menus.</p><!-- @@@insertObject -->
<br/>
<!-- $$$removeObject -->
<table class="qmlname"><tr valign="top" id="removeObject-method"><td class="tblQmlFuncNode"><p><span class="name">removeObject</span>(<span class="type">object</span><i> o</i>)</p></td></tr></table><p>Removes the item from the menu.</p>
<!-- @@@removeObject -->
<br/>
<!-- $$$show -->
<table class="qmlname"><tr valign="top" id="show-method"><td class="tblQmlFuncNode"><p><span class="name">show</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-point.html">point</a></span><i> point</i>)</p></td></tr></table><p>Show the menu popup at the given point</p>
<!-- @@@show -->
<br/>
