---
Title: QtQuick.IntValidator
---

# QtQuick.IntValidator

<span class="subtitle"></span>
<!-- $$$IntValidator-brief -->
<p>Defines a validator for integer values More...</p>
<!-- @@@IntValidator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#bottom-prop">bottom</a></b></b> : int</li>
<li class="fn"><b><b><a href="#locale-prop">locale</a></b></b> : string</li>
<li class="fn"><b><b><a href="#top-prop">top</a></b></b> : int</li>
</ul>
<!-- $$$IntValidator-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">IntValidator</a> type provides a validator for integer values.</p>
<p>If no <a href="#locale-prop">locale</a> is set <a href="index.html">IntValidator</a> uses the default locale to interpret the number and will accept locale specific digits, group separators, and positive and negative signs. In addition, <a href="index.html">IntValidator</a> is always guaranteed to accept a number formatted according to the &quot;C&quot; locale.</p>
<!-- @@@IntValidator -->
<h2>Property Documentation</h2>
<!-- $$$bottom -->
<table class="qmlname"><tr valign="top" id="bottom-prop"><td class="tblQmlPropNode"><p><span class="name">bottom</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the validator's lowest acceptable value. By default, this property's value is derived from the lowest signed integer available (typically -2147483647).</p>
<!-- @@@bottom -->
<br/>
<!-- $$$locale -->
<table class="qmlname"><tr valign="top" id="locale-prop"><td class="tblQmlPropNode"><p><span class="name">locale</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the locale used to interpret the number.</p>
<p><b>See also </b>Qt.locale().</p>
<!-- @@@locale -->
<br/>
<!-- $$$top -->
<table class="qmlname"><tr valign="top" id="top-prop"><td class="tblQmlPropNode"><p><span class="name">top</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the validator's highest acceptable value. By default, this property's value is derived from the highest signed integer available (typically 2147483647).</p>
<!-- @@@top -->
<br/>
