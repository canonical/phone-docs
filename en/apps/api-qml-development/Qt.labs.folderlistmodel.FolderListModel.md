---
Title: Qt.labs.folderlistmodel.FolderListModel
---

# Qt.labs.folderlistmodel.FolderListModel

<span class="subtitle"></span>
<!-- $$$FolderListModel-brief -->
<p>The FolderListModel provides a model of the contents of a file system folder. More...</p>
<!-- @@@FolderListModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Qt.labs.folderlistmodel 2.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#folder-prop">folder</a></b></b> : string</li>
<li class="fn"><b><b><a href="#nameFilters-prop">nameFilters</a></b></b> : list&lt;string&gt;</li>
<li class="fn"><b><b><a href="#parentFolder-prop">parentFolder</a></b></b> : url</li>
<li class="fn"><b><b><a href="#rootFolder-prop">rootFolder</a></b></b> : url</li>
<li class="fn"><b><b><a href="#showDirs-prop">showDirs</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#showDirsFirst-prop">showDirsFirst</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#showDotAndDotDot-prop">showDotAndDotDot</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#showFiles-prop">showFiles</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#showHidden-prop">showHidden</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#showOnlyReadable-prop">showOnlyReadable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#sortField-prop">sortField</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#sortReversed-prop">sortReversed</a></b></b> : bool</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">var <b><b><a href="#get-method">get</a></b></b>(int <i>index</i>, string <i>property</i>)</li>
<li class="fn">bool <b><b><a href="#isFolder-method">isFolder</a></b></b>(int <i>index</i>)</li>
</ul>
<!-- $$$FolderListModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">FolderListModel</a> provides access to information about the contents of a folder in the local file system, exposing a list of files to views and other data components.</p>
<p><b>Note: </b>This type is made available by importing the <code>Qt.labs.folderlistmodel</code> module. <i>Elements in the Qt.labs module are not guaranteed to remain compatible in future versions.</i></p><p><b>import Qt.labs.folderlistmodel 2.1</b></p>
<p>The <a href="#folder-prop">folder</a> property specifies the folder to access. Information about the files and directories in the folder is supplied via the model's interface. Components access names and paths via the following roles:</p>
<ul>
<li><code>fileName</code></li>
<li><code>filePath</code></li>
<li><code>fileURL</code> (since Qt 5.2)</li>
<li><code>fileBaseName</code></li>
<li><code>fileSuffix</code></li>
<li><code>fileSize</code></li>
<li><code>fileModified</code></li>
<li><code>fileAccessed</code></li>
<li><code>fileIsDir</code></li>
</ul>
<p>Additionally a file entry can be differentiated from a folder entry via the <a href="#isFolder-method">isFolder()</a> method.</p>
<h2 id="filtering">Filtering</h2>
<p>Various properties can be set to filter the number of files and directories exposed by the model.</p>
<p>The <a href="#nameFilters-prop">nameFilters</a> property can be set to contain a list of wildcard filters that are applied to names of files and directories, causing only those that match the filters to be exposed.</p>
<p>Directories can be included or excluded using the <a href="#showDirs-prop">showDirs</a> property, navigation directories can also be excluded by setting the <a href="#showDotAndDotDot-prop">showDotAndDotDot</a> property to false, hidden files can be included or excluded using the <a href="#showHidden-prop">showHidden</a> property.</p>
<p>It is sometimes useful to limit the files and directories exposed to those that the user can access. The <a href="#showOnlyReadable-prop">showOnlyReadable</a> property can be set to enable this feature.</p>
<h2 id="example-usage">Example Usage</h2>
<p>The following example shows a <a href="index.html">FolderListModel</a> being used to provide a list of QML files in a <a href="QtQuick.ListView.md">ListView</a>:</p>
<pre class="qml">import QtQuick 2.0
import Qt.labs.folderlistmodel 2.1
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">400</span>
<span class="type"><a href="index.html">FolderListModel</a></span> {
<span class="name">id</span>: <span class="name">folderModel</span>
<span class="name">nameFilters</span>: [<span class="string">&quot;*.qml&quot;</span>]
}
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">fileDelegate</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">fileName</span> }
}
<span class="name">model</span>: <span class="name">folderModel</span>
<span class="name">delegate</span>: <span class="name">fileDelegate</span>
}</pre>
<h2 id="path-separators">Path Separators</h2>
<p>Qt uses &quot;/&quot; as a universal directory separator in the same way that &quot;/&quot; is used as a path separator in URLs. If you always use &quot;/&quot; as a directory separator, Qt will translate your paths to conform to the underlying operating system.</p>
<p><b>See also </b><a href="QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models">QML Data Models</a>.</p>
<!-- @@@FolderListModel -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>Returns the number of items in the current folder that match the filter criteria.</p>
<!-- @@@count -->
<br/>
<!-- $$$folder -->
<table class="qmlname"><tr valign="top" id="folder-prop"><td class="tblQmlPropNode"><p><span class="name">folder</span> : <span class="type">string</span></p></td></tr></table><p>The <i>folder</i> property holds a URL for the folder that the model is currently providing.</p>
<p>The value must be a <code>file</code>: or <code>qrc</code>: URL, or a relative URL.</p>
<p>By default, the value is an invalid URL.</p>
<!-- @@@folder -->
<br/>
<!-- $$$nameFilters -->
<table class="qmlname"><tr valign="top" id="nameFilters-prop"><td class="tblQmlPropNode"><p><span class="name">nameFilters</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>The <i>nameFilters</i> property contains a list of file name filters. The filters may include the ? and * wildcards.</p>
<p>The example below filters on PNG and JPEG files:</p>
<pre class="qml"><span class="type"><a href="index.html">FolderListModel</a></span> {
<span class="name">nameFilters</span>: [ <span class="string">&quot;*.png&quot;</span>, <span class="string">&quot;*.jpg&quot;</span> ]
}</pre>
<p><b>Note: </b>Directories are not excluded by filters.</p><!-- @@@nameFilters -->
<br/>
<!-- $$$parentFolder -->
<table class="qmlname"><tr valign="top" id="parentFolder-prop"><td class="tblQmlPropNode"><p><span class="name">parentFolder</span> : <span class="type">url</span></p></td></tr></table><p>Returns the URL of the parent of the current <a href="#folder-prop">folder</a>.</p>
<!-- @@@parentFolder -->
<br/>
<!-- $$$rootFolder -->
<table class="qmlname"><tr valign="top" id="rootFolder-prop"><td class="tblQmlPropNode"><p><span class="name">rootFolder</span> : <span class="type">url</span></p></td></tr></table><p>When the rootFolder is set, then this folder will be threated as the root in the file system, so that you can only travers sub folders from this rootFolder.</p>
<!-- @@@rootFolder -->
<br/>
<!-- $$$showDirs -->
<table class="qmlname"><tr valign="top" id="showDirs-prop"><td class="tblQmlPropNode"><p><span class="name">showDirs</span> : <span class="type">bool</span></p></td></tr></table><p>If true, directories are included in the model; otherwise only files are included.</p>
<p>By default, this property is true.</p>
<p>Note that the <a href="#nameFilters-prop">nameFilters</a> are not applied to directories.</p>
<p><b>See also </b><a href="#showDotAndDotDot-prop">showDotAndDotDot</a>.</p>
<!-- @@@showDirs -->
<br/>
<!-- $$$showDirsFirst -->
<table class="qmlname"><tr valign="top" id="showDirsFirst-prop"><td class="tblQmlPropNode"><p><span class="name">showDirsFirst</span> : <span class="type">bool</span></p></td></tr></table><p>If true, if directories are included in the model they will always be shown first, then the files.</p>
<p>By default, this property is false.</p>
<!-- @@@showDirsFirst -->
<br/>
<!-- $$$showDotAndDotDot -->
<table class="qmlname"><tr valign="top" id="showDotAndDotDot-prop"><td class="tblQmlPropNode"><p><span class="name">showDotAndDotDot</span> : <span class="type">bool</span></p></td></tr></table><p>If true, the &quot;.&quot; and &quot;..&quot; directories are included in the model; otherwise they are excluded.</p>
<p>By default, this property is false.</p>
<p><b>See also </b><a href="#showDirs-prop">showDirs</a>.</p>
<!-- @@@showDotAndDotDot -->
<br/>
<!-- $$$showFiles -->
<table class="qmlname"><tr valign="top" id="showFiles-prop"><td class="tblQmlPropNode"><p><span class="name">showFiles</span> : <span class="type">bool</span></p></td></tr></table><p>If true, files are included in the model; otherwise only directories are included.</p>
<p>By default, this property is true.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<p><b>See also </b><a href="#showDirs-prop">showDirs</a>.</p>
<!-- @@@showFiles -->
<br/>
<!-- $$$showHidden -->
<table class="qmlname"><tr valign="top" id="showHidden-prop"><td class="tblQmlPropNode"><p><span class="name">showHidden</span> : <span class="type">bool</span></p></td></tr></table><p>If true, hidden files and directories are included in the model; otherwise they are excluded.</p>
<p>By default, this property is false.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@showHidden -->
<br/>
<!-- $$$showOnlyReadable -->
<table class="qmlname"><tr valign="top" id="showOnlyReadable-prop"><td class="tblQmlPropNode"><p><span class="name">showOnlyReadable</span> : <span class="type">bool</span></p></td></tr></table><p>If true, only readable files and directories are shown; otherwise all files and directories are shown.</p>
<p>By default, this property is false.</p>
<p><b>See also </b><a href="#showDirs-prop">showDirs</a>.</p>
<!-- @@@showOnlyReadable -->
<br/>
<!-- $$$sortField -->
<table class="qmlname"><tr valign="top" id="sortField-prop"><td class="tblQmlPropNode"><p><span class="name">sortField</span> : <span class="type">enumeration</span></p></td></tr></table><p>The <i>sortField</i> property contains field to use for sorting. sortField may be one of:</p>
<ul>
<li>Unsorted - no sorting is applied.</li>
<li>Name - sort by filename</li>
<li>Time - sort by time modified</li>
<li>Size - sort by file size</li>
<li>Type - sort by file type (extension)</li>
</ul>
<p><b>See also </b><a href="#sortReversed-prop">sortReversed</a>.</p>
<!-- @@@sortField -->
<br/>
<!-- $$$sortReversed -->
<table class="qmlname"><tr valign="top" id="sortReversed-prop"><td class="tblQmlPropNode"><p><span class="name">sortReversed</span> : <span class="type">bool</span></p></td></tr></table><p>If set to true, reverses the sort order. The default is false.</p>
<p><b>See also </b><a href="#sortField-prop">sortField</a>.</p>
<!-- @@@sortReversed -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$get -->
<table class="qmlname"><tr valign="top" id="get-method"><td class="tblQmlFuncNode"><p><span class="type">var</span> <span class="name">get</span>(<span class="type">int</span><i> index</i>, <span class="type">string</span><i> property</i>)</p></td></tr></table><p>Get the folder property for the given index. The following properties are available.</p>
<ul>
<li><code>fileName</code></li>
<li><code>filePath</code></li>
<li><code>fileURL</code> (since Qt 5.2)</li>
<li><code>fileBaseName</code></li>
<li><code>fileSuffix</code></li>
<li><code>fileSize</code></li>
<li><code>fileModified</code></li>
<li><code>fileAccessed</code></li>
<li><code>fileIsDir</code></li>
</ul>
<!-- @@@get -->
<br/>
<!-- $$$isFolder -->
<table class="qmlname"><tr valign="top" id="isFolder-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">isFolder</span>(<span class="type">int</span><i> index</i>)</p></td></tr></table><p>Returns true if the entry <i>index</i> is a folder; otherwise returns false.</p>
<!-- @@@isFolder -->
<br/>
