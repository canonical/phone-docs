---
Title: QtQuick.StateChangeScript
---

# QtQuick.StateChangeScript

<span class="subtitle"></span>
<!-- $$$StateChangeScript-brief -->
<p>Specifies how to run a script in a state More...</p>
<!-- @@@StateChangeScript -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#script-prop">script</a></b></b> : script</li>
</ul>
<!-- $$$StateChangeScript-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">StateChangeScript</a> is run upon entering a state. You can optionally use <a href="QtQuick.ScriptAction.md">ScriptAction</a> to specify the point in the transition at which the <a href="index.html">StateChangeScript</a> should be run.</p>
<pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="index.html">StateChangeScript</a></span> {
<span class="name">name</span>: <span class="string">&quot;myScript&quot;</span>
<span class="name">script</span>: <span class="name">doStateStuff</span>();
}
<span class="comment">// ...</span>
}
<span class="comment">// ...</span>
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="name">to</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="comment">/* ... */</span> }
<span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> { <span class="name">scriptName</span>: <span class="string">&quot;myScript&quot;</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="comment">/* ... */</span> }
}
}</pre>
<p><b>See also </b><a href="QtQuick.ScriptAction.md">ScriptAction</a>.</p>
<!-- @@@StateChangeScript -->
<h2>Property Documentation</h2>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the script. This name can be used by a <a href="QtQuick.ScriptAction.md">ScriptAction</a> to target a specific script.</p>
<p><b>See also </b><a href="QtQuick.ScriptAction.md#scriptName-prop">ScriptAction::scriptName</a>.</p>
<!-- @@@name -->
<br/>
<!-- $$$script -->
<table class="qmlname"><tr valign="top" id="script-prop"><td class="tblQmlPropNode"><p><span class="name">script</span> : <span class="type"><a href="#script-prop">script</a></span></p></td></tr></table><p>This property holds the script to run when the state is current.</p>
<!-- @@@script -->
<br/>
