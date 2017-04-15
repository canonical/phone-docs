---
Title: Accounts.Manager
---
        
Manager
=======

<a href="../../sdk-15.04.1/Accounts.Manager.md" title="Manager of accounts, services and providers. ">Manager</a> of accounts, services and providers. [More...](../../sdk-15.04.1/Accounts.Manager.md#details)

`#include <Accounts/Manager>`

Inherits QObject.

pub-types
-----------------------------------------

enum  
<a href="../../sdk-15.04.1/Accounts.Manager.md#a0e65ad13124ea2cb5e255b640464e35f">Option</a> { <a href="../../sdk-15.04.1/Accounts.Manager.md#a0e65ad13124ea2cb5e255b640464e35fa8ab6226b5ae4221689bc2d25d6201ae9">DisableNotifications</a> = 0x1 }
 
Specifies options for the object. [More...](../../sdk-15.04.1/Accounts.Manager.md#a0e65ad13124ea2cb5e255b640464e35f)
 
signals
----------------------------------

void 
<a href="../../sdk-15.04.1/Accounts.Manager.md#ad6d2d0cfff2e9f11ab3327ddf573f1eb">accountCreated</a> (Accounts::AccountId id)
 
The signal is emitted when new account is created. More...
 
void 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a9e18c1ab3efc480d15fe72d833e9ab95">accountRemoved</a> (Accounts::AccountId id)
 
The signal is emitted when existing account is removed. More...
 
void 
<a href="../../sdk-15.04.1/Accounts.Manager.md#aa228f4eaf987ea3575c7ff9da03208e8">accountUpdated</a> (Accounts::AccountId id)
 
The signal is emitted when any account property for a particular service is updated. More...
 
void 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a9da726ad1ee02be3dea7c19b82bb373d">enabledEvent</a> (Accounts::AccountId id)
 
If the manager has been created with serviceType, this signal will be emitted when an account (identified by AccountId) has been modified in such a way that the application might be interested to start/stop using it: the "enabled" flag on the account or in some service supported by the account and matching the AgManager::serviceType have changed. More...
 
pub-methods
------------------------------------------------------

 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a904954dc41cf98ac053b00f12dbc0090">Manager</a> (QObject \*parent=0)
 
Constructor. More...
 
 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a2d948d667caf0a065d995c847ef57176">Manager</a> (const QString &<a href="../../sdk-15.04.1/Accounts.Manager.md#a2ace548efe2fbf601ecf6efcfcf9c980">serviceType</a>, QObject \*parent=0)
 
Constructs a manager initialized with service type. More...
 
 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a5140dac7527af074eca9a9f97c5a8cea">Manager</a> (Options <a href="../../sdk-15.04.1/Accounts.Manager.md#a42ec574899ed53e05880ce02e40073a1">options</a>, QObject \*parent=0)
 
Constructor, allowing option flags to be specified. More...
 
 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a829d7114e3ed38c555af0fb4e974a6f6">~Manager</a> ()
 
Destructor.
 
Account \* 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a8999bd6e99eb3f8ee49bdf6c8e387a6d">account</a> (const AccountId &id) const
 
Loads an account from the database. More...
 
AccountIdList 
<a href="../../sdk-15.04.1/Accounts.Manager.md#af6cb7c309b94adfe0c000a2925745975">accountList</a> (const QString &<a href="../../sdk-15.04.1/Accounts.Manager.md#a2ace548efe2fbf601ecf6efcfcf9c980">serviceType</a>=QString::null) const
 
Lists the accounts which support the requested service. More...
 
AccountIdList 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a5034b5eb730a95722ad1bd1dd76b7867">accountListEnabled</a> (const QString &<a href="../../sdk-15.04.1/Accounts.Manager.md#a2ace548efe2fbf601ecf6efcfcf9c980">serviceType</a>=QString::null) const
 
Lists the enabled accounts which support the requested service that also must be enabled. More...
 
Account \* 
<a href="../../sdk-15.04.1/Accounts.Manager.md#ab094ae9aa044b74123f9269dd9e5627c">createAccount</a> (const QString &providerName)
 
Creates a new account. More...
 
<a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> 
<a href="../../sdk-15.04.1/Accounts.Manager.md#ac9b1bf173f68b9a0384cd1afad398931">service</a> (const QString &serviceName) const
 
Gets an object representing a service. More...
 
ServiceList 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a77e3d998be834bacfb3378e64656edf8">serviceList</a> (const QString &<a href="../../sdk-15.04.1/Accounts.Manager.md#a2ace548efe2fbf601ecf6efcfcf9c980">serviceType</a>=QString::null) const
 
Gets the service list. More...
 
<a href="../../sdk-15.04.1/Accounts.Provider.md">Provider</a> 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a79085e0676834932f64d651f4231b2ec">provider</a> (const QString &providerName) const
 
Gets an object representing a provider. More...
 
ProviderList 
<a href="../../sdk-15.04.1/Accounts.Manager.md#aa4b53bc6ceef8d0c51b50c4b047409dc">providerList</a> () const
 
Gets a provider list. More...
 
<a href="../../sdk-15.04.1/Accounts.ServiceType.md">ServiceType</a> 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a2ace548efe2fbf601ecf6efcfcf9c980">serviceType</a> (const QString &name) const
 
Gets an object representing a service type. More...
 
<a href="../../sdk-15.04.1/Accounts.Application.md">Application</a> 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a28ff538d5abd52ff691e30ed75a6b41f">application</a> (const QString &applicationName) const
 
Get an object representing an application. More...
 
ApplicationList 
<a href="../../sdk-15.04.1/Accounts.Manager.md#ae18f9f8c59a4e15e8849dd832c54b874">applicationList</a> (const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &<a href="../../sdk-15.04.1/Accounts.Manager.md#ac9b1bf173f68b9a0384cd1afad398931">service</a>) const
 
List the registered applications which support the given service. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Manager.md#aa090de65c448278a23851f45f38fa9ce">serviceType</a> () const
 
Gets the service type if given in manager constructor. More...
 
void 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a453a462fc339dae385360dc73128bf14">setTimeout</a> (quint32 <a href="../../sdk-15.04.1/Accounts.Manager.md#acd89c68759d802afa73ef928b293c82b">timeout</a>)
 
Sets the timeout for database operations. More...
 
quint32 
<a href="../../sdk-15.04.1/Accounts.Manager.md#acd89c68759d802afa73ef928b293c82b">timeout</a> ()
 
Gets the database timeout. More...
 
void 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a9b4396a045e666376bdb535553bce09b">setAbortOnTimeout</a> (bool abort)
 
Sets whether to abort the application when a database timeout occurs. More...
 
bool 
<a href="../../sdk-15.04.1/Accounts.Manager.md#afdf5d9b1cf381bf5a83ac0bf41be522b">abortOnTimeout</a> () const
 
Options 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a42ec574899ed53e05880ce02e40073a1">options</a> () const
 
<a href="../../sdk-15.04.1/Accounts.Error.md">Error</a> 
<a href="../../sdk-15.04.1/Accounts.Manager.md#a31f856d7b015a7478550d90feac77f48">lastError</a> () const
 
Gets the last error. More...
 
<span id="details"></span>
Detailed Description
--------------------

<a href="../../sdk-15.04.1/Accounts.Manager.md" title="Manager of accounts, services and providers. ">Manager</a> of accounts, services and providers.

The <a href="../../sdk-15.04.1/Accounts.Manager.md" title="Manager of accounts, services and providers. ">Manager</a> offers ways to create accounts, list accounts, services and providers. It also emits signals when accounts are created and removed.

Definition at line 51 of file manager.h.

Member Enumeration Documentation
--------------------------------

<span id="a0e65ad13124ea2cb5e255b640464e35f" class="anchor"></span>
|                                                                                                                      |
|----------------------------------------------------------------------------------------------------------------------|
| enum <a href="../../sdk-15.04.1/Accounts.Manager.md#a0e65ad13124ea2cb5e255b640464e35f">Option</a> |

Specifies options for the object.

Enumerator
<span id="a0e65ad13124ea2cb5e255b640464e35fa8ab6226b5ae4221689bc2d25d6201ae9" class="anchor"></span>DisableNotifications 
Disable all inter-process notifications

Definition at line 60 of file manager.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="a904954dc41cf98ac053b00f12dbc0090" class="anchor"></span>
|                                                                                |     |             |                |     |     |
|--------------------------------------------------------------------------------|-----|-------------|----------------|-----|-----|
| <a href="../../sdk-15.04.1/Accounts.Manager.md">Manager</a> | (   | QObject \*  | *parent* = `0` | )   |     |

Constructor.

Users should check for manager-&gt;<a href="../../sdk-15.04.1/Accounts.Manager.md#a31f856d7b015a7478550d90feac77f48" title="Gets the last error. ">lastError()</a> to check if manager construction was fully succesful.

Definition at line 146 of file manager.cpp.

References Error::DatabaseLocked.

<span id="a2d948d667caf0a065d995c847ef57176" class="anchor"></span>
|                                                                                |     |                  |                 |
|--------------------------------------------------------------------------------|-----|------------------|-----------------|
| <a href="../../sdk-15.04.1/Accounts.Manager.md">Manager</a> | (   | const QString &  | *serviceType*,  |
|                                                                                |     | QObject \*       | *parent* = `0`  |
|                                                                                | )   |                  |                 |

Constructs a manager initialized with service type.

This constructor should be used when there is an interest for just one service type. Such a manager has influence on some class methods. When listing the accounts and services only the ones supporting the given service type will be returned. Also the creating account with this manager will affect the acccount class method for listing services in same manner. The signal <a href="../../sdk-15.04.1/Accounts.Manager.md#a9da726ad1ee02be3dea7c19b82bb373d" title="If the manager has been created with serviceType, this signal will be emitted when an account (identi...">enabledEvent()</a> will be emitted only when manager is created with this constructor. Users should check for manager-&gt;<a href="../../sdk-15.04.1/Accounts.Manager.md#a31f856d7b015a7478550d90feac77f48" title="Gets the last error. ">lastError()</a> to check if manager construction was fully succesful.

Definition at line 173 of file manager.cpp.

References Error::DatabaseLocked.

<span id="a5140dac7527af074eca9a9f97c5a8cea" class="anchor"></span>
|                                                                                |     |             |                 |
|--------------------------------------------------------------------------------|-----|-------------|-----------------|
| <a href="../../sdk-15.04.1/Accounts.Manager.md">Manager</a> | (   | Options     | *options*,      |
|                                                                                |     | QObject \*  | *parent* = `0`  |
|                                                                                | )   |             |                 |

Constructor, allowing option flags to be specified.

Users should check for <a href="../../sdk-15.04.1/Accounts.Manager.md#a31f856d7b015a7478550d90feac77f48" title="Gets the last error. ">lastError()</a> to check if manager construction was fully succesful.

Definition at line 194 of file manager.cpp.

References Manager::DisableNotifications.

Member Function Documentation
-----------------------------

<span id="afdf5d9b1cf381bf5a83ac0bf41be522b" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| bool abortOnTimeout | (   |     | )   | const |

Returns  
Whether the application will be aborted when a database timeout occurs.

Definition at line 523 of file manager.cpp.

<span id="a8999bd6e99eb3f8ee49bdf6c8e387a6d" class="anchor"></span>
|                    |     |                    |      |     |       |
|--------------------|-----|--------------------|------|-----|-------|
| Account \* account | (   | const AccountId &  | *id* | )   | const |

Loads an account from the database.

Parameters  
|     |                                    |
|-----|------------------------------------|
| id  | Id of the account to be retrieved. |

<!-- -->

Returns  
Requested account or 0 if not found. If 0 is returned, call <a href="../../sdk-15.04.1/Accounts.Manager.md#a31f856d7b015a7478550d90feac77f48" title="Gets the last error. ">lastError()</a> to find out why.

<!-- -->

Attention  
The objects returned by this method are shared, meaning that calling this method twice with the same id will return the same object. It is recommended that clients do not destroy the objects returned by this method, if there's the possibility that they are still being used in other parts of the application.

Definition at line 245 of file manager.cpp.

<span id="ad6d2d0cfff2e9f11ab3327ddf573f1eb" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>accountCreated</td>
<td>(</td>
<td>Accounts::AccountId </td>
<td><em>id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">signal</span></span></td>
</tr>
</tbody>
</table>

The signal is emitted when new account is created.

Parameters  
|     |                           |
|-----|---------------------------|
| id  | Identifier of the Account |

<span id="af6cb7c309b94adfe0c000a2925745975" class="anchor"></span>
|                           |     |                  |                                 |     |       |
|---------------------------|-----|------------------|---------------------------------|-----|-------|
| AccountIdList accountList | (   | const QString &  | *serviceType* = `QString::null` | )   | const |

Lists the accounts which support the requested service.

Parameters  
|             |                                                                                                                                                    |
|-------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| serviceType | Type of service that returned accounts must support. If not given and the manager is not constructed with service type, all accounts are returned. |

<!-- -->

Returns  
List of account IDs.

Definition at line 266 of file manager.cpp.

<span id="a5034b5eb730a95722ad1bd1dd76b7867" class="anchor"></span>
|                                  |     |                  |                                 |     |       |
|----------------------------------|-----|------------------|---------------------------------|-----|-------|
| AccountIdList accountListEnabled | (   | const QString &  | *serviceType* = `QString::null` | )   | const |

Lists the enabled accounts which support the requested service that also must be enabled.

Parameters  
|             |                                                                                                                                                            |
|-------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| serviceType | Type of service that returned accounts must support. If not given and the manager is not constructed with service type, all enabled accounts are returned. |

<!-- -->

Returns  
List of account IDs.

Definition at line 301 of file manager.cpp.

<span id="a9e18c1ab3efc480d15fe72d833e9ab95" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>accountRemoved</td>
<td>(</td>
<td>Accounts::AccountId </td>
<td><em>id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">signal</span></span></td>
</tr>
</tbody>
</table>

The signal is emitted when existing account is removed.

Parameters  
|     |                           |
|-----|---------------------------|
| id  | Identifier of the Account |

<span id="aa228f4eaf987ea3575c7ff9da03208e8" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>accountUpdated</td>
<td>(</td>
<td>Accounts::AccountId </td>
<td><em>id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">signal</span></span></td>
</tr>
</tbody>
</table>

The signal is emitted when any account property for a particular service is updated.

To receive this notification user has to create accounts manager using <a href="../../sdk-15.04.1/Accounts.Manager.md#a2d948d667caf0a065d995c847ef57176" title="Constructs a manager initialized with service type. ">Manager(const QString &amp;serviceType, QObject *parent)</a> constructor. Update notification is only emitted when manager is created for particular type of service.

Parameters  
|     |                           |
|-----|---------------------------|
| id  | Identifier of the Account |

<span id="a28ff538d5abd52ff691e30ed75a6b41f" class="anchor"></span>
|                                                                                                    |     |                  |                   |     |       |
|----------------------------------------------------------------------------------------------------|-----|------------------|-------------------|-----|-------|
| <a href="../../sdk-15.04.1/Accounts.Application.md">Application</a> application | (   | const QString &  | *applicationName* | )   | const |

Get an object representing an application.

Parameters  
|                 |                                  |
|-----------------|----------------------------------|
| applicationName | Name of the application to load. |

<!-- -->

Returns  
The requested <a href="../../sdk-15.04.1/Accounts.Application.md" title="Information on the client applications of libaccounts. ">Application</a>, or an invalid <a href="../../sdk-15.04.1/Accounts.Application.md" title="Information on the client applications of libaccounts. ">Application</a> object if not found.

Definition at line 448 of file manager.cpp.

Referenced by Manager::applicationList().

<span id="ae18f9f8c59a4e15e8849dd832c54b874" class="anchor"></span>
|                                 |     |                                                                                         |           |     |       |
|---------------------------------|-----|-----------------------------------------------------------------------------------------|-----------|-----|-------|
| ApplicationList applicationList | (   | const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &  | *service* | )   | const |

List the registered applications which support the given service.

Parameters  
|         |                              |
|---------|------------------------------|
| service | The service to be supported. |

<!-- -->

Returns  
A list of <a href="../../sdk-15.04.1/Accounts.Application.md" title="Information on the client applications of libaccounts. ">Application</a> objects.

Definition at line 462 of file manager.cpp.

References Manager::application().

<span id="ab094ae9aa044b74123f9269dd9e5627c" class="anchor"></span>
|                          |     |                  |                |     |     |
|--------------------------|-----|------------------|----------------|-----|-----|
| Account \* createAccount | (   | const QString &  | *providerName* | )   |     |

Creates a new account.

Parameters  
|              |                           |
|--------------|---------------------------|
| providerName | Name of account provider. |

<!-- -->

Returns  
Created account or NULL if some error occurs.

Definition at line 331 of file manager.cpp.

<span id="a9da726ad1ee02be3dea7c19b82bb373d" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>enabledEvent</td>
<td>(</td>
<td>Accounts::AccountId </td>
<td><em>id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">signal</span></span></td>
</tr>
</tbody>
</table>

If the manager has been created with serviceType, this signal will be emitted when an account (identified by AccountId) has been modified in such a way that the application might be interested to start/stop using it: the "enabled" flag on the account or in some service supported by the account and matching the AgManager::serviceType have changed.

Note  
In practice, this signal might be emitted more often than when strictly needed; applications must call Account::enabledServices() to get the current state.

<!-- -->

Parameters  
|     |                           |
|-----|---------------------------|
| id  | identifier of the Account |

<span id="a31f856d7b015a7478550d90feac77f48" class="anchor"></span>
|                                                                                      |     |     |     |       |
|--------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../../sdk-15.04.1/Accounts.Error.md">Error</a> lastError | (   |     | )   | const |

Gets the last error.

Not all operations set/reset the error; see the individual methods' documentation to see if they set the last error or not. Call this method right after an account operation has failed; if no error occurred, the result of this method are undefined.

Returns  
The last error.

Definition at line 554 of file manager.cpp.

<span id="a42ec574899ed53e05880ce02e40073a1" class="anchor"></span>
|                          |     |     |     |       |
|--------------------------|-----|-----|-----|-------|
| Manager::Options options | (   |     | )   | const |

Returns  
Configuration options for this object.

Definition at line 531 of file manager.cpp.

References Manager::DisableNotifications.

<span id="a79085e0676834932f64d651f4231b2ec" class="anchor"></span>
|                                                                                           |     |                  |                |     |       |
|-------------------------------------------------------------------------------------------|-----|------------------|----------------|-----|-------|
| <a href="../../sdk-15.04.1/Accounts.Provider.md">Provider</a> provider | (   | const QString &  | *providerName* | )   | const |

Gets an object representing a provider.

Parameters  
|              |                          |
|--------------|--------------------------|
| providerName | Name of provider to get. |

<!-- -->

Returns  
Requested provider or NULL if not found.

Definition at line 392 of file manager.cpp.

Referenced by Manager::providerList().

<span id="aa4b53bc6ceef8d0c51b50c4b047409dc" class="anchor"></span>
|                           |     |     |     |       |
|---------------------------|-----|-----|-----|-------|
| ProviderList providerList | (   |     | )   | const |

Gets a provider list.

Returns  
List of registered providers.

Definition at line 406 of file manager.cpp.

References Manager::provider().

<span id="ac9b1bf173f68b9a0384cd1afad398931" class="anchor"></span>
|                                                                                        |     |                  |               |     |       |
|----------------------------------------------------------------------------------------|-----|------------------|---------------|-----|-------|
| <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> service | (   | const QString &  | *serviceName* | )   | const |

Gets an object representing a service.

Parameters  
|             |                         |
|-------------|-------------------------|
| serviceName | Name of service to get. |

<!-- -->

Returns  
The requested service or an invalid service if not found.

Definition at line 342 of file manager.cpp.

Referenced by Manager::serviceList().

<span id="a77e3d998be834bacfb3378e64656edf8" class="anchor"></span>
|                         |     |                  |                                 |     |       |
|-------------------------|-----|------------------|---------------------------------|-----|-------|
| ServiceList serviceList | (   | const QString &  | *serviceType* = `QString::null` | )   | const |

Gets the service list.

If the manager is constructed with given service type only the services which supports the service type will be returned.

Parameters  
|             |                                                                                                                            |
|-------------|----------------------------------------------------------------------------------------------------------------------------|
| serviceType | Type of services to be listed. If not given and the manager is not constructed with service type, all services are listed. |

<!-- -->

Returns  
List of <a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a> objects.

Definition at line 360 of file manager.cpp.

References Manager::service().

<span id="a2ace548efe2fbf601ecf6efcfcf9c980" class="anchor"></span>
|                                                                                                    |     |                  |        |     |       |
|----------------------------------------------------------------------------------------------------|-----|------------------|--------|-----|-------|
| <a href="../../sdk-15.04.1/Accounts.ServiceType.md">ServiceType</a> serviceType | (   | const QString &  | *name* | )   | const |

Gets an object representing a service type.

Parameters  
|      |                               |
|------|-------------------------------|
| name | Name of service type to load. |

<!-- -->

Returns  
Requested service type or NULL if not found.

Definition at line 433 of file manager.cpp.

<span id="aa090de65c448278a23851f45f38fa9ce" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString serviceType | (   |     | )   | const |

Gets the service type if given in manager constructor.

Returns  
<a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a> type or NULL if not given.

Definition at line 482 of file manager.cpp.

<span id="a9b4396a045e666376bdb535553bce09b" class="anchor"></span>
|                        |     |       |         |     |     |
|------------------------|-----|-------|---------|-----|-----|
| void setAbortOnTimeout | (   | bool  | *abort* | )   |     |

Sets whether to abort the application when a database timeout occurs.

By default the library does not abort the application.

Definition at line 514 of file manager.cpp.

<span id="a453a462fc339dae385360dc73128bf14" class="anchor"></span>
|                 |     |          |           |     |     |
|-----------------|-----|----------|-----------|-----|-----|
| void setTimeout | (   | quint32  | *timeout* | )   |     |

Sets the timeout for database operations.

Parameters  
|         |                                  |
|---------|----------------------------------|
| timeout | The new timeout in milliseconds. |

This tells the library how long it is allowed to block while waiting for a locked DB to become accessible. Higher values mean a higher chance of successful reads, but also mean that the execution might be blocked for a longer time. The default is 5 seconds.

Definition at line 496 of file manager.cpp.

<span id="acd89c68759d802afa73ef928b293c82b" class="anchor"></span>
|                 |     |     |     |     |
|-----------------|-----|-----|-----|-----|
| quint32 timeout | (   |     | )   |     |

Gets the database timeout.

Returns  
The timeout (in milliseconds) for database operations.

Definition at line 505 of file manager.cpp.

