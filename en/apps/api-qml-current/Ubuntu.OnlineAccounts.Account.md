---
Title: Ubuntu.OnlineAccounts.Account
---
        
Account
=======

<span class="subtitle"></span>
Represents an instance of an online account. More...

|                   |                                  |
|-------------------|----------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts 0.1 |

<span id="properties"></span>
Properties
----------

-   ****[accountId](#accountId-prop)**** : string
-   ****[accountServiceHandle](#accountServiceHandle-prop)**** : object
-   ****[displayName](#displayName-prop)**** : string
-   ****[enabled](#enabled-prop)**** : bool
-   ****[objectHandle](#objectHandle-prop)**** : object
-   ****[provider](#provider-prop)**** : jsobject

<span id="signals"></span>
Signals
-------

-   ****[synced](#synced-signal)****()

<span id="methods"></span>
Methods
-------

-   void ****[remove](#remove-method)****()
-   void ****[sync](#sync-method)****()
-   void ****[updateDisplayName](#updateDisplayName-method)****(string *displayName*)
-   void ****[updateEnabled](#updateEnabled-method)****(bool *enabled*)

<span id="details"></span>
Detailed Description
--------------------

The Account element represents an online account. It is functional only if its *objectHandle* property is set to a valid account, which can be obtained with Manager.loadAccount() or Manager.createAccount().

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

The account's numeric ID. This is 0 until the account has been stored into the DB.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accountServiceHandle-prop"></span><span class="name">accountServiceHandle</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

A C++ object which can be used to instantiate an [AccountService](../Ubuntu.OnlineAccounts.AccountService.md) by setting it as the value for the [AccountService::objectHandle](../Ubuntu.OnlineAccounts.AccountService.md#objectHandle-prop) property.

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

The account's display name (usually the user's login or ID).

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

This read-only property tells whether the Account is enabled. An application shouldn't use an Account which is disabled.

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

An opaque handle to the underlying C++ object. Until the property is set, the Account element is uninitialized. Similarly, if the C++ object is destroyed, expect the Account to become invalid.

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

-   `id` is the unique identified for this provider
-   `displayName`
-   `iconName`

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="synced-signal"></span><span class="name">synced</span>()</p></td>
</tr>
</tbody>
</table>

Emitted when the account changes have been stored into the permanent storage.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-method"></span><span class="type">void</span> <span class="name">remove</span>()</p></td>
</tr>
</tbody>
</table>

Deletes the account from the permanent storage. This method accepts an optional parameter, which tells whether the credentials associated with the account should also be removed:

-   `Account.RemoveAccountOnly`
-   `Account.RemoveCredentials` - the default

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sync-method"></span><span class="type">void</span> <span class="name">sync</span>()</p></td>
</tr>
</tbody>
</table>

Writes the changes to the permanent account storage.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateDisplayName-method"></span><span class="type">void</span> <span class="name">updateDisplayName</span>(<span class="type">string</span> <em>displayName</em>)</p></td>
</tr>
</tbody>
</table>

Changes the display name of the account.

**See also** [sync()](#sync-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="updateEnabled-method"></span><span class="type">void</span> <span class="name">updateEnabled</span>(<span class="type">bool</span> <em>enabled</em>)</p></td>
</tr>
</tbody>
</table>

Enables or disables the account.

**See also** [sync()](#sync-method).

