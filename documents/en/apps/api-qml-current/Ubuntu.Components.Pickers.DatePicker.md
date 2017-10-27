---
Title: Ubuntu.Components.Pickers.DatePicker
---

# Ubuntu.Components.Pickers.DatePicker

<span class="subtitle"></span>
<!-- $$$DatePicker-brief -->
<p>DatePicker component provides date and time value picking functionality. More...</p>
<!-- @@@DatePicker -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Pickers 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#date-prop">date</a></b></b> : date</li>
<li class="fn"><b><b><a href="#day-prop">day</a></b></b> : int</li>
<li class="fn"><b><b><a href="#hours-prop">hours</a></b></b> : int</li>
<li class="fn"><b><b><a href="#locale-prop">locale</a></b></b> : var</li>
<li class="fn"><b><b><a href="#maximum-prop">maximum</a></b></b> : date</li>
<li class="fn"><b><b><a href="#minimum-prop">minimum</a></b></b> : date</li>
<li class="fn"><b><b><a href="#minutes-prop">minutes</a></b></b> : int</li>
<li class="fn"><b><b><a href="#mode-prop">mode</a></b></b> : string</li>
<li class="fn"><b><b><a href="#month-prop">month</a></b></b> : int</li>
<li class="fn"><b><b><a href="#moving-prop">moving</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#seconds-prop">seconds</a></b></b> : int</li>
<li class="fn"><b><b><a href="#week-prop">week</a></b></b> : int</li>
<li class="fn"><b><b><a href="#year-prop">year</a></b></b> : int</li>
</ul>
<!-- $$$DatePicker-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">DatePicker</a> combines up to three Picker elements providing different date or time value selection possibilities. It can be used to select full date (year, month, day), full time (hours, minutes, seconds) as well as to select a combination of year and month, month and day, hours and minutes, minutes and seconds or individual time units (i.e&#x2e; year, month or day as well as hours, minutes or seconds). The selected date as well as the initial one is provided by the <a href="#date-prop">date</a> property. For convenience the component provides also the <i>year</i>, <i>month</i>, <i>day</i>, <i>week</i>, <i>hours</i>, <i>minutes</i> and <i>seconds</i> values as separate properties, however these properties are not writable, and their initialization can happen only through the <a href="#date-prop">date</a> property.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Pickers 1.0
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;Selected date: W&quot;</span> <span class="operator">+</span> <span class="name">datePicker</span>.<span class="name">week</span> <span class="operator">+</span> <span class="string">&quot; - &quot;</span> <span class="operator">+</span>
<span class="name">Qt</span>.<span class="name">formatDate</span>(<span class="name">datePicker</span>.<span class="name">date</span>, <span class="string">&quot;dddd, dd-MMMM-yyyy&quot;</span>)
}
<span class="type"><a href="index.html">DatePicker</a></span> {
<span class="name">id</span>: <span class="name">datePicker</span>
}
}</pre>
<p>The <a href="#mode-prop">mode</a> property specifies what time units should be shown by the picker. The property holds a string, combining <b>Years</b>, <b>Months</b>, <b>Days</b>, <b>Hours</b>, <b>Minutes</b> and <b>Seconds</b> strings sepatared with '|' character. A <a href="index.html">DatePicker</a> which shows only year and month date units would look as follows:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Pickers 1.0
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;Selected month: &quot;</span> <span class="operator">+</span> <span class="name">Qt</span>.<span class="name">formatDate</span>(<span class="name">datePicker</span>.<span class="name">date</span>, <span class="string">&quot;MMMM-yyyy&quot;</span>)
}
<span class="type"><a href="index.html">DatePicker</a></span> {
<span class="name">id</span>: <span class="name">datePicker</span>
<span class="name">mode</span>: <span class="string">&quot;Years|Months&quot;</span>
}
}</pre>
<p>The <b>mode</b> of the <a href="index.html">DatePicker</a> is set to date picking. In case time picking is needed, the model should be set to contain the time specific mode flags. The following example demonstrates how to use <a href="index.html">DatePicker</a> for time picking.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Pickers 1.0
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;Selected time: &quot;</span> <span class="operator">+</span> <span class="name">Qt</span>.<span class="name">formatTime</span>(<span class="name">datePicker</span>.<span class="name">date</span>, <span class="string">&quot;hh:mm:ss&quot;</span>)
}
<span class="type"><a href="index.html">DatePicker</a></span> {
<span class="name">id</span>: <span class="name">datePicker</span>
<span class="name">mode</span>: <span class="string">&quot;Hours|Minutes|Seconds&quot;</span>
}
}</pre>
<p>Note that the order in which the mode flags are specified does not influence the order the pickers are arranged. That is driven by the date format of the <a href="#locale-prop">locale</a> used in the picker. Also not all combinations of mode flags are supported. See <a href="#mode-prop">mode</a> for the supported combinations.</p>
<p>The default interval the date values are chosen is a window starting at the current date ending 50 years later. This window is defined by the <i>minimum</i> and <i>maximum</i> properties. The interval can be altered considering the following rules:</p>
<ul>
<li><i>minimum</i> must be less or equal than the <a href="#date-prop">date</a>; if the <i>date</i> value is less than the given <i>minimum</i>, the date will be set to the minimum's value</li>
<li><i>maximum</i> value must be greater than the <i>minimum</i>, or invalid. When the maximum is smaller than the <a href="#date-prop">date</a>, the <a href="#date-prop">date</a> property will be updated to get the maximum value. When set to invalid date (see Date.getInvalidDate()), the upper limit of the date interval becomes infinite, meaning the year picker will extend infinitely. This leads to increased memory use and should be avoided if possible. Invalid date will make hours picker presenting 24 hours.</li>
</ul>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Pickers 1.0
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;Selected date: &quot;</span> <span class="operator">+</span> <span class="name">Qt</span>.<span class="name">formatDate</span>(<span class="name">datePicker</span>.<span class="name">date</span>, <span class="string">&quot;dddd, dd-MMMM-yyyy&quot;</span>)
}
<span class="type"><a href="index.html">DatePicker</a></span> {
<span class="name">id</span>: <span class="name">datePicker</span>
<span class="name">minimum</span>: {
var <span class="name">d</span> = new <span class="name">Date</span>();
<span class="name">d</span>.<span class="name">setFullYear</span>(<span class="name">d</span>.<span class="name">getFullYear</span>() <span class="operator">-</span> <span class="number">1</span>);
<span class="keyword">return</span> <span class="name">d</span>;
}
<span class="name">maximum</span>: <span class="name">Date</span>.<span class="name">prototype</span>.<span class="name">getInvalidDate</span>.<span class="name">call</span>()
}
}</pre>
<p><b>Note</b>: do not use the <a href="#date-prop">date</a> property when initializing minimum and maximum as it will cause binding loops.</p>
<h3 >Layout</h3>
<p>As mentioned earlier, <a href="index.html">DatePicker</a> combines up to three Picker tumblers depending on the mode requested. These tumblers are laid out in a row in the order the default date format of the <a href="#locale-prop">locale</a> is.</p>
<h4 >Date picker layout rules</h4>
<p>The date picker consist of three pickers: year, month, and date. The exact contents of the month and date pickers depends on the available width:</p>
<ul>
<li>full name for month, number and full day for date (“August” “28 Wednesday”)</li>
<li>otherwise full name for month, number and abbreviated day for date (“August” “28 Wed”);</li>
<li>otherwise full name for month, number for date (“August” “28”);</li>
<li>otherwise abbreviated name for month, number for date (“Aug” “28”).</li>
<li>otherwise number for month, number for date (“08” “28”).</li>
</ul>
<p><i>If the currently selected date becomes impossible due to year change (from a leap to a non-leap year when the date is set to February 29) or month change (e.g&#x2e; from a month that has 31 days to one that has fewer when the date is set to 31), the date reduces automatically to the last day of the month (i.e February 28 or 30th day of the month).</i></p>
<h4 >Time picker layout rules</h4>
<p>Time units are shown in fixed width picker tumblers, numbers padded with leading zeroes. There is no other special rule on the formatting of the time unit numbers.</p>
<h4 >How minimum/maximum affects the tumblers</h4>
<p>If minimum and maximum are within the same year, the year picker will be insensitive. If minimum and maximum are within the same month, the month picker will also be insensitive.</p>
<!-- @@@DatePicker -->
<h2>Property Documentation</h2>
<!-- $$$date -->
<table class="qmlname"><tr valign="top" id="date-prop"><td class="tblQmlPropNode"><p><span class="name">date</span> : <span class="type"><a href="#date-prop">date</a></span></p></td></tr></table><p>The date chosen by the <a href="index.html">DatePicker</a>. The default value is the date at the component creation time. The property automatically updates year, month and day properties.</p>
<!-- @@@date -->
<br/>
<!-- $$$day -->
<table class="qmlname"><tr valign="top" id="day-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">day</span> : <span class="type">int</span></p></td></tr></table><p>For convenience, the <b>day</b> value of the <a href="#date-prop">date</a> property.</p>
<!-- @@@day -->
<br/>
<!-- $$$hours -->
<table class="qmlname"><tr valign="top" id="hours-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">hours</span> : <span class="type">int</span></p></td></tr></table><p>For convenience, the <b>hours</b> value of the <a href="#date-prop">date</a> property.</p>
<!-- @@@hours -->
<br/>
<!-- $$$locale -->
<table class="qmlname"><tr valign="top" id="locale-prop"><td class="tblQmlPropNode"><p><span class="name">locale</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>The property defines the locale used in the picker. The default value is the system locale.</p>
<pre class="qml"><span class="type"><a href="index.html">DatePicker</a></span> {
<span class="name">locale</span>: <span class="name">Qt</span>.<span class="name">locale</span>(<span class="string">&quot;hu_HU&quot;</span>)
}</pre>
<!-- @@@locale -->
<br/>
<!-- $$$maximum -->
<table class="qmlname"><tr valign="top" id="maximum-prop"><td class="tblQmlPropNode"><p><span class="name">maximum</span> : <span class="type"><a href="#date-prop">date</a></span></p></td></tr></table><p>The maximum date (inclusive) to be shown in the picker. Both year and month values will be considered from the properties.</p>
<p>See <a href="#minimum-prop">minimum</a> for more details.</p>
<!-- @@@maximum -->
<br/>
<!-- $$$minimum -->
<table class="qmlname"><tr valign="top" id="minimum-prop"><td class="tblQmlPropNode"><p><span class="name">minimum</span> : <span class="type"><a href="#date-prop">date</a></span></p></td></tr></table><p>The minimum date (inclusive) to be shown in the picker. Both year and month values will be considered from the properties.</p>
<p>The year and month picker values are filled based on these values. The year picker will be infinite (extending infinitely) if the maximum is an invalid date. If the distance between maximum and minimum is less than a year, the year picker will be shown disabled.</p>
<p>The month picker will be circular if the distance between maximum and minimum is at least one year, or if the maximum date is invalid.</p>
<p>The default values are the current date for the minimum, and 50 year distance value for maximum.</p>
<!-- @@@minimum -->
<br/>
<!-- $$$minutes -->
<table class="qmlname"><tr valign="top" id="minutes-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">minutes</span> : <span class="type">int</span></p></td></tr></table><p>For convenience, the <b>minutes</b> value of the <a href="#date-prop">date</a> property.</p>
<!-- @@@minutes -->
<br/>
<!-- $$$mode -->
<table class="qmlname"><tr valign="top" id="mode-prop"><td class="tblQmlPropNode"><p><span class="name">mode</span> : <span class="type">string</span></p></td></tr></table><p>Specifies what kind of date value selectors should be shown by the picker. This is a string of 'flags' separated by '|' separator, where flags are:</p>
<table class="generic">
<thead><tr class="qt-style"><th  colspan="2" rowspan=" 1">Date picker modes</th></tr>
<tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Years</td><td >Specifies to show the year picker</td></tr>
<tr valign="top"><td >Months</td><td >Specifies to show the month picker</td></tr>
<tr valign="top"><td >Days</td><td >Specifies to show the day picker</td></tr>
<thead><tr class="qt-style"><th  colspan="2" rowspan=" 1">Time picker modes</th></tr>
<tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Hours</td><td >Specifies to show the hours picker</td></tr>
<tr valign="top"><td >Minutes</td><td >Specifies to show the minutes picker</td></tr>
<tr valign="top"><td >Seconds</td><td >Specifies to show the seconds picker</td></tr>
</table>
<p>With some exceptions, any combination of these flags is allowed within the same group. Date and time picker modes cannot be combined.</p>
<p>The supported combinations are: <i>Years|Months|Days</i>, <i>Years|Months</i>, <i>Months|Days</i>, <i>Hours|Minutes|Seconds</i>, <i>Hours|Minutes</i> and <i>Minutes|Seconds</i>, as well as each mode flag individually.</p>
<p>The default value is &quot;<i>Years|Months|Days</i>&quot;.</p>
<!-- @@@mode -->
<br/>
<!-- $$$month -->
<table class="qmlname"><tr valign="top" id="month-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">month</span> : <span class="type">int</span></p></td></tr></table><p>For convenience, the <b>month</b> value of the <a href="#date-prop">date</a> property.</p>
<!-- @@@month -->
<br/>
<!-- $$$moving -->
<table class="qmlname"><tr valign="top" id="moving-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">moving</span> : <span class="type">bool</span></p></td></tr></table><p>The property holds whether the component's pickers are moving.</p>
<p><b>See also </b><a href="Ubuntu.Components.Pickers.Picker.md#moving-prop">Picker::moving</a>.</p>
<!-- @@@moving -->
<br/>
<!-- $$$seconds -->
<table class="qmlname"><tr valign="top" id="seconds-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">seconds</span> : <span class="type">int</span></p></td></tr></table><p>For convenience, the <b>seconds</b> value of the <a href="#date-prop">date</a> property.</p>
<!-- @@@seconds -->
<br/>
<!-- $$$week -->
<table class="qmlname"><tr valign="top" id="week-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">week</span> : <span class="type">int</span></p></td></tr></table><p>For convenience, the <b>week</b> value of the <a href="#date-prop">date</a> property.</p>
<!-- @@@week -->
<br/>
<!-- $$$year -->
<table class="qmlname"><tr valign="top" id="year-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">year</span> : <span class="type">int</span></p></td></tr></table><p>For convenience, the <b>year</b> value of the <a href="#date-prop">date</a> property.</p>
<!-- @@@year -->
<br/>
