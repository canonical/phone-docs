---
Title: Ubuntu.Components.ListItemDrag
---

# Ubuntu.Components.ListItemDrag

<span class="subtitle"></span>
<!-- $$$ListItemDrag-brief -->
<p>Provides information about a ListItem drag event. More...</p>
<!-- @@@ListItemDrag -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accept-prop">accept</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#from-prop">from</a></b></b> : int</li>
<li class="fn"><b><b><a href="#maximumIndex-prop">maximumIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#minimumIndex-prop">minimumIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enum</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : int</li>
</ul>
<!-- $$$ListItemDrag-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The object cannot be instantiated and it is passed as parameter to <a href="Ubuntu.Components.ViewItems.md#dragUpdated-signal">ViewItems::dragUpdated</a> attached signal. Developer can decide whether to accept or restrict the dragging event based on the input provided by this event.</p>
<p>The direction of the drag can be found via the <a href="#status-prop">status</a> property and the source and destination the drag can be applied via <a href="#from-prop">from</a> and <a href="#to-prop">to</a> properties. The allowed directions can be configured through <a href="#minimumIndex-prop">minimumIndex</a> and <a href="#maximumIndex-prop">maximumIndex</a> properties, and the event acceptance through <a href="#accept-prop">accept</a> property. If the event is not accepted, the drag action will be considered as cancelled.</p>
<!-- @@@ListItemDrag -->
<h2>Property Documentation</h2>
<!-- $$$accept -->
<table class="qmlname"><tr valign="top" id="accept-prop"><td class="tblQmlPropNode"><p><span class="name">accept</span> : <span class="type">bool</span></p></td></tr></table><p>The property can be used to dismiss the event. By default its value is true, meaning the drag event is accepted. The value of false blocks the drag event to be handled by the <a href="Ubuntu.Components.ListItem.md">ListItem</a>'s dragging mechanism.</p>
<!-- @@@accept -->
<br/>
<!-- $$$from -->
<table class="qmlname"><tr valign="top" id="from-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">from</span> : <span class="type">int</span></p></td></tr></table><p>Specifies the source index the <a href="Ubuntu.Components.ListItem.md">ListItem</a> is dragged from.</p>
<!-- @@@from -->
<br/>
<!-- $$$maximumIndex -->
<table class="qmlname"><tr valign="top" id="maximumIndex-prop"><td class="tblQmlPropNode"><p><span class="name">maximumIndex</span> : <span class="type">int</span></p></td></tr></table><!-- @@@maximumIndex -->
<br/>
<!-- $$$minimumIndex -->
<table class="qmlname"><tr valign="top" id="minimumIndex-prop"><td class="tblQmlPropNode"><p><span class="name">minimumIndex</span> : <span class="type">int</span></p></td></tr></table><p>These properties configure the minimum and maximum indexes the item can be dragged. The properties can be set in <a href="Ubuntu.Components.ViewItems.md#dragUpdated-signal">ViewItems::dragUpdated</a> signal. A negative value means no restriction defined on the dragging interval side.</p>
<!-- @@@minimumIndex -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">status</span> : <span class="type">enum</span></p></td></tr></table><p>The property provides information about the status of the drag. Its value can be one of the following:</p>
<ul>
<li><b>ListItemDrag.Started</b> - indicates that the dragging is about to start, giving opportunities to define restrictions on the dragging indexes, like <a href="#minimumIndex-prop">minimumIndex</a>, <a href="#maximumIndex-prop">maximumIndex</a></li>
<li><b>ListItemDrag.Moving</b> - the dragged item is moved upwards or downwards in the <a href="Ubuntu.Components.ListItem.md">ListItem</a></li>
<li><b>ListItemDrag.Dropped</b> - indicates that the drag event is finished, and the dragged item is about to be dropped to the given position.</li>
</ul>
<!-- @@@status -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top" id="to-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">to</span> : <span class="type">int</span></p></td></tr></table><p>Specifies the index the <a href="Ubuntu.Components.ListItem.md">ListItem</a> is dragged to or dropped.</p>
<!-- @@@to -->
<br/>
