---
Title: AlarmApi.Alarm
---

# AlarmApi.Alarm

<p>An Alarm.</p>
<strong class="name"><code>Alarm</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code> var date = new Date();
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
</ul>
<strong class="name"><code>cancel</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Cancels a given Alarm.</p>
<strong class="name"><code>daysOfWeek</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the alarm day of the week.</p>
<p>The property holds the days of the week the alarm is scheduled.
This property can have only one day set for one time alarms and multiple days for repeating alarms.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(AlarmType)&gt;</strong>
</li>
</ul>
<strong class="name"><code>destroy</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Destroys the remote object. This proxy object is not valid anymore.</p>
<strong class="name"><code>enabled</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the alarm's enabled state.</p>
<p>The property specifies whether the alarm is enabled or not.
Disable dalarms are not scheduled. The default value is true</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(Boolean)&gt;</strong>
</li>
</ul>
<strong class="name"><code>error</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>The property holds the error code occurred during the last performed operation.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(Error)&gt;</strong>
</li>
</ul>
<strong class="name"><code>error</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the alarm date.</p>
<p>The date property holds the date the alarm will be triggered.
The default value is the current date and time the alarm object was created.
Further reset calls will bring the value back to the time the reset was called.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(Date)&gt;</strong>
</li>
</ul>
<strong class="name"><code>message</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the alarm message.</p>
<p>The property holds the message string which will be displayed when the alarm is triggered.
The default value is the localized &quot;Alarm&quot; text</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
</li>
</ul>
<strong class="name"><code>reset</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Resets a given Alarm.</p>
<strong class="name"><code>save</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Saves the alarm as a system wide alarm with the parameters previously set.</p>
<strong class="name"><code>setDate</code></strong>( <code>date, callback </code> ) 
<br>
</span><br>
<p>Sets the alarm date.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>date</code> <strong>&lt;Date&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>(optional)  To be called after the date is set.</p>
</li>
</ul>
<strong class="name"><code>setDaysOfWeek</code></strong>( <code>daysOfWeek, callback </code> ) 
<br>
</span><br>
<p>Sets the alarm day of the week.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>daysOfWeek</code> <strong>&lt;AlarmDayOfWeek&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>(optional)  To be called after the day of the week is set.</p>
</li>
</ul>
<strong class="name"><code>setEnabled</code></strong>( <code>enabled, callback </code> ) 
<br>
</span><br>
<p>Sets the alarm's enabled state.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>enabled</code> <strong>&lt;Boolean&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>(optional)  To be called after the enabled state is set.</p>
</li>
</ul>
<strong class="name"><code>setMessage</code></strong>( <code>message, callback </code> ) 
<br>
</span><br>
<p>Sets the alarm message.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>message</code> <strong>&lt;String&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>(optional)  To be called after the message is set.</p>
</li>
</ul>
<strong class="name"><code>setSound</code></strong>( <code>sound, callback </code> ) 
<br>
</span><br>
<p>Sets the alarm sound.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>sound</code> <strong>&lt;String&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>(optional)  To be called after the sound is set.</p>
</li>
</ul>
<strong class="name"><code>setType</code></strong>( <code>type, callback </code> ) 
<br>
</span><br>
<p>Sets the alarm type.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>type</code> <strong>&lt;AlarmType&gt;</strong>
</li>
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>(optional)  To be called after the type is set.</p>
</li>
</ul>
<strong class="name"><code>sound</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the alarm sound.</p>
<p>The property holds the alarm's sound to be played when the alarm is triggered.
An empty url will mean to play the default sound.</p>
<p>The default value is an empty url.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
</li>
</ul>
<strong class="name"><code>status</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the alarm status.</p>
<p>The property holds the status of the last performed operation</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
</li>
</ul>
<strong class="name"><code>type</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Retrieves the alarm type.</p>
<p>The property holds the type of the alarm.
The default value is AlarmType.OneTime</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(AlarmType)&gt;</strong>
</li>
</ul>
