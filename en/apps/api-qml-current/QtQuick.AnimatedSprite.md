---
Title: QtQuick.AnimatedSprite
---

# QtQuick.AnimatedSprite

<span class="subtitle"></span>
<!-- $$$AnimatedSprite-brief -->
<p>Draws a sprite animation More...</p>
<!-- @@@AnimatedSprite -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#currentFrame-prop">currentFrame</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameCount-prop">frameCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameDuration-prop">frameDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameHeight-prop">frameHeight</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameRate-prop">frameRate</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#frameSync-prop">frameSync</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#frameWidth-prop">frameWidth</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameX-prop">frameX</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frameY-prop">frameY</a></b></b> : int</li>
<li class="fn"><b><b><a href="#interpolate-prop">interpolate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#loops-prop">loops</a></b></b> : int</li>
<li class="fn"><b><b><a href="#paused-prop">paused</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#reverse-prop">reverse</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#running-prop">running</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">int <b><b><a href="#advance-method">advance</a></b></b>()</li>
<li class="fn">int <b><b><a href="#pause-method">pause</a></b></b>()</li>
<li class="fn">int <b><b><a href="#restart-method">restart</a></b></b>()</li>
<li class="fn">int <b><b><a href="#resume-method">resume</a></b></b>()</li>
</ul>
<!-- $$$AnimatedSprite-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a> provides rendering and control over animations which are provided as multiple frames in the same image file. You can play it at a fixed speed, at the frame rate of your display, or manually advance and control the progress.</p>
<p>For details of how a sprite animation is defined see the <a href="QtQuick.qtquick-effects-sprites.md">Sprite Animations</a> overview. Note that the <a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a> type does not use Sprite types to define multiple animations, but instead encapsulates a single animation itself.</p>
<!-- @@@AnimatedSprite -->
<h2>Property Documentation</h2>
<!-- $$$currentFrame -->
<table class="qmlname"><tr valign="top" id="currentFrame-prop"><td class="tblQmlPropNode"><p><span class="name">currentFrame</span> : <span class="type">int</span></p></td></tr></table><p>When paused, the current frame can be advanced manually by setting this property or calling <a href="#advance-method">advance()</a>.</p>
<!-- @@@currentFrame -->
<br/>
<!-- $$$frameCount -->
<table class="qmlname"><tr valign="top" id="frameCount-prop"><td class="tblQmlPropNode"><p><span class="name">frameCount</span> : <span class="type">int</span></p></td></tr></table><p>Number of frames in this <a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a>.</p>
<!-- @@@frameCount -->
<br/>
<!-- $$$frameDuration -->
<table class="qmlname"><tr valign="top" id="frameDuration-prop"><td class="tblQmlPropNode"><p><span class="name">frameDuration</span> : <span class="type">int</span></p></td></tr></table><p>Duration of each frame of the animation. Values equal to or below 0 are invalid.</p>
<p>If <a href="#frameRate-prop">frameRate</a> is valid then it will be used to calculate the duration of the frames. If not, and frameDuration is valid, then frameDuration will be used.</p>
<p>Changing this parameter will restart the animation.</p>
<!-- @@@frameDuration -->
<br/>
<!-- $$$frameHeight -->
<table class="qmlname"><tr valign="top" id="frameHeight-prop"><td class="tblQmlPropNode"><p><span class="name">frameHeight</span> : <span class="type">int</span></p></td></tr></table><p>Height of a single frame in this <a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a>.</p>
<p>May be omitted if it is the only sprite in the file.</p>
<!-- @@@frameHeight -->
<br/>
<!-- $$$frameRate -->
<table class="qmlname"><tr valign="top" id="frameRate-prop"><td class="tblQmlPropNode"><p><span class="name">frameRate</span> : <span class="type">qreal</span></p></td></tr></table><p>Frames per second to show in the animation. Values equal to or below 0 are invalid.</p>
<p>If frameRate is valid then it will be used to calculate the duration of the frames. If not, and <a href="#frameDuration-prop">frameDuration</a> is valid , then <a href="#frameDuration-prop">frameDuration</a> will be used.</p>
<p>Changing this parameter will restart the animation.</p>
<!-- @@@frameRate -->
<br/>
<!-- $$$frameSync -->
<table class="qmlname"><tr valign="top" id="frameSync-prop"><td class="tblQmlPropNode"><p><span class="name">frameSync</span> : <span class="type">bool</span></p></td></tr></table><p>If true, then the animation will have no duration. Instead, the animation will advance one frame each time a frame is rendered to the screen. This synchronizes it with the painting rate as opposed to elapsed time.</p>
<p>If frameSync is set to true, it overrides both <a href="#frameRate-prop">frameRate</a> and <a href="#frameDuration-prop">frameDuration</a>.</p>
<p>Default is false.</p>
<p>Changing this parameter will restart the animation.</p>
<!-- @@@frameSync -->
<br/>
<!-- $$$frameWidth -->
<table class="qmlname"><tr valign="top" id="frameWidth-prop"><td class="tblQmlPropNode"><p><span class="name">frameWidth</span> : <span class="type">int</span></p></td></tr></table><p>Width of a single frame in this <a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a>.</p>
<p>May be omitted if it is the only sprite in the file.</p>
<!-- @@@frameWidth -->
<br/>
<!-- $$$frameX -->
<table class="qmlname"><tr valign="top" id="frameX-prop"><td class="tblQmlPropNode"><p><span class="name">frameX</span> : <span class="type">int</span></p></td></tr></table><p>The X coordinate in the image file of the first frame of the <a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a>.</p>
<p>May be omitted if the first frame starts in the upper left corner of the file.</p>
<!-- @@@frameX -->
<br/>
<!-- $$$frameY -->
<table class="qmlname"><tr valign="top" id="frameY-prop"><td class="tblQmlPropNode"><p><span class="name">frameY</span> : <span class="type">int</span></p></td></tr></table><p>The Y coordinate in the image file of the first frame of the <a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a>.</p>
<p>May be omitted if the first frame starts in the upper left corner of the file.</p>
<!-- @@@frameY -->
<br/>
<!-- $$$interpolate -->
<table class="qmlname"><tr valign="top" id="interpolate-prop"><td class="tblQmlPropNode"><p><span class="name">interpolate</span> : <span class="type">bool</span></p></td></tr></table><p>If true, interpolation will occur between sprite frames to make the animation appear smoother.</p>
<p>Default is true.</p>
<!-- @@@interpolate -->
<br/>
<!-- $$$loops -->
<table class="qmlname"><tr valign="top" id="loops-prop"><td class="tblQmlPropNode"><p><span class="name">loops</span> : <span class="type">int</span></p></td></tr></table><p>After playing the animation this many times, the animation will automatically stop. Negative values are invalid.</p>
<p>If this is set to <a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a>.Infinite the animation will not stop playing on its own.</p>
<p>Default is <a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a>.Infinite</p>
<!-- @@@loops -->
<br/>
<!-- $$$paused -->
<table class="qmlname"><tr valign="top" id="paused-prop"><td class="tblQmlPropNode"><p><span class="name">paused</span> : <span class="type">bool</span></p></td></tr></table><p>When paused, the current frame can be advanced manually.</p>
<p>Default is false.</p>
<!-- @@@paused -->
<br/>
<!-- $$$reverse -->
<table class="qmlname"><tr valign="top" id="reverse-prop"><td class="tblQmlPropNode"><p><span class="name">reverse</span> : <span class="type">bool</span></p></td></tr></table><p>If true, then the animation will be played in reverse.</p>
<p>Default is false.</p>
<!-- @@@reverse -->
<br/>
<!-- $$$running -->
<table class="qmlname"><tr valign="top" id="running-prop"><td class="tblQmlPropNode"><p><span class="name">running</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the sprite is animating or not.</p>
<p>Default is true</p>
<!-- @@@running -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>The image source for the animation.</p>
<p>If <a href="#frameHeight-prop">frameHeight</a> and <a href="#frameWidth-prop">frameWidth</a> are not specified, it is assumed to be a single long row of square frames. Otherwise, it can be multiple contiguous rows or rectangluar frames, when one row runs out the next will be used.</p>
<p>If <a href="#frameX-prop">frameX</a> and <a href="#frameY-prop">frameY</a> are specified, the row of frames will be taken with that x/y coordinate as the upper left corner.</p>
<!-- @@@source -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$advance -->
<table class="qmlname"><tr valign="top" id="advance-method"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">advance</span>()</p></td></tr></table><p>Advances the sprite animation by one frame.</p>
<!-- @@@advance -->
<br/>
<!-- $$$pause -->
<table class="qmlname"><tr valign="top" id="pause-method"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">pause</span>()</p></td></tr></table><p>Pauses the sprite animation. This does nothing if <a href="#paused-prop">paused</a> is true.</p>
<p><b>See also </b><a href="#resume-method">resume()</a>.</p>
<!-- @@@pause -->
<br/>
<!-- $$$restart -->
<table class="qmlname"><tr valign="top" id="restart-method"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">restart</span>()</p></td></tr></table><p>Stops, then starts the sprite animation.</p>
<!-- @@@restart -->
<br/>
<!-- $$$resume -->
<table class="qmlname"><tr valign="top" id="resume-method"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">resume</span>()</p></td></tr></table><p>Resumes the sprite animation if <a href="#paused-prop">paused</a> is true; otherwise, this does nothing.</p>
<p><b>See also </b><a href="#pause-method">pause()</a>.</p>
<!-- @@@resume -->
<br/>
