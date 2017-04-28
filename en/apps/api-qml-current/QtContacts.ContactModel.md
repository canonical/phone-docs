---
Title: QtContacts.ContactModel
---

# QtContacts.ContactModel

<span class="subtitle"></span>
<!-- $$$ContactModel-brief -->
<p>The ContactModel element provides access to contacts from the contacts store. More...</p>
<!-- @@@ContactModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#ImportError-prop">ImportError</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#StorageLocation-prop">StorageLocation</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#autoUpdate-prop">autoUpdate</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#availableManagers-prop">availableManagers</a></b></b> : list&lt;string&gt;</li>
<li class="fn"><b><b><a href="#contacts-prop">contacts</a></b></b> : list&lt;Contact&gt;</li>
<li class="fn"><b><b><a href="#error-prop">error</a></b></b> : string</li>
<li class="fn"><b><b><a href="#fetchHint-prop">fetchHint</a></b></b> : FetchHint</li>
<li class="fn"><b><b><a href="#filter-prop">filter</a></b></b> : Filter</li>
<li class="fn"><b><b><a href="#manager-prop">manager</a></b></b> : string</li>
<li class="fn"><b><b><a href="#sortOrders-prop">sortOrders</a></b></b> : list&lt;SortOrder&gt;</li>
<li class="fn"><b><b><a href="#storageLocations-prop">storageLocations</a></b></b> : int</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#contactsFetched-signal">contactsFetched</a></b></b>(int <i>requestId</i>, list&lt;Contact&gt; <i>fetchedContacts</i>)</li>
<li class="fn"><b><b><a href="#onImportCompleted-signal">onImportCompleted</a></b></b>(ImportError <i>error</i>, URL <i>url</i>, list&lt;string&gt; <i>ids</i>)</li>
<li class="fn"><b><b><a href="#storageLocationsChanged-signal">storageLocationsChanged</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#exportContacts-method">exportContacts</a></b></b>(url <i>url</i>, list&lt;string&gt; <i>profiles</i>, list&lt;variant&gt; <i>declarativeContacts</i>)</li>
<li class="fn">int <b><b><a href="#fetchContacts-method">fetchContacts</a></b></b>(list&lt;string&gt; <i>contactIds</i>)</li>
<li class="fn">void <b><b><a href="#importContacts-method">importContacts</a></b></b>(url <i>url</i>, list&lt;string&gt; <i>profiles</i>)</li>
<li class="fn"><b><b><a href="#removeContact-method">removeContact</a></b></b>(string <i>contactId</i>)</li>
<li class="fn"><b><b><a href="#removeContacts-method">removeContacts</a></b></b>(list&lt;string&gt; <i>contactIds</i>)</li>
<li class="fn"><b><b><a href="#saveContact-method">saveContact</a></b></b>(Contact <i>contact</i>, StorageLocation <i>storageLocation</i>)</li>
</ul>
<!-- $$$ContactModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element is part of the <b>QtContacts</b> module.</p>
<p><a href="index.html">ContactModel</a> provides a model of contacts from the contacts store. The contents of the model can be specified with <a href="#filter-prop">filter</a>, <a href="#sortOrders-prop">sortOrders</a> and <a href="#fetchHint-prop">fetchHint</a> properties. Whether the model is automatically updated when the store or <a href="#contacts-prop">contacts</a> changes, can be controlled with <a href="#autoUpdate-prop">ContactModel::autoUpdate</a> property.</p>
<p>There are two ways of accessing the contact data: via model by using views and delegates, or alternatively via <a href="#contacts-prop">contacts</a> list property. Of the two, the model access is preferred. Direct list access (i.e&#x2e; non-model) is not guaranteed to be in order set by sortOrder.</p>
<p>At the moment the model roles provided by <a href="index.html">ContactModel</a> are display, decoration and <code>contact</code>. Through the <code>contact</code> role can access any data provided by the Contact element.</p>
<p><b>See also </b>RelationshipModel, Contact, and QContactManager.</p>
<!-- @@@ContactModel -->
<h2>Property Documentation</h2>
<!-- $$$ImportError -->
<table class="qmlname"><tr valign="top" id="ImportError-prop"><td class="tblQmlPropNode"><p><span class="name">ImportError</span> : <span class="type">enumeration</span></p></td></tr></table><p>Defines the errors cases for <a href="#importContacts-method">ContactModel::importContacts()</a> -function.</p>
<ul>
<li>ContactModel::ImportNoError Completed successfully, no error.</li>
<li>ContactModel::ImportUnspecifiedError Unspecified error.</li>
<li>ContactModel::ImportIOError Input/output error.</li>
<li>ContactModel::ImportOutOfMemoryError Out of memory error.</li>
<li>ContactModel::ImportNotReadyError Not ready for importing. Only one import operation can be active at a time.</li>
<li>ContactModel::ImportParseError Error during parsing.</li>
</ul>
<!-- @@@ImportError -->
<br/>
<!-- $$$StorageLocation -->
<table class="qmlname"><tr valign="top" id="StorageLocation-prop"><td class="tblQmlPropNode"><p><span class="name">StorageLocation</span> : <span class="type">enumeration</span></p></td></tr></table><p>Defines the different storage locations for saving contacts and model population purposes.</p>
<ul>
<li>ContactModel::UserDataStorage A storage location where user data is stored.</li>
<li>ContactModel::SystemStorage A storage location where system files are stored.</li>
</ul>
<p>Depending on the backend implementation, the access rights for different storage locations might vary.</p>
<p><b>See also </b><a href="#storageLocations-prop">ContactModel::storageLocations</a> and <a href="#saveContact-method">ContactModel::saveContact</a>.</p>
<!-- @@@StorageLocation -->
<br/>
<!-- $$$autoUpdate -->
<table class="qmlname"><tr valign="top" id="autoUpdate-prop"><td class="tblQmlPropNode"><p><span class="name">autoUpdate</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether or not the contact model should be updated automatically, default value is true.</p>
<!-- @@@autoUpdate -->
<br/>
<!-- $$$availableManagers -->
<table class="qmlname"><tr valign="top" id="availableManagers-prop"><td class="tblQmlPropNode"><p><span class="name">availableManagers</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>This property holds the list of available manager names. This property is read only.</p>
<!-- @@@availableManagers -->
<br/>
<!-- $$$contacts -->
<table class="qmlname"><tr valign="top" id="contacts-prop"><td class="tblQmlPropNode"><p><span class="name">contacts</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Contact.md">Contact</a></span>&gt;</p></td></tr></table><p>This property holds the list of contacts.</p>
<p><b>See also </b><a href="QtContacts.md#contact">Contact</a>.</p>
<!-- @@@contacts -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the latest error code returned by the contact manager.</p>
<p>This property is read only.</p>
<!-- @@@error -->
<br/>
<!-- $$$fetchHint -->
<table class="qmlname"><tr valign="top" id="fetchHint-prop"><td class="tblQmlPropNode"><p><span class="name">fetchHint</span> : <span class="type"><a href="QtContacts.FetchHint.md">FetchHint</a></span></p></td></tr></table><p>This property holds the fetch hint instance used by the contact model.</p>
<p><b>See also </b><a href="QtContacts.FetchHint.md">FetchHint</a>.</p>
<!-- @@@fetchHint -->
<br/>
<!-- $$$filter -->
<table class="qmlname"><tr valign="top" id="filter-prop"><td class="tblQmlPropNode"><p><span class="name">filter</span> : <span class="type"><a href="QtContacts.Filter.md">Filter</a></span></p></td></tr></table><p>This property holds the filter instance used by the contact model.</p>
<p><b>See also </b><a href="QtContacts.Filter.md">Filter</a>.</p>
<!-- @@@filter -->
<br/>
<!-- $$$manager -->
<table class="qmlname"><tr valign="top" id="manager-prop"><td class="tblQmlPropNode"><p><span class="name">manager</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the manager uri of the contact backend engine.</p>
<!-- @@@manager -->
<br/>
<!-- $$$sortOrders -->
<table class="qmlname"><tr valign="top" id="sortOrders-prop"><td class="tblQmlPropNode"><p><span class="name">sortOrders</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.SortOrder.md">SortOrder</a></span>&gt;</p></td></tr></table><p>This property holds a list of sort orders used by the contacts model.</p>
<p><b>See also </b><a href="QtContacts.SortOrder.md">SortOrder</a>.</p>
<!-- @@@sortOrders -->
<br/>
<!-- $$$storageLocations -->
<table class="qmlname"><tr valign="top" id="storageLocations-prop"><td class="tblQmlPropNode"><p><span class="name">storageLocations</span> : <span class="type">int</span></p></td></tr></table><p>This property indicates which storage location is used to populate the model.</p>
<p>Only one storage location can be used for each model.</p>
<p>Storage location is a backend specific feature. Some backends support it and some might just ignore it. If backend is having some specific requirements and they're not met, backend returns StorageLocationsNotExistingError.</p>
<p><b>See also </b><a href="#StorageLocation-prop">ContactModel::StorageLocation</a> and <a href="#saveContact-method">ContactModel::saveContact</a>.</p>
<!-- @@@storageLocations -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$contactsFetched -->
<table class="qmlname"><tr valign="top" id="contactsFetched-signal"><td class="tblQmlFuncNode"><p><span class="name">contactsFetched</span>(<span class="type">int</span><i> requestId</i>, <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Contact.md">Contact</a></span>&gt;<i> fetchedContacts</i>)</p></td></tr></table><p>This signal is emitted, when a contact fetch request is finished.</p>
<p><b>See also </b><a href="#fetchContacts-method">ContactModel::fetchContacts</a>.</p>
<!-- @@@contactsFetched -->
<br/>
<!-- $$$onImportCompleted -->
<table class="qmlname"><tr valign="top" id="onImportCompleted-signal"><td class="tblQmlFuncNode"><p><span class="name">onImportCompleted</span>(<span class="type"><a href="#ImportError-prop">ImportError</a></span><i> error</i>, <span class="type">URL</span><i> url</i>, <span class="type">list</span>&lt;<span class="type">string</span>&gt;<i> ids</i>)</p></td></tr></table><p>This signal is emitted, when <a href="#importContacts-method">ContactModel::importContacts()</a> completes. The success of operation can be seen on <i>error</i> which is defined in <a href="#ImportError-prop">ContactModel::ImportError</a>. <i>url</i> indicates the file, which was imported. <i>ids</i> contains the imported contacts ids.</p>
<p>If the operation was successful, contacts are now imported to backend. If <a href="#autoUpdate-prop">ContactModel::autoUpdate</a> is enabled, ContactModel::modelChanged will be emitted when imported contacts are also visible on <a href="index.html">ContactModel</a>'s data model.</p>
<p><b>See also </b><a href="#importContacts-method">ContactModel::importContacts</a>.</p>
<!-- @@@onImportCompleted -->
<br/>
<!-- $$$storageLocationsChanged -->
<table class="qmlname"><tr valign="top" id="storageLocationsChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">storageLocationsChanged</span>()</p></td></tr></table><p>This signal is emitted, when <a href="#storageLocations-prop">ContactModel::storageLocations</a> property changes.</p>
<p><b>See also </b><a href="#storageLocations-prop">ContactModel::storageLocations</a>.</p>
<!-- @@@storageLocationsChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$exportContacts -->
<table class="qmlname"><tr valign="top" id="exportContacts-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">exportContacts</span>(<span class="type">url</span><i> url</i>, <span class="type">list</span>&lt;<span class="type">string</span>&gt;<i> profiles</i>, <span class="type">list</span>&lt;<span class="type">variant</span>&gt;<i> declarativeContacts</i>)</p></td></tr></table><p>Export all contacts of this model into a vcard file to the given <i>url</i> by optional <i>profiles</i>. The optional <i>declarativeContacts</i> list can be used to export an arbitrary list of QDeclarativeContact objects not necessarily belonging to the data set of this model. At the moment only the local file url is supported in export method. Also, only one export operation can be active at a time. Supported profiles are:</p>
<ul>
<li>&quot;Sync&quot; exports contacts in sync mode, currently, this is the same as passing in an empty list, and is generally what you want.</li>
<li>&quot;Backup&quot; exports contacts in backup mode, this will add non-standard properties to the generated vCard to try to save every detail of the contacts. Only use this if the vCard is going to be imported using the backup profile. #include &quot;moc_qdeclarativecontactmodel_p.cpp&quot;</li>
</ul>
<p><b>See also </b>QVersitContactHandlerFactory, QVersitContactHandlerFactory::ProfileSync(), and QVersitContactHandlerFactory::ProfileBackup().</p>
<!-- @@@exportContacts -->
<br/>
<!-- $$$fetchContacts -->
<table class="qmlname"><tr valign="top" id="fetchContacts-method"><td class="tblQmlFuncNode"><p><span class="type">int</span> <span class="name">fetchContacts</span>(<span class="type">list</span>&lt;<span class="type">string</span>&gt;<i> contactIds</i>)</p></td></tr></table><p>Starts a request to fetch contacts by the given <i>contactIds</i>, and returns the unique ID of this request. -1 is returned if the request can't be started.</p>
<p>Note that the contacts fetched won't be added to the model, but can be accessed through the <a href="#contactsFetched-signal">contactsFetched</a> signal handler.</p>
<p><b>See also </b><a href="#contactsFetched-signal">ContactModel::contactsFetched</a>.</p>
<!-- @@@fetchContacts -->
<br/>
<!-- $$$importContacts -->
<table class="qmlname"><tr valign="top" id="importContacts-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">importContacts</span>(<span class="type">url</span><i> url</i>, <span class="type">list</span>&lt;<span class="type">string</span>&gt;<i> profiles</i>)</p></td></tr></table><p>Import contacts from a vcard by the given <i>url</i> and optional <i>profiles</i>. Only one import operation can be active at a time. Supported profiles are:</p>
<ul>
<li>&quot;Sync&quot; Imports contacts in sync mode, currently, this is the same as passing in an empty list, and is generally what you want.</li>
<li>&quot;Backup&quot; imports contacts in backup mode, use this mode if the vCard was generated by exporting in backup mode.</li>
</ul>
<p><b>See also </b>QVersitContactHandlerFactory, QVersitContactHandlerFactory::ProfileSync(), and QVersitContactHandlerFactory::ProfileBackup().</p>
<!-- @@@importContacts -->
<br/>
<!-- $$$removeContact -->
<table class="qmlname"><tr valign="top" id="removeContact-method"><td class="tblQmlFuncNode"><p><span class="name">removeContact</span>(<span class="type">string</span><i> contactId</i>)</p></td></tr></table><p>Remove the contact from the contacts store by given <i>contactId</i>. After removing a contact it is not possible to save it again.</p>
<p><b>See also </b><a href="QtContacts.Contact.md#contactId-prop">Contact::contactId</a>.</p>
<!-- @@@removeContact -->
<br/>
<!-- $$$removeContacts -->
<table class="qmlname"><tr valign="top" id="removeContacts-method"><td class="tblQmlFuncNode"><p><span class="name">removeContacts</span>(<span class="type">list</span>&lt;<span class="type">string</span>&gt;<i> contactIds</i>)</p></td></tr></table><p>Remove the list of contacts from the contacts store by given <i>contactIds</i>.</p>
<p><b>See also </b><a href="QtContacts.Contact.md#contactId-prop">Contact::contactId</a>.</p>
<!-- @@@removeContacts -->
<br/>
<!-- $$$saveContact -->
<table class="qmlname"><tr valign="top" id="saveContact-method"><td class="tblQmlFuncNode"><p><span class="name">saveContact</span>(<span class="type"><a href="QtContacts.Contact.md">Contact</a></span><i> contact</i>, <span class="type"><a href="#StorageLocation-prop">StorageLocation</a></span><i> storageLocation</i> = UserDataStorage)</p></td></tr></table><p>Save the given <i>contact</i> into the contacts backend.</p>
<p>The location for storing the contact can be defined with <i>storageLocation</i> for new contacts. When the contact is updated, ie saved again, <i>storageLocation</i> is ignored and the contact is saved to the same location as it were before.</p>
<p>Once saved successfully, the dirty flags of this contact will be reset.</p>
<p><b>See also </b><a href="QtContacts.Contact.md#modified-prop">Contact::modified</a>.</p>
<!-- @@@saveContact -->
<br/>
