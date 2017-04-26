---
Title: Ubuntu.Components.AlarmModel
---

# Ubuntu.Components.AlarmModel

<span class="subtitle"></span>
<!-- $$$AlarmModel-brief -->
<p>AlarmModel holds the list of alarms defined. More...</p>
<!-- @@@AlarmModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">Alarm <b><b><a href="#get-method">get</a></b></b>(int <i>index</i>)</li>
<li class="fn"><b><b><a href="#refresh-method">refresh</a></b></b>()</li>
</ul>
<!-- $$$AlarmModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">AlarmModel</a> is a simple container of <a href="Ubuntu.Components.Alarm.md">Alarm</a> definitions stored in the alarm collection. The data provided by the model are read only, adding, modifying or removing data is only possible through <a href="Ubuntu.Components.Alarm.md">Alarm</a> functions. Any modification on the alarms or any new alarm added to the collection will refresh all the model instances. This also means that the delegates visualizing the model elements will also be re-created.</p>
<p>Example usage:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.ListItems 1.0
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">model</span>: <span class="name">AlarmModel</span> {}
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="name">delegate</span>: <span class="name">Subtitled</span> {
<span class="name">text</span>: <span class="name">message</span>
<span class="name">subText</span>: <span class="name">Qt</span>.<span class="name">formatDateTime</span>(<span class="name">date</span>)
}
}</pre>
<p>The model defines the same roles as the <a href="Ubuntu.Components.Alarm.md">Alarm</a> properties. Note that the use of <i>enabled</i> role in delegates may be ambiguous. Therefore the model defines the additional role called <i>model</i>, which represents the <a href="Ubuntu.Components.Alarm.md">Alarm</a> object from the index the delegate is showing the data, so the <i>enabled</i> role can then be accessed by simply dereferencing the model i.e&#x2e; model.enabled.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">model</span>: <span class="name">AlarmModel</span>{}
<span class="name">delegate</span>: <span class="name">Standard</span> {
<span class="name">text</span>: <span class="name">message</span>
<span class="name">control</span>: <span class="name">Switch</span> {
<span class="name">checked</span>: <span class="name">model</span>.<span class="name">enabled</span>
}
}
}</pre>
<p>The number of alarm events can be obtained from the <a href="#count-prop">count</a> property. To get a specific alarm event data from the model, use the <a href="#get-method">get()</a> function.</p>
<p>As the <a href="#get-method">get()</a> function returns the alarm object from the given index. Combined with the alarm functions the alarms can be updated in place.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">model</span>: <span class="name">AlarmModel</span>{
<span class="name">id</span>: <span class="name">alarmModel</span>
}
<span class="name">delegate</span>: <span class="name">Standard</span> {
<span class="name">text</span>: <span class="name">message</span>
<span class="name">control</span>: <span class="name">Switch</span> {
<span class="name">checked</span>: <span class="name">model</span>.<span class="name">enabled</span>
<span class="name">onCheckedChanged</span>: {
<span class="keyword">if</span> (<span class="name">checked</span> <span class="operator">!=</span> <span class="name">model</span>.<span class="name">enabled</span>) {
var <span class="name">data</span> = <span class="name">alarmModel</span>.<span class="name">get</span>(<span class="name">index</span>);
<span class="name">data</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="name">checked</span>;
<span class="name">data</span>.<span class="name">save</span>();
}
}
}
}
}</pre>
<p>In this kind of &quot;in place&quot; updates using the <i>model</i> role would give the same result:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">model</span>: <span class="name">AlarmModel</span>{
<span class="name">id</span>: <span class="name">alarmModel</span>
}
<span class="name">delegate</span>: <span class="name">Standard</span> {
<span class="name">text</span>: <span class="name">message</span>
<span class="name">control</span>: <span class="name">Switch</span> {
<span class="name">checked</span>: <span class="name">model</span>.<span class="name">enabled</span>
<span class="name">onCheckedChanged</span>: {
<span class="keyword">if</span> (<span class="name">checked</span> <span class="operator">!=</span> <span class="name">model</span>.<span class="name">enabled</span>) {
<span class="name">model</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="name">checked</span>;
<span class="name">model</span>.<span class="name">save</span>();
}
}
}
}
}</pre>
<!-- @@@AlarmModel -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>The number of data entries in the model.</p>
<!-- @@@count -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$get -->
<table class="qmlname"><tr valign="top" id="get-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="Ubuntu.Components.Alarm.md">Alarm</a></span> <span class="name">get</span>(<span class="type">int</span><i> index</i>)</p></td></tr></table><p>Returns the reference of the alarm event at <i>index</i> in the model. This allows the alarm data to be modified and updated either through normal component binding or in Javascript functions.</p>
<pre class="cpp">Component<span class="operator">.</span>onCompleted: {
var alarm <span class="operator">=</span> alarmModel<span class="operator">.</span>get(<span class="number">0</span>);
alarm<span class="operator">.</span>message <span class="operator">+</span><span class="operator">=</span> <span class="string">&quot; updated&quot;</span>;
alarm<span class="operator">.</span>save();
}</pre>
<p>This Javascript code returns the alarm properties from the first index of the model, updates its message and updates the alarm. Note that the alarm must be saved in order to have the changes visible. The follwoing code will not update the alarm in the model/collection:</p>
<pre class="cpp">Component<span class="operator">.</span>onCompleted: {
alarmModel<span class="operator">.</span>get(<span class="number">0</span>)<span class="operator">.</span>message <span class="operator">+</span><span class="operator">=</span> <span class="string">&quot; updated&quot;</span>;
alarm<span class="operator">.</span>message <span class="operator">+</span><span class="operator">=</span> <span class="string">&quot; updated&quot;</span>;
}</pre>
<p><b>Note: </b>The returned object is not guarantied to remain valid, it should not be used in property bindings. Also, <a href="Ubuntu.Components.Alarm.md#reset-method">reset()</a> should not be called either as the call will clear the alarm data from the cache.</p><p><b>See also </b><a href="Ubuntu.Components.Alarm.md">Alarm</a>.</p>
<!-- @@@get -->
<br/>
<!-- $$$refresh -->
<table class="qmlname"><tr valign="top" id="refresh-method"><td class="tblQmlFuncNode"><p><span class="name">refresh</span>()</p></td></tr></table><p>The function refreshes the model by invalidating the alarm cache. Use this function only if the refresh is absolutely required, otherwise it will cause performance problems.</p>
<!-- @@@refresh -->
<br/>
