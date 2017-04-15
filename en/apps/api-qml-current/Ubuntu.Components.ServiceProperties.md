---
Title: Ubuntu.Components.ServiceProperties
---
        
ServiceProperties
=================

<span class="subtitle"></span>
The component enables accessing service properties from QML. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.1        |

<span id="properties"></span>
Properties
----------

-   ****[adaptorInterface](#adaptorInterface-prop)**** : string
-   ****[error](#error-prop)**** : string
-   ****[path](#path-prop)**** : string
-   ****[service](#service-prop)**** : string
-   ****[serviceInterface](#serviceInterface-prop)**** : string
-   ****[status](#status-prop)**** : enum
-   ****[type](#type-prop)**** : enum

<span id="details"></span>
Detailed Description
--------------------

The services accessed by the component are ones providing their interfaces through DBus. The component is specialized to read properties exposed by these services, andf to keep these property values up to date. It is not meant to access signals or slots exposed, nor to change the values of the properties watched.

Properties watched should be declared within the body of the component like any other QML property, preferably defining a default value for them. The component will enumerate these properties and will ask the service to provide values for those. When enumerating properties, each property will be checked twice, with the case specified as well as with the first letter capitalized.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
ServiceProperties {
    service: "org.freenode.AccountsService"
    path: "/org/freenode/AccountsService"
    serviceInterface: "org.freenode.AccountsService"
    adaptorInterface: "com.ubuntu.touch.Accounts.Sound"
    // listing properties to watch
    // each property name existence will be checked against the current case
    // as well as with first character capitalized
    property bool incomingCallVibrate: true
}
```

Note that there are few properties which must be set in order the component to work. These are [service](#service-prop), [path](#path-prop) and [adaptorInterface](#adaptorInterface-prop). Also, once specified, [service](#service-prop), [serviceInterface](#serviceInterface-prop) and [adaptorInterface](#adaptorInterface-prop) values should not be changed as it cannot be guaranteed that properties watched will be available on those service. Therefore any change on these properties after the component completion will be ignored. Property bindings on properties watched will be ignored as well, as service will report changes in these property values.

The service is connected once the component gets completed (Component.onCompleted). The [error](#error-prop) property specifies any error occured during connection, and the [status](#status-prop) property notifies whether the connection to the service is active or not.

**Note:** Pay attention when chosing the service watched, and set your application's AppArmor rights to ensure a successful service connection.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="adaptorInterface-prop"></span><span class="name">adaptorInterface</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The proeprty specifies the dbus adaptor interface which provides the properties watched. This can be a different interface that the one specified in [serviceInterface](#serviceInterface-prop), and in the same way, it can be empty, in which case all the properties from all interfaces of the service will be watched.

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

The property is set with a human readablestring each time an error occurrs during the service connection. Empty string means no error.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="path-prop"></span><span class="name">path</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property specifies the DBus service connection path. It is mandatory to be specified.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="service-prop"></span><span class="name">service</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The proeprty specifies the DBus service URI. It is mandatory to be specified.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="serviceInterface-prop"></span><span class="name">serviceInterface</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property specifies the service intertface. If it is an empty string, the component will refer to the merging of all interfaces found in the service.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

The property presents the status of the component.

-   - *ServiceProperties.Inactive* - the component is inactive, initial state
-   - *ServiceProperties.ConnectionError* - there was a connection error, the [error](#error-prop) contains the error string.
-   - *ServiceProperties.Synchronizing* - the connection to the service succeeded, and the properties are being synchronized;
-   - *ServiceProperties.Active* - the service watcher is active and initial property synchronization completed.

**Note:** While the status is set to *Synchronizing*, the properties are checked against their existence in the service. Each proeprty will be checked as declared as well with capital first letter. If neither of these exists in the service, it will be reported in the [error](#error-prop) property separately.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="type-prop"></span><span class="name">type</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

Specifies the DBus connection session type. It can get the following values:

-   - *ServiceProperties.System* when system bus is used (default)
-   - *ServiceProperties.Session* when session bus is used

