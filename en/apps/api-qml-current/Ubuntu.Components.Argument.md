---
Title: Ubuntu.Components.Argument
---

# Ubuntu.Components.Argument

<span class="subtitle"></span>
<!-- $$$Argument-brief -->
<p>The Argument class specifies what type a given command line parameter should be. More...</p>
<!-- @@@Argument -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#help-prop">help</a></b></b> : string</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#required-prop">required</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#valueNames-prop">valueNames</a></b></b> : list&lt;string&gt;</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">string <b><b><a href="#at-method">at</a></b></b>(int <i>i</i>)</li>
</ul>
<!-- $$$Argument-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>Important</b>: Argument is not used on its own but must be a child of <a href="Ubuntu.Components.Arguments.md">Arguments</a>.</p>
<p>An Argument is defined by its <a href="#name-prop">name</a> and <a href="#valueNames-prop">valueNames</a> properties which correspond to a command line parameter (e.g&#x2e; <i>--target</i>) and the values passed to it (e.g&#x2e; <i>--target=http://myaddress</i>).</p>
<p>For example, the following code allows to retrieve parameters on the command line of the form <i>--target=URL</i>:</p>
<pre class="qml"><span class="type"><a href="index.html">Argument</a></span> {
<span class="name">name</span>: <span class="string">&quot;target&quot;</span>
<span class="name">help</span>: <span class="string">&quot;address of the resource to retrieve&quot;</span>
<span class="name">required</span>: <span class="number">true</span>
<span class="name">valueNames</span>: [<span class="string">&quot;URL&quot;</span>]
}</pre>
<p>To retrieve a value passed to the parameter knowing its position, use the <a href="#at-method">at</a> method.</p>
<p><b>See also </b><a href="Ubuntu.Components.Arguments.md">Arguments</a>.</p>
<!-- @@@Argument -->
<h2>Property Documentation</h2>
<!-- $$$help -->
<table class="qmlname"><tr valign="top" id="help-prop"><td class="tblQmlPropNode"><p><span class="name">help</span> : <span class="type">string</span></p></td></tr></table><p>Help displayed when launching the application with --usage.</p>
<!-- @@@help -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>Name identifying the command line argument.</p>
<p>For example 'target' corrsesponds to the <i>'--target'</i> command line argument.</p>
<!-- @@@name -->
<br/>
<!-- $$$required -->
<table class="qmlname"><tr valign="top" id="required-prop"><td class="tblQmlPropNode"><p><span class="name">required</span> : <span class="type">bool</span></p></td></tr></table><p>Whether or not this argument needs to be passed on the command line when launching the application.</p>
<!-- @@@required -->
<br/>
<!-- $$$valueNames -->
<table class="qmlname"><tr valign="top" id="valueNames-prop"><td class="tblQmlPropNode"><p><span class="name">valueNames</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>Names given to the values of this argument. They are used when displaying the expected command line arguments of the application.</p>
<p>Typically all capital letters (e.g&#x2e; URL).</p>
<!-- @@@valueNames -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$at -->
<table class="qmlname"><tr valign="top" id="at-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">at</span>(<span class="type">int</span><i> i</i>)</p></td></tr></table><p>Returns the <i>i</i>th value of the argument. Values are counted from 0.</p>
<!-- @@@at -->
<br/>
