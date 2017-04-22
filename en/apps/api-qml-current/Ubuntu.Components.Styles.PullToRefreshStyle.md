---
Title: Ubuntu.Components.Styles.PullToRefreshStyle
---

# Ubuntu.Components.Styles.PullToRefreshStyle

<span class="subtitle"></span>
<!-- $$$PullToRefreshStyle-brief -->
<p>Style API for PullToRefresh component. More...</p>
<!-- @@@PullToRefreshStyle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Styles 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activationThreshold-prop">activationThreshold</a></b></b> : real</li>
<li class="fn"><b><b><a href="#defaultContent-prop">defaultContent</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#releaseToRefresh-prop">releaseToRefresh</a></b></b> : bool</li>
</ul>
<!-- $$$PullToRefreshStyle-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The component defines the style API for the <a href="Ubuntu.Components.PullToRefresh.md">PullToRefresh</a> component.</p>
<!-- @@@PullToRefreshStyle -->
<h2>Property Documentation</h2>
<!-- $$$activationThreshold -->
<table class="qmlname"><tr valign="top" id="activationThreshold-prop"><td class="tblQmlPropNode"><p><span class="name">activationThreshold</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the threshold value when the component should enter into <i>ready-to-refresh</i> state when dragged manually. The default value is the height of the component styled.</p>
<!-- @@@activationThreshold -->
<br/>
<!-- $$$defaultContent -->
<table class="qmlname"><tr valign="top" id="defaultContent-prop"><td class="tblQmlPropNode"><p><span class="name">defaultContent</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>The property holds the style provided default content component. The value is assigned to the <a href="Ubuntu.Components.PullToRefresh.md#content-prop">PullToRefresh::content</a> property.</p>
<!-- @@@defaultContent -->
<br/>
<!-- $$$releaseToRefresh -->
<table class="qmlname"><tr valign="top" id="releaseToRefresh-prop"><td class="tblQmlPropNode"><p><span class="name">releaseToRefresh</span> : <span class="type">bool</span></p></td></tr></table><p>The property informs the component when a manual refresh can be triggered. Style implementations (themes) can decide when to flip the component to be ready to trigger reftesh signal.</p>
<!-- @@@releaseToRefresh -->
<br/>
