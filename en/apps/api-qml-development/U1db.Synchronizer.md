---
Title: U1db.Synchronizer
---

# U1db.Synchronizer

<span class="subtitle"></span>
<!-- $$$Synchronizer-brief -->
<p>Synchronizer handles synchronizing between two databases. More...</p>
<!-- @@@Synchronizer -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import U1db .</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiates:</td><td class="memItemRight bottomAlign"> <a href="https://developer.ubuntu.com/api//synchronizer.html">Synchronizer</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#resolve_to_source-prop">resolve_to_source</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : Database</li>
<li class="fn"><b><b><a href="#sync_output-prop">sync_output</a></b></b> : list&lt;Variant&gt;</li>
<li class="fn"><b><b><a href="#synchronize-prop">synchronize</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#targets-prop">targets</a></b></b> : Variant<code> (preliminary)</code></li>
</ul>
<!-- $$$Synchronizer-description -->
<h2 id="details">Detailed Description</h2>
</p>
<pre class="qml"><span class="type"><a href="index.html">Synchronizer</a></span> {
<span class="name">id</span>: <span class="name">mySync</span>
<span class="name">synchronize</span>: <span class="number">false</span>
<span class="name">source</span>: <span class="name">myDatabase</span>
<span class="name">targets</span>: [ {
remote: <span class="number">true</span>,
ip: <span class="string">&quot;127.0.0.1&quot;</span>,
port: <span class="number">7777</span>,
name: <span class="string">&quot;example1.u1db&quot;</span>,
resolve_to_source: <span class="number">true</span>
} ]
}</pre>
<!-- @@@Synchronizer -->
<h2>Property Documentation</h2>
<!-- $$$resolve_to_source -->
<table class="qmlname"><tr valign="top" id="resolve_to_source-prop"><td class="tblQmlPropNode"><p><span class="name">resolve_to_source</span> : <span class="type">bool</span></p></td></tr></table><p>If true, conflicts during sync will be resolved in favor of the content from the source database.</p>
<!-- @@@resolve_to_source -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type"><a href="U1db.Database.md">Database</a></span></p></td></tr></table><p>Returns the source <a href="U1db.Database.md">Database</a>.</p>
<!-- @@@source -->
<br/>
<!-- $$$sync_output -->
<table class="qmlname"><tr valign="top" id="sync_output-prop"><td class="tblQmlPropNode"><p><span class="name">sync_output</span> : <span class="type">list</span>&lt;<span class="type">Variant</span>&gt;</p></td></tr></table><p>Returns the output from a sync session. The list should contain numerous QVariantMaps, each of which will have various meta-data with informative information about what happened in the background of the session.</p>
<p>In some cases the information will be about errors or warnings, and in other cases simple log messages. Also included would noramlly be associated properties, elements and other data.</p>
<p>The information can be used in any number of ways, such as on screen within an app, testing, console output, logs and more. This is designed to be flexible enough that the app developer can decide themselves how to best use the data.</p>
<!-- @@@sync_output -->
<br/>
<!-- $$$synchronize -->
<table class="qmlname"><tr valign="top" id="synchronize-prop"><td class="tblQmlPropNode"><p><span class="name">synchronize</span> : <span class="type">bool</span></p></td></tr></table><p>FIXME</p>
<!-- @@@synchronize -->
<br/>
<!-- $$$targets -->
<table class="qmlname"><tr valign="top" id="targets-prop"><td class="tblQmlPropNode"><p><span class="name">targets</span> : <span class="type">Variant</span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>Sets meta-data for databases to be used during a synchronization session.</p>
<p>The QVariant is a list that can contain definitions for more than one database to be used as a target. For example:</p>
<pre class="cpp">targets: <span class="operator">[</span>{remote:<span class="keyword">true</span>}<span class="operator">,</span>
{remote:<span class="keyword">true</span><span class="operator">,</span>
ip:<span class="string">&quot;127.0.0.1&quot;</span><span class="operator">,</span>
port: <span class="number">7777</span><span class="operator">,</span>
name:<span class="string">&quot;example1.u1db&quot;</span><span class="operator">,</span>
resolve_to_source:<span class="keyword">true</span>}<span class="operator">,</span>
{remote:<span class="string">&quot;OK&quot;</span>}<span class="operator">]</span></pre>
<p>The above example defines three databases. Two of the three definitions in the example are invalid, the first ({remote:true}) and the third ({remote:&quot;OK&quot;}), because they are incomplete.</p>
<p>The second definition is a fully defined and valid definition for a local to remote synchronization of two databases:</p>
<pre class="cpp">{remote:<span class="keyword">true</span><span class="operator">,</span>
ip:<span class="string">&quot;127.0.0.1&quot;</span><span class="operator">,</span>
port: <span class="number">7777</span><span class="operator">,</span>
name:<span class="string">&quot;example1.u1db&quot;</span><span class="operator">,</span>
resolve_to_source:<span class="keyword">true</span>}</pre>
<p>'remote' determines whether the database is on disk or located on a server. 'ip' and 'port' for a server are used only when 'remote' is set to true 'name' is the name of the local (on disk) or remote database. Note: If 'remote' is false this is the relative/absolute file location. '<a href="#resolve_to_source-prop">resolve_to_source</a>' determines whether to resolve conflicts automatically in favor of the source (aka local) database's values or the target's.</p>
<!-- @@@targets -->
<br/>
