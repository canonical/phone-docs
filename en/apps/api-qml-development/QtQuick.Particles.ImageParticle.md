---
Title: QtQuick.Particles.ImageParticle
---

# QtQuick.Particles.ImageParticle

<span class="subtitle"></span>
<!-- $$$ImageParticle-brief -->
<p>For visualizing logical particles using an image More...</p>
<!-- @@@ImageParticle -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.ParticlePainter.md">ParticlePainter</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#alpha-prop">alpha</a></b></b> : real</li>
<li class="fn"><b><b><a href="#alphaVariation-prop">alphaVariation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#autoRotation-prop">autoRotation</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#blueVariation-prop">blueVariation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#colorTable-prop">colorTable</a></b></b> : url</li>
<li class="fn"><b><b><a href="#colorVariation-prop">colorVariation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#entryEffect-prop">entryEffect</a></b></b> : EntryEffect</li>
<li class="fn"><b><b><a href="#greenVariation-prop">greenVariation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#opacityTable-prop">opacityTable</a></b></b> : url</li>
<li class="fn"><b><b><a href="#redVariation-prop">redVariation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#rotation-prop">rotation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#rotationVariation-prop">rotationVariation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#rotationVelocity-prop">rotationVelocity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#rotationVelocityVariation-prop">rotationVelocityVariation</a></b></b> : real</li>
<li class="fn"><b><b><a href="#sizeTable-prop">sizeTable</a></b></b> : url</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
<li class="fn"><b><b><a href="#sprites-prop">sprites</a></b></b> : list&lt;Sprite&gt;</li>
<li class="fn"><b><b><a href="#spritesInterpolate-prop">spritesInterpolate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : Status</li>
<li class="fn"><b><b><a href="#xVector-prop">xVector</a></b></b> : StochasticDirection</li>
<li class="fn"><b><b><a href="#yVector-prop">yVector</a></b></b> : StochasticDirection</li>
</ul>
<!-- $$$ImageParticle-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element renders a logical particle as an image. The image can be</p>
<ul>
<li>colorized</li>
<li>rotated</li>
<li>deformed</li>
<li>a sprite-based animation</li>
</ul>
<p>ImageParticles implictly share data on particles if multiple ImageParticles are painting the same logical particle group. This is broken down along the four capabilities listed above. So if one <a href="index.html">ImageParticle</a> defines data for rendering the particles in one of those capabilities, and the other does not, then both will draw the particles the same in that aspect automatically. This is primarily useful when there is some random variation on the particle which is supposed to stay with it when switching painters. If both ImageParticles define how they should appear for that aspect, they diverge and each appears as it is defined.</p>
<p>This sharing of data happens behind the scenes based off of whether properties were implicitly or explicitly set. One drawback of the current implementation is that it is only possible to reset the capabilities as a whole. So if you explicitly set an attribute affecting color, such as <a href="#redVariation-prop">redVariation</a>, and then reset it (by setting <a href="#redVariation-prop">redVariation</a> to undefined), all color data will be reset and it will begin to have an implicit value of any shared color from other ImageParticles.</p>
<!-- @@@ImageParticle -->
<h2>Property Documentation</h2>
<!-- $$$alpha -->
<table class="qmlname"><tr valign="top" id="alpha-prop"><td class="tblQmlPropNode"><p><span class="name">alpha</span> : <span class="type">real</span></p></td></tr></table><p>An alpha to be applied to the image. This value is multiplied by the value in the image, and the value in the color property.</p>
<p>Particles have additive blending, so lower alpha on single particles leads to stronger effects when multiple particles overlap.</p>
<p>Alpha is measured from 0.0 to 1.0&#x2e;</p>
<p>Default is 1.0</p>
<!-- @@@alpha -->
<br/>
<!-- $$$alphaVariation -->
<table class="qmlname"><tr valign="top" id="alphaVariation-prop"><td class="tblQmlPropNode"><p><span class="name">alphaVariation</span> : <span class="type">real</span></p></td></tr></table><p>The variation in the alpha channel between particles.</p>
<p>Alpha is measured from 0.0 to 1.0&#x2e;</p>
<p>Default is 0.0</p>
<!-- @@@alphaVariation -->
<br/>
<!-- $$$autoRotation -->
<table class="qmlname"><tr valign="top" id="autoRotation-prop"><td class="tblQmlPropNode"><p><span class="name">autoRotation</span> : <span class="type">bool</span></p></td></tr></table><p>If set to true then a rotation will be applied on top of the particles rotation, so that it faces the direction of travel. So to face away from the direction of travel, set autoRotation to true and rotation to 180.</p>
<p>Default is false</p>
<!-- @@@autoRotation -->
<br/>
<!-- $$$blueVariation -->
<table class="qmlname"><tr valign="top" id="blueVariation-prop"><td class="tblQmlPropNode"><p><span class="name">blueVariation</span> : <span class="type">real</span></p></td></tr></table><p>The variation in the blue color channel between particles.</p>
<p>Color is measured, per channel, from 0.0 to 1.0&#x2e;</p>
<p>Default is 0.0</p>
<!-- @@@blueVariation -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>If a color is specified, the provided image will be colorized with it.</p>
<p>Default is white (no change).</p>
<!-- @@@color -->
<br/>
<!-- $$$colorTable -->
<table class="qmlname"><tr valign="top" id="colorTable-prop"><td class="tblQmlPropNode"><p><span class="name">colorTable</span> : <span class="type">url</span></p></td></tr></table><p>An image whose color will be used as a 1D texture to determine color over life. E.g&#x2e; when the particle is halfway through its lifetime, it will have the color specified halfway across the image.</p>
<p>This color is blended with the color property and the color of the source image.</p>
<!-- @@@colorTable -->
<br/>
<!-- $$$colorVariation -->
<table class="qmlname"><tr valign="top" id="colorVariation-prop"><td class="tblQmlPropNode"><p><span class="name">colorVariation</span> : <span class="type">real</span></p></td></tr></table><p>This number represents the color variation applied to individual particles. Setting colorVariation is the same as setting <a href="#redVariation-prop">redVariation</a>, <a href="#greenVariation-prop">greenVariation</a>, and <a href="#blueVariation-prop">blueVariation</a> to the same number.</p>
<p>Each channel can vary between particle by up to colorVariation from its usual color.</p>
<p>Color is measured, per channel, from 0.0 to 1.0&#x2e;</p>
<p>Default is 0.0</p>
<!-- @@@colorVariation -->
<br/>
<!-- $$$entryEffect -->
<table class="qmlname"><tr valign="top" id="entryEffect-prop"><td class="tblQmlPropNode"><p><span class="name">entryEffect</span> : <span class="type">EntryEffect</span></p></td></tr></table><p>This property provides basic and cheap entrance and exit effects for the particles. For fine-grained control, see <a href="#sizeTable-prop">sizeTable</a> and <a href="#opacityTable-prop">opacityTable</a>.</p>
<p>Acceptable values are</p>
<ul>
<li><a href="index.html">ImageParticle</a>.None: Particles just appear and disappear.</li>
<li><a href="index.html">ImageParticle</a>.Fade: Particles fade in from 0 opacity at the start of their life, and fade out to 0 at the end.</li>
<li><a href="index.html">ImageParticle</a>.Scale: Particles scale in from 0 size at the start of their life, and scale back to 0 at the end.</li>
</ul>
<p>Default value is Fade.</p>
<!-- @@@entryEffect -->
<br/>
<!-- $$$greenVariation -->
<table class="qmlname"><tr valign="top" id="greenVariation-prop"><td class="tblQmlPropNode"><p><span class="name">greenVariation</span> : <span class="type">real</span></p></td></tr></table><p>The variation in the green color channel between particles.</p>
<p>Color is measured, per channel, from 0.0 to 1.0&#x2e;</p>
<p>Default is 0.0</p>
<!-- @@@greenVariation -->
<br/>
<!-- $$$opacityTable -->
<table class="qmlname"><tr valign="top" id="opacityTable-prop"><td class="tblQmlPropNode"><p><span class="name">opacityTable</span> : <span class="type">url</span></p></td></tr></table><p>An image whose opacity will be used as a 1D texture to determine size over life.</p>
<p>This property is expected to be removed shortly, in favor of custom easing curves to determine opacity over life.</p>
<!-- @@@opacityTable -->
<br/>
<!-- $$$redVariation -->
<table class="qmlname"><tr valign="top" id="redVariation-prop"><td class="tblQmlPropNode"><p><span class="name">redVariation</span> : <span class="type">real</span></p></td></tr></table><p>The variation in the red color channel between particles.</p>
<p>Color is measured, per channel, from 0.0 to 1.0&#x2e;</p>
<p>Default is 0.0</p>
<!-- @@@redVariation -->
<br/>
<!-- $$$rotation -->
<table class="qmlname"><tr valign="top" id="rotation-prop"><td class="tblQmlPropNode"><p><span class="name">rotation</span> : <span class="type">real</span></p></td></tr></table><p>If set the image will be rotated by this many degrees before it is drawn.</p>
<p>The particle coordinates are not transformed.</p>
<!-- @@@rotation -->
<br/>
<!-- $$$rotationVariation -->
<table class="qmlname"><tr valign="top" id="rotationVariation-prop"><td class="tblQmlPropNode"><p><span class="name">rotationVariation</span> : <span class="type">real</span></p></td></tr></table><p>If set the rotation of individual particles will vary by up to this much between particles.</p>
<!-- @@@rotationVariation -->
<br/>
<!-- $$$rotationVelocity -->
<table class="qmlname"><tr valign="top" id="rotationVelocity-prop"><td class="tblQmlPropNode"><p><span class="name">rotationVelocity</span> : <span class="type">real</span></p></td></tr></table><p>If set particles will rotate at this velocity in degrees/second.</p>
<!-- @@@rotationVelocity -->
<br/>
<!-- $$$rotationVelocityVariation -->
<table class="qmlname"><tr valign="top" id="rotationVelocityVariation-prop"><td class="tblQmlPropNode"><p><span class="name">rotationVelocityVariation</span> : <span class="type">real</span></p></td></tr></table><p>If set the <a href="#rotationVelocity-prop">rotationVelocity</a> of individual particles will vary by up to this much between particles.</p>
<!-- @@@rotationVelocityVariation -->
<br/>
<!-- $$$sizeTable -->
<table class="qmlname"><tr valign="top" id="sizeTable-prop"><td class="tblQmlPropNode"><p><span class="name">sizeTable</span> : <span class="type">url</span></p></td></tr></table><p>An image whose opacity will be used as a 1D texture to determine size over life.</p>
<p>This property is expected to be removed shortly, in favor of custom easing curves to determine size over life.</p>
<!-- @@@sizeTable -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>The source image to be used.</p>
<p>If the image is a sprite animation, use the sprite property instead.</p>
<p>Since Qt 5.2, some default images are provided as resources to aid prototyping:</p>
<table class="generic">
<tr valign="top"><td >qrc:///particleresources/star.png</td><td ><img src="../../../../media/star.png" alt="" /></td></tr>
<tr valign="top"><td >qrc:///particleresources/glowdot.png</td><td ><img src="../../../../media/glowdot.png" alt="" /></td></tr>
<tr valign="top"><td >qrc:///particleresources/fuzzydot.png</td><td ><img src="../../../../media/fuzzydot.png" alt="" /></td></tr>
</table>
<p>Note that the images are white and semi-transparent, to allow colorization and alpha levels to have maximum effect.</p>
<!-- @@@source -->
<br/>
<!-- $$$sprites -->
<table class="qmlname"><tr valign="top" id="sprites-prop"><td class="tblQmlPropNode"><p><span class="name">sprites</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span>&gt;</p></td></tr></table><p>The sprite or sprites used to draw this particle.</p>
<p>Note that the sprite image will be scaled to a square based on the size of the particle being rendered.</p>
<p>For full details, see the <a href="QtQuick.qtquick-effects-sprites.md">Sprite Animations</a> overview.</p>
<!-- @@@sprites -->
<br/>
<!-- $$$spritesInterpolate -->
<table class="qmlname"><tr valign="top" id="spritesInterpolate-prop"><td class="tblQmlPropNode"><p><span class="name">spritesInterpolate</span> : <span class="type">bool</span></p></td></tr></table><p>If set to true, sprite particles will interpolate between sprite frames each rendered frame, making the sprites look smoother.</p>
<p>Default is true.</p>
<!-- @@@spritesInterpolate -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">Status</span></p></td></tr></table><p>The status of loading the image.</p>
<!-- @@@status -->
<br/>
<!-- $$$xVector -->
<table class="qmlname"><tr valign="top" id="xVector-prop"><td class="tblQmlPropNode"><p><span class="name">xVector</span> : <span class="type">StochasticDirection</span></p></td></tr></table><p>Allows you to deform the particle image when drawn. The rectangular image will be deformed so that the horizontal sides are in the shape of this vector instead of (1,0).</p>
<!-- @@@xVector -->
<br/>
<!-- $$$yVector -->
<table class="qmlname"><tr valign="top" id="yVector-prop"><td class="tblQmlPropNode"><p><span class="name">yVector</span> : <span class="type">StochasticDirection</span></p></td></tr></table><p>Allows you to deform the particle image when drawn. The rectangular image will be deformed so that the vertical sides are in the shape of this vector instead of (0,1).</p>
<!-- @@@yVector -->
<br/>
