---
Title: QtQuick.Window.CloseEvent
---

# QtQuick.Window.CloseEvent

<span class="subtitle"></span>
<!-- $$$CloseEvent-brief -->
<p>Notification that a Window is about to be closed More...</p>
<!-- @@@CloseEvent -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Window 2.2</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accepted-prop">accepted</a></b></b> : bool</li>
</ul>
<!-- $$$CloseEvent-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Notification that a window is about to be closed by the windowing system (e.g&#x2e; the user clicked the title bar close button). The <a href="index.html">CloseEvent</a> contains an accepted property which can be set to false to abort closing the window.</p>
<p><b>See also </b>Window.closing().</p>
<!-- @@@CloseEvent -->
<h2>Property Documentation</h2>
<!-- $$$accepted -->
<table class="qmlname"><tr valign="top" id="accepted-prop"><td class="tblQmlPropNode"><p><span class="name">accepted</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether the application will allow the user to close the window. It is true by default.</p>
<!-- @@@accepted -->
<br/>
