---
Title: Ubuntu.Components.i18n
---

# Ubuntu.Components.i18n

<span class="subtitle"></span>
<!-- $$$i18n-brief -->
<p>i18n is a context property that provides internationalization support. More...</p>
<!-- @@@i18n -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#domain-prop">domain</a></b></b> : string</li>
<li class="fn"><b><b><a href="#language-prop">language</a></b></b> : string</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">string <b><b><a href="#ctr-method">ctr</a></b></b>(string <i>context</i>, string <i>text</i>)</li>
<li class="fn">string <b><b><a href="#dctr-method">dctr</a></b></b>(string <i>domain</i>, string <i>context</i>, string <i>text</i>)</li>
<li class="fn">string <b><b><a href="#dtr-method-2">dtr</a></b></b>(string <i>domain</i>, string <i>singular</i>, string <i>plural</i>, int <i>n</i>)</li>
<li class="fn">string <b><b><a href="#dtr-method">dtr</a></b></b>(string <i>domain</i>, string <i>text</i>)</li>
<li class="fn">string <b><b><a href="#relativeDateTime-method">relativeDateTime</a></b></b>(datetime <i>dateTime</i>)</li>
<li class="fn">string <b><b><a href="#tag-method-2">tag</a></b></b>(string <i>context</i>, string <i>text</i>)</li>
<li class="fn">string <b><b><a href="#tag-method">tag</a></b></b>(string <i>text</i>)</li>
<li class="fn">string <b><b><a href="#tr-method-2">tr</a></b></b>(string <i>singular</i>, string <i>plural</i>, int <i>n</i>)</li>
<li class="fn">string <b><b><a href="#tr-method">tr</a></b></b>(string <i>text</i>)</li>
</ul>
<!-- $$$i18n-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>i18n cannot be instantiated, and is already available as a context property. It is based on <a href="https://www.gnu.org/software/gettext/">gettext</a>, and thus the standard gettext tools can be used for translating a project. Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 0.1
<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Press me&quot;</span>)
}
}</pre>
<!-- @@@i18n -->
<h2>Property Documentation</h2>
<!-- $$$domain -->
<table class="qmlname"><tr valign="top" id="domain-prop"><td class="tblQmlPropNode"><p><span class="name">domain</span> : <span class="type">string</span></p></td></tr></table><p>The gettext domain to be used for the translation. The default domain is the applicationName specified in the application's <a href="Ubuntu.Components.MainView.md">MainView</a>, or the empty string &quot;&quot; if no applicationName was given or no <a href="Ubuntu.Components.MainView.md">MainView</a> is used. Use <a href="#dtr-method">dtr()</a> functions instead of <a href="#tr-method">tr()</a> to use a different domain for a single translation that ignores i18n.domain.</p>
<!-- @@@domain -->
<br/>
<!-- $$$language -->
<table class="qmlname"><tr valign="top" id="language-prop"><td class="tblQmlPropNode"><p><span class="name">language</span> : <span class="type">string</span></p></td></tr></table><p>The language that is used for the translation. The default value is the user's locale dending on $LC_ALL, $LC_MESSAGES and $LANG at the time of running the application. See the gettext manual for details.</p>
<!-- @@@language -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$ctr -->
<table class="qmlname"><tr valign="top" id="ctr-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">ctr</span>(<span class="type">string</span><i> context</i>, <span class="type">string</span><i> text</i>)</p></td></tr></table><p>Translate <i>text</i> using gettext and return the translation. <i>context</i> is only visible to the translator and helps disambiguating for very short texts</p>
<!-- @@@ctr -->
<br/>
<!-- $$$dctr -->
<table class="qmlname"><tr valign="top" id="dctr-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">dctr</span>(<span class="type">string</span><i> domain</i>, <span class="type">string</span><i> context</i>, <span class="type">string</span><i> text</i>)</p></td></tr></table><p>Translate <i>text</i> using gettext. Uses the specified domain <i>domain</i> instead of i18n.domain. <i>context</i> is only visible to the translator and helps disambiguating for very short texts</p>
<!-- @@@dctr -->
<br/>
<!-- $$$dtr -->
<table class="qmlname"><tr valign="top" id="dtr-method-2"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">dtr</span>(<span class="type">string</span><i> domain</i>, <span class="type">string</span><i> singular</i>, <span class="type">string</span><i> plural</i>, <span class="type">int</span><i> n</i>)</p></td></tr></table><p>Translate the given text using gettext. Should be called like this: tr(domain, &quot;%n file&quot;, &quot;%n files&quot;, count) Uses <i>domain</i> for the domain instead of i18n.domain, and <i>singular</i> or <i>plural</i> as input for the translation depending on the number of items <i>n</i>.</p>
<!-- @@@dtr -->
<br/>
<!-- $$$dtr -->
<table class="qmlname"><tr valign="top" id="dtr-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">dtr</span>(<span class="type">string</span><i> domain</i>, <span class="type">string</span><i> text</i>)</p></td></tr></table><p>Translate <i>text</i> using gettext. Uses the specified domain <i>domain</i> instead of i18n.domain.</p>
<!-- @@@dtr -->
<br/>
<!-- $$$relativeDateTime -->
<table class="qmlname"><tr valign="top" id="relativeDateTime-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">relativeDateTime</span>(<span class="type">datetime</span><i> dateTime</i>)</p></td></tr></table><p>Translate a datetime based on proximity to current time.</p>
<!-- @@@relativeDateTime -->
<br/>
<!-- $$$tag -->
<table class="qmlname"><tr valign="top" id="tag-method-2"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">tag</span>(<span class="type">string</span><i> context</i>, <span class="type">string</span><i> text</i>)</p></td></tr></table><p>Mark <i>text</i> for translation at a later point. Typically this allows an API to take the original string and pass it to dctr (or g_dpgettext2). <i>context</i> is only visible to the translator and helps disambiguating for very short texts</p>
<!-- @@@tag -->
<br/>
<!-- $$$tag -->
<table class="qmlname"><tr valign="top" id="tag-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">tag</span>(<span class="type">string</span><i> text</i>)</p></td></tr></table><p>Mark <i>text</i> for translation at a later point. Typically this allows an API to take the original string and pass it to dtr (or dgettext).</p>
<pre class="qml">import QtQuick 2.4
import UserMetrics 0.1
<span class="type">Metric</span> {
<span class="name">name</span>: <span class="string">&quot;distance&quot;</span>
<span class="name">format</span>: <span class="name">i18n</span>.<span class="name">tag</span>(<span class="string">&quot;Distance covered today: %1 km&quot;</span>)
<span class="name">emptyFormat</span>: <span class="name">i18n</span>.<span class="name">tag</span>(<span class="string">&quot;No running today&quot;</span>)
<span class="name">domain</span>: <span class="string">&quot;runner.forest&quot;</span>
}</pre>
<p>The strings tagged for localzation above are passed to the implementation of UserMetrics verbatim, as well as the domain of the app. Display and translation of the strings will happen in the lockscreen, where the same strings will be passed to i18n.tr.</p>
<!-- @@@tag -->
<br/>
<!-- $$$tr -->
<table class="qmlname"><tr valign="top" id="tr-method-2"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">tr</span>(<span class="type">string</span><i> singular</i>, <span class="type">string</span><i> plural</i>, <span class="type">int</span><i> n</i>)</p></td></tr></table><p>Translate the given input string <i>singular</i> or <i>plural</i> (depending on the number of items <i>n</i>) using gettext. Should be called like this: tr(&quot;%n file&quot;, &quot;%n files&quot;, count)</p>
<!-- @@@tr -->
<br/>
<!-- $$$tr -->
<table class="qmlname"><tr valign="top" id="tr-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">tr</span>(<span class="type">string</span><i> text</i>)</p></td></tr></table><p>Translate <i>text</i> using gettext and return the translation.</p>
<!-- @@@tr -->
<br/>
