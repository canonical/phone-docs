---
Title: Ubuntu.Components.MenuBar
---

# Ubuntu.Components.MenuBar

<span class="subtitle"></span>
<!-- $$$MenuBar-brief -->
<p>MenuBar defines an application menu bar structure More...</p>
<!-- @@@MenuBar -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#menus-prop">menus</a></b></b> : list&lt;Menu&gt;</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#appendMenu-method">appendMenu</a></b></b>(Menu <i>menu</i>)</li>
<li class="fn">void <b><b><a href="#insertMenu-method">insertMenu</a></b></b>(int <i>index</i>, Menu <i>menu</i>)</li>
<li class="fn">void <b><b><a href="#removeMenu-method">removeMenu</a></b></b>(Menu <i>menu</i>)</li>
</ul>
<!-- $$$MenuBar-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Example usage:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="type"><a href="index.html">MenuBar</a></span> {
<span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span> {
<span class="name">text</span>: <span class="string">&quot;_File&quot;</span>
<span class="type">MenuItem</span> {
<span class="name">text</span>: <span class="string">&quot;_New&quot;</span>
<span class="name">shortcut</span>: <span class="string">&quot;Ctrl+N&quot;</span>
}
<span class="type">MenuItem</span> {
<span class="name">text</span>: <span class="string">&quot;_Open&quot;</span>
<span class="name">shortcut</span>: <span class="string">&quot;Ctrl+O&quot;</span>
}
<span class="type">MenuSeparator</span> {}
<span class="type">MenuItem</span> {
<span class="name">action</span>: <span class="name">exitAction</span>
}
}
<span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span> {
<span class="name">text</span>: <span class="string">&quot;_Edit&quot;</span>
<span class="type">MenuItem</span> {
<span class="name">text</span>: <span class="string">&quot;_Undo&quot;</span>
<span class="name">iconSource</span>: <span class="string">&quot;image://theme/undo&quot;</span>
}
}
<span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span> {
<span class="name">text</span>: <span class="string">&quot;_Window&quot;</span>
<span class="type">MenuItem</span> {
<span class="name">text</span>: <span class="string">&quot;Fullscreen&quot;</span>
<span class="name">checkable</span>: <span class="number">true</span>
<span class="name">checked</span>: <span class="number">false</span>
}
}
}
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">id</span>: <span class="name">boundAction</span>
<span class="name">text</span>: <span class="string">&quot;E_xit&quot;</span>
<span class="name">onTriggered</span>: {
<span class="name">Qt</span>.<span class="name">quit</span>();
}
}
}</pre>
<!-- @@@MenuBar -->
<h2>Property Documentation</h2>
<!-- $$$menus -->
<table class="qmlname"><tr valign="top" id="menus-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">menus</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span>&gt;</p></td></tr></table><p>List of Menus in this <a href="index.html">MenuBar</a>.</p>
<!-- @@@menus -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$appendMenu -->
<table class="qmlname"><tr valign="top" id="appendMenu-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">appendMenu</span>(<span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span><i> menu</i>)</p></td></tr></table><p>* * Append a Menu to the <a href="index.html">MenuBar</a></p>
<!-- @@@appendMenu -->
<br/>
<!-- $$$insertMenu -->
<table class="qmlname"><tr valign="top" id="insertMenu-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">insertMenu</span>(<span class="type">int</span><i> index</i>, <span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span><i> menu</i>)</p></td></tr></table><p>* * Insert a Menu to the <a href="index.html">MenuBar</a> at the specified position</p>
<!-- @@@insertMenu -->
<br/>
<!-- $$$removeMenu -->
<table class="qmlname"><tr valign="top" id="removeMenu-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">removeMenu</span>(<span class="type"><a href="Ubuntu.Components.Menu.md">Menu</a></span><i> menu</i>)</p></td></tr></table><p>* * Remove a Menu from the <a href="index.html">MenuBar</a></p>
<!-- @@@removeMenu -->
<br/>
