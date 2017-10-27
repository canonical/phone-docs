---
Title: Ubuntu.Components.Captions
---

# Ubuntu.Components.Captions

<span class="subtitle"></span>
<!-- $$$Captions-brief -->
<p>Container providing captionStyles for a twin-label column that can be used in RowLayout or GridLayout. More...</p>
<!-- @@@Captions -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#captionStyle-prop">captionStyle</a></b></b> : int</li>
<li class="fn"><b><b><a href="#subtitle-prop">subtitle</a></b></b> : Label</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : Label</li>
</ul>
<!-- $$$Captions-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The labels are placed in a column and can be accessed through <a href="#title-prop">title</a> and <a href="#subtitle-prop">subtitle</a> properties. The default spacing between the labels is 0.5 grid units.</p>
<p>The container only shows the labels which has its text property set to a valid string. The labels not having any text set are not occupying the space. When embedded in a positioner or in a RowLayout, the container is aligned vertically centered. It is recommended to be used in context with RowLayout or GridLayout, however can be used with any component.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
<span class="type">RowLayout</span> {
<span class="type"><a href="index.html">Captions</a></span> {
<span class="name">title</span>.text: <span class="string">&quot;Caption&quot;</span>
<span class="name">subtitle</span>.text: <span class="string">&quot;Subtitle text&quot;</span>
<span class="comment">// attached properties of an Item type property</span>
<span class="comment">// can be changed only with assignment</span>
<span class="name">Component</span>.onCompleted: <span class="name">subtitle</span>.<span class="name">Layout</span>.<span class="name">alignment</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">AlignRight</span>
}
<span class="type"><a href="index.html">Captions</a></span> {
<span class="name">captionStyle</span>: <span class="name">Ubuntu</span>.<span class="name">SummaryCaptionStyle</span>
<span class="name">title</span>.text: <span class="string">&quot;Text&quot;</span>
<span class="name">subtitle</span>.text: <span class="string">&quot;Text&quot;</span>
}
}
}</pre>
<p>Additional items can also be added to the layout after the two labels.</p>
<pre class="qml"><span class="type"><a href="index.html">Captions</a></span> {
<span class="name">title</span>.text: <span class="string">&quot;Caption&quot;</span>
<span class="name">subtitle</span>.text: <span class="string">&quot;Subtitle&quot;</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;third line&quot;</span>
<span class="name">textSize</span>: <span class="name">Label</span>.<span class="name">XxSmall</span>
}
}</pre>
<!-- @@@Captions -->
<h2>Property Documentation</h2>
<!-- $$$captionStyle -->
<table class="qmlname"><tr valign="top" id="captionStyle-prop"><td class="tblQmlPropNode"><p><span class="name">captionStyle</span> : <span class="type">int</span></p></td></tr></table><p>The property configures the arrangement and font sizes of the Labels in the component. It can take the following values:</p>
<ul>
<li><b>Ubuntu.TitleCaptionStyle</b> - (default) typical configuration for a left aligned twin-label setup, where the text covers the remaining area on a list layout.</li>
<li><b>Ubuntu.SummaryCaptionStyle</b> - configuration for a right-aligned twin label setup, with 6 grid units width.</li>
</ul>
<!-- @@@captionStyle -->
<br/>
<!-- $$$subtitle -->
<table class="qmlname"><tr valign="top" id="subtitle-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">subtitle</span> : <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span></p></td></tr></table><p>Label occupying the bottom area of the container.</p>
<!-- @@@subtitle -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top" id="title-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">title</span> : <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span></p></td></tr></table><p>Label occupying the top area of the container.</p>
<!-- @@@title -->
<br/>
