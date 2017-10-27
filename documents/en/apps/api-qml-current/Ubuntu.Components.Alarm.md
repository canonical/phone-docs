---
Title: Ubuntu.Components.Alarm
---

# Ubuntu.Components.Alarm

<span class="subtitle"></span>
<!-- $$$Alarm-brief -->
<p>Alarm component is a representation of an alarm event. More...</p>
<!-- @@@Alarm -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#date-prop">date</a></b></b> : Date</li>
<li class="fn"><b><b><a href="#daysOfWeek-prop">daysOfWeek</a></b></b> : DaysOfWeek</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#error-prop">error</a></b></b> : Error</li>
<li class="fn"><b><b><a href="#message-prop">message</a></b></b> : string</li>
<li class="fn"><b><b><a href="#sound-prop">sound</a></b></b> : url</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : Status</li>
<li class="fn"><b><b><a href="#type-prop">type</a></b></b> : AlarmType</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#cancel-method">cancel</a></b></b>()</li>
<li class="fn"><b><b><a href="#reset-method">reset</a></b></b>()</li>
<li class="fn"><b><b><a href="#save-method">save</a></b></b>()</li>
</ul>
<!-- $$$Alarm-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Alarm element encapsulates alarm event data. Supports one time and repeating alarms, where repeating can be either daily or weekly on one or several selected days.</p>
<p>The alarm data is validated upon <a href="#save-method">save</a> operation, which can be used to save a new alarm or update existing alarm's properties.</p>
<p>During data validation the alarm properties may suffer changes. These changes will be reported back to each changed property. See what changes can occurr at <a href="#save-method">save</a> function documentation.</p>
<p>Example usage:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="type"><a href="index.html">Alarm</a></span>{
<span class="name">id</span>: <span class="name">alarm</span>
}
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">id</span>: <span class="name">date</span>
<span class="name">text</span>: <span class="string">&quot;Date:&quot;</span>
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
}
<span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
<span class="name">text</span>: <span class="name">alarm</span>.<span class="name">date</span>.<span class="name">toString</span>()
<span class="name">onAccepted</span>: <span class="name">alarm</span>.<span class="name">date</span> <span class="operator">=</span> new <span class="name">Date</span>(<span class="name">text</span>)
}
}
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">id</span>: <span class="name">msg</span>
<span class="name">text</span>: <span class="string">&quot;Message:&quot;</span>
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
}
<span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
<span class="name">text</span>: <span class="name">alarm</span>.<span class="name">message</span>
<span class="name">onAccepted</span>: <span class="name">alarm</span>.<span class="name">message</span> <span class="operator">=</span> <span class="name">text</span>
}
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Save&quot;</span>
<span class="name">onClicked</span>: {
<span class="name">alarm</span>.<span class="name">save</span>();
<span class="keyword">if</span> (<span class="name">alarm</span>.<span class="name">error</span> <span class="operator">!=</span> <span class="name">Alarm</span>.<span class="name">NoError</span>)
<span class="name">print</span>(<span class="string">&quot;Error saving alarm, code: &quot;</span> <span class="operator">+</span> <span class="name">alarm</span>.<span class="name">error</span>);
}
}
}
}</pre>
<p>An alarm can be cancelled using <a href="#cancel-method">cancel</a> function but only if the event has previously been stored in the alarm collection.</p>
<p>The <a href="#reset-method">reset</a> function clears the properties of the alarm bringing them to the default values. In this way the same alarm component can be used to save several alarms at the same time.</p>
<p><b>Note: </b>Do not call reset function on an alarm event object when that was returned by the <a href="Ubuntu.Components.AlarmModel.md#get-method">AlarmModel::get</a> function, as that will reset the alarm cache data!</p><!-- @@@Alarm -->
<h2>Property Documentation</h2>
<!-- $$$date -->
<table class="qmlname"><tr valign="top" id="date-prop"><td class="tblQmlPropNode"><p><span class="name">date</span> : <span class="type"><a href="QtQml.Date.md">Date</a></span></p></td></tr></table><p>The property holds the date the alarm will be triggered. The default value is the current date and time the alarm object was created. Further <a href="#reset-method">reset</a> calls will bring the value back to the time the <a href="#reset-method">reset</a> was called.</p>
<!-- @@@date -->
<br/>
<!-- $$$daysOfWeek -->
<table class="qmlname"><tr valign="top" id="daysOfWeek-prop"><td class="tblQmlPropNode"><p><span class="name">daysOfWeek</span> : <span class="type">DaysOfWeek</span></p></td></tr></table><p>The property holds the days of the week the alarm is scheduled. This property can have only one day set for one time alarms and multiple days for repeating alarms. The following flags can be set:</p>
<table class="generic">
<thead><tr class="qt-style"><th  colspan="3" rowspan=" 1">Alarm.DayOfWeek enum:</th></tr>
<tr class="qt-style"><th >Type</th><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Alarm.Monday</td><td >0x01</td><td >The alarm will kick on Mondays.</td></tr>
<tr valign="top"><td >Alarm.Tuesday</td><td >0x02</td><td >The alarm will kick on Tuesdays.</td></tr>
<tr valign="top"><td >Alarm.Wednesday</td><td >0x04</td><td >The alarm will kick on Wednesdays.</td></tr>
<tr valign="top"><td >Alarm.Thursday</td><td >0x08</td><td >The alarm will kick on Thursdays.</td></tr>
<tr valign="top"><td >Alarm.Friday</td><td >0x10</td><td >The alarm will kick on Fridays.</td></tr>
<tr valign="top"><td >Alarm.Saturday</td><td >0x20</td><td >The alarm will kick on Saturdays.</td></tr>
<tr valign="top"><td >Alarm.Sunday</td><td >0x40</td><td >The alarm will kick on Sundays.</td></tr>
<tr valign="top"><td >Alarm.AutoDetect</td><td >0x80</td><td >The alarm day will be detected from the alarm date at the time the alarm is saved.</td></tr>
</table>
<p>The default value is Alarm.AutoDetect.</p>
<!-- @@@daysOfWeek -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>The property specifies whether the alarm is enabled or not. Disable dalarms are not scheduled. The default value is true;</p>
<!-- @@@enabled -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">Error</span></p></td></tr></table><p>The property holds the error code occurred during the last performed operation.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Error code</th><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >NoError</td><td >0</td><td >Successful operation completion.</td></tr>
<tr valign="top"><td >InvalidDate</td><td >1</td><td >The date specified for the alarm was invalid.</td></tr>
<tr valign="top"><td >EarlyDate</td><td >2</td><td >The date specified for the alarm is an earlier date than the current one.</td></tr>
<tr valign="top"><td >NoDaysOfWeek</td><td >3</td><td >The <a href="#daysOfWeek-prop">daysOfWeek</a> parameter of the alarm was not specified.</td></tr>
<tr valign="top"><td >OneTimeOnMoreDays</td><td >4</td><td >The one-time alarm was set to be kicked in several days.</td></tr>
<tr valign="top"><td >InvalidEvent</td><td >5</td><td >The alarm event is invalid.</td></tr>
<tr valign="top"><td >AdaptationError</td><td >100</td><td >The error occurred in alarm adaptation layer. Adaptations may define additional behind this value.</td></tr>
</table>
<!-- @@@error -->
<br/>
<!-- $$$message -->
<table class="qmlname"><tr valign="top" id="message-prop"><td class="tblQmlPropNode"><p><span class="name">message</span> : <span class="type">string</span></p></td></tr></table><p>The property holds the message string which will be displayed when the alarm is triggered. The default value is the localized &quot;Alarm&quot; text.</p>
<!-- @@@message -->
<br/>
<!-- $$$sound -->
<table class="qmlname"><tr valign="top" id="sound-prop"><td class="tblQmlPropNode"><p><span class="name">sound</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>The property holds the alarm's sound to be played when the alarm is triggered. An empty url will mean to play the default sound.</p>
<p>The defaul tvalue is an empty url.</p>
<!-- @@@sound -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">Status</span></p></td></tr></table><p>The property holds the status of the last performed operation. It can take one of the following values:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Status code</th><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Ready</td><td >1</td><td >Specifies either that the Alarm object is ready to perform any operation or that the previous operation has been successfully completed.</td></tr>
<tr valign="top"><td >InProgress</td><td >2</td><td >Specifies that there is an operation pending on Alarm object.</td></tr>
<tr valign="top"><td >Fail</td><td >3</td><td >Specifies that the last alarm operation has failed. The failure code is set in <a href="#error-prop">error</a> property.</td></tr>
</table>
<p>The notification signal has a parameter specifying the <i>operation</i> the status refers to. The operation can take the following values:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Operation code</th><th >Description</th></tr></thead>
<tr valign="top"><td >NoOperation</td><td >There is no operation pending. This may be set when an error occured in the alarm adapters and the operation cannot be determined.</td></tr>
<tr valign="top"><td >Saving</td><td >The status reported refers to an operation requested through <a href="#save-method">save()</a>.</td></tr>
<tr valign="top"><td >Canceling</td><td >The status reported refers to an operation requested through <a href="#cancel-method">cancel()</a>.</td></tr>
<tr valign="top"><td >Reseting</td><td >The status reported refers to an operation requested through <a href="#reset-method">reset()</a>.</td></tr>
</table>
<p>For example an implementation which resets the alarm data whenever the save or cancel operations succeed would look as follows:</p>
<pre class="qml"><span class="type"><a href="index.html">Alarm</a></span> {
<span class="name">onStatusChanged</span>: {
<span class="keyword">if</span> (<span class="name">status</span> <span class="operator">!==</span> <span class="name">Alarm</span>.<span class="name">Ready</span>)
<span class="keyword">return</span>;
<span class="keyword">if</span> ((<span class="name">operation</span> <span class="operator">&gt;</span> <span class="name">Alarm</span>.<span class="name">NoOperation</span>) <span class="operator">&amp;&amp;</span> (<span class="name">operation</span> <span class="operator">&lt;</span> <span class="name">Alarm</span>.<span class="name">Reseting</span>)) {
<span class="name">reset</span>();
}
}
}</pre>
<!-- @@@status -->
<br/>
<!-- $$$type -->
<table class="qmlname"><tr valign="top" id="type-prop"><td class="tblQmlPropNode"><p><span class="name">type</span> : <span class="type">AlarmType</span></p></td></tr></table><p>The property holds the type of the alarm, which can have one of the following values:</p>
<table class="generic">
<thead><tr class="qt-style"><th  colspan="2" rowspan=" 1">Alarm.AlarmType enum:</th></tr>
<tr class="qt-style"><th >Type</th><th >Description</th></tr></thead>
<tr valign="top"><td >Alarm.OneTime</td><td >The alarm occurs only once.</td></tr>
<tr valign="top"><td >Alarm.Repeating</td><td >The alarm is a repeating one, either daily, weekly on a given day or on selected days.</td></tr>
</table>
<p>The default value is Alarm.OneTime.</p>
<!-- @@@type -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cancel -->
<table class="qmlname"><tr valign="top" id="cancel-method"><td class="tblQmlFuncNode"><p><span class="name">cancel</span>()</p></td></tr></table><p>The function removes the alarm from the collection. The function will fail for alarms which are not yet registered to the collection.</p>
<p>The operation is asynchronous, and its status is reported through the <a href="#status-prop">status</a> property. Further operations should wait till the previous operation is completed. The operation result is stored in the <a href="#error-prop">error</a> property.</p>
<!-- @@@cancel -->
<br/>
<!-- $$$reset -->
<table class="qmlname"><tr valign="top" id="reset-method"><td class="tblQmlFuncNode"><p><span class="name">reset</span>()</p></td></tr></table><p>The function resets the alarm properties to its defaults. After this call the object can be used to create a new alarm event.</p>
<p><b>Note</b>: do not call this function on alarm objects retrieved from <a href="Ubuntu.Components.AlarmModel.md">AlarmModel</a>, as calling it will result in the model being out of sync from the alarm database.</p>
<!-- @@@reset -->
<br/>
<!-- $$$save -->
<table class="qmlname"><tr valign="top" id="save-method"><td class="tblQmlFuncNode"><p><span class="name">save</span>()</p></td></tr></table><p>Updates or adds an alarm to the alarm collection. The operation aligns properties according to the following rules:</p>
<ul>
<li>- the <a href="#daysOfWeek-prop">daysOfWeek</a> will be set to the alarm day if the <a href="#daysOfWeek-prop">daysOfWeek</a> was set to Alarm.AutoDetect.</li>
<li>- if the <a href="#daysOfWeek-prop">daysOfWeek</a> is set to a day other than the one specified in the <a href="#date-prop">date</a> field, the <a href="#date-prop">date</a> will be moved ahead to match the day from the <a href="#daysOfWeek-prop">daysOfWeek</a>.</li>
</ul>
<p>The function will fail if</p>
<ul>
<li>- the <a href="#date-prop">date</a> property is invalid</li>
<li>- for one time alarm, the <a href="#date-prop">date</a> property falue is earlier than the current time</li>
<li>- the <a href="#daysOfWeek-prop">daysOfWeek</a> property is set to multiple days for one time alarm</li>
</ul>
<p>The operation is asynchronous, and its status is reported through the <a href="#status-prop">status</a> property. Further operations should wait till the previous operation is completed. The operation result is stored in the <a href="#error-prop">error</a> property.</p>
<!-- @@@save -->
<br/>
