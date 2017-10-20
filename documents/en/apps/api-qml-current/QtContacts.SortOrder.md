---
Title: QtContacts.SortOrder
---

# QtContacts.SortOrder

<span class="subtitle"></span>
<!-- $$$SortOrder-brief -->
<p>The SortOrder element defines how a list of contacts should be ordered according to some criteria. More...</p>
<!-- @@@SortOrder -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#blankPolicy-prop">blankPolicy</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#caseSensitivity-prop">caseSensitivity</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#detail-prop">detail</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#direction-prop">direction</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#field-prop">field</a></b></b> : int</li>
</ul>
<!-- $$$SortOrder-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element is part of the <b>QtContacts</b> module.</p>
<p><b>See also </b>QContactSortOrder and ContactModel.</p>
<!-- @@@SortOrder -->
<h2>Property Documentation</h2>
<!-- $$$blankPolicy -->
<table class="qmlname"><tr valign="top" id="blankPolicy-prop"><td class="tblQmlPropNode"><p><span class="name">blankPolicy</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property enumerates the ways in which the sort order interprets blanks when sorting contacts.</p>
<ul>
<li><a href="index.html">SortOrder</a>.BlanksFirst - Considers blank values to evaluate to less than all other values in comparisons.</li>
<li><a href="index.html">SortOrder</a>.BlanksLast - Considers blank values to evaluate to greater than all other values in comparisons.</li>
</ul>
<!-- @@@blankPolicy -->
<br/>
<!-- $$$caseSensitivity -->
<table class="qmlname"><tr valign="top" id="caseSensitivity-prop"><td class="tblQmlPropNode"><p><span class="name">caseSensitivity</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the case sensitivity of the sort order, the value can be one of:</p>
<ul>
<li>Qt.CaseInsensitive</li>
<li>Qt.CaseSensitive - (default)</li>
</ul>
<!-- @@@caseSensitivity -->
<br/>
<!-- $$$detail -->
<table class="qmlname"><tr valign="top" id="detail-prop"><td class="tblQmlPropNode"><p><span class="name">detail</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the detail type of the details which will be inspected to perform sorting.</p>
<p><b>See also </b><a href="QtContacts.ContactDetail.md#type-prop">ContactDetail::type</a>.</p>
<!-- @@@detail -->
<br/>
<!-- $$$direction -->
<table class="qmlname"><tr valign="top" id="direction-prop"><td class="tblQmlPropNode"><p><span class="name">direction</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the direction of the sort order, the value can be one of:</p>
<ul>
<li>Qt.AscendingOrder - (default)</li>
<li>Qt.DescendingOrder</li>
</ul>
<!-- @@@direction -->
<br/>
<!-- $$$field -->
<table class="qmlname"><tr valign="top" id="field-prop"><td class="tblQmlPropNode"><p><span class="name">field</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the detail field type of the details which will be inspected to perform sorting. For each detail elements, there are predefined field types.</p>
<!-- @@@field -->
<br/>
