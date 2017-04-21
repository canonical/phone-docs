---
Title: Ubuntu.Components.ToolbarButton
---

# Ubuntu.Components.ToolbarButton

<span class="subtitle"></span>
<!-- $$$ToolbarButton-brief -->
<p>An ActionItem that represents a button in the toolbar. ToolbarButtons should be included in ToolbarItems to define the tools of a Page. The behavior and look of the toolbar button can be specified by setting an Action for the button, or by setting the other properties inherited by the ActionItem. More...</p>
<!-- @@@ToolbarButton -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ActionItem.md">ActionItem</a></p>
</td></tr></table><ul>
</ul>
<!-- $$$ToolbarButton-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Example of different ways to define the toolbar button:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">id</span>: <span class="name">action1</span>
<span class="name">text</span>: <span class="string">&quot;action 1&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;one!&quot;</span>)
}
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;test page&quot;</span>
<span class="type">Label</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Hello, world&quot;</span>
}
<span class="name">tools</span>: <span class="name">ToolbarItems</span> {
<span class="comment">// reference to an action:</span>
<span class="type"><a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a></span> {
<span class="name">action</span>: <span class="name">action1</span>
}
<span class="comment">// define the action:</span>
<span class="type"><a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a></span> {
<span class="name">action</span>: <span class="name">Action</span> {
<span class="name">text</span>: <span class="string">&quot;Second action&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;add&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;two!&quot;</span>)
}
<span class="comment">// override the text of the action:</span>
<span class="name">text</span>: <span class="string">&quot;action 2&quot;</span>
}
<span class="comment">// no associated action:</span>
<span class="type"><a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;cancel&quot;</span>
<span class="name">text</span>: <span class="string">&quot;button&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;three!&quot;</span>)
}
}
}
}</pre>
<p>See <a href="Ubuntu.Components.Toolbar.md">ToolbarItems</a> for more information on how to use <a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a>.</p>
<!-- @@@ToolbarButton -->
