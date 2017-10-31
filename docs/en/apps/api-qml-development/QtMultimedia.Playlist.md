---
Title: QtMultimedia.Playlist
---

# QtMultimedia.Playlist

<span class="subtitle"></span>
<!-- $$$Playlist-brief -->
<p>For specifying a list of media to be played. More...</p>
<!-- @@@Playlist -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#currentIndex-prop">currentIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#currentItemsource-prop">currentItemsource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#error-prop">error</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#errorString-prop">errorString</a></b></b> : string</li>
<li class="fn"><b><b><a href="#itemCount-prop">itemCount</a></b></b> : int</li>
<li class="fn"><b><b><a href="#playbackMode-prop">playbackMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#readOnly-prop">readOnly</a></b></b> : bool</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="#addItem-method">addItem</a></b></b>(source)</li>
<li class="fn">bool <b><b><a href="#addItems-method">addItems</a></b></b>(sources)</li>
<li class="fn">bool <b><b><a href="#clear-method">clear</a></b></b>()</li>
<li class="fn">bool <b><b><a href="#insertItem-method">insertItem</a></b></b>(index, source)</li>
<li class="fn">url <b><b><a href="#itemSource-method">itemSource</a></b></b>(index)</li>
<li class="fn"><b><b><a href="#load-method">load</a></b></b>(location, format)</li>
<li class="fn">bool <b><b><a href="#moveItem-method">moveItem</a></b></b>(from, to)</li>
<li class="fn"><b><b><a href="#next-method">next</a></b></b>()</li>
<li class="fn">int <b><b><a href="#nextIndex-method">nextIndex</a></b></b>(steps)</li>
<li class="fn"><b><b><a href="#previous-method">previous</a></b></b>()</li>
<li class="fn">int <b><b><a href="#previousIndex-method">previousIndex</a></b></b>(steps)</li>
<li class="fn">bool <b><b><a href="#removeItem-method">removeItem</a></b></b>(index)</li>
<li class="fn">bool <b><b><a href="#removeItems-method">removeItems</a></b></b>(int <i>start</i>, int <i>end</i>)</li>
<li class="fn">bool <b><b><a href="#save-method">save</a></b></b>(location, format)</li>
<li class="fn"><b><b><a href="#shuffle-method">shuffle</a></b></b>()</li>
</ul>
<!-- $$$Playlist-description -->
<h2 id="details">Detailed Description</h2>
<p><b class="redFont"><code>\backported</code></b>from 5.6</p>
</p>
<p>The Playlist type provides a way to play a list of media with the <a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>, Audio and Video types. It can be used as a data source for view elements (such as ListView) and other elements that interact with model data (such as Repeater). When used as a data model, each playlist item's source URL can be accessed using the <code>source</code> role.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.4
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">400</span>;
<span class="name">height</span>: <span class="number">300</span>;
<span class="type"><a href="QtMultimedia.Audio.md">Audio</a></span> {
<span class="name">id</span>: <span class="name">player</span>;
<span class="name">playlist</span>: <span class="name">Playlist</span> {
<span class="name">id</span>: <span class="name">playlist</span>
<span class="type"><a href="QtMultimedia.PlaylistItem.md">PlaylistItem</a></span> { <span class="name">source</span>: <span class="string">&quot;song1.ogg&quot;</span>; }
<span class="type"><a href="QtMultimedia.PlaylistItem.md">PlaylistItem</a></span> { <span class="name">source</span>: <span class="string">&quot;song2.ogg&quot;</span>; }
<span class="type"><a href="QtMultimedia.PlaylistItem.md">PlaylistItem</a></span> { <span class="name">source</span>: <span class="string">&quot;song3.ogg&quot;</span>; }
}
}
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">playlist</span>;
<span class="name">delegate</span>: <span class="name">Text</span> {
<span class="name">font</span>.pixelSize: <span class="number">16</span>;
<span class="name">text</span>: <span class="name">source</span>;
}
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>;
<span class="name">onPressed</span>: {
<span class="keyword">if</span> (<span class="name">player</span>.<span class="name">playbackState</span> <span class="operator">!=</span> <span class="name">Audio</span>.<span class="name">PlayingState</span>) {
<span class="name">player</span>.<span class="name">play</span>();
} <span class="keyword">else</span> {
<span class="name">player</span>.<span class="name">pause</span>();
}
}
}
}</pre>
<p><b>See also </b><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>, <a href="QtMultimedia.qml-multimedia.md#audio">Audio</a>, and <a href="QtMultimedia.qml-multimedia.md#video">Video</a>.</p>
<!-- @@@Playlist -->
<h2>Property Documentation</h2>
<!-- $$$currentIndex -->
<table class="qmlname"><tr valign="top" id="currentIndex-prop"><td class="tblQmlPropNode"><p><span class="name">currentIndex</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the position of the current item in the playlist.</p>
<!-- @@@currentIndex -->
<br/>
<!-- $$$currentItemsource -->
<table class="qmlname"><tr valign="top" id="currentItemsource-prop"><td class="tblQmlPropNode"><p><span class="name">currentItemsource</span> : <span class="type">url</span></p></td></tr></table><p>This property holds the source URL of the current item in the playlist.</p>
<!-- @@@currentItemsource -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the error condition of the playlist.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >NoError</td><td >No errors</td></tr>
<tr valign="top"><td >FormatError</td><td >Format error.</td></tr>
<tr valign="top"><td >FormatNotSupportedError</td><td >Format not supported.</td></tr>
<tr valign="top"><td >NetworkError</td><td >Network error.</td></tr>
<tr valign="top"><td >AccessDeniedError</td><td >Access denied error.</td></tr>
</table>
<!-- @@@error -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-prop"><td class="tblQmlPropNode"><p><span class="name">errorString</span> : <span class="type">string</span></p></td></tr></table><p>This property holds a string describing the current error condition of the playlist.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$itemCount -->
<table class="qmlname"><tr valign="top" id="itemCount-prop"><td class="tblQmlPropNode"><p><span class="name">itemCount</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of items in the playlist.</p>
<!-- @@@itemCount -->
<br/>
<!-- $$$playbackMode -->
<table class="qmlname"><tr valign="top" id="playbackMode-prop"><td class="tblQmlPropNode"><p><span class="name">playbackMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the order in which items in the playlist are played.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >CurrentItemOnce</td><td >The current item is played only once.</td></tr>
<tr valign="top"><td >CurrentItemInLoop</td><td >The current item is played repeatedly in a loop.</td></tr>
<tr valign="top"><td >Sequential</td><td >Playback starts from the current and moves through each successive item until the last is reached and then stops. The next item is a null item when the last one is currently playing.</td></tr>
<tr valign="top"><td >Loop</td><td >Playback restarts at the first item after the last has finished playing.</td></tr>
<tr valign="top"><td >Random</td><td >Play items in random order.</td></tr>
</table>
<!-- @@@playbackMode -->
<br/>
<!-- $$$readOnly -->
<table class="qmlname"><tr valign="top" id="readOnly-prop"><td class="tblQmlPropNode"><p><span class="name">readOnly</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates if the playlist can be modified.</p>
<!-- @@@readOnly -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$addItem -->
<table class="qmlname"><tr valign="top" id="addItem-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">addItem</span>(<span class="type">source</span>)</p></td></tr></table><p>Appends the <i>source</i> URL to the playlist.</p>
<p>Returns true if the <i>source</i> is added successfully.</p>
<!-- @@@addItem -->
<br/>
<!-- $$$addItems -->
<table class="qmlname"><tr valign="top" id="addItems-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">addItems</span>(<span class="type">sources</span>)</p></td></tr></table><p>Appends <i>source</i> URLs to the playlist.</p>
<p>Returns true if the <i>sources</i> are added successfully.</p>
<!-- @@@addItems -->
<br/>
<!-- $$$clear -->
<table class="qmlname"><tr valign="top" id="clear-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">clear</span>()</p></td></tr></table><p>Removes all the items from the playlist.</p>
<p>Returns true if the operation is successful.</p>
<!-- @@@clear -->
<br/>
<!-- $$$insertItem -->
<table class="qmlname"><tr valign="top" id="insertItem-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">insertItem</span>(<span class="type">index</span>, <span class="type">source</span>)</p></td></tr></table><p>Inserts the <i>source</i> URL to the playlist at the given <i>index</i>.</p>
<p>Returns true if the <i>source</i> is added successfully.</p>
<!-- @@@insertItem -->
<br/>
<!-- $$$itemSource -->
<table class="qmlname"><tr valign="top" id="itemSource-method"><td class="tblQmlFuncNode"><p><span class="type">url</span> <span class="name">itemSource</span>(<span class="type">index</span>)</p></td></tr></table><p>Returns the source URL of the item at the given <i>index</i> in the playlist.</p>
<!-- @@@itemSource -->
<br/>
<!-- $$$load -->
<table class="qmlname"><tr valign="top" id="load-method"><td class="tblQmlFuncNode"><p><span class="name">load</span>(<span class="type">location</span>, <span class="type">format</span>)</p></td></tr></table><p>Loads a playlist from the given <i>location</i>. If <i>format</i> is specified, it is used, otherwise the format is guessed from the location name and the data.</p>
<p>New items are appended to the playlist.</p>
<p><code>onloaded()</code> is emitted if the playlist loads successfully, otherwise <code>onLoadFailed()</code> is emitted with <a href="#error-prop">error</a> and <a href="#errorString-prop">errorString</a> defined accordingly.</p>
<!-- @@@load -->
<br/>
<!-- $$$moveItem -->
<table class="qmlname"><tr valign="top" id="moveItem-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">moveItem</span>(<span class="type">from</span>, <span class="type">to</span>)</p></td></tr></table><p>Moves the item at the first given <i>index</i> to the second given <i>index</i>.</p>
<p>Returns true if the <i>source</i> is moved successfully.</p>
<!-- @@@moveItem -->
<br/>
<!-- $$$next -->
<table class="qmlname"><tr valign="top" id="next-method"><td class="tblQmlFuncNode"><p><span class="name">next</span>()</p></td></tr></table><p>Advances to the next item in the playlist.</p>
<!-- @@@next -->
<br/>
<!-- $$$nextIndex -->
<table class="qmlname"><tr valign="top" id="nextIndex-method"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">nextIndex</span>(<span class="type">steps</span>)</p></td></tr></table><p>Returns the index of the item in the playlist which would be current after calling <a href="#next-method">next()</a> <i>steps</i> times.</p>
<p>Returned value depends on the size of the playlist, the current position and the playback mode.</p>
<p><b>See also </b><a href="#playbackMode-prop">playbackMode</a> and <a href="#previousIndex-method">previousIndex()</a>.</p>
<!-- @@@nextIndex -->
<br/>
<!-- $$$previous -->
<table class="qmlname"><tr valign="top" id="previous-method"><td class="tblQmlFuncNode"><p><span class="name">previous</span>()</p></td></tr></table><p>Returns to the previous item in the playlist.</p>
<!-- @@@previous -->
<br/>
<!-- $$$previousIndex -->
<table class="qmlname"><tr valign="top" id="previousIndex-method"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">previousIndex</span>(<span class="type">steps</span>)</p></td></tr></table><p>Returns the index of the item in the playlist which would be current after calling <a href="#previous-method">previous()</a> <i>steps</i> times.</p>
<p>Returned value depends on the size of the playlist, the current position and the playback mode.</p>
<p><b>See also </b><a href="#playbackMode-prop">playbackMode</a> and <a href="#nextIndex-method">nextIndex()</a>.</p>
<!-- @@@previousIndex -->
<br/>
<!-- $$$removeItem -->
<table class="qmlname"><tr valign="top" id="removeItem-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">removeItem</span>(<span class="type">index</span>)</p></td></tr></table><p>Removed the item at the given <i>index</i> from the playlist.</p>
<p>Returns true if the <i>source</i> is removed successfully.</p>
<!-- @@@removeItem -->
<br/>
<!-- $$$removeItems -->
<table class="qmlname"><tr valign="top" id="removeItems-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">removeItems</span>(<span class="type">int</span><i> start</i>, <span class="type">int</span><i> end</i>)</p></td></tr></table><p>Removes items in the playlist from <i>start</i> to <b class="redFont"><code>\end</code></b> inclusive.</p>
<p>Returns true if the items are removed successfully.</p>
<!-- @@@removeItems -->
<br/>
<!-- $$$save -->
<table class="qmlname"><tr valign="top" id="save-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">save</span>(<span class="type">location</span>, <span class="type">format</span>)</p></td></tr></table><p>Saves the playlist to the given <i>location</i>. If <i>format</i> is specified, it is used, otherwise the format is guessed from the location name.</p>
<p>Returns true if the playlist is saved successfully.</p>
<!-- @@@save -->
<br/>
<!-- $$$shuffle -->
<table class="qmlname"><tr valign="top" id="shuffle-method"><td class="tblQmlFuncNode"><p><span class="name">shuffle</span>()</p></td></tr></table><p>Shuffles items in the playlist.</p>
<!-- @@@shuffle -->
<br/>
