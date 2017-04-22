---
Title: Ubuntu.Components.PickerPanel
---

# Ubuntu.Components.PickerPanel

<span class="subtitle"></span>
<!-- $$$PickerPanel-brief -->
<p>Provides a panel for opening a DatePicker in place of the input panel or as Popover, depending on the form factor. More...</p>
<!-- @@@PickerPanel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#openDatePicker-method">openDatePicker</a></b></b>(<i>caller</i>,  <i>property</i>,  <i>mode</i>)</li>
</ul>
<!-- $$$PickerPanel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">PickerPanel</a> is a singleton component designed to open a <a href="Ubuntu.Components.Pickers.DatePicker.md">DatePicker</a> in the input panel area or in a Popover, depending on the form factor, following the design guides on date pickers.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type">MainWindow</span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;PickerPanel&quot;</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">dateButton</span>
property <span class="type"><a href="http://doc.qt.io/qt-5/qml-date.html">date</a></span> <span class="name">date</span>: new <span class="name">Date</span>()
<span class="name">text</span>: <span class="name">Qt</span>.<span class="name">formatDateTime</span>(<span class="name">date</span>, <span class="string">&quot;yyyy/MMMM&quot;</span>)
<span class="name">onClicked</span>: <span class="name">PickerPanel</span>.<span class="name">openDatePicker</span>(<span class="name">dateButton</span>, <span class="string">&quot;date&quot;</span>, <span class="string">&quot;Years|Months&quot;</span>)
}
}
}</pre>
<p>The opened panel is closed automatically when the user taps/presses outside of the panel or Popover area.</p>
<!-- @@@PickerPanel -->
<h2>Method Documentation</h2>
<!-- $$$openDatePicker -->
<table class="qmlname"><tr valign="top" id="openDatePicker-method"><td class="tblQmlFuncNode"><p><span class="name">openDatePicker</span>(<i> caller</i>, <i> property</i>, <i> mode</i>)</p></td></tr></table><p>The function opens a <a href="Ubuntu.Components.Pickers.DatePicker.md">DatePicker</a> component in the input method area or in a popover, depending on the availability of an input method provider in the system and whether the size of the main screen width/height defines a phone form factor. The picked date will be read from and reported to the <i>property</i> of the <i>caller</i> as date type. This implies that the caller must have defined the given property of type date.</p>
<p>On failure, the function returns null. On success, the returned object has the following properties:</p>
<pre class="cpp">Object {
property DatePicker picker
property string pickerMode
property date date
property Item caller
property string callerProperty
signal closed()
}</pre>
<table class="generic">
<thead><tr class="qt-style"><th >Property</th><th >Description</th></tr></thead>
<tr valign="top"><td ><b>picker</b></td><td >instance of the <a href="Ubuntu.Components.Pickers.DatePicker.md">DatePicker</a> component shown in the panel/popup</td></tr>
<tr valign="top"><td ><b>pickerMode</b></td><td >represents the <a href="Ubuntu.Components.Pickers.DatePicker.md#mode-prop">DatePicker::mode</a> to be used. This is an optional parameter and if not defined, the default mode will be used.</td></tr>
<tr valign="top"><td ><b>date</b></td><td >represents the date selected</td></tr>
<tr valign="top"><td ><b>caller</b></td><td >the instance of the component opening the panel</td></tr>
<tr valign="top"><td ><b>callerProperty</b></td><td >the property of the caller holding the date value which will be updated by the picker.</td></tr>
<thead><tr class="qt-style"><th >Signal</th><th >Description</th></tr></thead>
<tr valign="top"><td >closed()</td><td >the signal is emitted when the panel or popover gets closed. The signal is handy when actions are performed upon panel close.</td></tr>
</table>
<!-- @@@openDatePicker -->
<br/>
