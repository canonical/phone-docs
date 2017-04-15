---
Title: Ubuntu.OnlineAccounts.AccountService
---
        
AccountService
==============

<span class="subtitle"></span>
Represents an instance of a service in an Online Accounts More...

|                   |                                  |
|-------------------|----------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts 0.1 |

<span id="properties"></span>
Properties
----------

-   ****[accountId](#accountId-prop)**** : string
-   ****[authData](#authData-prop)**** : jsobject
-   ****[autoSync](#autoSync-prop)**** : bool
-   ****[credentials](#credentials-prop)**** : Credentials
-   ****[displayName](#displayName-prop)**** : string
-   ****[enabled](#enabled-prop)**** : bool
-   ****[objectHandle](#objectHandle-prop)**** : object
-   ****[provider](#provider-prop)**** : jsobject
-   ****[service](#service-prop)**** : jsobject
-   ****[serviceEnabled](#serviceEnabled-prop)**** : bool
-   ****[settings](#settings-prop)**** : jsobject

<span id="signals"></span>
Signals
-------

-   ****[authenticated](#authenticated-signal)****(jsobject *reply*)
-   ****[authenticationError](#authenticationError-signal)****(jsobject *error*)

<span id="methods"></span>
Methods
-------

-   void ****[authenticate](#authenticate-method)****(jsobject *sessionData*)
-   void ****[cancelAuthentication](#cancelAuthentication-method)****()
-   void ****[updateServiceEnabled](#updateServiceEnabled-method)****(bool *enabled*)
-   void ****[updateSettings](#updateSettings-method)****(jsobject *settings*)

<span id="details"></span>
Detailed Description
--------------------

The [AccountService](index.html) element represents a service within an existing online account. It can be used to obtain an authentication token to use the service it refers to.

Currently, an [AccountService](index.html) is valid only if its *objectHandle* property is set to a value obtained from an [AccountServiceModel](../Ubuntu.OnlineAccounts.AccountServiceModel.md) or an Account.

See [AccountServiceModel](../Ubuntu.OnlineAccounts.AccountServiceModel.md)'s documentation for usage examples.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accountId-prop"></span><span class="name">accountId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The account's numeric ID; note that all [AccountService](index.html) objects which work on the same online account will have the same ID.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="authData-prop"></span><span class="name">authData</span> : <span class="type">jsobject</span></p></td>
</tr>
</tbody>
</table>

An object providing information about the authentication. The returned object will have at least these members:

-   `method` is the authentication method
-   `mechanism` is the authentication mechanism (a sub-specification of the method)
-   `parameters` is a dictionary of authentication parameters
-   `credentialsId` is the numeric identified of the credentials in the secrets storage. See the [Credentials](../Ubuntu.OnlineAccounts.Credentials.md) element for more info.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoSync-prop"></span><span class="name">autoSync</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property tells whether the [AccountService](index.html) should invoke the [Account::sync()](../Ubuntu.OnlineAccounts.Account.md#sync-method) method whenever [updateSettings()](#updateSettings-method), updateDisplayName() or [updateServiceEnabled()](#updateServiceEnabled-method) are called. By default, this property is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="credentials-prop"></span><span class="name">credentials</span> : <span class="type"><a href="Ubuntu.OnlineAccounts.Credentials.md">Credentials</a></span></p></td>
</tr>
</tbody>
</table>

The credentials used by this account service. This property is meant to be used only when creating or editing the account, and serves to bind a credentials record to the account: when the value of the [Credentials::credentialsId](../Ubuntu.OnlineAccounts.Credentials.md#credentialsId-prop) changes, an update of [authData.credentialsId](#authData-prop) will be queued (and immediately executed if [autoSync](#autoSync-prop) is `true`). By default, reading this property returns a null object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayName-prop"></span><span class="name">displayName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The account's display name (usually the user's login or ID); note that all [AccountService](index.html) objects which work on the same online account will share the same display name.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property tells whether the [AccountService](index.html) is enabled. An application shouldn't use an [AccountService](index.html) which is disabled.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="objectHandle-prop"></span><span class="name">objectHandle</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

An opaque handle to the underlying C++ object. Until the property is set, the [AccountService](index.html) element is uninitialized. Similarly, if the C++ object is destroyed (for instance, because the [AccountServiceModel](../Ubuntu.OnlineAccounts.AccountServiceModel.md) which owns it is destroyed or if the account is deleted), expect the [AccountService](index.html) to become invalid.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="provider-prop"></span><span class="name">provider</span> : <span class="type">jsobject</span></p></td>
</tr>
</tbody>
</table>

An immutable object representing the provider which provides the account. The returned object will have at least these members:

-   `id` is the unique identifier for this provider
-   `displayName`
-   `iconName`
-   `isSingleAccount`, *true* if this provider supports creating one account at most
-   `translations`, the localization domain for translating the provider's display name

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="service-prop"></span><span class="name">service</span> : <span class="type">jsobject</span></p></td>
</tr>
</tbody>
</table>

An immutable object representing the service which this [AccountService](index.html) instantiates. The returned object will have at least these members:

-   `id` is the unique identified for this service
-   `displayName`
-   `iconName`
-   `serviceTypeId` identifies the provided service type
-   `translations`, the localization domain for translating the provider's display name

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="serviceEnabled-prop"></span><span class="name">serviceEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This read-only property tells whether the service is enabled within the account. This property differs from the [enabled](#enabled-prop) property in that the [enabled](#enabled-prop) property also considers whether the account is enabled, while this one only reflects the status of the service. Applications shouldn't rely on the value on this property to decide whether to use the account or not.

**See also** [enabled](#enabled-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="settings-prop"></span><span class="name">settings</span> : <span class="type">jsobject</span></p></td>
</tr>
</tbody>
</table>

A dictionary of all the account service's settings. This does not include the authentication settings, which are available from the [AccountService::authData](#authData-prop) property.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="authenticated-signal"></span><span class="name">authenticated</span>(<span class="type">jsobject</span> <em>reply</em>)</p></td>
</tr>
</tbody>
</table>

Emitted when the authentication has been successfully completed. The *reply* object will contain the authentication data, which depends on the authentication method used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="authenticationError-signal"></span><span class="name">authenticationError</span>(<span class="type">jsobject</span> <em>error</em>)</p></td>
</tr>
</tbody>
</table>

Emitted when the authentication fails. The *error* object will contain the following fields:

-   `code` is a numeric error code (see Signon::Error for the meaning)
-   `message` is a textual description of the error, not meant for the end-user

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="authenticate-method"></span><span class="type">void</span> <span class="name">authenticate</span>(<span class="type">jsobject</span> <em>sessionData</em>)</p></td>
</tr>
</tbody>
</table>

Perform the authentication on this account. The *sessionData* dictionary is optional and if not given the value of [authData::parameters](#authData-prop) will be used.

Each call to this method will cause either of [authenticated](#authenticated-signal) or [authenticationError](#authenticationError-signal) signals to be emitted at some time later. Note that the authentication might involve interactions with the network or with the end-user, so don't expect these signals to be emitted immediately.

**See also** [authenticated](#authenticated-signal) and [authenticationError](#authenticationError-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelAuthentication-method"></span><span class="type">void</span> <span class="name">cancelAuthentication</span>()</p></td>
</tr>
</tbody>
</table>

Cancel an ongoing authentication on this account. This method does nothing if there isn't any authentication process going on.

**See also** [authenticate](#authenticate-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateServiceEnabled-method"></span><span class="type">void</span> <span class="name">updateServiceEnabled</span>(<span class="type">bool</span> <em>enabled</em>)</p></td>
</tr>
</tbody>
</table>

Enables or disables the service within the account configuration. Since the [enabled](#enabled-prop) property is the combination of the global account's enabledness status and the specific service's status, its value might not change after this method is called.

**See also** [enabled](#enabled-prop), [serviceEnabled](#serviceEnabled-prop), and [autoSync](#autoSync-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateSettings-method"></span><span class="type">void</span> <span class="name">updateSettings</span>(<span class="type">jsobject</span> <em>settings</em>)</p></td>
</tr>
</tbody>
</table>

Change some settings. Only the settings which are present in the *settings* dictionary will be changed; all others settings will not be affected. To remove a settings, set its value to null.

**See also** [autoSync](#autoSync-prop).

