---
Title: QtQuick.Sprite
---

# QtQuick.Sprite

<span class="subtitle"></span>
<!-- $$$Sprite-brief -->
<p>Specifies sprite animations More...</p>
<!-- @@@Sprite -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#duration-prop">duration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#durationVariation-prop">durationVariation</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameCount-prop">frameCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameDuration-prop">frameDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameDurationVariation-prop">frameDurationVariation</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameHeight-prop">frameHeight</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameRate-prop">frameRate</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#frameRateVariation-prop">frameRateVariation</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#frameSync-prop">frameSync</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#frameWidth-prop">frameWidth</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameX-prop">frameX</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameY-prop">frameY</a></b></b> : int</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#randomStart-prop">randomStart</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#reverse-prop">reverse</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : QVariantMap</li>
</ul>
<!-- $$$Sprite-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>QQuickSprite renders sprites of one or more frames and animates them. The sprites can be in the middle of an image file, or split along multiple rows, as long as they form a contiguous line wrapping to the next row of the file from the left edge of the file.</p>
<p>For full details, see the <a href="QtQuick.qtquick-effects-sprites.md">Sprite Animations</a> overview.</p>
<!-- @@@Sprite -->
<h2>Property Documentation</h2>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>Duration of the animation. Values below 0 are invalid.</p>
<p>If <a href="#frameRate-prop">frameRate</a> is valid then it will be used to calculate the duration of the frames. If not, and <a href="#frameDuration-prop">frameDuration</a> is valid, then <a href="#frameDuration-prop">frameDuration</a> will be used. Otherwise duration is used.</p>
<!-- @@@duration -->
<br/>
<!-- $$$durationVariation -->
<table class="qmlname"><tr valign="top" id="durationVariation-prop"><td class="tblQmlPropNode"><p><span class="name">durationVariation</span> : <span class="type">int</span></p></td></tr></table><p>The duration of the animation can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.</p>
<p>durationVariation will only take effect if duration is used to calculate the duration of frames.</p>
<p>Default is 0.</p>
<!-- @@@durationVariation -->
<br/>
<!-- $$$frameCount -->
<table class="qmlname"><tr valign="top" id="frameCount-prop"><td class="tblQmlPropNode"><p><span class="name">frameCount</span> : <span class="type">int</span></p></td></tr></table><p>Number of frames in this sprite.</p>
<!-- @@@frameCount -->
<br/>
<!-- $$$frameDuration -->
<table class="qmlname"><tr valign="top" id="frameDuration-prop"><td class="tblQmlPropNode"><p><span class="name">frameDuration</span> : <span class="type">int</span></p></td></tr></table><p>Duration of each frame of the animation. Values below 0 are invalid.</p>
<p>If <a href="#frameRate-prop">frameRate</a> is valid then it will be used to calculate the duration of the frames. If not, and frameDuration is valid, then frameDuration will be used. Otherwise duration is used.</p>
<!-- @@@frameDuration -->
<br/>
<!-- $$$frameDurationVariation -->
<table class="qmlname"><tr valign="top" id="frameDurationVariation-prop"><td class="tblQmlPropNode"><p><span class="name">frameDurationVariation</span> : <span class="type">int</span></p></td></tr></table><p>The duration of a frame in the animation can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.</p>
<p>frameDurationVariation will only take effect if <a href="#frameDuration-prop">frameDuration</a> is used to calculate the duration of frames.</p>
<p>Default is 0.</p>
<!-- @@@frameDurationVariation -->
<br/>
<!-- $$$frameHeight -->
<table class="qmlname"><tr valign="top" id="frameHeight-prop"><td class="tblQmlPropNode"><p><span class="name">frameHeight</span> : <span class="type">int</span></p></td></tr></table><p>Height of a single frame in this sprite.</p>
<!-- @@@frameHeight -->
<br/>
<!-- $$$frameRate -->
<table class="qmlname"><tr valign="top" id="frameRate-prop"><td class="tblQmlPropNode"><p><span class="name">frameRate</span> : <span class="type">qreal</span></p></td></tr></table><p>Frames per second to show in the animation. Values below 0 are invalid.</p>
<p>If frameRate is valid then it will be used to calculate the duration of the frames. If not, and <a href="#frameDuration-prop">frameDuration</a> is valid , then <a href="#frameDuration-prop">frameDuration</a> will be used. Otherwise duration is used.</p>
<!-- @@@frameRate -->
<br/>
<!-- $$$frameRateVariation -->
<table class="qmlname"><tr valign="top" id="frameRateVariation-prop"><td class="tblQmlPropNode"><p><span class="name">frameRateVariation</span> : <span class="type">qreal</span></p></td></tr></table><p>The frame rate between animations can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.</p>
<p>frameRateVariation will only take effect if <a href="#frameRate-prop">frameRate</a> is used to calculate the duration of frames.</p>
<p>Default is 0.</p>
<!-- @@@frameRateVariation -->
<br/>
<!-- $$$frameSync -->
<table class="qmlname"><tr valign="top" id="frameSync-prop"><td class="tblQmlPropNode"><p><span class="name">frameSync</span> : <span class="type">bool</span></p></td></tr></table><p>If true, then the animation will have no duration. Instead, the animation will advance one frame each time a frame is rendered to the screen. This synchronizes it with the painting rate as opposed to elapsed time.</p>
<p>If frameSync is set to true, it overrides all of duration, <a href="#frameRate-prop">frameRate</a> and <a href="#frameDuration-prop">frameDuration</a>.</p>
<p>Default is false.</p>
<!-- @@@frameSync -->
<br/>
<!-- $$$frameWidth -->
<table class="qmlname"><tr valign="top" id="frameWidth-prop"><td class="tblQmlPropNode"><p><span class="name">frameWidth</span> : <span class="type">int</span></p></td></tr></table><p>Width of a single frame in this sprite.</p>
<!-- @@@frameWidth -->
<br/>
<!-- $$$frameX -->
<table class="qmlname"><tr valign="top" id="frameX-prop"><td class="tblQmlPropNode"><p><span class="name">frameX</span> : <span class="type">int</span></p></td></tr></table><p>The X coordinate in the image file of the first frame of the sprite.</p>
<!-- @@@frameX -->
<br/>
<!-- $$$frameY -->
<table class="qmlname"><tr valign="top" id="frameY-prop"><td class="tblQmlPropNode"><p><span class="name">frameY</span> : <span class="type">int</span></p></td></tr></table><p>The Y coordinate in the image file of the first frame of the sprite.</p>
<!-- @@@frameY -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>The name of this sprite, for use in the to property of other sprites.</p>
<!-- @@@name -->
<br/>
<!-- $$$randomStart -->
<table class="qmlname"><tr valign="top" id="randomStart-prop"><td class="tblQmlPropNode"><p><span class="name">randomStart</span> : <span class="type">bool</span></p></td></tr></table><p>If true, then the animation will start its first animation with a random amount of its duration skipped. This allows them to not look like they all just started when the animation begins.</p>
<p>This only affects the very first animation played. Transitioning to another animation, or the same animation again, will not trigger this.</p>
<p>Default is false.</p>
<!-- @@@randomStart -->
<br/>
<!-- $$$reverse -->
<table class="qmlname"><tr valign="top" id="reverse-prop"><td class="tblQmlPropNode"><p><span class="name">reverse</span> : <span class="type">bool</span></p></td></tr></table><p>If true, then the animation will be played in reverse.</p>
<p>Default is false.</p>
<!-- @@@reverse -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>The image source for the animation.</p>
<p>If <a href="#frameHeight-prop">frameHeight</a> and <a href="#frameWidth-prop">frameWidth</a> are not specified, it is assumed to be a single long row of square frames. Otherwise, it can be multiple contiguous rows or rectangluar frames, when one row runs out the next will be used.</p>
<p>If <a href="#frameX-prop">frameX</a> and <a href="#frameY-prop">frameY</a> are specified, the row of frames will be taken with that x/y coordinate as the upper left corner.</p>
<!-- @@@source -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top" id="to-prop"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type">QVariantMap</span></p></td></tr></table><p>A list of other sprites and weighted transitions to them, for example {&quot;a&quot;:1, &quot;b&quot;:2, &quot;c&quot;:0} would specify that one-third should transition to sprite &quot;a&quot; when this sprite is done, and two-thirds should transition to sprite &quot;b&quot; when this sprite is done. As the transitions are chosen randomly, these proportions will not be exact. With &quot;c&quot;:0 in the list, no sprites will randomly transition to &quot;c&quot;, but it wll be a valid path if a sprite goal is set.</p>
<p>If no list is specified, or the sum of weights in the list is zero, then the sprite will repeat itself after completing.</p>
<!-- @@@to -->
<br/>
