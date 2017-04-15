---
Title: QtQuick.UniformAnimator
---
        
UniformAnimator
===============

<span class="subtitle"></span>
The UniformAnimator type animates a uniform of a ShaderEffect. More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.2             |

<span id="properties"></span>
Properties
----------

-   ****[uniform](#uniform-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

[Animator](../QtQuick.Animator.md) types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.

The value of the QML property defining the uniform is updated after the animation has finished.

The following snippet shows how to use a [UniformAnimator](index.html) together with a [ShaderEffect](../QtQuick.ShaderEffect.md) item.

``` qml
ShaderEffect {
    id: shader
    width: 50
    height: 50
    property variant t;
    UniformAnimator {
        target: shader
        uniform: "t"
        from: 0
        to: 1
        duration: 1000
        running: true
    }
    fragmentShader:
    "
        uniform lowp float t;
        varying highp vec2 qt_TexCoord0;
        void main() {
            lowp float c = qt_TexCoord0.y;
            gl_FragColor = vec4(0, 0, c * t, 1);
        }
    "
}
```

It is also possible to use the `on` keyword to tie the [UniformAnimator](index.html) directly to a uniform of a [ShaderEffect](../QtQuick.ShaderEffect.md) instance.

``` qml
ShaderEffect {
    width: 50
    height: 50
    property variant t;
    UniformAnimator on t {
        from: 0
        to: 1
        duration: 1000
    }
    fragmentShader:
    "
        uniform lowp float t;
        varying highp vec2 qt_TexCoord0;
        void main() {
            lowp float c = qt_TexCoord0.y;
            gl_FragColor = vec4(c * t, 0, 0, 1);
        }
    "
}
```

**See also** [ShaderEffect](../QtQuick.ShaderEffect.md) and [ShaderEffectSource](../QtQuick.ShaderEffectSource.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="uniform-prop"></span><span class="name">uniform</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the uniform to animate.

The value of the uniform must correspond to both a property on the target [ShaderEffect](../QtQuick.ShaderEffect.md) and must be a uniform of type `float` in the fragment or vertex shader.

