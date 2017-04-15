---
Title: QtQml.DelegateModel
---
        
DelegateModel
=============

<span class="subtitle"></span>
Encapsulates a model and delegate More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtQml.Models 2.1 |

<span id="properties"></span>
Properties
----------

-   ****[count](#count-prop)**** : int
-   ****[delegate](#delegate-prop)**** : Component
-   ****[filterOnGroup](#filterOnGroup-prop)**** : string
-   ****[groups](#groups-prop)**** : list&lt;DelegateModelGroup&gt;
-   ****[items](#items-prop)**** : DelegateModelGroup
-   ****[model](#model-prop)**** : model
-   ****[parts](#parts-prop)**** : object
-   ****[persistedItems](#persistedItems-prop)**** : DelegateModelGroup
-   ****[rootIndex](#rootIndex-prop)**** : QModelIndex

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[groups](#groups-attached-prop)**** : stringlist
-   ****[inItems](#inItems-attached-prop)**** : int
-   ****[inPersistedItems](#inPersistedItems-attached-prop)**** : int
-   ****[isUnresolved](#isUnresolved-attached-prop)**** : bool
-   ****[itemsIndex](#itemsIndex-attached-prop)**** : int
-   ****[model](#model-attached-prop)**** : int
-   ****[persistedItemsIndex](#persistedItemsIndex-attached-prop)**** : int

<span id="methods"></span>
Methods
-------

-   QModelIndex ****[modelIndex](#modelIndex-method)****(int *index*)
-   QModelIndex ****[parentModelIndex](#parentModelIndex-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [DelegateModel](index.html) type encapsulates a model and the delegate that will be instantiated for items in the model.

It is usually not necessary to create a [DelegateModel](index.html). However, it can be useful for manipulating and accessing the [modelIndex](#modelIndex-method) when a QAbstractItemModel subclass is used as the model. Also, [DelegateModel](index.html) is used together with [Package](../QtQml.Package.md) to provide delegates to multiple views, and with [DelegateModelGroup](../QtQml.DelegateModelGroup.md) to sort and filter delegate items.

The example below illustrates using a [DelegateModel](index.html) with a ListView.

``` qml
import QtQuick 2.0
Rectangle {
    width: 200; height: 100
    VisualDataModel {
        id: visualModel
        model: ListModel {
            ListElement { name: "Apple" }
            ListElement { name: "Orange" }
        }
        delegate: Rectangle {
            height: 25
            width: 100
            Text { text: "Name: " + name}
        }
    }
    ListView {
        anchors.fill: parent
        model: visualModel
    }
}
```

**Note:** This type is also available as [VisualDataModel](../QtQml.VisualDataModel.md) in the [Qt QML](../QtQml.qtqml-index.md) module due to compatibility reasons.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="name">delegate</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

The delegate provides a template defining each item instantiated by a view. The index is exposed as an accessible `index` property. Properties of the model are also available depending upon the type of Data Model.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="filterOnGroup-prop"></span><span class="name">filterOnGroup</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the group used to filter the visual data model.

Only items which belong to this group are visible to a view.

By default this is the [items](#items-prop) group.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="groups-prop"></span><span class="name">groups</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a delegate model's group definitions.

Groups define a sub-set of the items in a delegate model and can be used to filter a model.

For every group defined in a [DelegateModel](index.html) two attached properties are added to each delegate item. The first of the form [DelegateModel](index.html).in*GroupName* holds whether the item belongs to the group and the second [DelegateModel](index.html).*groupName*Index holds the index of the item in that group.

The following example illustrates using groups to select items in a model.

``` qml
import QtQuick 2.0
Rectangle {
    width: 200; height: 100
    VisualDataModel {
        id: visualModel
        model: ListModel {
            ListElement { name: "Apple" }
            ListElement { name: "Orange" }
        }
        groups: [
            VisualDataGroup { name: "selected" }
        ]
        delegate: Rectangle {
            id: item
            height: 25
            width: 200
            Text {
                text: {
                    var text = "Name: " + name
                    if (item.VisualDataModel.inSelected)
                        text += " (" + item.VisualDataModel.selectedIndex + ")"
                    return text;
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: item.VisualDataModel.inSelected = !item.VisualDataModel.inSelected
            }
        }
    }
    ListView {
        anchors.fill: parent
        model: visualModel
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="items-prop"></span><span class="name">items</span> : <span class="type"><a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a></span></p></td>
</tr>
</tbody>
</table>

This property holds visual data model's default group to which all new items are added.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type"><a href="#model-attached-prop">model</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the model providing data for the [DelegateModel](index.html).

The model provides a set of data that is used to create the items for a view. For large or dynamic datasets the model is usually provided by a C++ model object. The C++ model object must be a QAbstractItemModel subclass or a simple list.

Models can also be created directly in QML, using a [ListModel](../QtQml.ListModel.md) or XmlListModel.

**See also** Data Models.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parts-prop"></span><span class="name">parts</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

The *parts* property selects a [DelegateModel](index.html) which creates delegates from the part named. This is used in conjunction with the [Package](../QtQml.Package.md) type.

For example, the code below selects a model which creates delegates named *list* from a [Package](../QtQml.Package.md):

``` cpp
DelegateModel {
    id: visualModel
    delegate: Package {
        Item { Package.name: "list" }
    }
    model: myModel
}
ListView {
    width: 200; height:200
    model: visualModel.parts.list
}
```

**See also** [Package](../QtQml.Package.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="persistedItems-prop"></span><span class="name">persistedItems</span> : <span class="type"><a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a></span></p></td>
</tr>
</tbody>
</table>

This property holds visual data model's persisted items group.

Items in this group are not destroyed when released by a view, instead they are persisted until removed from the group.

An item can be removed from the persistedItems group by setting the [DelegateModel](index.html).[inPersistedItems](#inPersistedItems-attached-prop) property to false. If the item is not referenced by a view at that time it will be destroyed. Adding an item to this group will not create a new instance.

Items returned by the [QtQml.Models::DelegateModelGroup::create()](../QtQml.DelegateModelGroup.md#create-method) function are automatically added to this group.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rootIndex-prop"></span><span class="name">rootIndex</span> : <span class="type">QModelIndex</span></p></td>
</tr>
</tbody>
</table>

QAbstractItemModel provides a hierarchical tree of data, whereas QML only operates on list data. `rootIndex` allows the children of any node in a QAbstractItemModel to be provided by this model.

This property only affects models of type QAbstractItemModel that are hierarchical (e.g, a tree model).

For example, here is a simple interactive file system browser. When a directory name is clicked, the view's `rootIndex` is set to the QModelIndex node of the clicked directory, thus updating the view to show the new directory's contents.

`main.cpp`:

``` cpp
int main(int argc, char ** argv)
{
    QApplication app(argc, argv);
    QQuickView view;
    QDirModel model;
    view.rootContext()->setContextProperty("dirModel", &model);
    view.setSource(QUrl::fromLocalFile("view.qml"));
    view.show();
    return app.exec();
}
```

`view.qml`:

``` qml
import QtQuick 2.0
ListView {
    id: view
    width: 300
    height: 400
    model: VisualDataModel {
        model: dirModel
        delegate: Rectangle {
            width: 200; height: 25
            Text { text: filePath }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (model.hasModelChildren)
                        view.model.rootIndex = view.model.modelIndex(index)
                }
            }
        }
    }
}
```

If the [model](#model-attached-prop) is a QAbstractItemModel subclass, the delegate can also reference a `hasModelChildren` property (optionally qualified by a *model*. prefix) that indicates whether the delegate's model item has any child nodes.

**See also** [modelIndex()](#modelIndex-method) and [parentModelIndex()](#parentModelIndex-method).

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="groups-attached-prop"></span><span class="name">DelegateModel.groups</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This attached property holds the name of DelegateModelGroups the item belongs to.

It is attached to each instance of the delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="inItems-attached-prop"></span><span class="name">DelegateModel.inItems</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This attached property holds whether the item belongs to the default [items](#items-prop) [DelegateModelGroup](../QtQml.DelegateModelGroup.md).

Changing this property will add or remove the item from the items group.

It is attached to each instance of the delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="inPersistedItems-attached-prop"></span><span class="name">DelegateModel.inPersistedItems</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This attached property holds whether the item belongs to the [persistedItems](#persistedItems-prop) [DelegateModelGroup](../QtQml.DelegateModelGroup.md).

Changing this property will add or remove the item from the items group. Change with caution as removing an item from the [persistedItems](#persistedItems-prop) group will destroy the current instance if it is not referenced by a model.

It is attached to each instance of the delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isUnresolved-attached-prop"></span><span class="name">DelegateModel.isUnresolved</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This attached property holds whether the visual item is bound to a data model index. Returns true if the item is not bound to the model, and false if it is.

An unresolved item can be bound to the data model using the [DelegateModelGroup::resolve()](../QtQml.DelegateModelGroup.md#resolve-method) function.

It is attached to each instance of the delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemsIndex-attached-prop"></span><span class="name">DelegateModel.itemsIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This attached property holds the index of the item in the default [items](#items-prop) [DelegateModelGroup](../QtQml.DelegateModelGroup.md).

It is attached to each instance of the delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-attached-prop"></span><span class="name">DelegateModel.model</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This attached property holds the visual data model this delegate instance belongs to.

It is attached to each instance of the delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="persistedItemsIndex-attached-prop"></span><span class="name">DelegateModel.persistedItemsIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This attached property holds the index of the item in the [persistedItems](#persistedItems-prop) [DelegateModelGroup](../QtQml.DelegateModelGroup.md).

It is attached to each instance of the delegate.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modelIndex-method"></span><span class="type">QModelIndex</span> <span class="name">modelIndex</span>(<span class="type">int</span> <em>index</em>)</p></td>
</tr>
</tbody>
</table>

QAbstractItemModel provides a hierarchical tree of data, whereas QML only operates on list data. This function assists in using tree models in QML.

Returns a QModelIndex for the specified index. This value can be assigned to [rootIndex](#rootIndex-prop).

**See also** [rootIndex](#rootIndex-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parentModelIndex-method"></span><span class="type">QModelIndex</span> <span class="name">parentModelIndex</span>()</p></td>
</tr>
</tbody>
</table>

QAbstractItemModel provides a hierarchical tree of data, whereas QML only operates on list data. This function assists in using tree models in QML.

Returns a QModelIndex for the parent of the current [rootIndex](#rootIndex-prop). This value can be assigned to [rootIndex](#rootIndex-prop).

**See also** [rootIndex](#rootIndex-prop).

