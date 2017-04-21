---
Title: U1db.Synchronizer
---

# U1db.Synchronizer

<!-- $$$Synchronizer-brief -->
<p>The Synchronizer class handles synchronizing between two databases. More...</p>
<!-- @@@Synchronizer -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Header:</td><td class="memItemRight bottomAlign"> <span class="preprocessor">#include &lt;Synchronizer&gt;</span>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiated By:</td><td class="memItemRight bottomAlign"> <a href="U1db.Synchronizer.md">Synchronizer</a></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> </td></tr></table><ul>
</ul>
<h2 id="public-functions">Public Functions</h2>
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> </td><td class="memItemRight bottomAlign"><b><a href="#Synchronizer">Synchronizer</a></b>(QObject *<i> parent</i> = 0)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> bool </td><td class="memItemRight bottomAlign"><b><a href="#getResolveToSource">getResolveToSource</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> Database * </td><td class="memItemRight bottomAlign"><b><a href="#getSource">getSource</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> bool </td><td class="memItemRight bottomAlign"><b><a href="#getSync">getSync</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QList&lt;QVariant&gt; </td><td class="memItemRight bottomAlign"><b><a href="#getSyncOutput">getSyncOutput</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> QVariant </td><td class="memItemRight bottomAlign"><b><a href="#getTargets">getTargets</a></b>()</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setResolveToSource">setResolveToSource</a></b>(bool<i> resolve_to_source</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setSource">setSource</a></b>(Database *<i> source</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setSync">setSync</a></b>(bool<i> synchronize</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setSyncOutput">setSyncOutput</a></b>(QList&lt;QVariant&gt;<i> sync_output</i>)</td></tr>
<tr><td class="memItemLeft rightAlign topAlign"> void </td><td class="memItemRight bottomAlign"><b><a href="#setTargets">setTargets</a></b>(QVariant<i> targets</i>)</td></tr>
</table>
<!-- $$$Synchronizer-description -->
<h2 id="details">Detailed Description</h2>
<p>The Synchronizer class handles synchronizing between two databases.</p>
<!-- @@@Synchronizer -->
<h2>Member Function Documentation</h2>
<!-- $$$Synchronizer[overload1]$$$SynchronizerQObject* -->
<h3 class="fn" id="Synchronizer">Synchronizer::<span class="name">Synchronizer</span>(<span class="type">QObject</span> *<i> parent</i> = 0)</h3>
<p>Create a new Synchronizer element, with an optional <i>parent</i>, usually by declaring it as a QML item.</p>
<p>Synchronizer elements sync two databases together, a 'source' database and a remote or local 'target' database.</p>
<p>Short description of properties:</p>
<p>id: The element's identification.</p>
<p>bool synchronize: Is the element actively synching or not. Should be set to false.</p>
<p>U1DB::Database source: The id of a local database that will be used for synchronization.</p>
<p>QVariant targets: One or more target databases that will be synched with the local database.</p>
<p>bool targets.remote: Is the target database a remote or local database.</p>
<p>QString targets.ip: The ip address of a remote database (if applicable).</p>
<p>int targets.port: Port number of the remote server.</p>
<p>QString targets.name: The name of the database.</p>
<p>bool targets.resolve_to_source: In case of conflict should the sync resolve to the source's data (if true).</p>
<p>Example use with u1db-serve:</p>
<p>1. In a terminal cd into a directory where the u1db Python reference implemented has been downloaded from lp:u1db. 2. Using Python create a database called 'example1.u1db' using u1db, and a document 'helloworld':</p>
<p># python</p>
<p>&gt;&gt;&gt; import u1db &gt;&gt;&gt; db = u1db.open(&quot;example1.u1db&quot;,create=True) &gt;&gt;&gt; content = {&quot;hello&quot;: { &quot;world&quot;: { &quot;message&quot;:&quot;Hello World Updated&quot; } } } &gt;&gt;&gt; db.create_doc(content, doc_id=&quot;helloworld&quot;)</p>
<p>ctrl+d</p>
<p>3. From the u1db directory above type './u1db-serve --port=7777' and hit enter. 4. Open another terminal tab. 5. Change into a directory containing u1db-qt (assuming this class is included in that directory and the installed version on the host computer). 6. Change into the directory where u1db-qt-example-6.qml is located. 7. Type 'qmlscene u1db-qt-example-6.qml' and hit enter. 8. Click the button labelled 'Sync'. 9. Check the terminal windows for output from either the client or server.</p>
<!-- @@@Synchronizer -->
<!-- $$$getResolveToSource[overload1]$$$getResolveToSource -->
<h3 class="fn" id="getResolveToSource"><span class="type">bool</span> Synchronizer::<span class="name">getResolveToSource</span>()</h3>
<p>Returns <b>true</b> if conflicts during sync will be resolved in favor of the content from the source database.</p>
<!-- @@@getResolveToSource -->
<!-- $$$getSource[overload1]$$$getSource -->
<h3 class="fn" id="getSource"><span class="type"><a href="U1db.Database.md">Database</a></span> * Synchronizer::<span class="name">getSource</span>()</h3>
<p>Returns the source <a href="U1db.Database.md">Database</a>.</p>
<!-- @@@getSource -->
<!-- $$$getSync[overload1]$$$getSync -->
<h3 class="fn" id="getSync"><span class="type">bool</span> Synchronizer::<span class="name">getSync</span>()</h3>
<p>Returns the current value of synchronize. If true then the synchronize session is initiated.</p>
<p>This should probaby always be set to false on application start up. The application developer should use some trigger to switch it to true when needed (e.g&#x2e; button click).</p>
<!-- @@@getSync -->
<!-- $$$getSyncOutput[overload1]$$$getSyncOutput -->
<h3 class="fn" id="getSyncOutput"><span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt; Synchronizer::<span class="name">getSyncOutput</span>()</h3>
<p>FIXME</p>
<!-- @@@getSyncOutput -->
<!-- $$$getTargets[overload1]$$$getTargets -->
<h3 class="fn" id="getTargets"><span class="type">QVariant</span> Synchronizer::<span class="name">getTargets</span>()</h3>
<p>Returns meta-data for all target databases.</p>
<!-- @@@getTargets -->
<!-- $$$setResolveToSource[overload1]$$$setResolveToSourcebool -->
<h3 class="fn" id="setResolveToSource"><span class="type">void</span> Synchronizer::<span class="name">setResolveToSource</span>(<span class="type">bool</span><i> resolve_to_source</i>)</h3>
<p>If <i>resolve_to_source</i> is true, conflicts during sync will be resolved in favor of the content from the source database.</p>
<!-- @@@setResolveToSource -->
<!-- $$$setSource[overload1]$$$setSourceDatabase* -->
<h3 class="fn" id="setSource"><span class="type">void</span> Synchronizer::<span class="name">setSource</span>(<span class="type"><a href="U1db.Database.md">Database</a></span> *<i> source</i>)</h3>
<p>Sets the <i>source</i> database.</p>
<!-- @@@setSource -->
<!-- $$$setSync[overload1]$$$setSyncbool -->
<h3 class="fn" id="setSync"><span class="type">void</span> Synchronizer::<span class="name">setSync</span>(<span class="type">bool</span><i> synchronize</i>)</h3>
<p>FIXME <i>synchronize</i></p>
<!-- @@@setSync -->
<!-- $$$setSyncOutput[overload1]$$$setSyncOutputQList<QVariant> -->
<h3 class="fn" id="setSyncOutput"><span class="type">void</span> Synchronizer::<span class="name">setSyncOutput</span>(<span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt;<i> sync_output</i>)</h3>
<p>Sets the current value for the active session's <i>sync_output</i>.</p>
<!-- @@@setSyncOutput -->
<!-- $$$setTargets[overload1]$$$setTargetsQVariant -->
<h3 class="fn" id="setTargets"><span class="type">void</span> Synchronizer::<span class="name">setTargets</span>(<span class="type">QVariant</span><i> targets</i>)</h3>
<p>FIXME <i>targets</i></p>
<!-- @@@setTargets -->
