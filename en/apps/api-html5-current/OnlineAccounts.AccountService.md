---
Title: OnlineAccounts.AccountService
---
        
AccountService
==============

AccountService represents an instance of a service in an Online Accounts.

The AcountService object is not directly constructible but returned as a result of OnlineAccounts api calls.

-   Methods

<span id="accountId"></span>
String **`accountId`**( `  ` )
Returns the account's numeric ID; note that all AccountService objects which work on the same online account will have the same ID.

**Returns:** &lt;String&gt;
Value for the accountId

<span id="authenticate"></span>
**`authenticate`**( `callback ` )
Perform the authentication on this account.

The callback will be called with the authentication result object which will have these properties:

-   'error': error message if the authentication was a failure
-   'authenticated': boolean value that identifies if the operation was a success
-   'data': Object with the data returned by the authentication process. An 'AccessToken' property can be usually found (when it applies) with the OAuth access token.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(Object)&gt;**

<span id="destroy"></span>
**`destroy`**( `  ` )
Destroys the remote object. This proxy object is not valid anymore.

<span id="displayName"></span>
String **`displayName`**( `  ` )
Returns The account's display name (usually the user's login or ID). Note that all AccountService objects which work on the same online account will share the same display name.

**Returns:** &lt;String&gt;
Value of the displayName

<span id="enabled"></span>
Boolean **`enabled`**( `  ` )
This read-only property returns whether the AccountService is enabled. An application shouldn't use an AccountService which is disabled

**Returns:** &lt;Boolean&gt;
Value for the enabled flag

<span id="provider"></span>
Object **`provider`**( `  ` )
Returns an object representing the provider which provides the account.

The returned object will have at least these properties:

-   'id' is the unique identifier for this provider
-   'displayName'
-   'iconName'

**Returns:** &lt;Object&gt;
Value object for the provider

<span id="service"></span>
Object **`service`**( `  ` )
Returns an object representing the service which this AccountService instantiates

The returned object will have at least these properties:

-   'id' is the unique identifier for this service
-   'displayName'
-   'iconName'
-   'serviceTypeId' identifies the provided service type

**Returns:** &lt;Object&gt;
Value object for the service

