---
Title: Ubuntu.Components.ActionBar
---

# Ubuntu.Components.ActionBar

<span class="subtitle"></span>
<!-- $$$ActionBar-brief -->
<p>Show a row of buttons that trigger actions. When the number of visible actions specified is larger than numberOfSlots, an overflow button will be shown which triggers an overflow panel that shows the remaining actions. More...</p>
<!-- @@@ActionBar -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actions-prop">actions</a></b></b> : Action</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#numberOfSlots-prop">numberOfSlots</a></b></b> : int</li>
</ul>
<!-- $$$ActionBar-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="index.html">ActionBar</a></span> {
<span class="name">numberOfSlots</span>: <span class="number">2</span>
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;share&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Share&quot;</span>
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;starred&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Favorite&quot;</span>
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;lock&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Lock&quot;</span>
}
]
}</pre>
<!-- @@@ActionBar -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top" id="actions-prop"><td class="tblQmlPropNode"><p><span class="name">actions</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>The actions to display in the bar. If more actions are specified than there are slots, an overflow button will be show which opens a popover with the actions that did not fit in the bar directly.</p>
<!-- @@@actions -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td></tr></table><p>Set this to override the default delegate button that shows the actions in the <a href="index.html">ActionBar</a>. Uses the defaultDelegate of <a href="Ubuntu.Components.Styles.ActionBarStyle.md">ActionBarStyle</a> by default.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="index.html">ActionBar</a></span> {
<span class="name">id</span>: <span class="name">customDelegateBar</span>
<span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;action 1&quot;</span> },
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> { <span class="name">text</span>: <span class="string">&quot;action 2&quot;</span> }
]
<span class="name">delegate</span>: <span class="name">Button</span> {
<span class="name">action</span>: <span class="name">modelData</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">14</span>)
<span class="name">strokeColor</span>: <span class="name">UbuntuColors</span>.<span class="name">purple</span>
}
}</pre>
<!-- @@@delegate -->
<br/>
<!-- $$$numberOfSlots -->
<table class="qmlname"><tr valign="top" id="numberOfSlots-prop"><td class="tblQmlPropNode"><p><span class="name">numberOfSlots</span> : <span class="type">int</span></p></td></tr></table><p>The number of actions to be shown in the bar directly. If the actions don't fit, an overflow button (using one slot) will be shown which opens a popover with the remaining actions.</p>
<p>Setting numberOfSlots to 0 will always show the overflow button and no other action buttons. Default value from the Ambience theme is 3.</p>
<!-- @@@numberOfSlots -->
<br/>
