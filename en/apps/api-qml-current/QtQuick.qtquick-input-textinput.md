---
Title: QtQuick.qtquick-input-textinput
---
        
Qt Quick Text Input Handling and Validators
===========================================

<span class="subtitle"></span>
details
Text Visual Types
-----------------

Qt Quick provides several types to display text onto the screen. The [Text](../QtQuick.qtquick-releasenotes.md#text) type will display formatted text onto the screen, the [TextEdit](../QtQuick.TextEdit.md) type will place a multiline line edit onto the screen, and the [TextInput](../QtQuick.TextInput.md) will place a single editable line field onto the screen.

To learn more about their specific features and properties, visit their respective documentation.

<span id="validating-input-text"></span>
Validating Input Text
---------------------

The *validator* types enforce the type and format of [TextInput](../QtQuick.TextInput.md) objects.

``` qml
Column {
    spacing: 10
    Text {
        text: "Enter a value from 0 to 2000"
    }
    TextInput {
        focus: true
        validator: IntValidator { bottom:0; top: 2000}
    }
}
```

The validator types bind to `TextInput`'s `validator` property.

``` qml
Column {
    spacing: 10
    Text {
        text: "Which basket?"
    }
    TextInput {
        focus: true
        validator: RegExpValidator { regExp: /fruit basket/ }
    }
}
```

The regular expression in the snippet will only allow the inputted text to be `fruit basket`.

Note that QML parses JavaScript regular expressions, while Qt's QRegExp class' regular expressions are based on Perl regular expressions.

