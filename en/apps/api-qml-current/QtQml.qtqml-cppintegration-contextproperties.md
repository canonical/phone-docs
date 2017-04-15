---
Title: QtQml.qtqml-cppintegration-contextproperties
---
        
Embedding C++ Objects into QML with Context Properties
======================================================

<span class="subtitle"></span>
<span id="details"></span>
When loading a QML object into a C++ application, it can be useful to directly embed some C++ data that can be used from within the QML code. This makes it possible, for example, to invoke a C++ method on the embedded object, or use a C++ object instance as a data model for a QML view.

The ability to inject C++ data into a QML object is made possible by the QQmlContext class. This class exposes data to the context of a QML object so that the data can be referred to directly from within the scope of the QML code.

<span id="setting-a-simple-context-property"></span>
Setting a Simple Context Property
---------------------------------

For example, here is a QML item that refers to a `currentDateTime` value that does not exist in the current scope:

``` qml
// MyItem.qml
import QtQuick 2.0
Text { text: currentDateTime }
```

This `currentDateTime` value can be set directly by the C++ application that loads the QML component, using QQmlContext::setContextProperty():

``` cpp
QQuickView view;
view.rootContext()->setContextProperty("currentDateTime", QDateTime::currentDateTime());
view.setSource(QUrl::fromLocalFile("MyItem.qml"));
view.show();
```

**Note:** Since all expressions evaluated in QML are evaluated in a particular context, if the context is modified, all bindings in that context will be re-evaluated. Thus, context properties should be used with care outside of application initialization, as this may lead to decreased application performance.

<span id="setting-an-object-as-a-context-property"></span>
Setting an Object as a Context Property
---------------------------------------

Context properties can hold either QVariant or QObject\* values. This means custom C++ objects can also be injected using this approach, and these objects can be modified and read directly in QML. Here, we modify the above example to embed a QObject instance instead of a QDateTime value, and the QML code invokes a method on the object instance:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="cpp"><code>class ApplicationData : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE QDateTime getCurrentDateTime() const {
        return QDateTime::currentDateTime();
    }
};
int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);
    QQuickView view;
    ApplicationData data;
    view.rootContext()-&gt;setContextProperty(&quot;applicationData&quot;, &amp;data);
    view.setSource(QUrl::fromLocalFile(&quot;MyItem.qml&quot;));
    view.show();
    return app.exec();
}</code></pre></td>
<td><pre class="qml"><code>// MyItem.qml
import QtQuick 2.0
Text { text: applicationData.getCurrentDateTime() }</code></pre></td>
</tr>
</tbody>
</table>

(Note that date/time values returned from C++ to QML can be formatted through [Qt.formatDateTime()](../QtQml.Qt.md#formatDateTime-method) and associated functions.)

If the QML item needs to receive signals from the context property, it can connect to them using the [Connections](../QtQml.Connections.md) type. For example, if `ApplicationData` has a signal named `dataChanged()`, this signal can be connected to using an `onDataChanged` handler within a [Connections](../QtQml.Connections.md) object:

``` qml
Text {
    text: applicationData.getCurrentDateTime()
    Connections {
        target: applicationData
        onDataChanged: console.log("The application data changed!")
    }
}
```

Context properties can be useful for using C++ based data models in a QML view. See the following examples:

-   String ListModel
-   Object ListModel
-   AbstractItemModel

demonstrating the use of QStringList, QList&lt;QObject\*&gt;-based models and QAbstractItemModel in QML views.

Also see the QQmlContext documentation for more information.

