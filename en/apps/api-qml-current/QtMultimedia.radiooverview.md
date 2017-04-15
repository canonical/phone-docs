---
Title: QtMultimedia.radiooverview
---
        
Radio Overview
==============

<span class="subtitle"></span>
<span id="details"></span>
The Qt Multimedia API provides a number of radio related classes for control over the radio tuner of the system, and gives access to Radio Data System (RDS) information for radio stations that broadcasts it.

<span id="radio-features"></span>
Radio Features
--------------

The Radio API consists of two separate components. The radio tuner, QRadioTuner or the Radio QML type, which handles control of the radio hardware as well as tuning. The other is the radio data component, either QRadioData or the RadioData QML type, which gives access to RDS information.

<span id="radio-implementation-details"></span>
Radio Implementation Details
----------------------------

The actual level of support depends on the underlying system support. It should be noted that only analog radio is supported, and the properties of the radio data component will only be populated if the system radio tuner supports RDS.

<span id="examples"></span>
Examples
--------

There are two examples showing the usage of the Radio API. One shows how to use the QRadioTuner class from C++. The other shows how to implement a similar application using QML and Radio.

<span id="radio-example"></span>
### Radio Example

This image shows the example using the QRadioTuner API.

![](https://developer.ubuntu.com/static/devportal_uploaded/fed08b9a-dc66-4e8b-ad23-24275c7d67d7-api/apps/qml/sdk-15.04.5/radiooverview/images/radio-example.png)

The example reads the frequency from the radio tuner, and sets the "Got Signal" text based on the signal strength. The buttons allow the user to tune and scan up and down the frequency band, while the slider to the side allows volume adjustments.

Only the FM frequency band is used in this example.

<span id="declarative-radio-example"></span>
### Declarative Radio Example

![](https://developer.ubuntu.com/static/devportal_uploaded/d8207913-3dbc-43f6-b9f9-0b67e3488b48-api/apps/qml/sdk-15.04.5/radiooverview/images/declarative-radio-example.png)

This example has the same functionality of the regular radio example mentioned above, but it includes a nice horizontal dial showing the position of the current frequency inside the band.

<span id="reference-documentation"></span>
Reference documentation
-----------------------

<span id="c-classes"></span>
### C++ Classes

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QRadioData</p></td>
<td><p>Interfaces to the RDS functionality of the system radio</p></td>
</tr>
<tr class="even">
<td><p>QRadioTuner</p></td>
<td><p>Interface to the systems analog radio device</p></td>
</tr>
</tbody>
</table>

<span id="qml-types"></span>
### QML Types

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="QtMultimedia.Radio.md">Radio</a></p></td>
<td><p>Access radio functionality from a QML application</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.RadioData.md">RadioData</a></p></td>
<td><p>Access RDS data from a QML application</p></td>
</tr>
</tbody>
</table>

