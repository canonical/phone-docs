---
Title: QtQuick.Particles.CustomParticle
---
        
CustomParticle
==============

<span class="subtitle"></span>
For specifying shaders to paint particles More...

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

-   ****[fragmentShader](#fragmentShader-prop)**** : string
-   ****[vertexShader](#vertexShader-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fragmentShader-prop"></span><span class="name">fragmentShader</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the fragment shader's GLSL source code. The default shader expects the texture coordinate to be passed from the vertex shader as "varying highp vec2 qt\_TexCoord0", and it samples from a sampler2D named "source".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="vertexShader-prop"></span><span class="name">vertexShader</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the vertex shader's GLSL source code.

The default shader passes the texture coordinate along to the fragment shader as "varying highp vec2 qt\_TexCoord0".

To aid writing a particle vertex shader, the following GLSL code is prepended to your vertex shader:

``` cpp
attribute highp vec2 qt_ParticlePos;
attribute highp vec2 qt_ParticleTex;
attribute highp vec4 qt_ParticleData; //  x = time,  y = lifeSpan, z = size,  w = endSize
attribute highp vec4 qt_ParticleVec; // x,y = constant velocity,  z,w = acceleration
attribute highp float qt_ParticleR;
uniform highp mat4 qt_Matrix;
uniform highp float qt_Timestamp;
varying highp vec2 qt_TexCoord0;
void defaultMain() {
    qt_TexCoord0 = qt_ParticleTex;
    highp float size = qt_ParticleData.z;
    highp float endSize = qt_ParticleData.w;
    highp float t = (qt_Timestamp - qt_ParticleData.x) / qt_ParticleData.y;
    highp float currentSize = mix(size, endSize, t * t);
    if (t < 0. || t > 1.)
        currentSize = 0.;
    highp vec2 pos = qt_ParticlePos
                   - currentSize / 2. + currentSize * qt_ParticleTex   // adjust size
                   + qt_ParticleVec.xy * t * qt_ParticleData.y         // apply velocity vector..
                   + 0.5 * qt_ParticleVec.zw * pow(t * qt_ParticleData.y, 2.);
    gl_Position = qt_Matrix * vec4(pos.x, pos.y, 0, 1);
}
```

defaultMain() is the same code as in the default shader, you can call this for basic particle functions and then add additional variables for custom effects. Note that the vertex shader for particles is responsible for simulating the movement of particles over time, the particle data itself only has the starting position and spawn time.

