---
Title: Ubuntu.Components.TabBar
---

# Ubuntu.Components.TabBar

<span class="subtitle"></span>
<!-- $$$TabBar-brief -->
<p>Tab bar that will be shown in the header when Tabs is active. This component does not need to be instantiated by the developer, it is automatically created by the Tabs. More...</p>
<!-- @@@TabBar -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#alwaysSelectionMode-prop">alwaysSelectionMode</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#animate-prop">animate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : var</li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectedIndex-prop">selectedIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#selectionMode-prop">selectionMode</a></b></b> : bool</li>
</ul>
<!-- $$$TabBar-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@TabBar -->
<h2>Property Documentation</h2>
<!-- $$$alwaysSelectionMode -->
<table class="qmlname"><tr valign="top" id="alwaysSelectionMode-prop"><td class="tblQmlPropNode"><p><span class="name">alwaysSelectionMode</span> : <span class="type">bool</span></p></td></tr></table><p>Do not deactivate the tab bar after a specified idle time or when the user selects a new tab. Off by default.</p>
<!-- @@@alwaysSelectionMode -->
<br/>
<!-- $$$animate -->
<table class="qmlname"><tr valign="top" id="animate-prop"><td class="tblQmlPropNode"><p><span class="name">animate</span> : <span class="type">bool</span></p></td></tr></table><p>Show animations when the state changes. Default: true.</p>
<!-- @@@animate -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type"><a href="#">TabBar</a>. The tabs are visualized by the style, displaying controlling elements based on the data specified by the roles. The default style mandates the existence of either the <b>title</b> or <b>tab</b> role, but different styles may require to have other roles (e.g&#x2e; image, color). The order the role existence is checked is also determined by the style component, Default style checks the existence of the <b>tab</b> role first, and if not defined will use the <b>title</b> role.</p>
<!-- @@@model -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">pressed</span> : <span class="type">bool</span></p></td></tr></table><p>The user is interacting with the tab bar. Depends on the style pressed property.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$selectedIndex -->
<table class="qmlname"><tr valign="top" id="selectedIndex-prop"><td class="tblQmlPropNode"><p><span class="name">selectedIndex</span> : <span class="type">int</span></p></td></tr></table><p>The property holds the index of the selected Tab item. Note: Setting this property is DEPRECATED. Set the selectedIndex of the model instead.</p>
<!-- @@@selectedIndex -->
<br/>
<!-- $$$selectionMode -->
<table class="qmlname"><tr valign="top" id="selectionMode-prop"><td class="tblQmlPropNode"><p><span class="name">selectionMode</span> : <span class="type">bool</span></p></td></tr></table><p>An inactive tab bar only displays the currently selected tab, and an active tab bar can be interacted with to select a tab.</p>
<!-- @@@selectionMode -->
<br/>
