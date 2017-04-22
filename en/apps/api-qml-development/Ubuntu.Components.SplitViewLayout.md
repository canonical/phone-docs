---
Title: Ubuntu.Components.SplitViewLayout
---

# Ubuntu.Components.SplitViewLayout

<span class="subtitle"></span>
<!-- $$$SplitViewLayout-brief -->
<p>Layout configuration for SplitView. More...</p>
<!-- @@@SplitViewLayout -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import  .</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#columns-prop">columns</a></b></b> : list&lt;ViewColumn&gt;</li>
<li class="fn"><b><b><a href="#when-prop">when</a></b></b> : bool</li>
</ul>
<!-- $$$SplitViewLayout-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">SplitViewLayout</a> defines a layout configuration and the condition when the layout is expected to be applied. In case multiple layout conditions evaluate to true, the first one in the list will be activated.</p>
<!-- @@@SplitViewLayout -->
<h2>Property Documentation</h2>
<!-- $$$columns -->
<table class="qmlname"><tr valign="top" id="columns-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">columns</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.ViewColumn.md">ViewColumn</a></span>&gt;</p></td></tr></table><p>The property holds the column configurations for the layout. If the view has more columns than the configuration specifies, the extra columns will be hidden (their visible property will be set to false!). Also, the hidden column sizes may change, therefore size-sensitive content must be aware of this.</p>
<!-- @@@columns -->
<br/>
<!-- $$$when -->
<table class="qmlname"><tr valign="top" id="when-prop"><td class="tblQmlPropNode"><p><span class="name">when</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies the condition when to apply the layout. Usually holds a binding which evaluates to true or false to activate the layout.</p>
<!-- @@@when -->
<br/>
