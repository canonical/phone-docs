---
Title: QtQuick.DragEvent
---

# QtQuick.DragEvent

<span class="subtitle"></span>
<!-- $$$DragEvent-brief -->
<p>Provides information about a drag event More...</p>
<!-- @@@DragEvent -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accepted-prop">accepted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#action-prop">action</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#colorData-prop">colorData</a></b></b> : color</li>
<li class="fn"><b><b><a href="#drag.source-prop">drag.source</a></b></b> : Object</li>
<li class="fn"><b><b><a href="#formats-prop">formats</a></b></b> : stringlist</li>
<li class="fn"><b><b><a href="#hasColor-prop">hasColor</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#hasHtml-prop">hasHtml</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#hasText-prop">hasText</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#hasUrls-prop">hasUrls</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#html-prop">html</a></b></b> : string</li>
<li class="fn"><b><b><a href="#keys-prop">keys</a></b></b> : stringlist</li>
<li class="fn"><b><b><a href="#proposedAction-prop">proposedAction</a></b></b> : flags</li>
<li class="fn"><b><b><a href="#supportedActions-prop">supportedActions</a></b></b> : flags</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#urls-prop">urls</a></b></b> : urllist</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : real</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : real</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#accept-method-2">accept</a></b></b>(enumeration <i>action</i>)</li>
<li class="fn"><b><b><a href="#accept-method">accept</a></b></b>()</li>
<li class="fn"><b><b><a href="#acceptProposedAction-method">acceptProposedAction</a></b></b>()</li>
<li class="fn">string <b><b><a href="#getDataAsString-method">getDataAsString</a></b></b>(string <i>format</i>)</li>
</ul>
<!-- $$$DragEvent-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The position of the drag event can be obtained from the <a href="#x-prop">x</a> and <a href="#y-prop">y</a> properties, and the <a href="#keys-prop">keys</a> property identifies the drag keys of the event <a href="#drag.source-prop">source</a>.</p>
<p>The existence of specific drag types can be determined using the <a href="#hasColor-prop">hasColor</a>, <a href="#hasHtml-prop">hasHtml</a>, <a href="#hasText-prop">hasText</a>, and <a href="#hasUrls-prop">hasUrls</a> properties.</p>
<p>The list of all supplied formats can be determined using the <a href="#formats-prop">formats</a> property.</p>
<p>Specific drag types can be obtained using the <a href="#colorData-prop">colorData</a>, <a href="#html-prop">html</a>, <a href="QtQuick.qtquick-releasenotes.md#text">text</a>, and <a href="#urls-prop">urls</a> properties.</p>
<p>A string version of any available mimeType can be obtained using <a href="#getDataAsString-method">getDataAsString</a>.</p>
<!-- @@@DragEvent -->
<h2>Property Documentation</h2>
<!-- $$$accepted -->
<table class="qmlname"><tr valign="top" id="accepted-prop"><td class="tblQmlPropNode"><p><span class="name">accepted</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the drag event was accepted by a handler.</p>
<p>The default value is true.</p>
<!-- @@@accepted -->
<br/>
<!-- $$$action -->
<table class="qmlname"><tr valign="top" id="action-prop"><td class="tblQmlPropNode"><p><span class="name">action</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the action that the <a href="#drag.source-prop">source</a> is to perform on an accepted drop.</p>
<p>The drop action may be one of:</p>
<ul>
<li>Qt.CopyAction Copy the data to the target.</li>
<li>Qt.MoveAction Move the data from the source to the target.</li>
<li>Qt.LinkAction Create a link from the source to the target.</li>
<li>Qt.IgnoreAction Ignore the action (do nothing with the data).</li>
</ul>
<!-- @@@action -->
<br/>
<!-- $$$colorData -->
<table class="qmlname"><tr valign="top" id="colorData-prop"><td class="tblQmlPropNode"><p><span class="name">colorData</span> : <span class="type">color</span></p></td></tr></table><p>This property holds color data, if any.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@colorData -->
<br/>
<!-- $$$drag.source -->
<table class="qmlname"><tr valign="top" id="drag.source-prop"><td class="tblQmlPropNode"><p><span class="name">drag.source</span> : <span class="type">Object</span></p></td></tr></table><p>This property holds the source of a drag event.</p>
<!-- @@@drag.source -->
<br/>
<!-- $$$formats -->
<table class="qmlname"><tr valign="top" id="formats-prop"><td class="tblQmlPropNode"><p><span class="name">formats</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property holds a list of mime type formats contained in the drag data.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@formats -->
<br/>
<!-- $$$hasColor -->
<table class="qmlname"><tr valign="top" id="hasColor-prop"><td class="tblQmlPropNode"><p><span class="name">hasColor</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the drag event contains a color item.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@hasColor -->
<br/>
<!-- $$$hasHtml -->
<table class="qmlname"><tr valign="top" id="hasHtml-prop"><td class="tblQmlPropNode"><p><span class="name">hasHtml</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the drag event contains a html item.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@hasHtml -->
<br/>
<!-- $$$hasText -->
<table class="qmlname"><tr valign="top" id="hasText-prop"><td class="tblQmlPropNode"><p><span class="name">hasText</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the drag event contains a text item.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@hasText -->
<br/>
<!-- $$$hasUrls -->
<table class="qmlname"><tr valign="top" id="hasUrls-prop"><td class="tblQmlPropNode"><p><span class="name">hasUrls</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the drag event contains one or more url items.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@hasUrls -->
<br/>
<!-- $$$html -->
<table class="qmlname"><tr valign="top" id="html-prop"><td class="tblQmlPropNode"><p><span class="name">html</span> : <span class="type">string</span></p></td></tr></table><p>This property holds html data, if any.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@html -->
<br/>
<!-- $$$keys -->
<table class="qmlname"><tr valign="top" id="keys-prop"><td class="tblQmlPropNode"><p><span class="name">keys</span> : <span class="type">stringlist</span></p></td></tr></table><p>This property holds a list of keys identifying the data type or source of a drag event.</p>
<!-- @@@keys -->
<br/>
<!-- $$$proposedAction -->
<table class="qmlname"><tr valign="top" id="proposedAction-prop"><td class="tblQmlPropNode"><p><span class="name">proposedAction</span> : <span class="type">flags</span></p></td></tr></table><p>This property holds the set of <a href="#action-prop">actions</a> proposed by the drag source.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@proposedAction -->
<br/>
<!-- $$$supportedActions -->
<table class="qmlname"><tr valign="top" id="supportedActions-prop"><td class="tblQmlPropNode"><p><span class="name">supportedActions</span> : <span class="type">flags</span></p></td></tr></table><p>This property holds the set of <a href="#action-prop">actions</a> supported by the drag source.</p>
<!-- @@@supportedActions -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>This property holds text data, if any.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@text -->
<br/>
<!-- $$$urls -->
<table class="qmlname"><tr valign="top" id="urls-prop"><td class="tblQmlPropNode"><p><span class="name">urls</span> : <span class="type">urllist</span></p></td></tr></table><p>This property holds a list of urls, if any.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@urls -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the x coordinate of a drag event.</p>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the y coordinate of a drag event.</p>
<!-- @@@y -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$accept -->
<table class="qmlname"><tr valign="top" id="accept-method-2"><td class="tblQmlFuncNode"><p><span class="name">accept</span>(<span class="type">enumeration</span><i> action</i>)</p></td></tr></table><p>Accepts the drag event.</p>
<p>If an <i>action</i> is specified it will overwrite the value of the <a href="#action-prop">action</a> property.</p>
<!-- @@@accept -->
<br/>
<!-- $$$accept -->
<table class="qmlname"><tr valign="top" id="accept-method"><td class="tblQmlFuncNode"><p><span class="name">accept</span>()</p></td></tr></table><p>Accepts the drag event.</p>
<p>If an <i>action</i> is specified it will overwrite the value of the <a href="#action-prop">action</a> property.</p>
<!-- @@@accept -->
<br/>
<!-- $$$acceptProposedAction -->
<table class="qmlname"><tr valign="top" id="acceptProposedAction-method"><td class="tblQmlFuncNode"><p><span class="name">acceptProposedAction</span>()</p></td></tr></table><p>Accepts the drag event with the <a href="#proposedAction-prop">proposedAction</a>.</p>
<p>This QML method was introduced in  Qt 5.2.</p>
<!-- @@@acceptProposedAction -->
<br/>
<!-- $$$getDataAsString -->
<table class="qmlname"><tr valign="top" id="getDataAsString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">getDataAsString</span>(<span class="type">string</span><i> format</i>)</p></td></tr></table><p>Returns the data for the given <i>format</i> converted to a string. <i>format</i> should be one contained in the <a href="#formats-prop">formats</a> property.</p>
<p>This QML method was introduced in  Qt 5.2.</p>
<!-- @@@getDataAsString -->
<br/>
