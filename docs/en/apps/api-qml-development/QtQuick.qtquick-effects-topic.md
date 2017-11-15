---
Title: QtQuick.qtquick-effects-topic
---

# QtQuick.qtquick-effects-topic

<span class="subtitle"></span>
<!-- $$$qtquick-effects-topic.html-description -->
<h2 id="graphical-effects-and-particles">Graphical Effects and Particles</h2>
<p>Visually appealing user-interfaces are more engaging than lacklustre ones. That said, the designer must bear in mind that visual effects simply provide a useful way to subtly communicate to the user (for example, which visual item is active, or how focus is being transferred). Over-use of visual effects can actually detract from the user-experience.</p>
<h2 id="visual-transformation">Visual Transformation</h2>
<p>Visual objects can be transformed. For example, they can be scaled or rotated. These sort of transformations can provide hints about focus or selection, and can provide intuitive hints about what events are occurring in an application.</p>
<p>For information about visual transformations to visual objects, see the page titled <a href="QtQuick.qtquick-effects-transformations.md">Qt Quick Transformation Types</a>.</p>
<h2 id="shader-effects">Shader Effects</h2>
<p>Shader effects allow the full, raw power of a graphics processing unit to be utilized directly via vertex and fragment shaders. Using too many shader effects can result in increased power usage and sometimes slow performance, but if used sparingly and carefully, a shader can allow complex and visually appealing effects to be applied to a visual object (for example, ripples in water).</p>
<p>For information about shader effects, see the <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> reference documentation.</p>
<h2 id="particles">Particles</h2>
<p>A particle system allows explosions, fireworks, smoke, fog and wind effects to be simulated and displayed to the user. Qt Quick provides a particle system which allows these sort of complex, 2D simulations to be performed, including support for environmental effects like gravity and turbulence. Particles are most commonly used to add subtle and visually appealing effects to currently selected items in lists or in activity notifiers, and in games.</p>
<p>For information about particles, see the documentation about the <a href="QtQuick.qtquick-effects-particles.md">Qt Quick Particle System</a>.</p>
<h2 id="sprites">Sprites</h2>
<p>A sprite is an animated image made up of frames. Sprites are commonly found in games. Qt Quick provides a visual type to display sprites, as well as a complex, stochastic, frame-transition controller for more complex applications which use sprites extensively (such as games).</p>
<p>For information about sprite animations, see the page titled <a href="QtQuick.qtquick-effects-sprites.md">Sprite Animations</a>.</p>
<h2 id="opacity">Opacity</h2>
<p>Visual objects can be opaque or translucent. For example, an application can make one visual object opaque and other visual objects translucent to focus the users attention on the opaque one. This is controlled using the <code>opacity</code> property of the Item.</p>
<p>For more information about opacity, see the <a href="QtQuick.Item.md">Item</a> documentation.</p>
<!-- @@@qtquick-effects-topic.html -->
