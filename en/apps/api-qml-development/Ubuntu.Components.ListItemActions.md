---
Title: Ubuntu.Components.ListItemActions
---

# Ubuntu.Components.ListItemActions

<span class="subtitle"></span>
<!-- $$$ListItemActions-brief -->
<p>Provides configuration for actions to be added to a ListItem. More...</p>
<!-- @@@ListItemActions -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actions-prop">actions</a></b></b> : list&lt;Action&gt;</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
</ul>
<!-- $$$ListItemActions-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="Ubuntu.Components.ListItem.md">ListItem</a> accepts actions that can be configured to appear when swiped to left or right. The API does not limit the number of actions to be assigned for leading or trailing actions, however the design constraints are allowing a maximum of 1 action on leading- and a maximum of 3 actions on trailing side of the <a href="Ubuntu.Components.ListItem.md">ListItem</a>.</p>
<p>The <a href="#actions-prop">actions</a> are Action instances or elements derived from Action. The default visualization of the actions can be overridden using the <a href="#delegate-prop">delegate</a> property, and the default implementation uses the <code>name</code> property of the Action.</p>
<h4 >Using with ListViews</h4>
<p><a href="index.html">ListItemActions</a> instances can be shared between <a href="Ubuntu.Components.ListItem.md">ListItem</a> instances within the same view. When shared, the memory footprint of the view will be lot smaller, as there will be no individual action container created for each list's actions. Having individual <a href="index.html">ListItemActions</a> instances increases the memory footprint, and also has performance impact on kinetic scrolling.</p>
<p>The examples below illustrate the worst and best practice when used in a <a href="QtQuick.ListView.md">ListView</a>. The worst case:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="number">10000</span>
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="name">leadingActions</span>: <span class="name">ListItemActions</span> {
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
}
]
}
<span class="name">trailingActions</span>: <span class="name">ListItemActions</span> {
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;edit&quot;</span>
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;copy&quot;</span>
}
]
}
}
}
}</pre>
<p>This example can be optimized by sharing the action arrays between the items:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="index.html">ListItemActions</a></span> {
<span class="name">id</span>: <span class="name">leading</span>
<span class="name">actions</span>: <span class="name">Action</span> {
<span class="name">iconName</span>: <span class="string">&quot;delete&quot;</span>
}
}
<span class="type"><a href="index.html">ListItemActions</a></span> {
<span class="name">id</span>: <span class="name">trailing</span>
<span class="name">actions</span>: [
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;search&quot;</span>
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;edit&quot;</span>
},
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;copy&quot;</span>
}
]
}
<span class="type"><a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="number">10000</span>
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="name">leadingActions</span>: <span class="name">leading</span>
<span class="name">trailingActions</span>: <span class="name">trailing</span>
}
}
}</pre>
<h4 >Action parameter types</h4>
<p>Actions handled by the <a href="Ubuntu.Components.ListItem.md">ListItem</a> are all triggered with the <a href="Ubuntu.Components.ListItem.md">ListItem</a>'s index as parameter. This index can either be the model index when used with <a href="QtQuick.ListView.md">ListView</a>, or the child index from the parentItem's childItems list. Actions can use this parameter to identify the instance of the <a href="Ubuntu.Components.ListItem.md">ListItem</a> on which it was executed, in which case <a href="Ubuntu.Components.ListItem.md">ListItem</a> will change the type from <code>Actions.None</code> to <code>Actions.Integer</code> when it is triggered.</p>
<!-- @@@ListItemActions -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top" id="actions-prop"><td class="tblQmlPropNode"><p><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td></tr></table><p>The property holds the actions to be displayed. It can hold instances cached or declared in place. An example of cached actions:</p>
<pre class="qml"><span class="type"><a href="index.html">ListItemActions</a></span> {
<span class="name">id</span>: <span class="name">cachedActions</span>
<span class="name">actions</span>: [
<span class="name">copyAction</span>, <span class="name">searchAction</span>, <span class="name">cutAction</span>
]
}</pre>
<!-- @@@actions -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>The property holds the custom delegate to visualize the actions listed in the <a href="index.html">ListItemActions</a>. When set to null, the default delegate specified by the <a href="Ubuntu.Components.Styles.ListItemStyle.md">ListItemStyle</a> will be used.</p>
<p><a href="index.html">ListItemActions</a> provides the <code>action</code> context property which contains the Action instance currently visualized. Using this property delegates can access the information to be visualized. The action is triggered by the panel item holding the visualized action, therefore only visualization is needed by the custom delegate. The other context property exposed to delegates is the <code>index</code>, which specifies the index of the action visualized.</p>
<p>Specifying a custom delegate will not override the triggering logic of the action, that will be still handled by the panel itself. However custom delegates may still need to distinguish the pressed/released state visually. This can be achieved using the <code>pressed</code> context property, which informs the delegate about the pressed state of the action.</p>
<p>The delegate height is set automatically by the panel item, only the width must be specified which will be clamped between height and the maximum width of the list item divided by the number of actions in the list.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="number">50</span>
<span class="name">delegate</span>: <span class="name">ListItem</span> {
<span class="name">trailingActions</span>: <span class="name">actionsList</span>
}
<span class="type"><a href="index.html">ListItemActions</a></span> {
<span class="name">id</span>: <span class="name">actionsList</span>
<span class="name">delegate</span>: <span class="name">Column</span> {
<span class="name">width</span>: <span class="name">height</span> <span class="operator">+</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
<span class="name">name</span>: <span class="name">action</span>.<span class="name">iconName</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">3</span>)
<span class="name">height</span>: <span class="name">width</span>
<span class="name">color</span>: <span class="name">pressed</span> ? <span class="string">&quot;blue&quot;</span> : <span class="string">&quot;lightblue&quot;</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
}
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="name">action</span>.<span class="name">text</span> <span class="operator">+</span> <span class="string">&quot;#&quot;</span> <span class="operator">+</span> <span class="name">index</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">horizontalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignHCenter</span>
}
}
<span class="name">actions</span>: <span class="name">Action</span> {
<span class="name">iconName</span>: <span class="string">&quot;starred&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Star&quot;</span>
}
}
}
}</pre>
<p><b>Note: </b>Putting a Rectangle in the delegate can be used to override the color of the panel. Also all <a href="Ubuntu.Components.ListItem.md">ListItem</a> attached properties can be used in the delegates.</p><p>Defaults to null.</p>
<!-- @@@delegate -->
<br/>
