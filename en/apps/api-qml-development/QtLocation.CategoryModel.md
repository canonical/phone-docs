---
Title: QtLocation.CategoryModel
---
        
CategoryModel
=============

<span class="subtitle"></span>
The CategoryModel type provides a model of the categories supported by a Plugin. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[hierarchical](../../sdk-15.04.1/QtLocation.CategoryModel.md#hierarchical-prop)**** : bool
-   ****[plugin](../../sdk-15.04.1/QtLocation.CategoryModel.md#plugin-prop)**** : Plugin
-   ****[status](../../sdk-15.04.1/QtLocation.CategoryModel.md#status-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[dataChanged](../../sdk-15.04.1/QtLocation.CategoryModel.md#dataChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   string ****[errorString](../../sdk-15.04.1/QtLocation.CategoryModel.md#errorString-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel.md) type provides a model of the categories that are available from the current [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin). The model supports both a flat list of categories and a hierarchical tree representing category groupings. This can be controlled by the [hierarchical](../../sdk-15.04.1/QtLocation.CategoryModel.md#hierarchical-prop) property.

The model supports the following roles:

| Role           | Type                                                                          | Description                                                                           |
|----------------|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
| category       | [Category](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#category) | Category object for the current item.                                                 |
| parentCategory | [Category](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#category) | Parent category object for the current item. If there is no parent, null is returned. |

The following example displays a flat list of all available categories:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
ListView {
    model: CategoryModel {
        plugin: myPlugin
        hierarchical: false
    }
    delegate: Text { text: category.name }
}
```

To access the hierarchical category model it is necessary to use a DelegateModel to access the child items.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hierarchical-prop"></span><span class="name">hierarchical</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the model provides a hierarchical tree of categories or a flat list. The default is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="plugin-prop"></span><span class="name">plugin</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Plugin.md">Plugin</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the provider [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml.md#plugin) used by this model.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of the model. It can be one of:

|                                                                                |                                                                                                      |
|--------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel.md).Null    | No category fetch query has been executed. The model is empty.                                       |
| [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel.md).Ready   | No error occurred during the last operation, further operations may be performed on the model.       |
| [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel.md).Loading | The model is being updated, no other operations may be performed until complete.                     |
| [CategoryModel](../../sdk-15.04.1/QtLocation.CategoryModel.md).Error   | An error occurred during the last operation, further operations can still be performed on the model. |

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dataChanged-signal"></span><span class="name">dataChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when significant changes have been made to the underlying datastore.

Applications should act on this signal at their own discretion. The data provided by the model could be out of date and so the model should be reupdated sometime, however an immediate reupdate may be disconcerting to users if the categories change without any action on their part.

The corresponding handler is `onDataChanged`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-method"></span><span class="type">string</span> <span class="name">errorString</span>() const</p></td>
</tr>
</tbody>
</table>

This read-only property holds the textual presentation of latest category model error. If no error has occurred, an empty string is returned.

An empty string may also be returned if an error occurred which has no associated textual representation.

