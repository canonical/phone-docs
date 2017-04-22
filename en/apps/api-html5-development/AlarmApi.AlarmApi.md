---
Title: AlarmApi.AlarmApi
---

# AlarmApi.AlarmApi

<p>The AlarmApi object</p>
<strong class="name"><code>AlarmApi</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code>  var date = new Date();
&lt;set a valid date in the future&gt;
var api = external.getUnityObject('1.0');
api.AlarmApi.api.createAndSaveAlarmFor(
date,
api.AlarmApi.AlarmType.OneTime,
api.AlarmApi.AlarmDayOfWeek.AutoDetect,
&quot;alarm triggered&quot;,
function(errorid) {
console.log(api.AlarmApi.api.errorToMessage(errorid));
});</code></pre>
<ul>
<li>Methods</li>
<li>Properties</li>
</ul>
<div>
<strong class="name"><code>api.createAndSaveAlarmFor</code></strong>( <code>date, type, daysOfWeek, message, callback </code> ) 
<br>
</span><br>
<p>Creates and saves a new alarm.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>date</code> <strong>&lt;Date&gt;</strong>
<p>date at which the alarm is to be triggered.</p>
</li>
<li>
<code>type</code> <strong>&lt;AlarmType&gt;</strong>
<p>type of the alarm.</p>
</li>
<li>
<code>daysOfWeek</code> <strong>&lt;AlarmDayOfWeek&gt;</strong>
<p>days of the week the alarm is scheduled.</p>
</li>
<li>
<code>message</code> <strong>&lt;String&gt;</strong>
<p>Message to be displayed when the alarm is triggered.</p>
</li>
<li>
<code>callback</code> <strong>&lt;Function(AlarmError)&gt;</strong>
<p>(optional)  Function to be called when the alarm has been saved.</p>
</li>
</ul>
<strong class="name"><code>api.errorToMessage</code></strong>( <code>error </code> ) 
<br>
</span><br>
<p>Returns a message adapted to the given error id.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>error</code> <strong>&lt;AlarmError&gt;</strong>
<p>error id.</p>
</li>
</ul>
<strong class="name"><code>createAlarm</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Creates a Alarm object.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(Alarm)&gt;</strong>
<p>Function called with the created Alarm.</p>
</li>
</ul>
<code>AlarmDayOfWeek</code> &lt;<strong>Integer</strong>&gt; <em>(static)</em><br>
<p>Flags for the week days an Alarm should be triggered.</p>
<p>Values:</p>
<pre class="code prettyprint"><code>Monday: The alarm will kick on Mondays
Tuesday: The alarm will kick on Tuesdays
Wednesday: The alarm will kick on Wednesday
Thursday: The alarm will kick on Thursday
Friday: The alarm will kick on Friday
Saturday: The alarm will kick on Saturday
Sunday: The alarm will kick on Sunday
AutoDetect: The alarm day will be detected
from the alarm date.</code></pre>
<h5>Example</h5>
<pre class="code prettyprint"><code>var api = external.getUnityObject('1.0');
var dayofweek = api.AlarmApi.AlarmDayOfWeek;
// use dayofweek.Monday or/and dayofweek.Tuesday, etc.</code></pre>
<code>AlarmError</code> &lt;<strong>Integer</strong>&gt; <em>(static)</em><br>
<p>Error ids returned during AlarmApi calls.</p>
<p>Values:</p>
<pre class="code prettyprint"><code>NoError: Successful operation completion
InvalidDate: The date specified for the alarm was invalid
EarlyDate: The date specified for the alarm is an earlier
date than the current one
NbDaysOfWeek: The daysOfWeek parameter of the alarm was not specified
OneTimeOnMoreDays: The one-time alarm was set to be kicked in several days
InvalidEvent: The alarm event is invalid
AdaptationError: The error occurred in alarm adaptation layer.
Adaptations may define additional behind this value</code></pre>
<h5>Example</h5>
<pre class="code prettyprint"><code>var date = new Date();
&lt;set a valid date in the future&gt;
var api = external.getUnityObject('1.0');
api.AlarmApi.api.createAndSaveAlarmFor(
date,
api.AlarmApi.AlarmType.OneTime,
api.AlarmApi.AlarmDayOfWeek.AutoDetect,
&quot;alarm triggered&quot;,
function(errorid) {
console.log(api.AlarmApi.api.errorToMessage(errorid));
});</code></pre>
<code>AlarmType</code> &lt;<strong>Object</strong>&gt; <em>(static)</em><br>
<p>Enumeration of the available types of Alarm.</p>
<p>Values:</p>
<pre class="code prettyprint"><code>OneTime: The alarm occurs only once
Repeating: The alarm is a repeating one,
either daily, weekly on a given day
or on selected days</code></pre>
<h5>Example</h5>
<pre class="code prettyprint"><code>var api = external.getUnityObject('1.0');
var alarmtype = api.AlarmApi.AlarmType;
// use alarmtype.OneTime or alarmtype.Repeating</code></pre>
