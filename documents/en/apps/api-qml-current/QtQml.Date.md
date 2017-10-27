---
Title: QtQml.Date
---

# QtQml.Date

<span class="subtitle"></span>
<!-- $$$Date-brief -->
<p>Provides date functions More...</p>
<!-- @@@Date -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml 2.2</td></tr></table><ul>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">string <b><b><a href="#fromLocaleDateString-method">fromLocaleDateString</a></b></b>(locale, dateString, format)</li>
<li class="fn">string <b><b><a href="#fromLocaleString-method">fromLocaleString</a></b></b>(locale, dateTimeString, format)</li>
<li class="fn">string <b><b><a href="#fromLocaleTimeString-method">fromLocaleTimeString</a></b></b>(locale, timeString, format)</li>
<li class="fn">string <b><b><a href="#timeZoneUpdated-method">timeZoneUpdated</a></b></b>()</li>
<li class="fn">string <b><b><a href="#toLocaleDateString-method">toLocaleDateString</a></b></b>(locale, format)</li>
<li class="fn">string <b><b><a href="#toLocaleString-method">toLocaleString</a></b></b>(locale, format)</li>
<li class="fn">string <b><b><a href="#toLocaleTimeString-method">toLocaleTimeString</a></b></b>(locale, format)</li>
</ul>
<!-- $$$Date-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The QML Date object extends the <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date">JS Date object</a> with locale aware functions.</p>
<p>Functions that accept a locale format may be either an enumeration value:</p>
<table class="generic">
<tr valign="top"><td >Locale.LongFormat</td><td >The long version of the string; for example, returning &quot;January&quot; as a month name.</td></tr>
<tr valign="top"><td >Locale.ShortFormat</td><td >The short version of the string; for example, returning &quot;Jan&quot; as a month name.</td></tr>
<tr valign="top"><td >Locale.NarrowFormat</td><td >A special version for use when space is limited; for example, returning &quot;J&quot; as a month name. Note that the narrow format might contain the same text for different months and days or it can even be an empty string if the locale doesn't support narrow names, so you should avoid using it for date formatting. Also, for the system locale this format is the same as ShortFormat.</td></tr>
</table>
<p>or a string specifying the format These expressions may be used for format dates:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Expression</th><th >Output</th></tr></thead>
<tr valign="top"><td >d</td><td >the day as number without a leading zero (1 to 31)</td></tr>
<tr valign="top"><td >dd</td><td >the day as number with a leading zero (01 to 31)</td></tr>
<tr valign="top"><td >ddd</td><td >the abbreviated localized day name (e.g&#x2e; 'Mon' to 'Sun').</td></tr>
<tr valign="top"><td >dddd</td><td >the long localized day name (e.g&#x2e; 'Monday' to 'Sunday').</td></tr>
<tr valign="top"><td >M</td><td >the month as number without a leading zero (1 to 12)</td></tr>
<tr valign="top"><td >MM</td><td >the month as number with a leading zero (01 to 12)</td></tr>
<tr valign="top"><td >MMM</td><td >the abbreviated localized month name (e.g&#x2e; 'Jan' to 'Dec').</td></tr>
<tr valign="top"><td >MMMM</td><td >the long localized month name (e.g&#x2e; 'January' to 'December').</td></tr>
<tr valign="top"><td >yy</td><td >the year as two digit number (00 to 99)</td></tr>
<tr valign="top"><td >yyyy</td><td >the year as four digit number. If the year is negative, a minus sign is prepended in addition.</td></tr>
</table>
<p>All other input characters will be ignored. Any sequence of characters that are enclosed in singlequotes will be treated as text and not be used as an expression. Two consecutive singlequotes (&quot;''&quot;) are replaced by a singlequote in the output.</p>
<p>Example format strings (assuming that the Date is the 20 July 1969):</p>
<table class="generic">
<thead><tr class="qt-style"><th >Format</th><th >Result</th></tr></thead>
<tr valign="top"><td >dd.MM.yyyy</td><td >20.07.1969</td></tr>
<tr valign="top"><td >ddd MMMM d yy</td><td >Sun July 20 69</td></tr>
<tr valign="top"><td >'The day is' dddd</td><td >The day is Sunday</td></tr>
</table>
<p>These expressions may be used for formatting time:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Expression</th><th >Output</th></tr></thead>
<tr valign="top"><td >h</td><td >the hour without a leading zero (0 to 23 or 1 to 12 if AM/PM display)</td></tr>
<tr valign="top"><td >hh</td><td >the hour with a leading zero (00 to 23 or 01 to 12 if AM/PM display)</td></tr>
<tr valign="top"><td >H</td><td >the hour without a leading zero (0 to 23, even with AM/PM display)</td></tr>
<tr valign="top"><td >HH</td><td >the hour with a leading zero (00 to 23, even with AM/PM display)</td></tr>
<tr valign="top"><td >m</td><td >the minute without a leading zero (0 to 59)</td></tr>
<tr valign="top"><td >mm</td><td >the minute with a leading zero (00 to 59)</td></tr>
<tr valign="top"><td >s</td><td >the second without a leading zero (0 to 59)</td></tr>
<tr valign="top"><td >ss</td><td >the second with a leading zero (00 to 59)</td></tr>
<tr valign="top"><td >z</td><td >the milliseconds without leading zeroes (0 to 999)</td></tr>
<tr valign="top"><td >zzz</td><td >the milliseconds with leading zeroes (000 to 999)</td></tr>
<tr valign="top"><td >AP or A</td><td >use AM/PM display. <i>AP</i> will be replaced by either &quot;AM&quot; or &quot;PM&quot;.</td></tr>
<tr valign="top"><td >ap or a</td><td >use am/pm display. <i>ap</i> will be replaced by either &quot;am&quot; or &quot;pm&quot;.</td></tr>
<tr valign="top"><td >t</td><td >the timezone (for example &quot;CEST&quot;)</td></tr>
</table>
<p>All other input characters will be ignored. Any sequence of characters that are enclosed in singlequotes will be treated as text and not be used as an expression. Two consecutive singlequotes (&quot;''&quot;) are replaced by a singlequote in the output.</p>
<p>Example format strings (assuming that the QTime is 14:13:09.042)</p>
<table class="generic">
<thead><tr class="qt-style"><th >Format</th><th >Result</th></tr></thead>
<tr valign="top"><td >hh:mm:ss.zzz</td><td >14:13:09.042</td></tr>
<tr valign="top"><td >h:m:s ap</td><td >2:13:9 pm</td></tr>
<tr valign="top"><td >H:m:s a</td><td >14:13:9 pm</td></tr>
</table>
<p>If the date is invalid, an empty string will be returned.</p>
<p>Note: Using the locale-aware functions to perform date or time formatting can result in incorrectly formatted times, due to an inconsistency in specification between Qt and JS. ECMA-262 specifies that historical dates should be intrepreted by projecting the current rules for daylight-saving onto past years, while Qt uses historical data (where available) to determine whether daylight-saving was in effect for a given date. Therefore, constructing a Date value in JS and converting it to a string using the locale-aware functions can yield a result incorrect by one hour, if DST is currently in effect, while it was not for the time specified, or vice versa.</p>
<p><b>See also </b><a href="QtQml.Locale.md">Locale</a>.</p>
<!-- @@@Date -->
<h2>Method Documentation</h2>
<!-- $$$fromLocaleDateString -->
<table class="qmlname"><tr valign="top" id="fromLocaleDateString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">fromLocaleDateString</span>(<span class="type">locale</span>, <span class="type">dateString</span>, <span class="type">format</span>)</p></td></tr></table><p>Converts the date string <i>dateString</i> to a <a href="index.html">Date</a> object using <i>locale</i> and <i>format</i>.</p>
<p>If <i>format</i> is not specified, <a href="QtQml.Locale.md">Locale.LongFormat</a> will be used.</p>
<p>If <i>locale</i> is not specified, the default locale will be used.</p>
<p>The following example shows the current date first being formatted as a date string using the default locale and format, then parsed back again in the same manner:</p>
<pre class="cpp">import <span class="type">QtQml</span> <span class="number">2.0</span>
<span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> {
property var locale: <span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale()
property date currentDate: <span class="keyword">new</span> Date()
property string dateString
Component<span class="operator">.</span>onCompleted: {
dateString <span class="operator">=</span> currentDate<span class="operator">.</span>toLocaleDateString();
print(Date<span class="operator">.</span>fromLocaleDateString(dateString));
}
}</pre>
<!-- @@@fromLocaleDateString -->
<br/>
<!-- $$$fromLocaleString -->
<table class="qmlname"><tr valign="top" id="fromLocaleString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">fromLocaleString</span>(<span class="type">locale</span>, <span class="type">dateTimeString</span>, <span class="type">format</span>)</p></td></tr></table><p>Converts the datetime string <i>dateTimeString</i> to a <a href="index.html">Date</a> object using <i>locale</i> and <i>format</i>.</p>
<p>If <i>format</i> is not specified, <a href="QtQml.Locale.md">Locale.LongFormat</a> will be used.</p>
<p>If <i>locale</i> is not specified, the default locale will be used.</p>
<p>The following example shows a datetime being parsed from a datetime string in a certain format using the default locale:</p>
<pre class="cpp">import <span class="type">QtQml</span> <span class="number">2.0</span>
<span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> {
property var locale: <span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale()
property string dateTimeString: <span class="string">&quot;Tue 2013-09-17 10:56:06&quot;</span>
Component<span class="operator">.</span>onCompleted: {
print(Date<span class="operator">.</span>fromLocaleString(locale<span class="operator">,</span> dateTimeString<span class="operator">,</span> <span class="string">&quot;ddd yyyy-MM-dd hh:mm:ss&quot;</span>));
}
}</pre>
<!-- @@@fromLocaleString -->
<br/>
<!-- $$$fromLocaleTimeString -->
<table class="qmlname"><tr valign="top" id="fromLocaleTimeString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">fromLocaleTimeString</span>(<span class="type">locale</span>, <span class="type">timeString</span>, <span class="type">format</span>)</p></td></tr></table><p>Converts the time string <i>timeString</i> to a <a href="index.html">Date</a> object using <i>locale</i> and <i>format</i>.</p>
<p>If <i>format</i> is not specified, <a href="QtQml.Locale.md">Locale.LongFormat</a> will be used.</p>
<p>If <i>locale</i> is not specified, the default locale will be used.</p>
<p>The following example shows the current time first being formatted as a time string using the default locale and a short format, then parsed back again in the same manner:</p>
<pre class="cpp">import <span class="type">QtQml</span> <span class="number">2.2</span>
<span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> {
property var locale: <span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale()
property date currentTime: <span class="keyword">new</span> Date()
property string timeString
Component<span class="operator">.</span>onCompleted: {
timeString <span class="operator">=</span> currentTime<span class="operator">.</span>toLocaleTimeString(locale<span class="operator">,</span> Locale<span class="operator">.</span>ShortFormat);
print(Date<span class="operator">.</span>fromLocaleTimeString(locale<span class="operator">,</span> timeString<span class="operator">,</span> Locale<span class="operator">.</span>ShortFormat));
}
}</pre>
<!-- @@@fromLocaleTimeString -->
<br/>
<!-- $$$timeZoneUpdated -->
<table class="qmlname"><tr valign="top" id="timeZoneUpdated-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">timeZoneUpdated</span>()</p></td></tr></table><p>Informs the JS engine that the system's timezone has been changed, which is necessary for the correct manipulation of datetime data.</p>
<p>JS stores Date objects in UTC time; all access to and from Date components in local time involves the application of the current offset from UTC. If the current offset changes due to the timezone being updated, the JS engine needs to be informed so that it can recalculate the offset.</p>
<p>This function should be called after the system's timezone has been updated.</p>
<p>For example, an application that changes the timezone would call timeZoneUpdated() after setting the new time zone:</p>
<pre class="cpp">property string selectedTimeZone
onSelectedTimeZoneChanged: {
MyFunctions<span class="operator">.</span>setSystemTimeZone(selectedTimeZone)
Date<span class="operator">.</span>timeZoneUpdated()
}</pre>
<!-- @@@timeZoneUpdated -->
<br/>
<!-- $$$toLocaleDateString -->
<table class="qmlname"><tr valign="top" id="toLocaleDateString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">toLocaleDateString</span>(<span class="type">locale</span>, <span class="type">format</span>)</p></td></tr></table><p>Converts the Date to a string containing the date suitable for the specified <i>locale</i> in the specified <i>format</i>.</p>
<p>If <i>format</i> is not specified, <a href="QtQml.Locale.md">Locale.LongFormat</a> will be used.</p>
<p>If <i>locale</i> is not specified, the default locale will be used.</p>
<p>The following example shows the current date formatted for the German locale:</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
Text {
text: <span class="string">&quot;The date is: &quot;</span> <span class="operator">+</span> <span class="keyword">new</span> Date()<span class="operator">.</span>toLocaleDateString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))
}</pre>
<!-- @@@toLocaleDateString -->
<br/>
<!-- $$$toLocaleString -->
<table class="qmlname"><tr valign="top" id="toLocaleString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">toLocaleString</span>(<span class="type">locale</span>, <span class="type">format</span>)</p></td></tr></table><p>Converts the Date to a string containing the date and time suitable for the specified <i>locale</i> in the specified <i>format</i>.</p>
<p>If <i>format</i> is not specified, <a href="QtQml.Locale.md">Locale.LongFormat</a> will be used.</p>
<p>If <i>locale</i> is not specified, the default locale will be used.</p>
<p>The following example shows the current date and time formatted for the German locale:</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
Text {
text: <span class="string">&quot;The date is: &quot;</span> <span class="operator">+</span> <span class="keyword">new</span> Date()<span class="operator">.</span>toLocaleString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))
}</pre>
<!-- @@@toLocaleString -->
<br/>
<!-- $$$toLocaleTimeString -->
<table class="qmlname"><tr valign="top" id="toLocaleTimeString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">toLocaleTimeString</span>(<span class="type">locale</span>, <span class="type">format</span>)</p></td></tr></table><p>Converts the Date to a string containing the time suitable for the specified <i>locale</i> in the specified <i>format</i>.</p>
<p>If <i>format</i> is not specified, <a href="QtQml.Locale.md">Locale.LongFormat</a> will be used.</p>
<p>If <i>locale</i> is not specified, the default locale will be used.</p>
<p>The following example shows the current time formatted for the German locale:</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
Text {
text: <span class="string">&quot;The date is: &quot;</span> <span class="operator">+</span> <span class="keyword">new</span> Date()<span class="operator">.</span>toLocaleTimeString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))
}</pre>
<!-- @@@toLocaleTimeString -->
<br/>
