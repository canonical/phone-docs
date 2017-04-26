---
Title: Ubuntu.Components.Sections
---

# Ubuntu.Components.Sections

<span class="subtitle"></span>
<!-- $$$Sections-brief -->
<p>Display a list of sections that the user can select. By tapping on a section name the selectedIndex will be updated, and the associated Action is triggered. More...</p>
<!-- @@@Sections -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actions-prop">actions</a></b></b> : Action</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : var</li>
<li class="fn"><b><b><a href="#selectedIndex-prop">selectedIndex</a></b></b> : int</li>
</ul>
<!-- $$$Sections-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@Sections -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top" id="actions-prop"><td class="tblQmlPropNode"><p><span class="name">actions</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>List of actions that represent the sections. The text of each action is displayed as the section name and clicking a section will update the <a href="#selectedIndex-prop">selectedIndex</a>.</p>
<p>When <a href="#selectedIndex-prop">selectedIndex</a> is changed (by user interaction or by setting the value), actions[<a href="#selectedIndex-prop">selectedIndex</a>] will be triggered.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="index.html">Sections</a></span> {
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">text</span>: <span class="string">&quot;first&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;one&quot;</span>)
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">text</span>: <span class="string">&quot;second&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;two&quot;</span>)
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">text</span>: <span class="string">&quot;third&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;three&quot;</span>)
}
]
}</pre>
<p>It is strongly recommended to limit the number of sections to two or three. The actions are used as the model for the Sections by default. If no trigger functions need to be specified, <a href="#model-prop">model</a> may be used directly without setting the actions property. If both actions and <a href="#model-prop">model</a> are set, model overrides the actions.</p>
<!-- @@@actions -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>The input model for the sections. By default model takes the <a href="#actions-prop">actions</a> as input, but if no trigger functions need to be specified, it can be simplified to a list of strings naming the sections:</p>
<pre class="qml"><span class="type"><a href="index.html">Sections</a></span> {
<span class="name">model</span>: [ <span class="string">&quot;one&quot;</span>, <span class="string">&quot;two&quot;</span>, <span class="string">&quot;three&quot;</span> ]
<span class="name">onSelectedIndexChanged</span>: {
<span class="name">print</span>(<span class="string">&quot;Selected section &quot;</span> <span class="operator">+</span> <span class="name">model</span>[<span class="name">selectedIndex</span>]);
}
}</pre>
<!-- @@@model -->
<br/>
<!-- $$$selectedIndex -->
<table class="qmlname"><tr valign="top" id="selectedIndex-prop"><td class="tblQmlPropNode"><p><span class="name">selectedIndex</span> : <span class="type">int</span></p></td></tr></table><p>The index of the currently selected section in <a href="#model-prop">model</a>. The default value is 0 if there is at least 1 section, or -1 for no sections. When the model is changed, selectedIndex is reset to 0 and the first action is triggered. Upon completion of the Sections component, if there is an Action associated with the selected index, that Action will be triggered.</p>
<!-- @@@selectedIndex -->
<br/>
