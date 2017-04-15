---
Title: QtMultimedia.RadioData
---
        
RadioData
=========

<span class="subtitle"></span>
Access RDS data from a QML application. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[alternativeFrequenciesEnabled](#alternativeFrequenciesEnabled-prop)**** : bool
-   ****[availability](#availability-prop)**** : enumeration
-   ****[programType](#programType-prop)**** : enumeration
-   ****[programTypeName](#programTypeName-prop)**** : string
-   ****[radioText](#radioText-prop)**** : string
-   ****[stationId](#stationId-prop)**** : string
-   ****[stationName](#stationName-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtMultimedia 5.0** module.

`RadioData` is your gateway to all the data available through RDS. RDS is the Radio Data System which allows radio stations to broadcast information like the [stationId](#stationId-prop), [programType](#programType-prop), [programTypeName](#programTypeName-prop), [stationName](#stationName-prop), and [radioText](#radioText-prop). This information can be read from the `RadioData`. It also allows you to set whether the radio should tune to alternative frequencies if the current signal strength falls too much.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Rectangle {
    width: 480
    height: 320
    Radio {
        id: radio
        band: Radio.FM
    }
    Column {
        Text {
            text: radio.radioData.stationName
        }
        Text {
            text: radio.radioData.programTypeName
        }
        Text {
            text: radio.radioData.radioText
        }
    }
}
```

You use `RadioData` together with a [Radio](../QtMultimedia.Radio.md), either by accessing the `radioData` property of the Radio, or creating a separate [RadioData](index.html). The properties of the [RadioData](index.html) type will reflect the information broadcast by the radio station the Radio is currently tuned to.

**See also** [Radio Overview](../QtMultimedia.radiooverview.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alternativeFrequenciesEnabled-prop"></span><span class="name">alternativeFrequenciesEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property allows you to specify whether the radio should try and tune to alternative frequencies if the signal strength of the current station becomes too weak. The alternative frequencies are emitted over RDS by the radio station, and the tuning happens automatically.

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

Returns the availability state of the radio data interface.

This is one of:

| Value           | Description                                                                                                           |
|-----------------|-----------------------------------------------------------------------------------------------------------------------|
| Available       | The radio data interface is available to use                                                                          |
| Busy            | The radio data interface is usually available to use, but is currently busy.                                          |
| Unavailable     | The radio data interface is not available to use (there may be no radio hardware)                                     |
| ResourceMissing | There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="programType-prop"></span><span class="name">programType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the type of the currently playing program as transmitted by the radio station. The value can be any one of the values defined in the table below.

| Value               |
|---------------------|
| Undefined           |
| News                |
| CurrentAffairs      |
| Information         |
| Sport               |
| Education           |
| Drama               |
| Culture             |
| Science             |
| Varied              |
| PopMusic            |
| RockMusic           |
| EasyListening       |
| LightClassical      |
| SeriousClassical    |
| OtherMusic          |
| Weather             |
| Finance             |
| ChildrensProgrammes |
| SocialAffairs       |
| Religion            |
| PhoneIn             |
| Travel              |
| Leisure             |
| JazzMusic           |
| CountryMusic        |
| NationalMusic       |
| OldiesMusic         |
| FolkMusic           |
| Documentary         |
| AlarmTest           |
| Alarm               |
| Talk                |
| ClassicRock         |
| AdultHits           |
| SoftRock            |
| Top40               |
| Soft                |
| Nostalgia           |
| Classical           |
| RhythmAndBlues      |
| SoftRhythmAndBlues  |
| Language            |
| ReligiousMusic      |
| ReligiousTalk       |
| Personality         |
| Public              |
| College             |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="programTypeName-prop"></span><span class="name">programTypeName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds a string representation of the [programType](#programType-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="radioText-prop"></span><span class="name">radioText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds free-text transmitted by the radio station. This is typically used to show supporting information for the currently playing content, for instance song title or artist name.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stationId-prop"></span><span class="name">stationId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property allows you to read the station Id of the currently tuned radio station.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stationName-prop"></span><span class="name">stationName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property has the name of the currently tuned radio station.

