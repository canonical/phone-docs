---
Title: QtQuick.StateChangeScript
---
        
StateChangeScript
=================

<span class="subtitle"></span>
Specifies how to run a script in a state More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[name](#name-prop)**** : string
-   ****[script](#script-prop)**** : script

<span id="details"></span>
Detailed Description
--------------------

A [StateChangeScript](index.html) is run upon entering a state. You can optionally use [ScriptAction](../QtQuick.ScriptAction.md) to specify the point in the transition at which the [StateChangeScript](index.html) should be run.

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

**See also** [ScriptAction](../QtQuick.ScriptAction.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the script. This name can be used by a [ScriptAction](../QtQuick.ScriptAction.md) to target a specific script.

**See also** [ScriptAction::scriptName](../QtQuick.ScriptAction.md#scriptName-prop).

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

This property holds the script to run when the state is current.

