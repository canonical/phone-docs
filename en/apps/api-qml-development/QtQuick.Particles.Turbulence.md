---
Title: QtQuick.Particles.Turbulence
---

# QtQuick.Particles.Turbulence

<span class="subtitle"></span>
<!-- $$$Turbulence-brief -->
<p>Provides fluid-like forces from a noise image More...</p>
<!-- @@@Turbulence -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Particles 2.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Particles.Affector.md">Affector</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#noiseSource-prop">noiseSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#strength-prop">strength</a></b></b> : real</li>
</ul>
<!-- $$$Turbulence-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Turbulence Element scales the noise source over the area it affects, and uses the curl of that source to generate force vectors.</p>
<p>Turbulence requires a fixed size. Unlike other affectors, a 0x0 Turbulence element will affect no particles.</p>
<p>The source should be relatively smooth black and white noise, such as perlin noise.</p>
<!-- @@@Turbulence -->
<h2>Property Documentation</h2>
<!-- $$$noiseSource -->
<table class="qmlname"><tr valign="top" id="noiseSource-prop"><td class="tblQmlPropNode"><p><span class="name">noiseSource</span> : <span class="type">url</span></p></td></tr></table><p>The source image to generate the turbulence from. It will be scaled to the size of the element, so equal or larger sizes will give better results. Tweaking this image is the only way to tweak behavior such as where vortices are or how many exist.</p>
<p>The source should be a relatively smooth black and white noise image, such as perlin noise. A default image will be used if none is provided.</p>
<!-- @@@noiseSource -->
<br/>
<!-- $$$strength -->
<table class="qmlname"><tr valign="top" id="strength-prop"><td class="tblQmlPropNode"><p><span class="name">strength</span> : <span class="type">real</span></p></td></tr></table><p>The magnitude of the velocity vector at any point varies between zero and the square root of two. It will then be multiplied by strength to get the velocity per second for the particles affected by the turbulence.</p>
<!-- @@@strength -->
<br/>
