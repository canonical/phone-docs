---
Title: Ubuntu.Components.Popups.popupUtils
---

# Ubuntu.Components.Popups.popupUtils

<span class="subtitle"></span>
<!-- $$$popupUtils-brief -->
<p>Popover utility functions. More...</p>
<!-- @@@popupUtils -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Popups 1.3</td></tr></table><ul>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#close-method">close</a></b></b>(popupObject)</li>
<li class="fn"><b><b><a href="#open-method">open</a></b></b>(popup, caller, params)</li>
</ul>
<!-- $$$popupUtils-description -->
<h2 id="details">Detailed Description</h2>
</p>
<!-- @@@popupUtils -->
<h2>Method Documentation</h2>
<!-- $$$close -->
<table class="qmlname"><tr valign="top" id="close-method"><td class="tblQmlFuncNode"><p><span class="name">close</span>(<span class="type">popupObject</span>)</p></td></tr></table><p>Closes (hides and destroys) the given popup.</p>
<pre class="qml">import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">popup</span>)
}</pre>
<!-- @@@close -->
<br/>
<!-- $$$open -->
<table class="qmlname"><tr valign="top" id="open-method"><td class="tblQmlFuncNode"><p><span class="name">open</span>(<span class="type">popup</span>, <span class="type">caller</span>, <span class="type">params</span>)</p></td></tr></table><p>The function creates and shows a popup object from either a <b>Component</b> or URL of a QML document. The caller drives the placement of the popup as well as the pointer's. The third parameter (param) can hold a series of properties configuring the popup to be opened. This can be any property defined by the popups and additional custom ones defined in derived popups.</p>
<p><i>caller</i> should be given when a ComposerSheet or <a href="Ubuntu.Components.Popups.Dialog.md">Dialog</a> is specified using a URL and opened inside a <b>Window</b>. If not, the application's root item will be the dismiss area.</p>
<p>Returns a popop object, which can be closed using <a href="#close-method">close</a>.</p>
<pre class="qml">import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">open</span>(<span class="name">popoverComponent</span>, <span class="name">popoverButton</span>, { 'dummy': <span class="number">true</span> } )
}</pre>
<p>See <a href="Ubuntu.Components.Popups.Popover.md">Popover</a>, ComposerSheet and <a href="Ubuntu.Components.Popups.Dialog.md">Dialog</a> for their respective documentation and more examples.</p>
<!-- @@@open -->
<br/>
