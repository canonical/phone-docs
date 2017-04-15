---
Title: QtMultimedia.Radio
---
        
Radio
=====

<span class="subtitle"></span>
Access radio functionality from a QML application. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[antennaConnected](#antennaConnected-prop)**** : int
-   ****[availability](#availability-prop)**** : enumeration
-   ****[band](#band-prop)**** : enumeration
-   ****[frequency](#frequency-prop)**** : int
-   ****[frequencyStep](#frequencyStep-prop)**** : int
-   ****[maximumFrequency](#maximumFrequency-prop)**** : int
-   ****[minimumFrequency](#minimumFrequency-prop)**** : int
-   ****[muted](#muted-prop)**** : bool
-   ****[searching](#searching-prop)**** : bool
-   ****[signalStrength](#signalStrength-prop)**** : int
-   ****[state](#state-prop)**** : enumeration
-   ****[stereo](#stereo-prop)**** : bool
-   ****[stereoMode](#stereoMode-prop)**** : enumeration
-   ****[volume](#volume-prop)**** : int

<span id="signals"></span>
Signals
-------

-   ****[stationFound](#stationFound-signal)****(int *frequency*, string *stationId*)

<span id="methods"></span>
Methods
-------

-   ****[cancelScan](#cancelScan-method)****()
-   ****[scanDown](#scanDown-method)****()
-   ****[scanUp](#scanUp-method)****()
-   ****[searchAllStations](#searchAllStations-method)****(enumeration *searchMode*)
-   ****[start](#start-method)****()
-   ****[stop](#stop-method)****()
-   ****[tuneDown](#tuneDown-method)****()
-   ****[tuneUp](#tuneUp-method)****()

<span id="details"></span>
Detailed Description
--------------------

Radio is part of the **QtMultimedia 5.0** module.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Rectangle {
    width: 320
    height: 480
    Radio {
        id: radio
        band: Radio.FM
    }
    MouseArea {
        x: 0; y: 0
        height: parent.height
        width: parent.width / 2
        onClicked: radio.scanDown()
    }
    MouseArea {
        x: parent.width / 2; y: 0
        height: parent.height
        width: parent.width / 2
        onClicked: radio.scanUp()
    }
}
```

You can use `Radio` to tune the radio and get information about the signal. You can also use the Radio to get information about tuning, for instance the frequency steps supported for tuning.

The corresponding [RadioData](../QtMultimedia.RadioData.md) gives RDS information about the current radio station. The best way to access the [RadioData](../QtMultimedia.RadioData.md) for the current Radio is to use the `radioData` property.

**See also** [Radio Overview](../QtMultimedia.radiooverview.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="antennaConnected-prop"></span><span class="name">antennaConnected</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property is true if there is an antenna connected. Otherwise it will be false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availability-prop"></span><span class="name">availability</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Returns the availability state of the radio.

This is one of:

| Value           | Description                                                                                                                                                                                                                                            |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Available       | The radio is available to use                                                                                                                                                                                                                          |
| Busy            | The radio is usually available to use, but is currently busy. This can happen when some other process needs to use the audio hardware.                                                                                                                 |
| Unavailable     | The radio is not available to use (there may be no radio hardware)                                                                                                                                                                                     |
| ResourceMissing | There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time. This can occur if there is no antenna connected - see the [antennaConnected](#antennaConnected-prop) property as well. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="band-prop"></span><span class="name">band</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the frequency band used for the radio, which can be specified as any one of the values in the table below.

| Value | Description                                                            |
|-------|------------------------------------------------------------------------|
| AM    | 520 to 1610 kHz, 9 or 10kHz channel spacing, extended 1610 to 1710 kHz |
| FM    | 87.5 to 108.0 MHz, except Japan 76-90 MHz                              |
| SW    | 1.711 to 30.0 MHz, divided into 15 bands. 5kHz channel spacing         |
| LW    | 148.5 to 283.5 kHz, 9kHz channel spacing (Europe, Africa, Asia)        |
| FM2   | range not defined, used when area supports more than one FM range      |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frequency-prop"></span><span class="name">frequency</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Sets the frequency in Hertz that the radio is tuned to. The frequency must be within the frequency range for the current band, otherwise it will be changed to be within the frequency range.

**See also** [maximumFrequency](#maximumFrequency-prop) and [minimumFrequency](#minimumFrequency-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frequencyStep-prop"></span><span class="name">frequencyStep</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The number of Hertz for each step when tuning the radio manually. The value is for the current [band](#band-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumFrequency-prop"></span><span class="name">maximumFrequency</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The maximum frequency for the current [band](#band-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumFrequency-prop"></span><span class="name">minimumFrequency</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The minimum frequency for the current [band](#band-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="muted-prop"></span><span class="name">muted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property reflects whether the radio is muted or not.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searching-prop"></span><span class="name">searching</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property is true if the radio is currently searching for radio stations, for instance using the [scanUp](#scanUp-method), [scanDown](#scanDown-method), and [searchAllStations](#searchAllStations-method) methods. Once the search completes, or if it is cancelled using [cancelScan](#cancelScan-method), this property will be false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="signalStrength-prop"></span><span class="name">signalStrength</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The strength of the current radio signal as a percentage where 0% equals no signal, and 100% is a very good signal.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="state-prop"></span><span class="name">state</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the current state of the Radio.

| Value        | Description                     |
|--------------|---------------------------------|
| ActiveState  | The radio is started and active |
| StoppedState | The radio is stopped            |

**See also** [start](#start-method) and [stop](#stop-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stereo-prop"></span><span class="name">stereo</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the radio is receiving a stereo signal or not. If [stereoMode](#stereoMode-prop) is set to ForceMono the value will always be false. Likewise, it will always be true if [stereoMode](#stereoMode-prop) is set to ForceStereo.

**See also** [stereoMode](#stereoMode-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stereoMode-prop"></span><span class="name">stereoMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the stereo mode of the radio, which can be set to any one of the values in the table below.

| Value       | Description                                                                              |
|-------------|------------------------------------------------------------------------------------------|
| Auto        | Uses stereo mode matching the station                                                    |
| ForceStereo | Forces the radio to play the station in stereo, converting the sound signal if necessary |
| ForceMono   | Forces the radio to play the station in mono, converting the sound signal if necessary   |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="volume-prop"></span><span class="name">volume</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Set this property to control the volume of the radio. The valid range of the volume is from 0 to 100.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stationFound-signal"></span><span class="name">stationFound</span>(<span class="type">int</span> <em>frequency</em>, <span class="type">string</span> <em>stationId</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a new radio station is found. This signal is only emitted if [searchAllStations](#searchAllStations-method) is called with `SearchGetStationId`.

The *frequency* is returned in Hertz, and the *stationId* corresponds to the station Id in the [RadioData](../QtMultimedia.RadioData.md) for this radio station.

The corresponding handler is `onStationFound`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelScan-method"></span><span class="name">cancelScan</span>()</p></td>
</tr>
</tbody>
</table>

Cancel the current scan. Will also cancel a search started with [searchAllStations](#searchAllStations-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scanDown-method"></span><span class="name">scanDown</span>()</p></td>
</tr>
</tbody>
</table>

Searches backward in the frequency range for the current band.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scanUp-method"></span><span class="name">scanUp</span>()</p></td>
</tr>
</tbody>
</table>

Searches forward in the frequency range for the current band.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searchAllStations-method"></span><span class="name">searchAllStations</span>(<span class="type">enumeration</span> <em>searchMode</em>)</p></td>
</tr>
</tbody>
</table>

Start searching the complete frequency range for the current band, and save all the radio stations found. The search mode can be either of the values described in the table below.

| Value              | Description                                                                                                                |
|--------------------|----------------------------------------------------------------------------------------------------------------------------|
| SearchFast         | Stores each radio station for later retrival and tuning                                                                    |
| SearchGetStationId | Does the same as SearchFast, but also emits the station Id with the [stationFound](#stationFound-signal) signal. |

The snippet below uses `searchAllStations` with `SearchGetStationId` to receive all the radio stations in the current band, and store them in a ListView. The station Id is shown to the user and if the user presses a station, the radio is tuned to this station.

``` qml
Item {
    width: 640
    height: 360
    Radio {
        id: radio
        onStationFound: radioStations.append({"frequency": frequency, "stationId": stationId})
    }
    ListModel {
        id: radioStations
    }
    ListView {
        model: radioStations
        delegate: Rectangle {
                MouseArea {
                    anchors.fill: parent
                    onClicked: radio.frequency = frequency
                }
                Text {
                    anchors.fill: parent
                    text: stationId
                }
            }
    }
    Rectangle {
        MouseArea {
            anchors.fill: parent
            onClicked: radio.searchAllStations(Radio.SearchGetStationId)
        }
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Starts the radio. If the radio is available, as determined by the [availability](#availability-prop) property, this will result in the [state](#state-prop) becoming `ActiveState`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stops the radio. After calling this method the [state](#state-prop) will be `StoppedState`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tuneDown-method"></span><span class="name">tuneDown</span>()</p></td>
</tr>
</tbody>
</table>

Decrements the frequency by the frequency step for the current band. If the frequency is already set to the minimum frequency, calling this function has no effect.

**See also** [band](#band-prop), [frequencyStep](#frequencyStep-prop), and [minimumFrequency](#minimumFrequency-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tuneUp-method"></span><span class="name">tuneUp</span>()</p></td>
</tr>
</tbody>
</table>

Increments the frequency by the frequency step for the current band. If the frequency is already set to the maximum frequency, calling this function has no effect.

**See also** [band](#band-prop), [frequencyStep](#frequencyStep-prop), and [maximumFrequency](#maximumFrequency-prop).

