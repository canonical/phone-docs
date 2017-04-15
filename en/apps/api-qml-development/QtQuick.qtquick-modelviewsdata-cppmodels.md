---
Title: QtQuick.qtquick-modelviewsdata-cppmodels
---
        
Using C++ Models with Qt Quick Views
====================================

<span class="subtitle"></span>
details
Data Provided In A Custom C++ Model
-----------------------------------

Models can be defined in C++ and then made available to QML. This is useful for exposing existing C++ data models or otherwise complex datasets to QML.

A C++ model class can be defined as a QStringList, a QObjectList or a [QAbstractItemModel](#qabstractitemmodel). The first two are useful for exposing simpler datasets, while [QAbstractItemModel](#qabstractitemmodel) provides a more flexible solution for more complex models.

<span id="qstringlist-based-model"></span>
### QStringList-based Model

A model may be a simple QStringList, which provides the contents of the list via the *modelData* role.

Here is a [ListView](../QtQuick.ListView.md) with a delegate that references its model item's value using the `modelData` role:

``` qml
ListView {
    width: 100; height: 100
    model: myModel
    delegate: Rectangle {
        height: 25
        width: 100
        Text { text: modelData }
    }
}
```

A Qt application can load this QML document and set the value of `myModel` to a QStringList:

``` cpp
    QStringList dataList;
    dataList.append("Item 1");
    dataList.append("Item 2");
    dataList.append("Item 3");
    dataList.append("Item 4");
    QQuickView view;
    QQmlContext *ctxt = view.rootContext();
    ctxt->setContextProperty("myModel", QVariant::fromValue(dataList));
```

The complete source code for this example is available in [examples/quick/models/stringlistmodel](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.models-stringlistmodel/) within the Qt install directory.

**Note:** There is no way for the view to know that the contents of a QStringList have changed. If the QStringList changes, it will be necessary to reset the model by calling QQmlContext::setContextProperty() again.

<span id="qobjectlist-based-model"></span>
### QObjectList-based model

A list of QObject\* values can also be used as a model. A QList&lt;QObject\*&gt; provides the properties of the objects in the list as roles.

The following application creates a `DataObject` class with Q\_PROPERTY values that will be accessible as named roles when a QList&lt;DataObject\*&gt; is exposed to QML:

``` cpp
class DataObject : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString color READ color WRITE setColor NOTIFY colorChanged)
    ...
};
int main(int argc, char ** argv)
{
    QGuiApplication app(argc, argv);
    QList<QObject*> dataList;
    dataList.append(new DataObject("Item 1", "red"));
    dataList.append(new DataObject("Item 2", "green"));
    dataList.append(new DataObject("Item 3", "blue"));
    dataList.append(new DataObject("Item 4", "yellow"));
    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    QQmlContext *ctxt = view.rootContext();
    ctxt->setContextProperty("myModel", QVariant::fromValue(dataList));
    ...
```

The QObject\* is available as the `modelData` property. As a convenience, the properties of the object are also made available directly in the delegate's context. Here, `view.qml` references the `DataModel` properties in the [ListView](../QtQuick.ListView.md) delegate:

``` qml
ListView {
    width: 100; height: 100
    model: myModel
    delegate: Rectangle {
        height: 25
        width: 100
        color: model.modelData.color
        Text { text: name }
    }
}
```

Note the use of `color` property with qualifier. The properties of the object are not replicated in the `model` object, as they are easily available via the `modelData` object.

The complete source code for this example is available in [examples/quick/models/objectlistmodel](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.models-objectlistmodel/) within the Qt install directory.

Note: There is no way for the view to know that the contents of a QList has changed. If the QList changes, it is necessary to reset the model by calling QQmlContext::setContextProperty() again.

<span id="qabstractitemmodel"></span>
### QAbstractItemModel

A model can be defined by subclassing [QAbstractItemModel](#qabstractitemmodel). This is the best approach if you have a more complex model that cannot be supported by the other approaches. A [QAbstractItemModel](#qabstractitemmodel) can also automatically notify a QML view when the model data changes.

The roles of a [QAbstractItemModel](#qabstractitemmodel) subclass can be exposed to QML by reimplementing QAbstractItemModel::roleNames().

Here is an application with a QAbstractListModel subclass named `AnimalModel`, which exposes the *type* and *sizes* roles. It reimplements QAbstractItemModel::roleNames() to expose the role names, so that they can be accessed via QML:

``` cpp
class Animal
{
public:
    Animal(const QString &type, const QString &size);
    ...
};
class AnimalModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum AnimalRoles {
        TypeRole = Qt::UserRole + 1,
        SizeRole
    };
    AnimalModel(QObject *parent = 0);
    ...
};
QHash<int, QByteArray> AnimalModel::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[TypeRole] = "type";
    roles[SizeRole] = "size";
    return roles;
}
int main(int argc, char ** argv)
{
    QGuiApplication app(argc, argv);
    AnimalModel model;
    model.addAnimal(Animal("Wolf", "Medium"));
    model.addAnimal(Animal("Polar bear", "Large"));
    model.addAnimal(Animal("Quoll", "Small"));
    QQuickView view;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    QQmlContext *ctxt = view.rootContext();
    ctxt->setContextProperty("myModel", &model);
    ...
```

This model is displayed by a [ListView](../QtQuick.ListView.md) delegate that accesses the *type* and *size* roles:

``` qml
ListView {
    width: 200; height: 250
    model: myModel
    delegate: Text { text: "Animal: " + type + ", " + size }
}
```

QML views are automatically updated when the model changes. Remember the model must follow the standard rules for model changes and notify the view when the model has changed by using QAbstractItemModel::dataChanged(), QAbstractItemModel::beginInsertRows(), and so on. See the Model subclassing reference for more information.

The complete source code for this example is available in [examples/quick/models/abstractitemmodel](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.models-abstractitemmodel/) within the Qt install directory.

[QAbstractItemModel](#qabstractitemmodel) presents a hierarchy of tables, but the views currently provided by QML can only display list data. In order to display the child lists of a hierarchical model, use the DelegateModel QML type, which provides the following properties and functions to be used with list models of [QAbstractItemModel](#qabstractitemmodel) type:

-   *hasModelChildren* role property to determine whether a node has child nodes.
-   DelegateModel::rootIndex allows the root node to be specified
-   DelegateModel::modelIndex() returns a QModelIndex which can be assigned to DelegateModel::rootIndex
-   DelegateModel::parentModelIndex() returns a QModelIndex which can be assigned to DelegateModel::rootIndex

<span id="exposing-c-data-models-to-qml"></span>
### Exposing C++ Data Models to QML

The above examples use QQmlContext::setContextProperty() to set model values directly in QML components. An alternative to this is to register the C++ model class as a QML type (either directly from a C++ entry-point, or within the initialization function of a QML C++ plugin, as shown below). This would allow the model classes to be created directly as types within QML:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="cpp"><code>class MyModelPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID &quot;org.qt-project.QmlExtension.MyModel&quot; FILE &quot;mymodel.json&quot;)
public:
    void registerTypes(const char *uri)
    {
        qmlRegisterType&lt;MyModel&gt;(uri, 1, 0,
                &quot;MyModel&quot;);
    }
}</code></pre></td>
<td><pre class="qml"><code>MyModel {
    id: myModel
    ListElement { someProperty: &quot;some value&quot; }
}</code></pre>
<pre class="qml"><code>ListView {
    width: 200; height: 250
    model: myModel
    delegate: Text { text: someProperty }
}</code></pre></td>
</tr>
</tbody>
</table>

See Writing QML Extensions with C++ for details on writing QML C++ plugins.

