---
Title: QtQuick.qtquick-input-textinput
---

# QtQuick.qtquick-input-textinput

<span class="subtitle"></span>
<!-- $$$qtquick-input-textinput.html-description -->
<h2 id="text-visual-types">Text Visual Types</h2>
<p>Qt Quick provides several types to display text onto the screen. The <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> type will display formatted text onto the screen, the <a href="QtQuick.TextEdit.md">TextEdit</a> type will place a multiline line edit onto the screen, and the <a href="QtQuick.TextInput.md">TextInput</a> will place a single editable line field onto the screen.</p>
<p>To learn more about their specific features and properties, visit their respective documentation.</p>
<h2 id="validating-input-text">Validating Input Text</h2>
<p>The <i>validator</i> types enforce the type and format of <a href="QtQuick.TextInput.md">TextInput</a> objects.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">spacing</span>: <span class="number">10</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="string">&quot;Enter a value from 0 to 2000&quot;</span>
}
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">validator</span>: <span class="name">IntValidator</span> { <span class="name">bottom</span>:<span class="number">0</span>; <span class="name">top</span>: <span class="number">2000</span>}
}
}</pre>
<p>The validator types bind to <code>TextInput</code>'s <code>validator</code> property.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">spacing</span>: <span class="number">10</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="string">&quot;Which basket?&quot;</span>
}
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">validator</span>: <span class="name">RegExpValidator</span> { <span class="name">regExp</span>: /fruit basket/ }
}
}</pre>
<p>The regular expression in the snippet will only allow the inputted text to be <code>fruit basket</code>.</p>
<p>Note that QML parses JavaScript regular expressions, while Qt's QRegExp class' regular expressions are based on Perl regular expressions.</p>
<!-- @@@qtquick-input-textinput.html -->
