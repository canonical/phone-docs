---
Title: Ubuntu.Connectivity.NetworkingStatus
---

# Ubuntu.Connectivity.NetworkingStatus

<span class="subtitle"></span>
<!-- $$$NetworkingStatus-brief -->
<p>Overall system networking status. More...</p>
<!-- @@@NetworkingStatus -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import  .</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#limitations-prop">limitations</a></b></b> : Limitations</li>
<li class="fn"><b><b><a href="#limitedBandwith-prop">limitedBandwith</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#online-prop">online</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : Status</li>
</ul>
<!-- $$$NetworkingStatus-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This is the top-level class for accessing networking information.</p>
<p>This class inherits the Qt C++ ubuntu::connectivity::NetworkingStatus and provides two utility properties online and <a href="#limitedBandwith-prop">limitedBandwith</a> for easier QML usage.</p>
<p>This object is exposed as a singleton.</p>
<p><b>note:</b> Using this component in confined application requires <i>connectivity</i> policy group.</p>
<pre class="cpp"><span class="comment">/*
* Copyright (C) 2014 Canonical Ltd.
*
* This program is free software: you can redistribute it and/or modify it
* under the terms of the GNU Lesser General Public License version 3,
* as published by the Free Software Foundation.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public License
* along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.
*/</span>
import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Connectivity 1.0
<span class="type">MainView</span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="name">objectName</span>: <span class="string">&quot;mainView&quot;</span>
<span class="name">applicationName</span>: <span class="string">&quot;Connectivity&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">75</span>)
property <span class="type">real</span> <span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
property <span class="type">real</span> <span class="name">buttonWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">9</span>)
property <span class="type">var</span> <span class="name">statusMap</span>: [<span class="string">&quot;Offline&quot;</span>, <span class="string">&quot;Connecting&quot;</span>, <span class="string">&quot;Online&quot;</span>]
<span class="type">Connections</span> {
<span class="name">target</span>: <span class="name">Connectivity</span>
<span class="comment">// full status can be retrieved from the base C++ class</span>
<span class="comment">// status property</span>
<span class="name">onStatusChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Status: &quot;</span> <span class="operator">+</span> <span class="name">statusMap</span>[<span class="name">Connectivity</span>.<span class="name">status</span>])
<span class="name">onOnlineChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Online: &quot;</span> <span class="operator">+</span> <span class="name">Connectivity</span>.<span class="name">online</span>)
}
<span class="type">Page</span> {
<span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Networking Status&quot;</span>)
<span class="type">Column</span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="type">Label</span> {
<span class="comment">// use the online property</span>
<span class="name">text</span>: <span class="name">Connectivity</span>.<span class="name">online</span> ? <span class="string">&quot;Online&quot;</span> : <span class="string">&quot;Not online&quot;</span>
<span class="name">fontSize</span>: <span class="string">&quot;large&quot;</span>
}
<span class="type">Label</span> {
<span class="comment">// use the status property</span>
<span class="name">text</span>: <span class="string">&quot;Status: &quot;</span> <span class="operator">+</span> <span class="name">statusMap</span>[<span class="name">Connectivity</span>.<span class="name">status</span>]
<span class="name">fontSize</span>: <span class="string">&quot;large&quot;</span>
}
<span class="type">Label</span> {
<span class="comment">// use the limitedBandwith property</span>
<span class="name">text</span>: <span class="name">Connectivity</span>.<span class="name">limitedBandwith</span> ? <span class="string">&quot;Bandwith limited&quot;</span> : <span class="string">&quot;Bandwith not limited&quot;</span>
<span class="name">fontSize</span>: <span class="string">&quot;large&quot;</span>
}
}
}
}</pre>
<!-- @@@NetworkingStatus -->
<h2>Property Documentation</h2>
<!-- $$$limitations -->
<table class="qmlname"><tr valign="top" id="limitations-prop"><td class="tblQmlPropNode"><p><span class="name">limitations</span> : <span class="type">Limitations</span></p></td></tr></table><!-- @@@limitations -->
<br/>
<!-- $$$limitedBandwith -->
<table class="qmlname"><tr valign="top" id="limitedBandwith-prop"><td class="tblQmlPropNode"><p><span class="name">limitedBandwith</span> : <span class="type">bool</span></p></td></tr></table><p><b>true</b> if Internet connection is bandwith limited.</p>
<p>shorthand for C++:</p>
<pre class="cpp">networkingStatus<span class="operator">-</span><span class="operator">&gt;</span>limitations()<span class="operator">.</span>contains(NetworkingStatus<span class="operator">::</span>Limitations<span class="operator">::</span>Bandwith)</pre>
<!-- @@@limitedBandwith -->
<br/>
<!-- $$$online -->
<table class="qmlname"><tr valign="top" id="online-prop"><td class="tblQmlPropNode"><p><span class="name">online</span> : <span class="type">bool</span></p></td></tr></table><p><b>true</b> if system has Internet connection.</p>
<p>shorthand for C++:</p>
<pre class="cpp">networkingStatus<span class="operator">-</span><span class="operator">&gt;</span>status() <span class="operator">=</span><span class="operator">=</span> NetworkingStatus<span class="operator">::</span>Online</pre>
<!-- @@@online -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">Status</span></p></td></tr></table><p>status property of the base C++ class.</p>
<pre class="cpp">onStatusChanged: {
<span class="keyword">if</span> (status <span class="operator">=</span><span class="operator">=</span><span class="operator">=</span> NetworkingStatus<span class="operator">::</span>Offline)
;
<span class="keyword">else</span> <span class="keyword">if</span> (status <span class="operator">=</span><span class="operator">=</span><span class="operator">=</span> NetworkingStatus<span class="operator">::</span>Connecting)
;
<span class="keyword">else</span> <span class="keyword">if</span> (status <span class="operator">=</span><span class="operator">=</span><span class="operator">=</span> NetworkingStatus<span class="operator">::</span>Online)
;
}</pre>
<!-- @@@status -->
<br/>
