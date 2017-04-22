---
Title: QtQuick.SpriteSequence
---

# QtQuick.SpriteSequence

<span class="subtitle"></span>
<!-- $$$SpriteSequence-brief -->
<p>Draws a sprite animation More...</p>
<!-- @@@SpriteSequence -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#currentSprite-prop">currentSprite</a></b></b> : string</li>
<li class="fn"><b><b><a href="#goalSprite-prop">goalSprite</a></b></b> : string</li>
<li class="fn"><b><b><a href="#interpolate-prop">interpolate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#running-prop">running</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#sprites-prop">sprites</a></b></b> : list&lt;Sprite&gt;</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#jumpTo-method">jumpTo</a></b></b>(string <i>sprite</i>)</li>
</ul>
<!-- $$$SpriteSequence-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="QtQuick.qtquick-imageelements-example.md/#spritesequence">SpriteSequence</a> renders and controls a list of animations defined by <a href="QtQuick.Sprite.md">Sprite</a> types.</p>
<p>For full details, see the <a href="QtQuick.qtquick-effects-sprites.md">Sprite Animations</a> overview.</p>
<!-- @@@SpriteSequence -->
<h2>Property Documentation</h2>
<!-- $$$currentSprite -->
<table class="qmlname"><tr valign="top" id="currentSprite-prop"><td class="tblQmlPropNode"><p><span class="name">currentSprite</span> : <span class="type">string</span></p></td></tr></table><p>The name of the Sprite which is currently animating.</p>
<!-- @@@currentSprite -->
<br/>
<!-- $$$goalSprite -->
<table class="qmlname"><tr valign="top" id="goalSprite-prop"><td class="tblQmlPropNode"><p><span class="name">goalSprite</span> : <span class="type">string</span></p></td></tr></table><p>The name of the Sprite which the animation should move to.</p>
<p>Sprite states have defined durations and transitions between them, setting goalState will cause it to disregard any path weightings (including 0) and head down the path which will reach the goalState quickest (fewest animations). It will pass through intermediate states on that path, and animate them for their duration.</p>
<p>If it is possible to return to the goalState from the starting point of the goalState it will continue to do so until goalState is set to &quot;&quot; or an unreachable state.</p>
<!-- @@@goalSprite -->
<br/>
<!-- $$$interpolate -->
<table class="qmlname"><tr valign="top" id="interpolate-prop"><td class="tblQmlPropNode"><p><span class="name">interpolate</span> : <span class="type">bool</span></p></td></tr></table><p>If true, interpolation will occur between sprite frames to make the animation appear smoother.</p>
<p>Default is true.</p>
<!-- @@@interpolate -->
<br/>
<!-- $$$running -->
<table class="qmlname"><tr valign="top" id="running-prop"><td class="tblQmlPropNode"><p><span class="name">running</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the sprite is animating or not.</p>
<p>Default is true</p>
<!-- @@@running -->
<br/>
<!-- $$$sprites -->
<table class="qmlname"><tr valign="top" id="sprites-prop"><td class="tblQmlPropNode"><p><span class="name">sprites</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span>&gt;</p></td></tr></table><p>The sprite or sprites to draw. Sprites will be scaled to the size of this item.</p>
<!-- @@@sprites -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$jumpTo -->
<table class="qmlname"><tr valign="top" id="jumpTo-method"><td class="tblQmlFuncNode"><p><span class="name">jumpTo</span>(<span class="type">string</span><i> sprite</i>)</p></td></tr></table><p>This function causes the <a href="QtQuick.qtquick-imageelements-example.md/#spritesequence">SpriteSequence</a> to jump to the specified sprite immediately, intermediate sprites are not played. The <i>sprite</i> argument is the name of the sprite you wish to jump to.</p>
<!-- @@@jumpTo -->
<br/>
