---
Title: QtQuick.Accessible
---

# QtQuick.Accessible

<span class="subtitle"></span>
<!-- $$$Accessible-brief -->
<p>Enables accessibility of QML items More...</p>
<!-- @@@Accessible -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#checkStateMixed-prop">checkStateMixed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#checkable-prop">checkable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#checked-prop">checked</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#defaultButton-prop">defaultButton</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#description-prop">description</a></b></b> : string</li>
<li class="fn"><b><b><a href="#editable-prop">editable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#focusable-prop">focusable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#focused-prop">focused</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#ignored-prop">ignored</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#multiLine-prop">multiLine</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#passwordEdit-prop">passwordEdit</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#readOnly-prop">readOnly</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#role-prop">role</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#searchEdit-prop">searchEdit</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectable-prop">selectable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectableText-prop">selectableText</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selected-prop">selected</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#decreaseAction-signal">decreaseAction</a></b></b>()</li>
<li class="fn"><b><b><a href="#increaseAction-signal">increaseAction</a></b></b>()</li>
<li class="fn"><b><b><a href="#pressAction-signal">pressAction</a></b></b>()</li>
<li class="fn"><b><b><a href="#toggleAction-signal">toggleAction</a></b></b>()</li>
</ul>
<!-- $$$Accessible-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This class is part of the Accessibility for Qt Quick Applications.</p>
<p>Items the user interacts with or that give information to the user need to expose their information to the accessibility framework. Then assistive tools can make use of that information to enable users to interact with the application in various ways. This enables Qt Quick applications to be used with screen-readers for example.</p>
<p>The most important properties are <a href="#name-prop">name</a>, <a href="#description-prop">description</a> and <a href="#role-prop">role</a>.</p>
<p>Example implementation of a simple button:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">myButton</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">label</span>
<span class="name">text</span>: <span class="string">&quot;next&quot;</span>
}
<span class="name">Accessible</span>.role: <span class="name">Accessible</span>.<span class="name">Button</span>
<span class="name">Accessible</span>.name: <span class="name">label</span>.<span class="name">text</span>
<span class="name">Accessible</span>.description: <span class="string">&quot;shows the next page&quot;</span>
<span class="name">Accessible</span>.onPressAction: {
<span class="comment">// do a button click</span>
}
}</pre>
<p>The <a href="#role-prop">role</a> is set to <code>Button</code> to indicate the type of control. Accessible.name is the most important information and bound to the text on the button. The name is a short and consise description of the control and should reflect the visual label. In this case it is not clear what the button does with the name only, so <a href="#description-prop">description</a> contains an explanation. There is also a signal handler <a href="#pressAction-signal">Accessible.pressAction</a> which can be invoked by assistive tools to trigger the button. This signal handler needs to have the same effect as tapping or clicking the button would have.</p>
<p><b>See also </b>Accessibility.</p>
<!-- @@@Accessible -->
<h2>Property Documentation</h2>
<!-- $$$checkStateMixed -->
<table class="qmlname"><tr valign="top" id="checkStateMixed-prop"><td class="tblQmlPropNode"><p><span class="name">checkStateMixed</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item is in the partially checked state.</p>
<p>By default this property is <code>false</code>.</p>
<p><b>See also </b><a href="#checked-prop">checked</a> and <a href="#checkable-prop">checkable</a>.</p>
<!-- @@@checkStateMixed -->
<br/>
<!-- $$$checkable -->
<table class="qmlname"><tr valign="top" id="checkable-prop"><td class="tblQmlPropNode"><p><span class="name">checkable</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item is checkable (like a check box or some buttons).</p>
<p>By default this property is <code>false</code>.</p>
<p><b>See also </b><a href="#checked-prop">checked</a>.</p>
<!-- @@@checkable -->
<br/>
<!-- $$$checked -->
<table class="qmlname"><tr valign="top" id="checked-prop"><td class="tblQmlPropNode"><p><span class="name">checked</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item is currently checked.</p>
<p>By default this property is <code>false</code>.</p>
<p><b>See also </b><a href="#checkable-prop">checkable</a>.</p>
<!-- @@@checked -->
<br/>
<!-- $$$defaultButton -->
<table class="qmlname"><tr valign="top" id="defaultButton-prop"><td class="tblQmlPropNode"><p><span class="name">defaultButton</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item is the default button of a dialog.</p>
<p>By default this property is <code>false</code>.</p>
<!-- @@@defaultButton -->
<br/>
<!-- $$$description -->
<table class="qmlname"><tr valign="top" id="description-prop"><td class="tblQmlPropNode"><p><span class="name">description</span> : <span class="type">string</span></p></td></tr></table><p>This property sets an accessible description. Similar to the name it describes the item. The description can be a little more verbose and tell what the item does, for example the functionallity of the button it describes.</p>
<!-- @@@description -->
<br/>
<!-- $$$editable -->
<table class="qmlname"><tr valign="top" id="editable-prop"><td class="tblQmlPropNode"><p><span class="name">editable</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item has editable text.</p>
<p>By default this property is <code>false</code>.</p>
<!-- @@@editable -->
<br/>
<!-- $$$focusable -->
<table class="qmlname"><tr valign="top" id="focusable-prop"><td class="tblQmlPropNode"><p><span class="name">focusable</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item is focusable.</p>
<p>By default, this property is <code>false</code> except for items where the role is one of <code>CheckBox</code>, <code>RadioButton</code>, <code>Button</code>, <code>MenuItem</code>, <code>PageTab</code>, <code>EditableText</code>, <code>SpinBox</code>, <code>ComboBox</code>, <code>Terminal</code> or <code>ScrollBar</code>.</p>
<p><b>See also </b><a href="#focused-prop">focused</a>.</p>
<!-- @@@focusable -->
<br/>
<!-- $$$focused -->
<table class="qmlname"><tr valign="top" id="focused-prop"><td class="tblQmlPropNode"><p><span class="name">focused</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item currently has the active focus.</p>
<p>By default, this property is <code>false</code>, but it will return <code>true</code> for items that have QQuickItem::hasActiveFocus() returning <code>true</code>.</p>
<p><b>See also </b><a href="#focusable-prop">focusable</a>.</p>
<!-- @@@focused -->
<br/>
<!-- $$$ignored -->
<table class="qmlname"><tr valign="top" id="ignored-prop"><td class="tblQmlPropNode"><p><span class="name">ignored</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item should be ignored by the accessibility framework.</p>
<p>Sometimes an item is part of a group of items that should be treated as one. For example two labels might be visually placed next to each other, but separate items. For accessibility purposes they should be treated as one and thus they are represented by a third invisible item with the right geometry.</p>
<p>For example a speed display adds &quot;m/s&quot; as a smaller label:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="type">Label</span> {
<span class="name">id</span>: <span class="name">speedLabel</span>
<span class="name">text</span>: <span class="string">&quot;Speed: 5&quot;</span>
<span class="name">Accessible</span>.ignored: <span class="number">true</span>
}
<span class="type">Label</span> {
<span class="name">text</span>: <span class="name">qsTr</span>(<span class="string">&quot;m/s&quot;</span>)
<span class="name">Accessible</span>.ignored: <span class="number">true</span>
}
<span class="name">Accessible</span>.role: <span class="name">Accessible</span>.<span class="name">StaticText</span>
<span class="name">Accessible</span>.name: <span class="name">speedLabel</span>.<span class="name">text</span> <span class="operator">+</span> <span class="string">&quot; meters per second&quot;</span>
}</pre>
<p>By default this property is <code>false</code>.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<!-- @@@ignored -->
<br/>
<!-- $$$multiLine -->
<table class="qmlname"><tr valign="top" id="multiLine-prop"><td class="tblQmlPropNode"><p><span class="name">multiLine</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item has multiple text lines.</p>
<p>By default this property is <code>false</code>.</p>
<!-- @@@multiLine -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property sets an accessible name. For a button for example, this should have a binding to its text. In general this property should be set to a simple and concise but human readable name. Do not include the type of control you want to represent but just the name.</p>
<!-- @@@name -->
<br/>
<!-- $$$passwordEdit -->
<table class="qmlname"><tr valign="top" id="passwordEdit-prop"><td class="tblQmlPropNode"><p><span class="name">passwordEdit</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item is a password text edit.</p>
<p>By default this property is <code>false</code>.</p>
<!-- @@@passwordEdit -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-prop"><td class="tblQmlPropNode"><p><span class="name">pressed</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item is pressed (for example a button during a mouse click).</p>
<p>By default this property is <code>false</code>.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$readOnly -->
<table class="qmlname"><tr valign="top" id="readOnly-prop"><td class="tblQmlPropNode"><p><span class="name">readOnly</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates that a text field is read only.</p>
<p>It is relevant when the role is QAccessible::EditableText and set to be read-only. By default this property is <code>false</code>.</p>
<!-- @@@readOnly -->
<br/>
<!-- $$$role -->
<table class="qmlname"><tr valign="top" id="role-prop"><td class="tblQmlPropNode"><p><span class="name">role</span> : <span class="type">enumeration</span></p></td></tr></table><p>This flags sets the semantic type of the widget. A button for example would have &quot;Button&quot; as type. The value must be one of QAccessible::Role.</p>
<p>Some roles have special semantics. In order to implement check boxes for example a &quot;checked&quot; property is expected.</p>
<table class="generic">
<thead><tr class="qt-style"><th ><b>Role</b></th><th ><b>Properties and signals</b></th><th ><b>Explanation</b></th></tr></thead>
<tr valign="top"><td >All interactive elements</td><td ><a href="#focusable-prop">focusable</a> and <a href="#focused-prop">focused</a></td><td >All elements that the user can interact with should have focusable set to <code>true</code> and set focus to <code>true</code> when they have the focus. This is important even for applications that run on touch-only devices since screen readers often implement a virtual focus that can be moved from item to item.</td></tr>
<tr valign="top"><td >Button, CheckBox, RadioButton</td><td ><a href="#pressAction-signal">Accessible.pressAction</a></td><td >A button should have a signal handler with the name <code>onPressAction</code>. This signal may be emitted by an assistive tool such as a screen-reader. The implementation needs to behave the same as a mouse click or tap on the button.</td></tr>
<tr valign="top"><td >CheckBox, RadioButton</td><td ><a href="#checkable-prop">checkable</a>, <a href="#checked-prop">checked</a>, <a href="#toggleAction-signal">Accessible.toggleAction</a></td><td >The check state of the check box. Updated on Press, Check and Uncheck actions.</td></tr>
<tr valign="top"><td >Slider, SpinBox, Dial, ScrollBar</td><td ><code>value</code>, <code>minimumValue</code>, <code>maximumValue</code>, <code>stepSize</code></td><td >These properties reflect the state and possible values for the elements.</td></tr>
<tr valign="top"><td >Slider, SpinBox, Dial, ScrollBar</td><td ><a href="#increaseAction-signal">Accessible.increaseAction</a>, <a href="#decreaseAction-signal">Accessible.decreaseAction</a></td><td >Actions to increase and decrease the value of the element.</td></tr>
</table>
<!-- @@@role -->
<br/>
<!-- $$$searchEdit -->
<table class="qmlname"><tr valign="top" id="searchEdit-prop"><td class="tblQmlPropNode"><p><span class="name">searchEdit</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item is input for a search query. This property will only affect editable text.</p>
<p>By default this property is <code>false</code>.</p>
<!-- @@@searchEdit -->
<br/>
<!-- $$$selectable -->
<table class="qmlname"><tr valign="top" id="selectable-prop"><td class="tblQmlPropNode"><p><span class="name">selectable</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item can be selected.</p>
<p>By default this property is <code>false</code>.</p>
<p><b>See also </b><a href="#selected-prop">selected</a>.</p>
<!-- @@@selectable -->
<br/>
<!-- $$$selectableText -->
<table class="qmlname"><tr valign="top" id="selectableText-prop"><td class="tblQmlPropNode"><p><span class="name">selectableText</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item contains selectable text.</p>
<p>By default this property is <code>false</code>.</p>
<!-- @@@selectableText -->
<br/>
<!-- $$$selected -->
<table class="qmlname"><tr valign="top" id="selected-prop"><td class="tblQmlPropNode"><p><span class="name">selected</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this item is selected.</p>
<p>By default this property is <code>false</code>.</p>
<p><b>See also </b><a href="#selectable-prop">selectable</a>.</p>
<!-- @@@selected -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$decreaseAction -->
<table class="qmlname"><tr valign="top" id="decreaseAction-signal"><td class="tblQmlFuncNode"><p><span class="name">decreaseAction</span>()</p></td></tr></table><p>This signal is emitted when a decrease action is received from an assistive tool such as a screen-reader.</p>
<p>The corresponding handler is <code>onDecreaseAction</code>.</p>
<!-- @@@decreaseAction -->
<br/>
<!-- $$$increaseAction -->
<table class="qmlname"><tr valign="top" id="increaseAction-signal"><td class="tblQmlFuncNode"><p><span class="name">increaseAction</span>()</p></td></tr></table><p>This signal is emitted when a increase action is received from an assistive tool such as a screen-reader.</p>
<p>The corresponding handler is <code>onIncreaseAction</code>.</p>
<!-- @@@increaseAction -->
<br/>
<!-- $$$pressAction -->
<table class="qmlname"><tr valign="top" id="pressAction-signal"><td class="tblQmlFuncNode"><p><span class="name">pressAction</span>()</p></td></tr></table><p>This signal is emitted when a press action is received from an assistive tool such as a screen-reader.</p>
<p>The corresponding handler is <code>onPressAction</code>.</p>
<!-- @@@pressAction -->
<br/>
<!-- $$$toggleAction -->
<table class="qmlname"><tr valign="top" id="toggleAction-signal"><td class="tblQmlFuncNode"><p><span class="name">toggleAction</span>()</p></td></tr></table><p>This signal is emitted when a toggle action is received from an assistive tool such as a screen-reader.</p>
<p>The corresponding handler is <code>onToggleAction</code>.</p>
<!-- @@@toggleAction -->
<br/>
