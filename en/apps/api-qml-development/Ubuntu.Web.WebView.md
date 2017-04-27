---
Title: Ubuntu.Web.WebView
---

# Ubuntu.Web.WebView

<span class="subtitle"></span>
<!-- $$$WebView-brief -->
<p>A webview that can be used to render web content in an application. More...</p>
<!-- @@@WebView -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Web 0.2</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#alertDialog-prop">alertDialog</a></b></b> : component</li>
<li class="fn"><b><b><a href="#beforeUnloadDialog-prop">beforeUnloadDialog</a></b></b> : component</li>
<li class="fn"><b><b><a href="#canGoBack-prop">canGoBack</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#canGoForward-prop">canGoForward</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#confirmDialog-prop">confirmDialog</a></b></b> : component</li>
<li class="fn"><b><b><a href="#context-prop">context</a></b></b> : WebContext</li>
<li class="fn"><b><b><a href="#contextModel-prop">contextModel</a></b></b> : QtObject</li>
<li class="fn"><b><b><a href="#contextualActions-prop">contextualActions</a></b></b> : ActionList</li>
<li class="fn"><b><b><a href="#filePicker-prop">filePicker</a></b></b> : component</li>
<li class="fn"><b><b><a href="#fullscreen-prop">fullscreen</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#icon-prop">icon</a></b></b> : url</li>
<li class="fn"><b><b><a href="#incognito-prop">incognito</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#loadProgress-prop">loadProgress</a></b></b> : int</li>
<li class="fn"><b><b><a href="#loading-prop">loading</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#navigationHistory-prop">navigationHistory</a></b></b> : list</li>
<li class="fn"><b><b><a href="#promptDialog-prop">promptDialog</a></b></b> : component</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : string</li>
<li class="fn"><b><b><a href="#url-prop">url</a></b></b> : url</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#goBack-method">goBack</a></b></b>()</li>
<li class="fn">void <b><b><a href="#goForward-method">goForward</a></b></b>()</li>
<li class="fn">void <b><b><a href="#loadHtml-method">loadHtml</a></b></b>(string <i>html</i>, url <i>baseUrl</i>)</li>
<li class="fn">void <b><b><a href="#reload-method">reload</a></b></b>()</li>
<li class="fn">void <b><b><a href="#stop-method">stop</a></b></b>()</li>
</ul>
<!-- $$$WebView-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Here is a very simple example of how to use a <a href="#">WebView</a> to render a web page:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Web 0.2
<span class="type"><a href="#">WebView</a></span> {
<span class="name">url</span>: <span class="string">&quot;http://ubuntu.com&quot;</span>
}</pre>
<p>The <code>WebView</code> component defaults to using a <a href="Ubuntu.Web.SharedWebContext.md">shared <code>WebContext</code></a> that is shared across all <code>WebView</code> instances in a given application.</p>
<p><b>See also </b><a href="Ubuntu.Web.SharedWebContext.md">SharedWebContext</a>.</p>
<!-- @@@WebView -->
<h2>Property Documentation</h2>
<!-- $$$alertDialog -->
<table class="qmlname"><tr valign="top" id="alertDialog-prop"><td class="tblQmlPropNode"><p><span class="name">alertDialog</span> : <span class="type">component</span></p></td></tr></table><p>The QML component that will be instantiated to display a JavaScript alert dialog.</p>
<p><b>See also </b><a href="#beforeUnloadDialog-prop">beforeUnloadDialog</a>.</p>
<!-- @@@alertDialog -->
<br/>
<!-- $$$beforeUnloadDialog -->
<table class="qmlname"><tr valign="top" id="beforeUnloadDialog-prop"><td class="tblQmlPropNode"><p><span class="name">beforeUnloadDialog</span> : <span class="type">component</span></p></td></tr></table><p>The QML component that will be instantiated to display a JavaScript confirmation when the user initiates a navigation away from the current page, if the page has defined an <code>onBeforeUnload</code> handler.</p>
<p><b>See also </b><a href="#promptDialog-prop">promptDialog</a>.</p>
<!-- @@@beforeUnloadDialog -->
<br/>
<!-- $$$canGoBack -->
<table class="qmlname"><tr valign="top" id="canGoBack-prop"><td class="tblQmlPropNode"><p><span class="name">canGoBack</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the navigation history has a previous entry to navigate back.</p>
<p><b>See also </b><a href="#canGoForward-prop">canGoForward</a>.</p>
<!-- @@@canGoBack -->
<br/>
<!-- $$$canGoForward -->
<table class="qmlname"><tr valign="top" id="canGoForward-prop"><td class="tblQmlPropNode"><p><span class="name">canGoForward</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the navigation history has a next entry to navigate forward.</p>
<p><b>See also </b><a href="#canGoBack-prop">canGoBack</a>.</p>
<!-- @@@canGoForward -->
<br/>
<!-- $$$confirmDialog -->
<table class="qmlname"><tr valign="top" id="confirmDialog-prop"><td class="tblQmlPropNode"><p><span class="name">confirmDialog</span> : <span class="type">component</span></p></td></tr></table><p>The QML component that will be instantiated to display a JavaScript confirmation dialog.</p>
<p><b>See also </b><a href="#beforeUnloadDialog-prop">beforeUnloadDialog</a>.</p>
<!-- @@@confirmDialog -->
<br/>
<!-- $$$context -->
<table class="qmlname"><tr valign="top" id="context-prop"><td class="tblQmlPropNode"><p><span class="name">context</span> : <span class="type"><a href="#">WebView</a>. By default a <a href="Ubuntu.Web.SharedWebContext.md">shared context</a> is used which should fit most use cases, do not override unless you really need a finer control over the context.</p>
<!-- @@@context -->
<br/>
<!-- $$$contextModel -->
<table class="qmlname"><tr valign="top" id="contextModel-prop"><td class="tblQmlPropNode"><p><span class="name">contextModel</span> : <span class="type">QtObject</span></p></td></tr></table><p>An object that holds the contextual data associated with the current context menu, as well as methods to interact with this data. User-defined <a href="#contextualActions-prop">contextual actions</a> can use this data to process it when triggered.</p>
<p>It has the following properties:</p>
<ul>
<li>linkUrl (url): the full URI of the hyperlink, if any</li>
<li>srcUrl (url): the full URI of the image/media, if any</li>
<li>mediaType (int): the type of media (one of Oxide.<a href="#">WebView</a>.MediaTypeVideo)</li>
<li>isEditable (bool): whether the current element is editable</li>
<li>editFlags (int): for editable elements, an OR-combined list of flags that define the current editing capabilities (Oxide.<a href="#">WebView</a>.SelectAllCapability)</li>
</ul>
<p>It has the following methods:</p>
<ul>
<li>saveLink(): initiates a download request for the resource pointed to by the hyperlink, if any</li>
<li>saveMedia(): initiates a download request for the media (image, canvas, audio, video), if any</li>
</ul>
<p>When there is no active context menu, <code>contextModel</code> is null.</p>
<p><b>See also </b><a href="#contextualActions-prop">contextualActions</a>.</p>
<!-- @@@contextModel -->
<br/>
<!-- $$$contextualActions -->
<table class="qmlname"><tr valign="top" id="contextualActions-prop"><td class="tblQmlPropNode"><p><span class="name">contextualActions</span> : <span class="type">ActionList</span></p></td></tr></table><p>A list of actions that the user will be presented with when invoking a context menu (by way of a right click on desktop, or a long press on a touch-enabled device, on an image or a hyperlink). By default the list is empty, and no menu is shown. User-defined actions can access the <a href="#contextModel-prop">context model</a>.</p>
<p>Example of user-defined actions:</p>
<pre class="cpp">import Ubuntu<span class="operator">.</span>Components <span class="number">1.3</span>
import Ubuntu<span class="operator">.</span>Web <span class="number">0.2</span>
WebView {
contextualActions: ActionList {
Action {
text: i18n<span class="operator">.</span>tr(<span class="string">&quot;Open link in browser&quot;</span>)
enabled: contextModel <span class="operator">&amp;</span><span class="operator">&amp;</span> contextModel<span class="operator">.</span>linkUrl<span class="operator">.</span>toString()
onTriggered: <span class="type">Qt</span><span class="operator">.</span>openUrlExternally(contextModel<span class="operator">.</span>linkUrl)
}
}
}</pre>
<p><b>See also </b><a href="#contextModel-prop">contextModel</a>.</p>
<!-- @@@contextualActions -->
<br/>
<!-- $$$filePicker -->
<table class="qmlname"><tr valign="top" id="filePicker-prop"><td class="tblQmlPropNode"><p><span class="name">filePicker</span> : <span class="type">component</span></p></td></tr></table><p>The QML component that will be instantiated to let the user select files when the user clicks an <code>&lt;input type=&quot;file&quot;&gt;</code> element on the current page.</p>
<!-- @@@filePicker -->
<br/>
<!-- $$$fullscreen -->
<table class="qmlname"><tr valign="top" id="fullscreen-prop"><td class="tblQmlPropNode"><p><span class="name">fullscreen</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the current page requested fullscreen display.</p>
<!-- @@@fullscreen -->
<br/>
<!-- $$$icon -->
<table class="qmlname"><tr valign="top" id="icon-prop"><td class="tblQmlPropNode"><p><span class="name">icon</span> : <span class="type"><a href="#url-prop">url</a></span></p></td></tr></table><p>The URL of the favicon of the current page.</p>
<!-- @@@icon -->
<br/>
<!-- $$$incognito -->
<table class="qmlname"><tr valign="top" id="incognito-prop"><td class="tblQmlPropNode"><p><span class="name">incognito</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the <a href="#">WebView</a> is being used in private browsing mode, where no data is persisted across sessions.</p>
<!-- @@@incognito -->
<br/>
<!-- $$$loadProgress -->
<table class="qmlname"><tr valign="top" id="loadProgress-prop"><td class="tblQmlPropNode"><p><span class="name">loadProgress</span> : <span class="type">int</span></p></td></tr></table><p>The load progress of the current page (as a integer value between 0 and 100).</p>
<p><b>See also </b><a href="#loading-prop">loading</a>.</p>
<!-- @@@loadProgress -->
<br/>
<!-- $$$loading -->
<table class="qmlname"><tr valign="top" id="loading-prop"><td class="tblQmlPropNode"><p><span class="name">loading</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the current page is loading.</p>
<p><b>See also </b><a href="#reload-method">reload</a>.</p>
<!-- @@@loading -->
<br/>
<!-- $$$navigationHistory -->
<table class="qmlname"><tr valign="top" id="navigationHistory-prop"><td class="tblQmlPropNode"><p><span class="name">navigationHistory</span> : <span class="type">list</span></p></td></tr></table><p>The navigation history (back/forward entries) stored as a list model with a <code>currentIndex</code> property. Each entry exposes the URL and title of the corresponding page, as well as a timestamp of when it was visited.</p>
<!-- @@@navigationHistory -->
<br/>
<!-- $$$promptDialog -->
<table class="qmlname"><tr valign="top" id="promptDialog-prop"><td class="tblQmlPropNode"><p><span class="name">promptDialog</span> : <span class="type">component</span></p></td></tr></table><p>The QML component that will be instantiated to display a JavaScript prompt dialog.</p>
<p><b>See also </b><a href="#beforeUnloadDialog-prop">beforeUnloadDialog</a>.</p>
<!-- @@@promptDialog -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top" id="title-prop"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type">string</span></p></td></tr></table><p>The title of the current page.</p>
<!-- @@@title -->
<br/>
<!-- $$$url -->
<table class="qmlname"><tr valign="top" id="url-prop"><td class="tblQmlPropNode"><p><span class="name">url</span> : <span class="type"><a href="#url-prop">url</a></span></p></td></tr></table><p>The URL of the current page.</p>
<!-- @@@url -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$goBack -->
<table class="qmlname"><tr valign="top" id="goBack-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">goBack</span>()</p></td></tr></table><p>Go back one entry in the navigation history.</p>
<p><b>See also </b><a href="#goForward-method">goForward</a>.</p>
<!-- @@@goBack -->
<br/>
<!-- $$$goForward -->
<table class="qmlname"><tr valign="top" id="goForward-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">goForward</span>()</p></td></tr></table><p>Go forward one entry in the navigation history.</p>
<p><b>See also </b><a href="#goBack-method">goBack</a>.</p>
<!-- @@@goForward -->
<br/>
<!-- $$$loadHtml -->
<table class="qmlname"><tr valign="top" id="loadHtml-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">loadHtml</span>(<span class="type">string</span><i> html</i>, <span class="type"><a href="#url-prop">url</a></span><i> baseUrl</i>)</p></td></tr></table><p>Load HTML content from memory instead of loading it from a URL. The <code>baseUrl</code> argument is used to resolve relative URLs in the provided content.</p>
<!-- @@@loadHtml -->
<br/>
<!-- $$$reload -->
<table class="qmlname"><tr valign="top" id="reload-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">reload</span>()</p></td></tr></table><p>Reload the current page.</p>
<p><b>See also </b><a href="#stop-method">stop</a>.</p>
<!-- @@@reload -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top" id="stop-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">stop</span>()</p></td></tr></table><p>Stop loading the current page. Does nothing if there is no page currently loading.</p>
<p><b>See also </b><a href="#loading-prop">loading</a>.</p>
<!-- @@@stop -->
<br/>
