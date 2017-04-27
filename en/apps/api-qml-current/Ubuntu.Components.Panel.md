---
Title: Ubuntu.Components.Panel
---

# Ubuntu.Components.Panel

<span class="subtitle"></span>
<!-- $$$Panel-brief -->
<p>A panel that can be swiped in and out from an edge of the window by the user. For most applications, it is highly recommended to use the MainView instead which includes a toolbar at its bottom that can be swiped in or out. More...</p>
<!-- @@@Panel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#align-prop">align</a></b></b> : int</li>
<li class="fn"><b><b><a href="#animate-prop">animate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#animating-prop">animating</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#contents-prop">contents</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#hideTimeout-prop">hideTimeout</a></b></b> : int</li>
<li class="fn"><b><b><a href="#hintSize-prop">hintSize</a></b></b> : real</li>
<li class="fn"><b><b><a href="#locked-prop">locked</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#opened-prop">opened</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#position-prop">position</a></b></b> : real</li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#triggerSize-prop">triggerSize</a></b></b> : real</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#close-method">close</a></b></b>()</li>
<li class="fn"><b><b><a href="#open-method">open</a></b></b>()</li>
</ul>
<!-- $$$Panel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Unless your application has very specific needs for a Panel, use a <a href="Ubuntu.Components.MainView.md">MainView</a> with the default toolbar.</p>
<p>When using a Panel, do not theme it directly, but theme its contents, because the Panel itself should not have visible elements, since it is in the view (to detect mouse events) even when its contents should be invisible.</p>
<p>Set the anchors and/or width/height of the Panel to specify the area that the Panel covers when opened.</p>
<p>A black panel that can be swiped in from the lower-right of the window can be created like this:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="type"><a href="index.html">Panel</a></span> {
<span class="name">id</span>: <span class="name">panel</span>
<span class="type">anchors</span> {
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">8</span>)
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">overlay</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Click&quot;</span>
}
}
}
}</pre>
<p>A panel that looks like the standard (bottom-aligned) toolbar, but with custom contents, can be created like this:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="type"><a href="index.html">Panel</a></span> {
<span class="name">id</span>: <span class="name">panel</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">8</span>)
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="comment">// two properties used by the toolbar delegate:</span>
property <span class="type">bool</span> <span class="name">opened</span>: <span class="name">panel</span>.<span class="name">opened</span>
property <span class="type">bool</span> <span class="name">animating</span>: <span class="name">panel</span>.<span class="name">animating</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Click&quot;</span>
}
}
}
}</pre>
<p>Any Items can be placed inside the Panel, but MouseAreas can block mouse events from reaching the panel and thus obstruct the swiping behavior for hiding the panel. As a result, the user cannot start swiping on the buttons in the examples above in order to hide the panel. To remedy this, clicked() signals are forwarded from the panel by calling the child's trigger() function. Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">background</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="type"><a href="index.html">Panel</a></span> {
<span class="name">id</span>: <span class="name">panel</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">8</span>)
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">overlay</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">8</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">4</span>)
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="keyword">function</span> <span class="name">trigger</span>() {
<span class="name">print</span>(<span class="string">&quot;The red rectangle was clicked&quot;</span>);
}
}
}
}
<span class="name">Component</span>.onCompleted: <span class="name">panel</span>.<span class="name">open</span>();
}</pre>
<p>Like this, the red rectangle accepts click events, but the user can still swipe down on top of the rectangle in order to hide the panel.</p>
<!-- @@@Panel -->
<h2>Property Documentation</h2>
<!-- $$$align -->
<table class="qmlname"><tr valign="top" id="align-prop"><td class="tblQmlPropNode"><p><span class="name">align</span> : <span class="type">int</span></p></td></tr></table><p>The property defines the alignment of the panel. The implementation supports the following values:</p>
<ul>
<li>Qt.AlignBottom to swipe in the panel from the bottom (default)</li>
<li>Qt.AlignTop to swipe in the panel from the top</li>
<li>Qt.AlignLeft to swipe in the panel from the left</li>
<li>Qt.AlignRight to swipe in the panel from the right</li>
<li>Qt.AlignLeading left when layout mirrorring is disabled, right otherwise</li>
<li>Qt.AlignTrailing right when layout mirroring is disabled, left otherwise</li>
</ul>
<p>The default value is <b>Qt.AlignBottom</b>, and it is not recommended to change the default value because the left, right and top edge are already used for system functions, while the bottom edge is reserved for app-specific functionality such as a default toolbar. The use of Qt.AlignLeading and Qt.AlignTrailing is preferred over Qt.AlignLeft and Qt.AlignRight in order to more easily support right-to-left user interfaces that use <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a>.</p>
<!-- @@@align -->
<br/>
<!-- $$$animate -->
<table class="qmlname"><tr valign="top" id="animate-prop"><td class="tblQmlPropNode"><p><span class="name">animate</span> : <span class="type">bool</span></p></td></tr></table><p>Animate transitions between the different panel states.</p>
<!-- @@@animate -->
<br/>
<!-- $$$animating -->
<table class="qmlname"><tr valign="top" id="animating-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">animating</span> : <span class="type">bool</span></p></td></tr></table><p>The toolbar is currently not in a stable hidden or visible state.</p>
<!-- @@@animating -->
<br/>
<!-- $$$contents -->
<table class="qmlname"><tr valign="top" id="contents-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">contents</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>Default property, holds the content which will be swiped in and out.</p>
<!-- @@@contents -->
<br/>
<!-- $$$hideTimeout -->
<table class="qmlname"><tr valign="top" id="hideTimeout-prop"><td class="tblQmlPropNode"><p><span class="name">hideTimeout</span> : <span class="type">int</span></p></td></tr></table><p>The time in milliseconds before the panel automatically hides after inactivity when it is not locked. Interacting with the panel resets the timer. Note that adding contents to the panel that accepts mouse events will prevent the panel from detecting interaction and the timer will not be reset. Setting a negative value will disable automatic hiding. Default value: -1 (automatic hiding is disabled).</p>
<!-- @@@hideTimeout -->
<br/>
<!-- $$$hintSize -->
<table class="qmlname"><tr valign="top" id="hintSize-prop"><td class="tblQmlPropNode"><p><span class="name">hintSize</span> : <span class="type">real</span></p></td></tr></table><p>How much of the panel to show when the user touches the panel's edge. This gives the user a hint that there is a panel hiding at that edge and invites him/her to swipe to show the panel completely. Default value: units.gu(2).</p>
<!-- @@@hintSize -->
<br/>
<!-- $$$locked -->
<table class="qmlname"><tr valign="top" id="locked-prop"><td class="tblQmlPropNode"><p><span class="name">locked</span> : <span class="type">bool</span></p></td></tr></table><p>Disable edge swipe to open/close the panel. False by default.</p>
<!-- @@@locked -->
<br/>
<!-- $$$opened -->
<table class="qmlname"><tr valign="top" id="opened-prop"><td class="tblQmlPropNode"><p><span class="name">opened</span> : <span class="type">bool</span></p></td></tr></table><p>When opened, the panel is visible, otherwise it is hidden. Use edge swipes to open/close the panel. The opened property is not updated until the swipe gesture is completed.</p>
<!-- @@@opened -->
<br/>
<!-- $$$position -->
<table class="qmlname"><tr valign="top" id="position-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">position</span> : <span class="type">real</span></p></td></tr></table><p>The current position of the edge of the panel. The value is 0 when the panel is opened, and has its maximum value when the panel is closed. The maximum value is the width of the Panel for a left or right-aligned panel, and the height of the panel for top or bottom-aligned panels. When the user drags the Panel from the edge to open it, the position will change from the maximum size (closed) to 0 (fully expanded).</p>
<!-- @@@position -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-prop"><td class="tblQmlPropNode"><p><span class="name">pressed</span> : <span class="type">bool</span></p></td></tr></table><p>The user presses on the opened toolbar, or when the toolbar is closed but not locked, the user presses in the toolbar trigger area.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$triggerSize -->
<table class="qmlname"><tr valign="top" id="triggerSize-prop"><td class="tblQmlPropNode"><p><span class="name">triggerSize</span> : <span class="type">real</span></p></td></tr></table><p>The size (height for top or bottom-aligned panels, width for left or right-aligned panels) of the mouse area used to detect edge swipes to open the panel, when the panel is not opened. Default value: units.gu(2).</p>
<!-- @@@triggerSize -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$close -->
<table class="qmlname"><tr valign="top" id="close-method"><td class="tblQmlFuncNode"><p><span class="name">close</span>()</p></td></tr></table><p>Close the panel</p>
<!-- @@@close -->
<br/>
<!-- $$$open -->
<table class="qmlname"><tr valign="top" id="open-method"><td class="tblQmlFuncNode"><p><span class="name">open</span>()</p></td></tr></table><p>Open the panel</p>
<!-- @@@open -->
<br/>
