---
Title: QtQml.DelegateModelGroup
---
        
DelegateModelGroup
==================

<span class="subtitle"></span>
Encapsulates a filtered set of visual data items More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtQml.Models 2.1 |

<span id="properties"></span>
Properties
----------

-   ****[count](#count-prop)**** : int
-   ****[includeByDefault](#includeByDefault-prop)**** : bool
-   ****[name](#name-prop)**** : string

<span id="signals"></span>
Signals
-------

-   void ****[changed](#changed-signal)****(array *removed*, array *inserted*)

<span id="methods"></span>
Methods
-------

-   void ****[addGroups](#addGroups-method)****(int *index*, int *count*, stringlist *groups*)
-   void ****[create](#create-method-3)****(jsdict *data*, array *groups*)
-   void ****[create](#create-method-2)****(int *index*, jsdict *data*, array *groups*)
-   void ****[create](#create-method)****(int *index*)
-   object ****[get](#get-method)****(int *index*)
-   void ****[insert](#insert-method-2)****(jsdict *data*, var *groups*)
-   void ****[insert](#insert-method)****(int *index*, jsdict *data*, array *groups*)
-   void ****[move](#move-method)****(var *from*, var *to*, int *count*)
-   void ****[remove](#remove-method)****(int *index*, int *count*)
-   void ****[removeGroups](#removeGroups-method)****(int *index*, int *count*, stringlist *groups*)
-   void ****[resolve](#resolve-method)****(int *from*, int *to*)
-   void ****[setGroups](#setGroups-method-2)****(int *index*, int *count*, stringlist *groups*)
-   void ****[setGroups](#setGroups-method)****(int *index*, int *count*, stringlist *groups*)

<span id="details"></span>
Detailed Description
--------------------

The [DelegateModelGroup](index.html) type provides a means to address the model data of a [DelegateModel](../QtQml.DelegateModel.md)'s delegate items, as well as sort and filter these delegate items.

The initial set of instantiable delegate items in a [DelegateModel](../QtQml.DelegateModel.md) is represented by its [items](../QtQml.DelegateModel.md#items-prop) group, which normally directly reflects the contents of the model assigned to [DelegateModel::model](../QtQml.DelegateModel.md#model-attached-prop). This set can be changed to the contents of any other member of [DelegateModel::groups](../QtQml.DelegateModel.md#groups-attached-prop) by assigning the [name](#name-prop) of that [DelegateModelGroup](index.html) to the [DelegateModel::filterOnGroup](../QtQml.DelegateModel.md#filterOnGroup-prop) property.

The data of an item in a [DelegateModelGroup](index.html) can be accessed using the [get()](#get-method) function, which returns information about group membership and indexes as well as model data. In combination with the [move()](#move-method) function this can be used to implement view sorting, with [remove()](#remove-method) to filter items out of a view, or with [setGroups()](#setGroups-method) and [Package](../QtQml.Package.md) delegates to categorize items into different views.

Data from models can be supplemented by inserting data directly into a [DelegateModelGroup](index.html) with the [insert()](#insert-method) function. This can be used to introduce mock items into a view, or placeholder items that are later [resolved](#resolve-method) to real model data when it becomes available.

Delegate items can also be instantiated directly from a [DelegateModelGroup](index.html) using the [create()](#create-method) function, making it possible to use [DelegateModel](../QtQml.DelegateModel.md) without an accompanying view type or to cherry-pick specific items that should be instantiated irregardless of whether they're currently within a view's visible area.

**Note:** This type is also available as [VisualDataGroup](../QtQml.VisualDataGroup.md) in the [Qt QML](../QtQml.qtqml-index.md) module due to compatibility reasons.

**See also** QML Dynamic View Ordering Tutorial.

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

This property holds the number of items in the group.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="includeByDefault-prop"></span><span class="name">includeByDefault</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether new items are assigned to this group by default.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the group.

Each group in a model must have a unique name starting with a lower case letter.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="changed-signal"></span><span class="type">void</span> <span class="name">changed</span>(<span class="type">array</span> <em>removed</em>, <span class="type">array</span> <em>inserted</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when items have been removed from or inserted into the group.

Each object in the *removed* and *inserted* arrays has two values; the *index* of the first item inserted or removed and a *count* of the number of consecutive items inserted or removed.

Each index is adjusted for previous changes with all removed items preceding any inserted items.

The corresponding handler is `onChanged`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addGroups-method"></span><span class="type">void</span> <span class="name">addGroups</span>(<span class="type">int</span> <em>index</em>, <span class="type">int</span> <em>count</em>, <span class="type">stringlist</span> <em>groups</em>)</p></td>
</tr>
</tbody>
</table>

Adds *count* items starting at *index* to *groups*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="create-method-3"></span><span class="type">void</span> <span class="name">create</span>(<span class="type">jsdict</span> <em>data</em>, <span class="type">array</span> <em>groups</em> = undefined)</p></td>
</tr>
</tbody>
</table>

Returns a reference to the instantiated item at *index* in the group.

If a *data* object is provided it will be [inserted](#insert-method) at *index* and an item referencing this new entry will be returned. The optional *groups* parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group [create()](#create-method) was called on.

All items returned by create are added to the [persistedItems](../QtQml.DelegateModel.md#persistedItems-prop) group. Items in this group remain instantiated when not referenced by any view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="create-method-2"></span><span class="type">void</span> <span class="name">create</span>(<span class="type">int</span> <em>index</em>, <span class="type">jsdict</span> <em>data</em>, <span class="type">array</span> <em>groups</em> = undefined)</p></td>
</tr>
</tbody>
</table>

Returns a reference to the instantiated item at *index* in the group.

If a *data* object is provided it will be [inserted](#insert-method) at *index* and an item referencing this new entry will be returned. The optional *groups* parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group [create()](#create-method) was called on.

All items returned by create are added to the [persistedItems](../QtQml.DelegateModel.md#persistedItems-prop) group. Items in this group remain instantiated when not referenced by any view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="create-method"></span><span class="type">void</span> <span class="name">create</span>(<span class="type">int</span> <em>index</em>)</p></td>
</tr>
</tbody>
</table>

Returns a reference to the instantiated item at *index* in the group.

If a *data* object is provided it will be [inserted](#insert-method) at *index* and an item referencing this new entry will be returned. The optional *groups* parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group create() was called on.

All items returned by create are added to the [persistedItems](../QtQml.DelegateModel.md#persistedItems-prop) group. Items in this group remain instantiated when not referenced by any view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="get-method"></span><span class="type">object</span> <span class="name">get</span>(<span class="type">int</span> <em>index</em>)</p></td>
</tr>
</tbody>
</table>

Returns a javascript object describing the item at *index* in the group.

The returned object contains the same information that is available to a delegate from the [DelegateModel](../QtQml.DelegateModel.md) attached as well as the model for that item. It has the properties:

-   **model** The model data of the item. This is the same as the model context property in a delegate
-   **groups** A list the of names of groups the item is a member of. This property can be written to change the item's membership.
-   **inItems** Whether the item belongs to the [items](../QtQml.DelegateModel.md#items-prop) group. Writing to this property will add or remove the item from the group.
-   **itemsIndex** The index of the item within the [items](../QtQml.DelegateModel.md#items-prop) group.
-   **in&lt;GroupName&gt;** Whether the item belongs to the dynamic group *groupName*. Writing to this property will add or remove the item from the group.
-   **&lt;groupName&gt;Index** The index of the item within the dynamic group *groupName*.
-   **isUnresolved** Whether the item is bound to an index in the model assigned to [DelegateModel::model](../QtQml.DelegateModel.md#model-attached-prop). Returns true if the item is not bound to the model, and false if it is.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="insert-method-2"></span><span class="type">void</span> <span class="name">insert</span>(<span class="type">jsdict</span> <em>data</em>, <span class="type">var</span> <em>groups</em> = undefined)</p></td>
</tr>
</tbody>
</table>

Creates a new entry at *index* in a DelegateModel with the values from *data* that correspond to roles in the model assigned to DelegateModel::model.

If no index is supplied the data is appended to the model.

The optional *groups* parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group insert was called on.

Data inserted into a [DelegateModel](../QtQml.DelegateModel.md) can later be merged with an existing entry in [DelegateModel::model](../QtQml.DelegateModel.md#model-attached-prop) using the [resolve()](#resolve-method) function. This can be used to create placeholder items that are later replaced by actual data.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="insert-method"></span><span class="type">void</span> <span class="name">insert</span>(<span class="type">int</span> <em>index</em>, <span class="type">jsdict</span> <em>data</em>, <span class="type">array</span> <em>groups</em> = undefined)</p></td>
</tr>
</tbody>
</table>

Creates a new entry at *index* in a [DelegateModel](../QtQml.DelegateModel.md) with the values from *data* that correspond to roles in the model assigned to [DelegateModel::model](../QtQml.DelegateModel.md#model-attached-prop).

If no index is supplied the data is appended to the model.

The optional *groups* parameter identifies the groups the new entry should belong to, if unspecified this is equal to the group insert was called on.

Data inserted into a [DelegateModel](../QtQml.DelegateModel.md) can later be merged with an existing entry in [DelegateModel::model](../QtQml.DelegateModel.md#model-attached-prop) using the [resolve()](#resolve-method) function. This can be used to create placeholder items that are later replaced by actual data.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="move-method"></span><span class="type">void</span> <span class="name">move</span>(<span class="type">var</span> <em>from</em>, <span class="type">var</span> <em>to</em>, <span class="type">int</span> <em>count</em>)</p></td>
</tr>
</tbody>
</table>

Moves *count* at *from* in a group *to* a new position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-method"></span><span class="type">void</span> <span class="name">remove</span>(<span class="type">int</span> <em>index</em>, <span class="type">int</span> <em>count</em>)</p></td>
</tr>
</tbody>
</table>

Removes *count* items starting at *index* from the group.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeGroups-method"></span><span class="type">void</span> <span class="name">removeGroups</span>(<span class="type">int</span> <em>index</em>, <span class="type">int</span> <em>count</em>, <span class="type">stringlist</span> <em>groups</em>)</p></td>
</tr>
</tbody>
</table>

Removes *count* items starting at *index* from *groups*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resolve-method"></span><span class="type">void</span> <span class="name">resolve</span>(<span class="type">int</span> <em>from</em>, <span class="type">int</span> <em>to</em>)</p></td>
</tr>
</tbody>
</table>

Binds an unresolved item at *from* to an item in [DelegateModel::model](../QtQml.DelegateModel.md#model-attached-prop) at index *to*.

Unresolved items are entries whose data has been [inserted](#insert-method) into a [DelegateModelGroup](index.html) instead of being derived from a [DelegateModel::model](../QtQml.DelegateModel.md#model-attached-prop) index. Resolving an item will replace the item at the target index with the unresolved item. A resolved an item will reflect the data of the source model at its bound index and will move when that index moves like any other item.

If a new item is replaced in the [DelegateModelGroup](index.html) onChanged() handler its insertion and replacement will be communicated to views as an atomic operation, creating the appearance that the model contents have not changed, or if the unresolved and model item are not adjacent that the previously unresolved item has simply moved.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setGroups-method-2"></span><span class="type">void</span> <span class="name">setGroups</span>(<span class="type">int</span> <em>index</em>, <span class="type">int</span> <em>count</em>, <span class="type">stringlist</span> <em>groups</em>)</p></td>
</tr>
</tbody>
</table>

Sets the *groups* *count* items starting at *index* belong to.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setGroups-method"></span><span class="type">void</span> <span class="name">setGroups</span>(<span class="type">int</span> <em>index</em>, <span class="type">int</span> <em>count</em>, <span class="type">stringlist</span> <em>groups</em>)</p></td>
</tr>
</tbody>
</table>

Sets the *groups* *count* items starting at *index* belong to.

