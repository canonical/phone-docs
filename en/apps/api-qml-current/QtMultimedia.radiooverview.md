---
Title: QtMultimedia.radiooverview
---

# QtMultimedia.radiooverview

<span class="subtitle"></span>
<!-- $$$radiooverview.html-description -->
<p>The Qt Multimedia API provides a number of radio related classes for control over the radio tuner of the system, and gives access to Radio Data System (RDS) information for radio stations that broadcasts it.</p>
<h2 id="radio-features">Radio Features</h2>
<p>The Radio API consists of two separate components. The radio tuner, QRadioTuner or the Radio QML type, which handles control of the radio hardware as well as tuning. The other is the radio data component, either QRadioData or the RadioData QML type, which gives access to RDS information.</p>
<h2 id="radio-implementation-details">Radio Implementation Details</h2>
<p>The actual level of support depends on the underlying system support. It should be noted that only analog radio is supported, and the properties of the radio data component will only be populated if the system radio tuner supports RDS.</p>
<h2 id="examples">Examples</h2>
<p>There are two examples showing the usage of the Radio API. One shows how to use the QRadioTuner class from C++. The other shows how to implement a similar application using QML and Radio.</p>
<h3 >Radio Example</h3>
<p>This image shows the example using the QRadioTuner API.</p>
<p class="centerAlign"><img src="../../../../media/radio-example.png" alt="" /></p><p>The example reads the frequency from the radio tuner, and sets the &quot;Got Signal&quot; text based on the signal strength. The buttons allow the user to tune and scan up and down the frequency band, while the slider to the side allows volume adjustments.</p>
<p>Only the FM frequency band is used in this example.</p>
<h3 >Declarative Radio Example</h3>
<p class="centerAlign"><img src="../../../../media/declarative-radio-example.png" alt="" /></p><p>This example has the same functionality of the regular radio example mentioned above, but it includes a nice horizontal dial showing the position of the current frequency inside the band.</p>
<h2 id="reference-documentation">Reference documentation</h2>
<h3 >C++ Classes</h3>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QRadioData</p></td><td class="tblDescr"><p>Interfaces to the RDS functionality of the system radio</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QRadioTuner</p></td><td class="tblDescr"><p>Interface to the systems analog radio device</p></td></tr>
</table>
<h3 >QML Types</h3>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.Radio.md">Radio</a></p></td><td class="tblDescr"><p>Access radio functionality from a QML application</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.RadioData.md">RadioData</a></p></td><td class="tblDescr"><p>Access RDS data from a QML application</p></td></tr>
</table>
<!-- @@@radiooverview.html -->
