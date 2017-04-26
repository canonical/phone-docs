---
Title: Ubuntu.Components.PageColumn
---

# Ubuntu.Components.PageColumn

<span class="subtitle"></span>
<!-- $$$PageColumn-brief -->
<p>Component configuring the metrics of a column in AdaptivePageLayout. More...</p>
<!-- @@@PageColumn -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="../sdk-14.10/QtQml.QtObject.md">QtObject</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#fillWidth-prop">fillWidth</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#maximumWidth-prop">maximumWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#minimumWidth-prop">minimumWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#preferredWidth-prop">preferredWidth</a></b></b> : real</li>
</ul>
<!-- $$$PageColumn-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@PageColumn -->
<h2>Property Documentation</h2>
<!-- $$$fillWidth -->
<table class="qmlname"><tr valign="top" id="fillWidth-prop"><td class="tblQmlPropNode"><p><span class="name">fillWidth</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the width of the column should fill the available space of the <a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a> column or not. Defaults to <i>false</i>.</p>
<!-- @@@fillWidth -->
<br/>
<!-- $$$maximumWidth -->
<table class="qmlname"><tr valign="top" id="maximumWidth-prop"><td class="tblQmlPropNode"><p><span class="name">maximumWidth</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the maximum width of the column. A maximum value of 0 will be ignored. Defaults to the maximum positive value.</p>
<!-- @@@maximumWidth -->
<br/>
<!-- $$$minimumWidth -->
<table class="qmlname"><tr valign="top" id="minimumWidth-prop"><td class="tblQmlPropNode"><p><span class="name">minimumWidth</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the minimum width of the column. Defaults to 0.</p>
<!-- @@@minimumWidth -->
<br/>
<!-- $$$preferredWidth -->
<table class="qmlname"><tr valign="top" id="preferredWidth-prop"><td class="tblQmlPropNode"><p><span class="name">preferredWidth</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the preferred width of the column when the layout is initialized. Defaults to 0. <a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a> clamps the given value between <a href="#minimumWidth-prop">minimumWidth</a> and <a href="#maximumWidth-prop">maximumWidth</a>. The value must be set if the <a href="#fillWidth-prop">fillWidth</a> and <a href="#minimumWidth-prop">minimumWidth</a> are not set.</p>
<!-- @@@preferredWidth -->
<br/>
