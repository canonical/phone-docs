---
Title: Ubuntu.Components.Action
---

# Ubuntu.Components.Action

<span class="subtitle"></span>
<!-- $$$Action-brief -->
<p>Describe an action that can be re-used and shared between different components. More...</p>
<!-- @@@Action -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#checkable-prop">checkable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#checked-prop">checked</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#description-prop">description</a></b></b> : string</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#exclusiveGroup-prop">exclusiveGroup</a></b></b> : ExclusiveGroup</li>
<li class="fn"><b><b><a href="#iconName-prop">iconName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#iconSource-prop">iconSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#keywords-prop">keywords</a></b></b> : string</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#parameterType-prop">parameterType</a></b></b> : enum</li>
<li class="fn"><b><b><a href="#shortcut-prop">shortcut</a></b></b> : var</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#visible-prop">visible</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#toggled-signal">toggled</a></b></b>(bool <i>value</i>)</li>
<li class="fn"><b><b><a href="#triggered-signal">triggered</a></b></b>(var <i>value</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#trigger-method">trigger</a></b></b>(var <i>value</i>)</li>
</ul>
<!-- $$$Action-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Actions can be used to define a specific task to be executed in different contexts using different components. The same action can be assigned to a <a href="Ubuntu.Components.Button.md">Button</a>, a <b>Checkbox</b> or even a <a href="Ubuntu.Components.TextField.md">TextField</a>. The <a href="#triggered-signal">triggered</a> signal is emitted depending on the component. <a href="Ubuntu.Components.Button.md">Button</a> and <b>CheckBox</b> for instance emits the signal when clicked, whereas <a href="Ubuntu.Components.TextField.md">TextField</a> emits the signal when its accepted signal is triggered.</p>
<p>If the <a href="#parameterType-prop">parameterType</a> property is set, the Action is said to be parameterised. This means that when it is bound to a menu or button, the action expects a typed input parameter. The type affects the allowed value of the QVariant that must be passed to the <a href="#trigger-method">trigger</a> and <a href="#triggered-signal">triggered</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">Action</a></span> {
<span class="name">id</span>: <span class="name">action</span>
<span class="name">parameterType</span>: <span class="name">Action</span>.<span class="name">Integer</span>
<span class="name">text</span>: <span class="string">&quot;Int value&quot;</span>
<span class="name">onTriggered</span>: {
<span class="comment">// the value will be undefined</span>
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;value is&quot;</span>, <span class="name">value</span>);
}
<span class="name">Component</span>.onCompleted: <span class="name">trigger</span>(<span class="string">&quot;Hello World!&quot;</span>)
}</pre>
<p>When an Action is assigned to a component, the component takes the values from the action itself. Therefore assigning the action to a Button is enough to set up the label and the icon to be shown by the button.</p>
<pre class="cpp">Action {
id: stock
iconName: <span class="string">&quot;call&quot;</span>
text: <span class="string">&quot;Call&quot;</span>
}
Button {
<span class="comment">// this binding will set the Button's text, iconName and</span>
<span class="comment">// iconSource properties.</span>
action: stock
}</pre>
<p>Actions are used to populate different Popovers like <a href="Ubuntu.Components.Popups.ActionSelectionPopover.md">ActionSelectionPopover</a> as well as to define actions for pages, or when defining options in <code>ListItemOptions</code>.</p>
<p>Examples: See <a href="Ubuntu.Components.Page.md">Page</a></p>
<h3 >Mnemonics</h3>
<p>Since Ubuntu.Components 1.3 Action supports mnemonics. Mnemonics are shortcuts defined in the <a href="#text-prop">text</a> property, prefixed the shortcut letter with &amp;. For instance <code>&quot;\&amp;Call&quot;</code> will bint the <code>&quot;Alt-C&quot;</code> shortcut to the action. When a mnemonic is detected on the Action and a keyboard is attached to the device, the <a href="#text-prop">text</a> property will provide a formatted text having the mnemonic letter underscored.</p>
<pre class="qml"><span class="type"><a href="index.html">Action</a></span> {
<span class="name">id</span>: <span class="name">call</span>
<span class="name">iconName</span>: <span class="string">&quot;call&quot;</span>
<span class="name">text</span>: <span class="string">&quot;&amp;Call&quot;</span>
}</pre>
<h3 >Checkable property</h3>
<p>Since Ubuntu.Components 1.3 Action supports the checkable/checked properties.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">action</span>: <span class="name">Action</span> {
<span class="name">checkable</span>: <span class="number">true</span>
<span class="name">checked</span>: <span class="number">false</span>
}
<span class="name">color</span>: <span class="name">action</span>.<span class="name">checked</span> ? <span class="name">UbuntuColor</span>.<span class="name">green</span> : <span class="name">UbuntuColor</span>.<span class="name">red</span>
}</pre>
<!-- @@@Action -->
<h2>Property Documentation</h2>
<!-- $$$checkable -->
<table class="qmlname"><tr valign="top" id="checkable-prop"><td class="tblQmlPropNode"><p><span class="name">checkable</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the action can be checked. Defaults to false.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<p><b>See also </b><a href="#checked-prop">Action::checked</a>, <a href="#toggled-signal">Action::toggled</a>, and <a href="Ubuntu.Components.ExclusiveGroup.md">ExclusiveGroup</a>.</p>
<!-- @@@checkable -->
<br/>
<!-- $$$checked -->
<table class="qmlname"><tr valign="top" id="checked-prop"><td class="tblQmlPropNode"><p><span class="name">checked</span> : <span class="type">bool</span></p></td></tr></table><p>If the action is checkable, this property reflects its checked state. Defaults to false. Its value is also false while checkable is false.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<p><b>See also </b><a href="#checkable-prop">Action::checkable</a>, <a href="#toggled-signal">Action::toggled</a>, and <a href="Ubuntu.Components.ExclusiveGroup.md">ExclusiveGroup</a>.</p>
<!-- @@@checked -->
<br/>
<!-- $$$description -->
<table class="qmlname"><tr valign="top" id="description-prop"><td class="tblQmlPropNode"><p><span class="name">description</span> : <span class="type">string</span></p></td></tr></table><p>User visible secondary description for the action. Description is more verbose than the <a href="#text-prop">text</a> and should describe the Action with couple of words.</p>
<!-- @@@description -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>If set to false the action can not be triggered. Components visualizing the action migth either hide the action or make it insensitive. However visibility can be controlled separately using the <a href="#visible-prop">visible</a> property.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$exclusiveGroup -->
<table class="qmlname"><tr valign="top" id="exclusiveGroup-prop"><td class="tblQmlPropNode"><p><span class="name">exclusiveGroup</span> : <span class="type"><a href="Ubuntu.Components.ExclusiveGroup.md">ExclusiveGroup</a></span></p></td></tr></table><p>The <a href="Ubuntu.Components.ExclusiveGroup.md">ExclusiveGroup</a> associated with this action. An exclusive group allows the <a href="#checked-prop">checked</a> property to belinked to other actions, as in radio controls.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.ExclusiveGroup.md">ExclusiveGroup</a></span> {
<span class="type"><a href="index.html">Action</a></span> {
<span class="name">id</span>: <span class="name">action1</span>
<span class="name">checkable</span>: <span class="number">true</span>
<span class="name">checked</span>: <span class="number">true</span>
}
<span class="type"><a href="index.html">Action</a></span> {
<span class="name">id</span>: <span class="name">action2</span>
<span class="name">checkable</span>: <span class="number">true</span>
}
<span class="type"><a href="index.html">Action</a></span> {
<span class="name">id</span>: <span class="name">action3</span>
<span class="name">checkable</span>: <span class="number">true</span>
}
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">action</span>: <span class="name">action1</span>
<span class="name">color</span>: <span class="name">action</span>.<span class="name">checked</span> ? <span class="name">UbuntuColor</span>.<span class="name">green</span> : <span class="name">UbuntuColor</span>.<span class="name">red</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">action</span>: <span class="name">action2</span>
<span class="name">color</span>: <span class="name">action</span>.<span class="name">checked</span> ? <span class="name">UbuntuColor</span>.<span class="name">green</span> : <span class="name">UbuntuColor</span>.<span class="name">red</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">action</span>: <span class="name">action3</span>
<span class="name">color</span>: <span class="name">action</span>.<span class="name">checked</span> ? <span class="name">UbuntuColor</span>.<span class="name">green</span> : <span class="name">UbuntuColor</span>.<span class="name">grey</span>
}
}</pre>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@exclusiveGroup -->
<br/>
<!-- $$$iconName -->
<table class="qmlname"><tr valign="top" id="iconName-prop"><td class="tblQmlPropNode"><p><span class="name">iconName</span> : <span class="type">string</span></p></td></tr></table><p>The icon associated with the action. If both iconName and <a href="#iconSource-prop">iconSource</a> are defined, iconName will be ignored by the components.</p>
<p><b>Note: </b>The complete list of icons available in Ubuntu is not published yet. For now please refer to the folder where the icon theme is installed:</p><ul>
<li>Ubuntu Touch: /usr/share/icons/suru</li>
</ul>
<!-- @@@iconName -->
<br/>
<!-- $$$iconSource -->
<table class="qmlname"><tr valign="top" id="iconSource-prop"><td class="tblQmlPropNode"><p><span class="name">iconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>This is a URL to any image file. In order to use an icon from the Ubuntu theme, use the <a href="#iconName-prop">iconName</a> property instead.</p>
<!-- @@@iconSource -->
<br/>
<!-- $$$keywords -->
<table class="qmlname"><tr valign="top" id="keywords-prop"><td class="tblQmlPropNode"><p><span class="name">keywords</span> : <span class="type">string</span></p></td></tr></table><p>Additional user visible keywords for the action. The format of the keywords string is &quot;Keyword 1;Keyword 2;Keyword 3&quot; to allow translators to define different number of keywords per language. The keywords are separated by ; and they may contain spaces.</p>
<pre class="qml"><span class="type"><a href="index.html">Action</a></span> {
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Crop&quot;</span>)
<span class="name">description</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Crop the image&quot;</span>)
<span class="name">keywords</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Trim;Cut&quot;</span>)
}</pre>
<!-- @@@keywords -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>The name of the action. By default an action gets it's name generated automatically if not overridden with later. If name is set to &quot;&quot; then the action restores it's autogenerated name. The name is not user visible.</p>
<!-- @@@name -->
<br/>
<!-- $$$parameterType -->
<table class="qmlname"><tr valign="top" id="parameterType-prop"><td class="tblQmlPropNode"><p><span class="name">parameterType</span> : <span class="type">enum</span></p></td></tr></table><p>Type of the parameter passed to <a href="#trigger-method">trigger</a> and <a href="#triggered-signal">triggered</a>. Type is an enumeration:</p>
<ul>
<li><b>Action.None</b>: No paramater. (default)</li>
<li><b>Action.String</b>: String parameter.</li>
<li><b>Action.Integer</b>: Integer parameter.</li>
<li><b>Action.Bool</b>: Boolean parameter.</li>
<li><b>Action.Real</b>: Single precision floating point parameter.</li>
<li><b>Action.Object</b>: The parameter is an object.</li>
</ul>
<pre class="qml"><span class="type"><a href="index.html">Action</a></span> {
<span class="name">id</span>: <span class="name">action</span>
<span class="name">parameterType</span>: <span class="name">Action</span>.<span class="name">String</span>
<span class="name">onTriggered</span>: {
<span class="comment">// value arguments now contain strings</span>
<span class="name">console</span>.<span class="name">log</span>(<span class="name">value</span>);
}
<span class="name">Component</span>.onCompleted: <span class="name">action</span>.<span class="name">trigger</span>(<span class="string">&quot;Hello World&quot;</span>)
}</pre>
<!-- @@@parameterType -->
<br/>
<!-- $$$shortcut -->
<table class="qmlname"><tr valign="top" id="shortcut-prop"><td class="tblQmlPropNode"><p><span class="name">shortcut</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>The keyboard shortcut that can be used to trigger the action. <b>StandardKey</b> values such as <b>StandardKey.Copy</b> as well as strings in the form &quot;Ctrl+C&quot; are accepted values.</p>
<p>This QML property was introduced in  Qt 1.3.</p>
<!-- @@@shortcut -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The user visible primary label of the action.</p>
<p>Mnemonics are shortcuts prefixed in the text with &amp;. If the text has multiple occurences of the &amp; character, the first one will be considered for the shortcut. However &amp;&amp; can be used for a single &amp; in the text, not as a mnemonic. The &amp; character cannot be used as shortcut.</p>
<!-- @@@text -->
<br/>
<!-- $$$visible -->
<table class="qmlname"><tr valign="top" id="visible-prop"><td class="tblQmlPropNode"><p><span class="name">visible</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the action is visible to the user. Defaults to true.</p>
<!-- @@@visible -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$toggled -->
<table class="qmlname"><tr valign="top" id="toggled-signal"><td class="tblQmlFuncNode"><p><span class="name">toggled</span>(<span class="type">bool</span><i> value</i>)</p></td></tr></table><p>Signal called when the action's checked property changes.</p>
<p><b>Note: </b>The toggled signal should be used for checkable actions rather than the triggered signal.</p><p><b>See also </b><a href="#checkable-prop">Action::checkable</a>, <a href="#checked-prop">Action::checked</a>, and <a href="Ubuntu.Components.ExclusiveGroup.md">ExclusiveGroup</a>.</p>
<!-- @@@toggled -->
<br/>
<!-- $$$triggered -->
<table class="qmlname"><tr valign="top" id="triggered-signal"><td class="tblQmlFuncNode"><p><span class="name">triggered</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span><i> value</i>)</p></td></tr></table><p>Signal called when the action is triggered. The user visible primary label of the action when emitted by components. Custom implementations must make sure this rule is followed, therefore instead of emitting the signal the <a href="#trigger-method">trigger</a> function should be called.</p>
<!-- @@@triggered -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$trigger -->
<table class="qmlname"><tr valign="top" id="trigger-method"><td class="tblQmlFuncNode"><p><span class="name">trigger</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span><i> value</i>)</p></td></tr></table><p>Checks the <code>value</code> against the action <a href="#parameterType-prop">parameterType</a> and triggers the action. If <a href="#parameterType-prop">parameterType</a> is <code>Action.None</code>, it will trigger as</p>
<pre class="cpp">action<span class="operator">.</span>trigger()</pre>
<!-- @@@trigger -->
<br/>
