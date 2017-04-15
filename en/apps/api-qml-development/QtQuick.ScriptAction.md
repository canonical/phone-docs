---
Title: QtQuick.ScriptAction
---
        
ScriptAction
============

<span class="subtitle"></span>
Defines scripts to be run during an animation More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Animation.md">Animation</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[script](#script-prop)**** : script
-   ****[scriptName](#scriptName-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

[ScriptAction](index.html) can be used to run a script at a specific point in an animation.

``` qml
SequentialAnimation {
    NumberAnimation {
        // ...
    }
    ScriptAction { script: doSomething(); }
    NumberAnimation {
        // ...
    }
}
```

When used as part of a Transition, you can also target a specific [StateChangeScript](../QtQuick.StateChangeScript.md) to run using the `scriptName` property.

``` qml
State {
    name: "state1"
    StateChangeScript {
        name: "myScript"
        script: doStateStuff();
    }
    // ...
}
// ...
Transition {
    to: "state1"
    SequentialAnimation {
        NumberAnimation { /* ... */ }
        ScriptAction { scriptName: "myScript" }
        NumberAnimation { /* ... */ }
    }
}
```

**See also** [StateChangeScript](../QtQuick.StateChangeScript.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="script-prop"></span><span class="name">script</span> : <span class="type"><a href="#script-prop">script</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the script to run.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scriptName-prop"></span><span class="name">scriptName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the [StateChangeScript](../QtQuick.StateChangeScript.md) to run.

This property is only valid when [ScriptAction](index.html) is used as part of a transition. If both script and scriptName are set, scriptName will be used.

**Note:** When using scriptName in a reversible transition, the script will only be run when the transition is being run forwards.

