---
Title: Ubuntu.OnlineAccounts.Credentials
---
        
Credentials
===========

<span class="subtitle"></span>
Holds the account's credentials More...

|                   |                                  |
|-------------------|----------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts 0.1 |

<span id="properties"></span>
Properties
----------

-   ****[acl](#acl-prop)**** : list&lt;string&gt;
-   ****[caption](#caption-prop)**** : string
-   ****[credentialsId](#credentialsId-prop)**** : quint32
-   ****[methods](#methods-prop)**** : jsobject
-   ****[secret](#secret-prop)**** : string
-   ****[storeSecret](#storeSecret-prop)**** : bool
-   ****[userName](#userName-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[removed](#removed-signal)****()
-   ****[synced](#synced-signal)****()

<span id="methods"></span>
Methods
-------

-   void ****[remove](#remove-method)****()
-   void ****[sync](#sync-method)****()

<span id="details"></span>
Detailed Description
--------------------

The Credentials element contains the information about an account's credentials. Informations like user name and password are stored into the account's secret storage via this object. If the [credentialsId](#credentialsId-prop) property is set to a valid credentials ID (which can be obtained via the [AccountService](../Ubuntu.OnlineAccounts.AccountService.md)'s [authData.credentialsId](../Ubuntu.OnlineAccounts.AccountService.md#authData-prop) property) the Credentials element will load the informations stored in the secrets database, with the notable exception of the [secret](#secret-prop) field, which cannot be read back via this interface (but only via the [AccountService::authenticate](../Ubuntu.OnlineAccounts.AccountService.md#authenticate-method) method); if the [credentialsId](#credentialsId-prop) field is not set, then this interface can be used to create a new record in the secrets storage, by calling the [sync()](#sync-method) method once all the desired fields have been set.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="acl-prop"></span><span class="name">acl</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

The ACL (Access Control List) for the credentials. The string *"\*"* should be used when no access control needs to be performed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="caption-prop"></span><span class="name">caption</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

A description of the credentials. This could be set to the name of the account provider, for instance.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="credentialsId-prop"></span><span class="name">credentialsId</span> : <span class="type">quint32</span></p></td>
</tr>
</tbody>
</table>

Numeric identifier of the credentials record in the secret storage database. A value of *0* means that this object has not been stored into the database yet.

**See also** [sync](#sync-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="methods-prop"></span><span class="name">methods</span> : <span class="type">jsobject</span></p></td>
</tr>
</tbody>
</table>

A dictionary describing the authentication methods and mechanisms which are allowed on the credentials. The keys of the dictionary should be the authentication methods, and the values should be lists of mechanisms.

``` qml
Credentials {
    methods: { "oauth2": [ "web_server", "user_agent"], "password": [ "password" ] }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="secret-prop"></span><span class="name">secret</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The secret information for this credentials; usually this is the user's password. Note that when retrieving a Credentials object from the secrets database, this field will not be retrieved. See the detailed description of the Credentials element for a full explanation of this.

**See also** [credentialsId](#credentialsId-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="storeSecret-prop"></span><span class="name">storeSecret</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the secret should be stored in the secrets storage.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="userName-prop"></span><span class="name">userName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The user name.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removed-signal"></span><span class="name">removed</span>()</p></td>
</tr>
</tbody>
</table>

Emitted when the credentials have been deleted from the secrets storage.

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

Emitted when the changes have been stored into the permanent secrets storage.

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

Deletes the credentials from the secrets storage.

**See also** [removed](#removed-signal).

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

Writes the changes to the secrets storage.

**See also** [synced](#synced-signal).

