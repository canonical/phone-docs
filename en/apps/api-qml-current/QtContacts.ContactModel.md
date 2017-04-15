---
Title: QtContacts.ContactModel
---
        
ContactModel
============

<span class="subtitle"></span>
The ContactModel element provides access to contacts from the contacts store. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[ImportError](#ImportError-prop)**** : enumeration
-   ****[StorageLocation](#StorageLocation-prop)**** : enumeration
-   ****[autoUpdate](#autoUpdate-prop)**** : bool
-   ****[availableManagers](#availableManagers-prop)**** : list&lt;string&gt;
-   ****[contacts](#contacts-prop)**** : list&lt;Contact&gt;
-   ****[error](#error-prop)**** : string
-   ****[fetchHint](#fetchHint-prop)**** : FetchHint
-   ****[filter](#filter-prop)**** : Filter
-   ****[manager](#manager-prop)**** : string
-   ****[sortOrders](#sortOrders-prop)**** : list&lt;SortOrder&gt;
-   ****[storageLocations](#storageLocations-prop)**** : int

<span id="signals"></span>
Signals
-------

-   ****[contactsFetched](#contactsFetched-signal)****(int *requestId*, list&lt;Contact&gt; *fetchedContacts*)
-   ****[onImportCompleted](#onImportCompleted-signal)****(ImportError *error*, URL *url*, list&lt;string&gt; *ids*)
-   ****[storageLocationsChanged](#storageLocationsChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   void ****[exportContacts](#exportContacts-method)****(url *url*, list&lt;string&gt; *profiles*, list&lt;variant&gt; *declarativeContacts*)
-   int ****[fetchContacts](#fetchContacts-method)****(list&lt;string&gt; *contactIds*)
-   void ****[importContacts](#importContacts-method)****(url *url*, list&lt;string&gt; *profiles*)
-   ****[removeContact](#removeContact-method)****(string *contactId*)
-   ****[removeContacts](#removeContacts-method)****(list&lt;string&gt; *contactIds*)
-   ****[saveContact](#saveContact-method)****(Contact *contact*, StorageLocation *storageLocation*)

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

[ContactModel](index.html) provides a model of contacts from the contacts store. The contents of the model can be specified with [filter](#filter-prop), [sortOrders](#sortOrders-prop) and [fetchHint](#fetchHint-prop) properties. Whether the model is automatically updated when the store or [contacts](#contacts-prop) changes, can be controlled with [ContactModel::autoUpdate](#autoUpdate-prop) property.

There are two ways of accessing the contact data: via model by using views and delegates, or alternatively via [contacts](#contacts-prop) list property. Of the two, the model access is preferred. Direct list access (i.e. non-model) is not guaranteed to be in order set by sortOrder.

At the moment the model roles provided by [ContactModel](index.html) are display, decoration and `contact`. Through the `contact` role can access any data provided by the Contact element.

**See also** RelationshipModel, Contact, and QContactManager.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ImportError-prop"></span><span class="name">ImportError</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Defines the errors cases for [ContactModel::importContacts()](#importContacts-method) -function.

-   ContactModel::ImportNoError Completed successfully, no error.
-   ContactModel::ImportUnspecifiedError Unspecified error.
-   ContactModel::ImportIOError Input/output error.
-   ContactModel::ImportOutOfMemoryError Out of memory error.
-   ContactModel::ImportNotReadyError Not ready for importing. Only one import operation can be active at a time.
-   ContactModel::ImportParseError Error during parsing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="StorageLocation-prop"></span><span class="name">StorageLocation</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Defines the different storage locations for saving contacts and model population purposes.

-   ContactModel::UserDataStorage A storage location where user data is stored.
-   ContactModel::SystemStorage A storage location where system files are stored.

Depending on the backend implementation, the access rights for different storage locations might vary.

**See also** [ContactModel::storageLocations](#storageLocations-prop) and [ContactModel::saveContact](#saveContact-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoUpdate-prop"></span><span class="name">autoUpdate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether or not the contact model should be updated automatically, default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availableManagers-prop"></span><span class="name">availableManagers</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of available manager names. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contacts-prop"></span><span class="name">contacts</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Contact.md">Contact</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of contacts.

**See also** [Contact](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtContacts.qtcontacts-overview/#contact).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the latest error code returned by the contact manager.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchHint-prop"></span><span class="name">fetchHint</span> : <span class="type"><a href="QtContacts.FetchHint.md">FetchHint</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the fetch hint instance used by the contact model.

**See also** [FetchHint](../QtContacts.FetchHint.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="filter-prop"></span><span class="name">filter</span> : <span class="type"><a href="QtContacts.Filter.md">Filter</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the filter instance used by the contact model.

**See also** [Filter](../QtContacts.Filter.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manager-prop"></span><span class="name">manager</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the manager uri of the contact backend engine.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sortOrders-prop"></span><span class="name">sortOrders</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.SortOrder.md">SortOrder</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of sort orders used by the contacts model.

**See also** [SortOrder](../QtContacts.SortOrder.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="storageLocations-prop"></span><span class="name">storageLocations</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property indicates which storage location is used to populate the model.

Only one storage location can be used for each model.

Storage location is a backend specific feature. Some backends support it and some might just ignore it. If backend is having some specific requirements and they're not met, backend returns StorageLocationsNotExistingError.

**See also** [ContactModel::StorageLocation](#StorageLocation-prop) and [ContactModel::saveContact](#saveContact-method).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contactsFetched-signal"></span><span class="name">contactsFetched</span>(<span class="type">int</span> <em>requestId</em>, <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Contact.md">Contact</a></span>&gt; <em>fetchedContacts</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when a contact fetch request is finished.

**See also** [ContactModel::fetchContacts](#fetchContacts-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onImportCompleted-signal"></span><span class="name">onImportCompleted</span>(<span class="type"><a href="#ImportError-prop">ImportError</a></span> <em>error</em>, <span class="type">URL</span> <em>url</em>, <span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>ids</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when [ContactModel::importContacts()](#importContacts-method) completes. The success of operation can be seen on *error* which is defined in [ContactModel::ImportError](#ImportError-prop). *url* indicates the file, which was imported. *ids* contains the imported contacts ids.

If the operation was successful, contacts are now imported to backend. If [ContactModel::autoUpdate](#autoUpdate-prop) is enabled, ContactModel::modelChanged will be emitted when imported contacts are also visible on [ContactModel](index.html)'s data model.

**See also** [ContactModel::importContacts](#importContacts-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="storageLocationsChanged-signal"></span><span class="name">storageLocationsChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted, when [ContactModel::storageLocations](#storageLocations-prop) property changes.

**See also** [ContactModel::storageLocations](#storageLocations-prop).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exportContacts-method"></span><span class="type">void</span> <span class="name">exportContacts</span>(<span class="type">url</span> <em>url</em>, <span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>profiles</em>, <span class="type">list</span>&lt;<span class="type">variant</span>&gt; <em>declarativeContacts</em>)</p></td>
</tr>
</tbody>
</table>

Export all contacts of this model into a vcard file to the given *url* by optional *profiles*. The optional *declarativeContacts* list can be used to export an arbitrary list of QDeclarativeContact objects not necessarily belonging to the data set of this model. At the moment only the local file url is supported in export method. Also, only one export operation can be active at a time. Supported profiles are:

-   "Sync" exports contacts in sync mode, currently, this is the same as passing in an empty list, and is generally what you want.
-   "Backup" exports contacts in backup mode, this will add non-standard properties to the generated vCard to try to save every detail of the contacts. Only use this if the vCard is going to be imported using the backup profile. \#include "moc\_qdeclarativecontactmodel\_p.cpp"

**See also** QVersitContactHandlerFactory, QVersitContactHandlerFactory::ProfileSync(), and QVersitContactHandlerFactory::ProfileBackup().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fetchContacts-method"></span><span class="type">int</span> <span class="name">fetchContacts</span>(<span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>contactIds</em>)</p></td>
</tr>
</tbody>
</table>

Starts a request to fetch contacts by the given *contactIds*, and returns the unique ID of this request. -1 is returned if the request can't be started.

Note that the contacts fetched won't be added to the model, but can be accessed through the [contactsFetched](#contactsFetched-signal) signal handler.

**See also** [ContactModel::contactsFetched](#contactsFetched-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="importContacts-method"></span><span class="type">void</span> <span class="name">importContacts</span>(<span class="type">url</span> <em>url</em>, <span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>profiles</em>)</p></td>
</tr>
</tbody>
</table>

Import contacts from a vcard by the given *url* and optional *profiles*. Only one import operation can be active at a time. Supported profiles are:

-   "Sync" Imports contacts in sync mode, currently, this is the same as passing in an empty list, and is generally what you want.
-   "Backup" imports contacts in backup mode, use this mode if the vCard was generated by exporting in backup mode.

**See also** QVersitContactHandlerFactory, QVersitContactHandlerFactory::ProfileSync(), and QVersitContactHandlerFactory::ProfileBackup().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeContact-method"></span><span class="name">removeContact</span>(<span class="type">string</span> <em>contactId</em>)</p></td>
</tr>
</tbody>
</table>

Remove the contact from the contacts store by given *contactId*. After removing a contact it is not possible to save it again.

**See also** [Contact::contactId](../QtContacts.Contact.md#contactId-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeContacts-method"></span><span class="name">removeContacts</span>(<span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>contactIds</em>)</p></td>
</tr>
</tbody>
</table>

Remove the list of contacts from the contacts store by given *contactIds*.

**See also** [Contact::contactId](../QtContacts.Contact.md#contactId-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="saveContact-method"></span><span class="name">saveContact</span>(<span class="type"><a href="QtContacts.Contact.md">Contact</a></span> <em>contact</em>, <span class="type"><a href="#StorageLocation-prop">StorageLocation</a></span> <em>storageLocation</em> = UserDataStorage)</p></td>
</tr>
</tbody>
</table>

Save the given *contact* into the contacts backend.

The location for storing the contact can be defined with *storageLocation* for new contacts. When the contact is updated, ie saved again, *storageLocation* is ignored and the contact is saved to the same location as it were before.

Once saved successfully, the dirty flags of this contact will be reset.

**See also** [Contact::modified](../QtContacts.Contact.md#modified-prop).

