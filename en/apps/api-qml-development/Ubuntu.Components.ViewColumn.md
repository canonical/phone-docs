---
Title: Ubuntu.Components.ViewColumn
---

# Ubuntu.Components.ViewColumn

<span class="subtitle"></span>
<!-- $$$ViewColumn-brief -->
<p>View column metrics configuration for SplitView. More...</p>
<!-- @@@ViewColumn -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import  .</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#fillWidth-prop">fillWidth</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#maximumWidth-prop">maximumWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#minimumWidth-prop">minimumWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#preferredWidth-prop">preferredWidth</a></b></b> : real</li>
</ul>
<!-- $$$ViewColumn-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The component provides width metrics configuration for <a href="Ubuntu.Components.Labs.SplitView.md">SplitView</a> layout columns. The values are applied on columns by an active <a href="Ubuntu.Components.SplitViewLayout.md">SplitViewLayout</a>. On resizing, the values are preserved for the entire lifetime of the component, even when the active layout is changed into an other one. When changed back, the previous values will be used.</p>
<!-- @@@ViewColumn -->
<h2>Property Documentation</h2>
<!-- $$$fillWidth -->
<table class="qmlname"><tr valign="top" id="fillWidth-prop"><td class="tblQmlPropNode"><p><span class="name">fillWidth</span> : <span class="type">bool</span></p></td></tr></table><p>If set, the column width will take the space available after all the other columns with non-fill width are configured. This means that if there is more than one column configured to fill width, the reminder width is split evenly between these columns. If all columns are configured to fill width, the colum widths will be split evenly between all the columns.</p>
<p><b>Note: </b>When a column configured with fillWidth is resized, the properties will not be altered, but the fillWidth wioll no longer be taken into account. Instead, the <a href="#preferredWidth-prop">preferredWidth</a> will drive the width of that column from that point on.</p><!-- @@@fillWidth -->
<br/>
<!-- $$$maximumWidth -->
<table class="qmlname"><tr valign="top" id="maximumWidth-prop"><td class="tblQmlPropNode"><p><span class="name">maximumWidth</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the maximum width of the column. The number must be a positive value and bigger than the <a href="#minimumWidth-prop">minimumWidth</a> value.</p>
<!-- @@@maximumWidth -->
<br/>
<!-- $$$minimumWidth -->
<table class="qmlname"><tr valign="top" id="minimumWidth-prop"><td class="tblQmlPropNode"><p><span class="name">minimumWidth</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the minimum width of the column. The number must be a positive value and less or equal than the <a href="#maximumWidth-prop">maximumWidth</a> value.</p>
<!-- @@@minimumWidth -->
<br/>
<!-- $$$preferredWidth -->
<table class="qmlname"><tr valign="top" id="preferredWidth-prop"><td class="tblQmlPropNode"><p><span class="name">preferredWidth</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the preferred width of the column. The value must be situated in between <a href="#minimumWidth-prop">minimumWidth</a> and <a href="#maximumWidth-prop">maximumWidth</a>. In case <a href="#fillWidth-prop">fillWidth</a> is set, the value will hold the actual width of the column, but setting its value will not affect the width of the column.</p>
<!-- @@@preferredWidth -->
<br/>
