---
Title: QtQuick.Particles.ImageParticle
---
        
ImageParticle
=============

<span class="subtitle"></span>
For visualizing logical particles using an image More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick.Particles 2.0</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Particles.ParticlePainter.md">ParticlePainter</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[alpha](#alpha-prop)**** : real
-   ****[alphaVariation](#alphaVariation-prop)**** : real
-   ****[autoRotation](#autoRotation-prop)**** : bool
-   ****[blueVariation](#blueVariation-prop)**** : real
-   ****[color](#color-prop)**** : color
-   ****[colorTable](#colorTable-prop)**** : url
-   ****[colorVariation](#colorVariation-prop)**** : real
-   ****[entryEffect](#entryEffect-prop)**** : EntryEffect
-   ****[greenVariation](#greenVariation-prop)**** : real
-   ****[opacityTable](#opacityTable-prop)**** : url
-   ****[redVariation](#redVariation-prop)**** : real
-   ****[rotation](#rotation-prop)**** : real
-   ****[rotationVariation](#rotationVariation-prop)**** : real
-   ****[rotationVelocity](#rotationVelocity-prop)**** : real
-   ****[rotationVelocityVariation](#rotationVelocityVariation-prop)**** : real
-   ****[sizeTable](#sizeTable-prop)**** : url
-   ****[source](#source-prop)**** : url
-   ****[sprites](#sprites-prop)**** : list&lt;Sprite&gt;
-   ****[spritesInterpolate](#spritesInterpolate-prop)**** : bool
-   ****[status](#status-prop)**** : Status
-   ****[xVector](#xVector-prop)**** : StochasticDirection
-   ****[yVector](#yVector-prop)**** : StochasticDirection

<span id="details"></span>
Detailed Description
--------------------

This element renders a logical particle as an image. The image can be

-   colorized
-   rotated
-   deformed
-   a sprite-based animation

ImageParticles implictly share data on particles if multiple ImageParticles are painting the same logical particle group. This is broken down along the four capabilities listed above. So if one [ImageParticle](index.html) defines data for rendering the particles in one of those capabilities, and the other does not, then both will draw the particles the same in that aspect automatically. This is primarily useful when there is some random variation on the particle which is supposed to stay with it when switching painters. If both ImageParticles define how they should appear for that aspect, they diverge and each appears as it is defined.

This sharing of data happens behind the scenes based off of whether properties were implicitly or explicitly set. One drawback of the current implementation is that it is only possible to reset the capabilities as a whole. So if you explicitly set an attribute affecting color, such as [redVariation](#redVariation-prop), and then reset it (by setting [redVariation](#redVariation-prop) to undefined), all color data will be reset and it will begin to have an implicit value of any shared color from other ImageParticles.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alpha-prop"></span><span class="name">alpha</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

An alpha to be applied to the image. This value is multiplied by the value in the image, and the value in the color property.

Particles have additive blending, so lower alpha on single particles leads to stronger effects when multiple particles overlap.

Alpha is measured from 0.0 to 1.0.

Default is 1.0

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alphaVariation-prop"></span><span class="name">alphaVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The variation in the alpha channel between particles.

Alpha is measured from 0.0 to 1.0.

Default is 0.0

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoRotation-prop"></span><span class="name">autoRotation</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If set to true then a rotation will be applied on top of the particles rotation, so that it faces the direction of travel. So to face away from the direction of travel, set autoRotation to true and rotation to 180.

Default is false

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="blueVariation-prop"></span><span class="name">blueVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The variation in the blue color channel between particles.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

If a color is specified, the provided image will be colorized with it.

Default is white (no change).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="colorTable-prop"></span><span class="name">colorTable</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

An image whose color will be used as a 1D texture to determine color over life. E.g. when the particle is halfway through its lifetime, it will have the color specified halfway across the image.

This color is blended with the color property and the color of the source image.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="colorVariation-prop"></span><span class="name">colorVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This number represents the color variation applied to individual particles. Setting colorVariation is the same as setting [redVariation](#redVariation-prop), [greenVariation](#greenVariation-prop), and [blueVariation](#blueVariation-prop) to the same number.

Each channel can vary between particle by up to colorVariation from its usual color.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="entryEffect-prop"></span><span class="name">entryEffect</span> : <span class="type">EntryEffect</span></p></td>
</tr>
</tbody>
</table>

This property provides basic and cheap entrance and exit effects for the particles. For fine-grained control, see [sizeTable](#sizeTable-prop) and [opacityTable](#opacityTable-prop).

Acceptable values are

-   [ImageParticle](index.html).None: Particles just appear and disappear.
-   [ImageParticle](index.html).Fade: Particles fade in from 0 opacity at the start of their life, and fade out to 0 at the end.
-   [ImageParticle](index.html).Scale: Particles scale in from 0 size at the start of their life, and scale back to 0 at the end.

Default value is Fade.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="greenVariation-prop"></span><span class="name">greenVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The variation in the green color channel between particles.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="opacityTable-prop"></span><span class="name">opacityTable</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

An image whose opacity will be used as a 1D texture to determine size over life.

This property is expected to be removed shortly, in favor of custom easing curves to determine opacity over life.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="redVariation-prop"></span><span class="name">redVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The variation in the red color channel between particles.

Color is measured, per channel, from 0.0 to 1.0.

Default is 0.0

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotation-prop"></span><span class="name">rotation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

If set the image will be rotated by this many degrees before it is drawn.

The particle coordinates are not transformed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotationVariation-prop"></span><span class="name">rotationVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

If set the rotation of individual particles will vary by up to this much between particles.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotationVelocity-prop"></span><span class="name">rotationVelocity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

If set particles will rotate at this velocity in degrees/second.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotationVelocityVariation-prop"></span><span class="name">rotationVelocityVariation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

If set the [rotationVelocity](#rotationVelocity-prop) of individual particles will vary by up to this much between particles.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sizeTable-prop"></span><span class="name">sizeTable</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

An image whose opacity will be used as a 1D texture to determine size over life.

This property is expected to be removed shortly, in favor of custom easing curves to determine size over life.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

The source image to be used.

If the image is a sprite animation, use the sprite property instead.

Since Qt 5.2, some default images are provided as resources to aid prototyping:

|                                       |                                                                                                                                                                               |
|---------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| qrc:///particleresources/star.png     | ![](https://developer.ubuntu.com/static/devportal_uploaded/344f1db4-b8bc-4e59-a6a3-f810d2e504b4-api/apps/qml/sdk-15.04.5/QtQuick.Particles.ImageParticle/images/star.png)     |
| qrc:///particleresources/glowdot.png  | ![](https://developer.ubuntu.com/static/devportal_uploaded/f96c6a0d-b462-4d2f-91b9-3b3d3f0a4aa0-api/apps/qml/sdk-15.04.5/QtQuick.Particles.ImageParticle/images/glowdot.png)  |
| qrc:///particleresources/fuzzydot.png | ![](https://developer.ubuntu.com/static/devportal_uploaded/c1120ae3-6025-4d66-be8b-128776a9dc60-api/apps/qml/sdk-15.04.5/QtQuick.Particles.ImageParticle/images/fuzzydot.png) |

Note that the images are white and semi-transparent, to allow colorization and alpha levels to have maximum effect.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sprites-prop"></span><span class="name">sprites</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The sprite or sprites used to draw this particle.

Note that the sprite image will be scaled to a square based on the size of the particle being rendered.

For full details, see the [Sprite Animations](../QtQuick.qtquick-effects-sprites.md) overview.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spritesInterpolate-prop"></span><span class="name">spritesInterpolate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If set to true, sprite particles will interpolate between sprite frames each rendered frame, making the sprites look smoother.

Default is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">Status</span></p></td>
</tr>
</tbody>
</table>

The status of loading the image.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="xVector-prop"></span><span class="name">xVector</span> : <span class="type">StochasticDirection</span></p></td>
</tr>
</tbody>
</table>

Allows you to deform the particle image when drawn. The rectangular image will be deformed so that the horizontal sides are in the shape of this vector instead of (1,0).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="yVector-prop"></span><span class="name">yVector</span> : <span class="type">StochasticDirection</span></p></td>
</tr>
</tbody>
</table>

Allows you to deform the particle image when drawn. The rectangular image will be deformed so that the vertical sides are in the shape of this vector instead of (0,1).

