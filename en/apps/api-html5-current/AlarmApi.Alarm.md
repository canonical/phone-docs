---
Title: AlarmApi.Alarm
---
        
Alarm
=====

An Alarm.

<span id="Alarm"></span>
**`Alarm`**( `  ` )
##### Example

``` code
 var date = new Date();
     <set a valid date in the future>
    
     var api = external.getUnityObject('1.0');
     api.AlarmApi.api.createAndSaveAlarmFor(
         date,
         api.AlarmApi.AlarmType.OneTime,
         api.AlarmApi.AlarmDayOfWeek.AutoDetect,
         "alarm triggered",
         function(errorid) {
             console.log(api.AlarmApi.api.errorToMessage(errorid));
         });
```

-   Methods

<span id="cancel"></span>
**`cancel`**( `  ` )
Cancels a given Alarm.

<span id="daysOfWeek"></span>
**`daysOfWeek`**( `callback ` )
Retrieves the alarm day of the week.

The property holds the days of the week the alarm is scheduled. This property can have only one day set for one time alarms and multiple days for repeating alarms.

**Parameters:**
-   `callback` **&lt;Function(AlarmType)&gt;**

<span id="destroy"></span>
**`destroy`**( `  ` )
Destroys the remote object. This proxy object is not valid anymore.

<span id="enabled"></span>
**`enabled`**( `callback ` )
Retrieves the alarm's enabled state.

The property specifies whether the alarm is enabled or not. Disable dalarms are not scheduled. The default value is true

**Parameters:**
-   `callback` **&lt;Function(Boolean)&gt;**

<span id="error"></span>
**`error`**( `callback ` )
The property holds the error code occurred during the last performed operation.

**Parameters:**
-   `callback` **&lt;Function(Error)&gt;**

<span id="error"></span>
**`error`**( `callback ` )
Retrieves the alarm date.

The date property holds the date the alarm will be triggered. The default value is the current date and time the alarm object was created. Further reset calls will bring the value back to the time the reset was called.

**Parameters:**
-   `callback` **&lt;Function(Date)&gt;**

<span id="message"></span>
**`message`**( `callback ` )
Retrieves the alarm message.

The property holds the message string which will be displayed when the alarm is triggered. The default value is the localized "Alarm" text

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

<span id="reset"></span>
**`reset`**( `  ` )
Resets a given Alarm.

<span id="save"></span>
**`save`**( `  ` )
Saves the alarm as a system wide alarm with the parameters previously set.

<span id="setDate"></span>
**`setDate`**( `date, callback ` )
Sets the alarm date.

**Parameters:**
-   `date` **&lt;Date&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the date is set.

<span id="setDaysOfWeek"></span>
**`setDaysOfWeek`**( `daysOfWeek, callback ` )
Sets the alarm day of the week.

**Parameters:**
-   `daysOfWeek` **&lt;AlarmDayOfWeek&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the day of the week is set.

<span id="setEnabled"></span>
**`setEnabled`**( `enabled, callback ` )
Sets the alarm's enabled state.

**Parameters:**
-   `enabled` **&lt;Boolean&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the enabled state is set.

<span id="setMessage"></span>
**`setMessage`**( `message, callback ` )
Sets the alarm message.

**Parameters:**
-   `message` **&lt;String&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the message is set.

<span id="setSound"></span>
**`setSound`**( `sound, callback ` )
Sets the alarm sound.

**Parameters:**
-   `sound` **&lt;String&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the sound is set.

<span id="setType"></span>
**`setType`**( `type, callback ` )
Sets the alarm type.

**Parameters:**
-   `type` **&lt;AlarmType&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the type is set.

<span id="sound"></span>
**`sound`**( `callback ` )
Retrieves the alarm sound.

The property holds the alarm's sound to be played when the alarm is triggered. An empty url will mean to play the default sound.

The default value is an empty url.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

<span id="status"></span>
**`status`**( `callback ` )
Retrieves the alarm status.

The property holds the status of the last performed operation

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

<span id="type"></span>
**`type`**( `callback ` )
Retrieves the alarm type.

The property holds the type of the alarm. The default value is AlarmType.OneTime

**Parameters:**
-   `callback` **&lt;Function(AlarmType)&gt;**

