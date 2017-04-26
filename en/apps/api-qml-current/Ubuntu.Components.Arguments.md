---
Title: Ubuntu.Components.Arguments
---

# Ubuntu.Components.Arguments

<span class="subtitle"></span>
<!-- $$$Arguments-brief -->
<p>The Arguments class provides a way to declare what command line parameters are expected by the application. More...</p>
<!-- @@@Arguments -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#arguments-prop">arguments</a></b></b> : list&lt;Argument&gt;</li>
<li class="fn"><b><b><a href="#defaultArgument-prop">defaultArgument</a></b></b> : Argument</li>
<li class="fn"><b><b><a href="#error-prop">error</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#errorMessage-prop">errorMessage</a></b></b> : string</li>
<li class="fn"><b><b><a href="#values-prop">values</a></b></b> : Object</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#printUsage-method">printUsage</a></b></b>()</li>
<li class="fn">void <b><b><a href="#quitWithError-method">quitWithError</a></b></b>(string <i>errorMessage</i>)</li>
</ul>
<!-- $$$Arguments-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Example of use:</p>
<pre class="qml"><span class="type"><a href="index.html">Arguments</a></span> {
<span class="name">id</span>: <span class="name">args</span>
<span class="name">defaultArgument</span>.help: <span class="string">&quot;Expects URL of the media to play.&quot;</span>
<span class="name">defaultArgument</span>.valueNames: [<span class="string">&quot;URL&quot;</span>]
<span class="type"><a href="Ubuntu.Components.Argument.md">Argument</a></span> {
<span class="name">name</span>: <span class="string">&quot;fullscreen&quot;</span>
<span class="name">help</span>: <span class="string">&quot;whether or not the media will be played fullscreen&quot;</span>
<span class="name">required</span>: <span class="number">false</span>
}
<span class="type"><a href="Ubuntu.Components.Argument.md">Argument</a></span> {
<span class="name">name</span>: <span class="string">&quot;volume&quot;</span>
<span class="name">help</span>: <span class="string">&quot;level to which to set the volume&quot;</span>
<span class="name">required</span>: <span class="number">false</span>
<span class="name">valueNames</span>: [<span class="string">&quot;VOLUME_LEVEL&quot;</span>]
}
}</pre>
<p>The code above ensures that at least one argument is passed on the command line which will then be available in QML via the <a href="#defaultArgument-prop">defaultArgument</a> property. Optionally two other arguments can be passed:</p>
<p><i>--fullscreen</i> that will be exposed as a boolean property: <a href="#values-prop">values</a>.fullscreen</p>
<p><i>--volume</i> that will be exposed as a string property: <a href="#values-prop">values</a>.volume</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;volume = &quot;</span> <span class="operator">+</span> <span class="name">args</span>.<span class="name">values</span>.<span class="name">volume</span>
}
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;fullscreen = &quot;</span> <span class="operator">+</span> <span class="name">args</span>.<span class="name">values</span>.<span class="name">fullscreen</span>
}
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;URL = &quot;</span> <span class="operator">+</span> <span class="name">args</span>.<span class="name">defaultArgument</span>.<span class="name">at</span>(<span class="number">0</span>)
}
}</pre>
<p>If the application is launched with the incorrect arguments or with the <i>--usage</i> argument an help will be outputted on the command line and the application will exit:</p>
<pre class="cpp">Usage: application <span class="operator">[</span><span class="operator">-</span><span class="operator">-</span>fullscreen<span class="operator">]</span> <span class="operator">[</span><span class="operator">-</span><span class="operator">-</span>volume<span class="operator">=</span>VOLUME_LEVEL<span class="operator">]</span> URL
Options:
<span class="operator">-</span><span class="operator">-</span>fullscreen         whether <span class="keyword">or</span> <span class="keyword">not</span> the media will be played fullscreen
<span class="operator">-</span><span class="operator">-</span>volume<span class="operator">=</span>VOLUME_LEVE level to which to set the volume
Expects URL of the media to play<span class="operator">.</span></pre>
<p><b>See also </b><a href="Ubuntu.Components.Argument.md">Argument</a>.</p>
<!-- @@@Arguments -->
<h2>Property Documentation</h2>
<!-- $$$arguments -->
<table class="qmlname"><tr valign="top" id="arguments-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="qmldefault">[default] </span><span class="name">arguments</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Argument.md">Argument</a></span>&gt;</p></td></tr></table><p>List of command line <a href="Ubuntu.Components.Argument.md">arguments</a> that are expected by the application.</p>
<p>See detailed description above for an example on how to use it.</p>
<!-- @@@arguments -->
<br/>
<!-- $$$defaultArgument -->
<table class="qmlname"><tr valign="top" id="defaultArgument-prop"><td class="tblQmlPropNode"><p><span class="name">defaultArgument</span> : <span class="type"><a href="Ubuntu.Components.Argument.md">Argument</a></span></p></td></tr></table><p>The default argument corresponds to the values passed on the command line without any name.</p>
<p>For example in:</p>
<pre class="cpp"><span class="operator">.</span><span class="operator">/</span>application <span class="operator">-</span><span class="operator">-</span>volume<span class="operator">=</span><span class="number">42</span> http:<span class="comment">//myaddress</span></pre>
<p><i>http://myaddress</i> is the first value of the default argument.</p>
<!-- @@@defaultArgument -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">error</span> : <span class="type">bool</span></p></td></tr></table><p>Whether or not the command line arguments passed to the application correspond to the expected arguments.</p>
<p>Also set when calling <a href="#quitWithError-method">quitWithError</a></p>
<!-- @@@error -->
<br/>
<!-- $$$errorMessage -->
<table class="qmlname"><tr valign="top" id="errorMessage-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">errorMessage</span> : <span class="type">string</span></p></td></tr></table><p>Error message describing how the command line arguments passed to the application failed to correspond to the expected arguments.</p>
<p>Also set when calling <a href="#quitWithError-method">quitWithError</a></p>
<!-- @@@errorMessage -->
<br/>
<!-- $$$values -->
<table class="qmlname"><tr valign="top" id="values-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">values</span> : <span class="type">Object</span></p></td></tr></table><p>Object of which properties have the values of the command line arguments.</p>
<!-- @@@values -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$printUsage -->
<table class="qmlname"><tr valign="top" id="printUsage-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">printUsage</span>()</p></td></tr></table><p>Outputs help to the console on how to pass arguments to the application.</p>
<!-- @@@printUsage -->
<br/>
<!-- $$$quitWithError -->
<table class="qmlname"><tr valign="top" id="quitWithError-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">quitWithError</span>(<span class="type">string</span><i> errorMessage</i>)</p></td></tr></table><p>Exits the application outputting <i>errorMessage</i> to the console.</p>
<!-- @@@quitWithError -->
<br/>
