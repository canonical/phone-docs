---
Title: QtQml.Instantiator
---
        
Instantiator
============

<span class="subtitle"></span>
Dynamically creates objects More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="properties"></span>
Properties
----------

-   ****[active](#active-prop)**** : bool
-   ****[asynchronous](#asynchronous-prop)**** : bool
-   ****[count](#count-prop)**** : int
-   ****[delegate](#delegate-prop)**** : QtQml::Component
-   ****[model](#model-prop)**** : variant
-   ****[object](#object-prop)**** : QtQml::QtObject

<span id="signals"></span>
Signals
-------

-   ****[objectAdded](#objectAdded-signal)****(int *index*, QtObject *object*)
-   ****[objectRemoved](#objectRemoved-signal)****(int *index*, QtObject *object*)

<span id="details"></span>
Detailed Description
--------------------

A Instantiator can be used to control the dynamic creation of objects, or to dynamically create multiple objects from a template.

The Instantiator element will manage the objects it creates. Those objects are parented to the Instantiator and can also be deleted by the Instantiator if the Instantiator's properties change. Objects can also be destroyed dynamically through other means, and the Instantiator will not recreate them unless the properties of the Instantiator change.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-prop"></span><span class="name">active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

When active is true, and the delegate component is ready, the Instantiator will create objects according to the model. When active is false, no objects will be created and any previously created objects will be destroyed.

Default is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="asynchronous-prop"></span><span class="name">asynchronous</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

When asynchronous is true the Instantiator will attempt to create objects asynchronously. This means that objects may not be available immediately, even if active is set to true.

You can use the [objectAdded](#objectAdded-signal) signal to respond to items being created.

Default is false.

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

The number of objects the Instantiator is currently managing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="qmldefault">[default] </span><span class="name">delegate</span> : <span class="type"><a href="QtQml.Component.md">QtQml::Component</a></span></p></td>
</tr>
</tbody>
</table>

The component used to create all objects.

Note that an extra variable, index, will be available inside instances of the delegate. This variable refers to the index of the instance inside the Instantiator, and can be used to obtain the object through the itemAt method of the Instantiator.

If this property is changed, all instances using the old delegate will be destroyed and new instances will be created using the new delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property can be set to any of the supported data models:

-   A number that indicates the number of delegates to be created by the repeater
-   A model (e.g. a [ListModel](../QtQml.ListModel.md) item, or a QAbstractItemModel subclass)
-   A string list
-   An object list

The type of model affects the properties that are exposed to the [delegate](#delegate-prop).

Default value is 1, which creates a single delegate instance.

**See also** Data Models.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="object-prop"></span><span class="name">object</span> : <span class="type"><a href="QtQml.QtObject.md">QtQml::QtObject</a></span></p></td>
</tr>
</tbody>
</table>

This is a reference to the first created object, intended as a convenience for the case where only one object has been created.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="objectAdded-signal"></span><span class="name">objectAdded</span>(<span class="type">int</span> <em>index</em>, <span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> <em>object</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an object is added to the Instantiator. The *index* parameter holds the index which the object has been given, and the *object* parameter holds the [QtObject](../QtQml.QtObject.md) that has been added.

The corresponding handler is `onObjectAdded`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="objectRemoved-signal"></span><span class="name">objectRemoved</span>(<span class="type">int</span> <em>index</em>, <span class="type"><a href="QtQml.QtObject.md">QtObject</a></span> <em>object</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an object is removed from the Instantiator. The *index* parameter holds the index which the object had been given, and the *object* parameter holds the [QtObject](../QtQml.QtObject.md) that has been removed.

Do not keep a reference to *object* if it was created by this Instantiator, as in these cases it will be deleted shortly after the signal is handled.

The corresponding handler is `onObjectRemoved`.

