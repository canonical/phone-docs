---
Title: Ubuntu.OnlineAccounts.AccountModel
---
        
AccountModel
============

<span class="subtitle"></span>
Model of available online accounts. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts . |

<span id="properties"></span>
Properties
----------

-   ****[accountList](#accountList-prop)**** : list&lt;Account&gt;
-   ****[applicationId](#applicationId-prop)**** : string
-   ****[ready](#ready-prop)**** : bool
-   ****[serviceId](#serviceId-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[accessReply](#accessReply-signal)****(jsobject *reply*, jsobject *authenticationData*)

<span id="methods"></span>
Methods
-------

-   variant ****[get](#get-method)****(int *row*, string *roleName*)
-   void ****[requestAccess](#requestAccess-method)****(string *serviceId*, jsobject *parameters*)

<span id="details"></span>
Detailed Description
--------------------

The [AccountModel](index.html) lists all the accounts available to the application.

``` qml
import QtQuick 2.0
import Ubuntu.OnlineAccounts 2.0
ListView {
    model: AccountModel {
        applicationId: "myapp.developer_myapp"
    }
    delegate: Text {
        text: model.displayName
    }
}
```

The model defines the following roles:

-   `displayName` is the name of the account (usually the user's login)
-   `accountId` is a numeric ID for the account
-   `serviceId` is a service identifier (e.g., "myapp.developer\_myapp\_google")
-   `authenticationMethod` is the authentication method used on this account;
-   `settings` is a dictionary of the settings stored into the account
-   `account` is the [Account](../Ubuntu.OnlineAccounts.Account.md) object

**See also** [Account::authenticationMethod](../Ubuntu.OnlineAccounts.Account.md#authenticationMethod-prop) and [Account](../Ubuntu.OnlineAccounts.Account.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accountList-prop"></span><span class="name">accountList</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.OnlineAccounts.Account.md">Account</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of accounts in the model. This list has exactly the same contents as the model data, and is provided as a property just as a convenience for those cases when a model is not required.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="applicationId-prop"></span><span class="name">applicationId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The short application identifier (that is, the `APP_ID` minus the version component) of the client. If not given, the identifier will be deduced from the APP\_ID environment variable.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ready-prop"></span><span class="name">ready</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the model is up to date: retrieving the account list is an asynchronous operation, and therefore short delays are expected between changing one model parameter and receiving the updated account list. Applications should not rely on the model contents while this property is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="serviceId-prop"></span><span class="name">serviceId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

If this property is set, only accounts providing the given service will be returned.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accessReply-signal"></span><span class="name">accessReply</span>(<span class="type">jsobject</span> <em>reply</em>, <span class="type">jsobject</span> <em>authenticationData</em>)</p></td>
</tr>
</tbody>
</table>

Emitted when the request initiated with [AccountModel::requestAccess()](#requestAccess-method) completes. The *reply* object contains the access reply:

-   `account` if access to an account was granted, this property will hold an [Account](../Ubuntu.OnlineAccounts.Account.md) object
-   `errorCode` [error code](../Ubuntu.OnlineAccounts.Account.md#errorcode), if an error occurred
-   `errorText` is a textual description of the error, not meant for the end-user; it can be used for debugging purposes

The second parameter, the *authenticationData* object, will contain the authentication reply.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="get-method"></span><span class="type">variant</span> <span class="name">get</span>(<span class="type">int</span> <em>row</em>, <span class="type">string</span> <em>roleName</em>)</p></td>
</tr>
</tbody>
</table>

Returns the data at *row* for the role *roleName*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="requestAccess-method"></span><span class="type">void</span> <span class="name">requestAccess</span>(<span class="type">string</span> <em>serviceId</em>, <span class="type">jsobject</span> <em>parameters</em>)</p></td>
</tr>
</tbody>
</table>

Requests the user to grant this application access to an account providing the given service. The user will be asked whether this application should be given access to the desired account; if no such accounts are currently registered in the system, the user will be guided to create a new one.

It should be noted that account authorizations persist across application restart; therefore, this method should be called only when the application needs a new account to appear in the model.

Each call to this method will cause the [accessReply](#accessReply-signal) signal to be emitted at some time later. Note that the operation will involve interactions with the end-user, so don't expect a reply to be emitted immediately.

The *parameters* parameter can be used to pass authentication data (similarly to how the [Account::authenticate()](../Ubuntu.OnlineAccounts.Account.md#authenticate-method) method works), if it's desired to perform the authentication at the same time.

**See also** [accessReply](#accessReply-signal).

