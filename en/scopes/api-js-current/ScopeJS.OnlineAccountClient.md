---
Title: ScopeJS.OnlineAccountClient
---
        
OnlineAccountClient
===================

A simple interface for integrating online accounts access and monitoring into scopes.

-   Methods

<span id="get_service_statuses"></span>
Array of OnlineAccountClientServiceStatus **`get_service_statuses`**( `  ` )
Get statuses for all services matching the name, type and provider specified on construction

**Returns:** &lt;Array of OnlineAccountClientServiceStatus&gt;
list of service statuses

<span id="refresh_service_statuses"></span>
**`refresh_service_statuses`**( `  ` )
Refresh all service statuses WARNING: If a service update callback is set, this method will invoke that callback for each service monitored. Therefore, DO NOT call this method from within your callback function!

<span id="register_account_login_item"></span>
**`register_account_login_item`**( `result, query, login_passed_action, login_failed_action ` )
Register a result item that requires the user to be logged in.

**Parameters:**
-   `result` **&lt;<a href="ScopeJS.Result.md" class="crosslink">Result</a>&gt;**

    The result item that needs account access

-   `query` **&lt;CannedQuery&gt;**

    The scope's current query

-   `login_passed_action` **&lt;PostLoginAction&gt;**

    The action to take upon successful login

-   `login_failed_action` **&lt;PostLoginAction&gt;**

    The action to take upon unsuccessful login

<span id="register_account_login_item"></span>
**`register_account_login_item`**( `widget, login_passed_action, login_failed_action ` )
Refresh all service statuses

**Parameters:**
-   `widget` **&lt;<a href="ScopeJS.PreviewWidget.md" class="crosslink">PreviewWidget</a>&gt;**

    The widget item that needs account access

-   `login_passed_action` **&lt;PostLoginAction&gt;**

    The action to take upon successful login

-   `login_failed_action` **&lt;PostLoginAction&gt;**

    The action to take upon unsuccessful login

<span id="set_service_update_callback"></span>
**`set_service_update_callback`**( `callback ` )
Set the callback function to be invoked when a service status changes

**Parameters:**
-   `callback` **&lt;Function(OnlineAccountServiceStatus)&gt;**

