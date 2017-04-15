---
Title: Ubuntu.OnlineAccounts.Account
---
        
Account
=======

<span class="subtitle"></span>
Representation of an online account More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts . |

<span id="properties"></span>
Properties
----------

-   ****[accountId](#accountId-prop)**** : int
-   ****[authenticationMethod](#authenticationMethod-prop)**** : enumeration
-   ****[displayName](#displayName-prop)**** : string
-   ****[service](#service-prop)**** : int
-   ****[serviceId](#serviceId-prop)**** : int
-   ****[settings](#settings-prop)**** : jsobject
-   ****[valid](#valid-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[authenticationReply](#authenticationReply-signal)****(jsobject *authenticationData*)

<span id="methods"></span>
Methods
-------

-   void ****[authenticate](#authenticate-method)****(jsobject *params*)

<span id="details"></span>
Detailed Description
--------------------

The Account object holds the information related to an account and provides methods to interact with it. It's not possible to create such objects from QML; instead, they are returned by the [AccountModel](../Ubuntu.OnlineAccounts.AccountModel.md) in the `account` role or in the [`accountList`](../Ubuntu.OnlineAccounts.AccountModel.md#accountList-prop) property.

Here's an example on how to use the account object in a delegate:

``` qml
import QtQuick 2.0
import Ubuntu.OnlineAccounts 2.0
ListView {
    model: AccountModel {}
    delegate: Button {
        text: "Authenticate " + model.displayName
        onClicked: model.account.authenticate({})
        Connections {
            target: model.account
            onAuthenticationReply: {
                console.log("Access token is " + reply['AccessToken'])
            }
        }
    }
}
```

<span id="errorcode"></span><span id="error-codes-used-in-this-module"></span>
#### Error codes used in this module

Some operations, such as the [Account::authenticate()](#authenticate-method) and the [AccountModel::requestAccess()](../Ubuntu.OnlineAccounts.AccountModel.md#requestAccess-method) methods, can fail and return one of these error codes:

-   `Account.ErrorCodeNoAccount` - The accounts is invalid
-   `Account.ErrorCodeUserCanceled` - The operation was canceled by the user
-   `Account.ErrorCodePermissionDenied` - The application has no permission to complete the operation

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accountId-prop"></span><span class="name">accountId</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Numeric identifier of the account. This property remains constant during the lifetime of the account. Note, however, that if the user deletes the account and re-creates it, its ID will be different.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="authenticationMethod-prop"></span><span class="name">authenticationMethod</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The authentication method used when authenticating with the account. Currently, these authentication methods are supported:

-   `Account.AuthenticationMethodOAuth1` - OAuth 1.0
-   `Account.AuthenticationMethodOAuth2` - OAuth 2.0
-   `Account.AuthenticationMethodSasl` - SASL
-   `Account.AuthenticationMethodPassword` - username/password

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

The display name of the account. This is usually the user's login name, but applications should not rely on the value of this property. Use it only for display purposes.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="service-prop"></span><span class="name">service</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Service data associated with this account. This is an object containing the following properties:

`serviceId` - same service ID returned by [Account::serviceId](#serviceId-prop)
`displayName` - the localized display name for the service
`iconSource` - URL for the icon; can be a "file://" URL to a local file, or an icon from the theme if the URL starts with "image://theme/"

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="serviceId-prop"></span><span class="name">serviceId</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Identifier for the service used with the account.

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

A dictionary of the settings stored into the account.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="valid-prop"></span><span class="name">valid</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the account object is valid; this is usually `true`, because the `AccountModel` never gives out invalid accounts. However, it can happen that a valid account becomes invalid while the application is using it (if, for instance, the user deleted the account or revoked the application's access rights to use it). As soon as this property becomes `false`, the application should stop using this account.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="authenticationReply-signal"></span><span class="name">authenticationReply</span>(<span class="type">jsobject</span> <em>authenticationData</em>)</p></td>
</tr>
</tbody>
</table>

Emitted when the authentication completes. The *authenticationData* object will contain the authentication reply. If the authentication failed, the following two keys will be present:

-   `errorCode` is an [error code](#errorcode)
-   `errorText` is a textual description of the error, not meant for the end-user; it can be used for debugging purposes

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="authenticate-method"></span><span class="type">void</span> <span class="name">authenticate</span>(<span class="type">jsobject</span> <em>params</em>)</p></td>
</tr>
</tbody>
</table>

Perform the authentication on this account. The *params* parameter can be used to pass authentication data, such as the ClientId and ClientSecret used in the OAuth flow. The list of the supported authentication parameters depend on the authentication method being used, and are documented in the Online Accounts development Guide in the Ubuntu Developer Portal.

There are, however, two authentication parameters which are available regardless of the authentication method being used:

-   `invalidateCachedReply` can be set to `true` when the previous authentication reply returned an invalid access token. It will ensure the creation of a new access token.
-   `interactive` is `true` by default; if set to `false`, it will ensure that no interaction with the user will occur.

Each call to this method will cause the [authenticationReply](#authenticationReply-signal) signal to be emitted at some time later. Note that the authentication might involve interactions with the network or with the end-user, so don't expect a reply to be emitted immediately.

**See also** [authenticationReply](#authenticationReply-signal).

