---
Title: Accounts.AccountService
---
        
AccountService
==============

Account settings for a specific service. [More...](../../sdk-15.04.1/Accounts.AccountService.md#details)

`#include <Accounts/AccountService>`

Inherits QObject.

signals
----------------------------------

void 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#ab2f0d21a6f535870b37dcb44b2f77205">enabled</a> (bool <a href="../../sdk-15.04.1/Accounts.AccountService.md#ae2931e09e0fd8eac15c83f0254b4e4ac">isEnabled</a>)
 
Emitted when the enabledness state of the account service has changed.
 
void 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a4db9a5f1a7e34ec6902ff9630d98b777">changed</a> ()
 
Emitted when some setting has changed on the account service. More...
 
pub-methods
------------------------------------------------------

 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#aef5d4691113e384992926928928ae334">AccountService</a> (Account \*<a href="../../sdk-15.04.1/Accounts.AccountService.md#a490333c2ed4d6f107c5493a9465d993b">account</a>, const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &<a href="../../sdk-15.04.1/Accounts.AccountService.md#a256dc9d961214d5f60642a290a288998">service</a>)
 
Constructor. More...
 
 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a5183e298082ee83004c503197ff14e20">AccountService</a> (Account \*<a href="../../sdk-15.04.1/Accounts.AccountService.md#a490333c2ed4d6f107c5493a9465d993b">account</a>, const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &<a href="../../sdk-15.04.1/Accounts.AccountService.md#a256dc9d961214d5f60642a290a288998">service</a>, QObject \*parent)
 
Constructor. More...
 
virtual 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a0622bfbd6cf486c0b73712ff02c0294e">~AccountService</a> ()
 
Destructor.
 
Account \* 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a490333c2ed4d6f107c5493a9465d993b">account</a> () const
 
Return the Account.
 
<a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a256dc9d961214d5f60642a290a288998">service</a> () const
 
Return the Service. More...
 
bool 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a1d79980f25d38aba3d6777d0afe544f3">enabled</a> () const
 
Check whether the account service is enabled. More...
 
bool 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#ae2931e09e0fd8eac15c83f0254b4e4ac">isEnabled</a> () const
 
Check whether the account service is enabled.
 
QStringList 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a9936a9bd6fca45f1d03a63b1b485ed88">allKeys</a> () const
 
Return all the keys in the current group.
 
void 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#aa889966b87d4315aea74c30088e9c8fa">beginGroup</a> (const QString &prefix)
 
Enter a group. More...
 
QStringList 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#af5b653c82d3a3d7765da47fe5db0e128">childGroups</a> () const
 
Return all the groups which are direct children of the current group.
 
QStringList 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a09f8085bca6d1c8b4837beabcea7b639">childKeys</a> () const
 
Return all the keys which are direct children of the current group.
 
void 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#ac8bb3912a3ce86b15842e79d0b421204">clear</a> ()
 
Remove all the keys. More...
 
bool 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#aab9f06bc42480ab555a9757e14303e5f">contains</a> (const QString &key) const
 
Check whether the given key is in the current group. More...
 
void 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#af964cd7bde81d0f118ea09e201e155dd">endGroup</a> ()
 
Exit a group.
 
QString 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a5adb315467de1866550658b4679bf9f9">group</a> () const
 
Return the name of the current group.
 
void 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a89c0a3a6c660a5f577e5241a63052f2c">remove</a> (const QString &key)
 
Remove the given key. More...
 
void 
**setValue** (const char \*key, const QVariant &<a href="../../sdk-15.04.1/Accounts.AccountService.md#a299df626e5ca7968fd8b70f9c87acfbb">value</a>)
 
void 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a48d1031ae51455e458b881c49c65a92e">setValue</a> (const QString &key, const QVariant &<a href="../../sdk-15.04.1/Accounts.AccountService.md#a299df626e5ca7968fd8b70f9c87acfbb">value</a>)
 
Change the value of an account setting. More...
 
QVariant 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a299df626e5ca7968fd8b70f9c87acfbb">value</a> (const QString &key, const QVariant &defaultValue, SettingSource \*source=0) const
 
Retrieves the value of an account setting, as a QVariant. More...
 
QVariant 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a53cc185b2ceff59c833ebe939a6e18cb">value</a> (const QString &key, SettingSource \*source=0) const
 
Retrieves the value of an account setting. More...
 
QVariant 
**value** (const char \*key, SettingSource \*source=0) const
 
QStringList 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a678e391f34362471f042719d3b388d81">changedFields</a> () const
 
This method should be called only in the context of a handler of the AccountService::changed() signal, and can be used to retrieve the set of changes. More...
 
<a href="../../sdk-15.04.1/Accounts.AuthData.md">AuthData</a> 
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a49a9f7deccedeebacadc37ae01ac83ab">authData</a> () const
 
Read the authentication data stored in the account (merging the service-specific settings with the global account settings). More...
 
<span id="details"></span>
Detailed Description
--------------------

Account settings for a specific service.

The <a href="../../sdk-15.04.1/Accounts.AccountService.md" title="Account settings for a specific service. ">AccountService</a> class provides access to the account settings for a specific service type. It is meant to be easier to use than the Account class because it hides the complexity of the account structure and gives access to only the limited subset of account settings which are relevant to a service.

To get an <a href="../../sdk-15.04.1/Accounts.AccountService.md" title="Account settings for a specific service. ">AccountService</a> one can use the <a href="../../sdk-15.04.1/Accounts.Manager.md" title="Manager of accounts, services and providers. ">Manager</a> methods accountServices() or enabledAccountServices(), which both return a QList of account services. Note that if the <a href="../../sdk-15.04.1/Accounts.Manager.md" title="Manager of accounts, services and providers. ">Manager</a> was instantiated for a specific service type, these lists will contain only those account services matching that service type. The <a href="../../sdk-15.04.1/Accounts.AccountService.md" title="Account settings for a specific service. ">AccountService</a> can also be instantiated with its <a href="../../sdk-15.04.1/Accounts.AccountService.md" title="Account settings for a specific service. ">AccountService</a>(Account \*account, <a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a> \*service) constructor: this is useful if one already has an Account instance.

This is intended to be a convenient wrapper over the accounts settings specific for a service; as such, it doesn't offer all the editing possibilities offered by the Account class, such as enabling the service itself: these operations should ideally not be performed by consumer applications, but by the account editing UI only.

Example code:

<span class="comment">// Instantiate an account manager interested in e-mail services only.</span>

<a href="../../sdk-15.04.1/Accounts.Manager.md" class="code">Accounts::Manager</a> \*manager = <span class="keyword">new</span> <a href="../../sdk-15.04.1/Accounts.Manager.md" class="code">Accounts::Manager</a>(<span class="stringliteral">"e-mail"</span>);

<span class="comment">// Get the list of enabled AccountService objects of type e-mail.</span>

Accounts::AccountServiceList services = manager-&gt;enabledAccountServices();

<span class="comment">// Loop through the account services and do something useful with them.</span>

<span class="keywordflow">foreach</span> (<a href="../../sdk-15.04.1/Accounts.AccountService.md" class="code">Accounts::AccountService</a> <a href="../../sdk-15.04.1/Accounts.AccountService.md#a256dc9d961214d5f60642a290a288998" class="code">service</a>, services) {

QString server = service.<a href="../../sdk-15.04.1/Accounts.AccountService.md#a299df626e5ca7968fd8b70f9c87acfbb" class="code">value</a>(<span class="stringliteral">"pop3/hostname"</span>).toString();

<span class="keywordtype">int</span> port = service.<a href="../../sdk-15.04.1/Accounts.AccountService.md#a299df626e5ca7968fd8b70f9c87acfbb" class="code">value</a>(<span class="stringliteral">"pop3/port"</span>).toInt();

<span class="comment">// Suppose that the e-mail address is stored in the global account</span>

<span class="comment">// settings; let's get it from there:</span>

QString fromAddress = service.<a href="../../sdk-15.04.1/Accounts.AccountService.md#a490333c2ed4d6f107c5493a9465d993b" class="code">account</a>()-&gt;valueAsString(<span class="stringliteral">"username"</span>);

...

}

Note  
User applications (with the notable exception of the accounts editing application) should never use account services which are not enabled, and should stop using an account when the account service becomes disabled. The latter can be done by connecting to the <a href="../../sdk-15.04.1/Accounts.AccountService.md#a4db9a5f1a7e34ec6902ff9630d98b777" title="Emitted when some setting has changed on the account service. ">changed()</a> signal and checking if <a href="../../sdk-15.04.1/Accounts.AccountService.md#ae2931e09e0fd8eac15c83f0254b4e4ac" title="Check whether the account service is enabled. ">isEnabled()</a> still returns true.

Note that if the account gets deleted, it will always get disabled first; so, there is no need to connect to the Account::removed() signal; one can just monitor the <a href="../../sdk-15.04.1/Accounts.AccountService.md#a4db9a5f1a7e34ec6902ff9630d98b777" title="Emitted when some setting has changed on the account service. ">changed()</a> signal from the <a href="../../sdk-15.04.1/Accounts.AccountService.md" title="Account settings for a specific service. ">AccountService</a> objects.

Definition at line 39 of file account-service.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="aef5d4691113e384992926928928ae334" class="anchor"></span>
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
<td><a href="../../sdk-15.04.1/Accounts.AccountService.md">AccountService</a></td>
<td>(</td>
<td>Account * </td>
<td><em>account</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &amp; </td>
<td><em>service</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">explicit</span></span></td>
</tr>
</tbody>
</table>

Constructor.

Parameters  
|         |                                                                                                                                                           |
|---------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| account | An Account.                                                                                                                                               |
| service | A <a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a> supported by the account. |

Definition at line 179 of file account-service.cpp.

<span id="a5183e298082ee83004c503197ff14e20" class="anchor"></span>
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
<td><a href="../../sdk-15.04.1/Accounts.AccountService.md">AccountService</a></td>
<td>(</td>
<td>Account * </td>
<td><em>account</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &amp; </td>
<td><em>service</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>QObject * </td>
<td><em>parent</em> </td>
</tr>
<tr class="even">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">explicit</span></span></td>
</tr>
</tbody>
</table>

Constructor.

Parameters  
|         |                                                                                                                                                           |
|---------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| account | An Account.                                                                                                                                               |
| service | A <a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a> supported by the account. |
| parent  | The parent object.                                                                                                                                        |

Definition at line 191 of file account-service.cpp.

Member Function Documentation
-----------------------------

<span id="a49a9f7deccedeebacadc37ae01ac83ab" class="anchor"></span>
|                                                                                           |     |     |     |       |
|-------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../../sdk-15.04.1/Accounts.AuthData.md">AuthData</a> authData | (   |     | )   | const |

Read the authentication data stored in the account (merging the service-specific settings with the global account settings).

The method and mechanism are read from the "auth/method" and "auth/mechanism" keys, respectively. The authentication parameters are found under the "auth/&lt;method&gt;/&lt;mechanism&gt;/" group.

Returns  
an <a href="../../sdk-15.04.1/Accounts.AuthData.md" title="Information for account authentication. ">AuthData</a> object, describing the authentication settings.

Definition at line 501 of file account-service.cpp.

<span id="aa889966b87d4315aea74c30088e9c8fa" class="anchor"></span>
|                 |     |                  |          |     |     |
|-----------------|-----|------------------|----------|-----|-----|
| void beginGroup | (   | const QString &  | *prefix* | )   |     |

Enter a group.

This method never fails.

Parameters  
|        |     |
|--------|-----|
| prefix |     |

Definition at line 271 of file account-service.cpp.

<span id="a4db9a5f1a7e34ec6902ff9630d98b777" class="anchor"></span>
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
<td>changed</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">signal</span></span></td>
</tr>
</tbody>
</table>

Emitted when some setting has changed on the account service.

You can use the <a href="../../sdk-15.04.1/Accounts.AccountService.md#a678e391f34362471f042719d3b388d81" title="This method should be called only in the context of a handler of the AccountService::changed() signal...">changedFields()</a> method to retrieve the list of the settings which have changed.

<span id="a678e391f34362471f042719d3b388d81" class="anchor"></span>
|                           |     |     |     |       |
|---------------------------|-----|-----|-----|-------|
| QStringList changedFields | (   |     | )   | const |

This method should be called only in the context of a handler of the <a href="../../sdk-15.04.1/Accounts.AccountService.md#a4db9a5f1a7e34ec6902ff9630d98b777" title="Emitted when some setting has changed on the account service. ">AccountService::changed()</a> signal, and can be used to retrieve the set of changes.

Returns  
a QStringList of the keys which have changed.

Definition at line 471 of file account-service.cpp.

<span id="ac8bb3912a3ce86b15842e79d0b421204" class="anchor"></span>
|            |     |     |     |     |
|------------|-----|-----|-----|-----|
| void clear | (   |     | )   |     |

Remove all the keys.

See also  
<a href="../../sdk-15.04.1/Accounts.AccountService.md#a89c0a3a6c660a5f577e5241a63052f2c" title="Remove the given key. ">remove(const QString &amp;key)</a>

Definition at line 316 of file account-service.cpp.

<span id="aab9f06bc42480ab555a9757e14303e5f" class="anchor"></span>
|               |     |                  |       |     |       |
|---------------|-----|------------------|-------|-----|-------|
| bool contains | (   | const QString &  | *key* | )   | const |

Check whether the given key is in the current group.

Parameters  
|     |                              |
|-----|------------------------------|
| key | The key name of the setting. |

Definition at line 331 of file account-service.cpp.

References AccountService::childKeys().

<span id="a1d79980f25d38aba3d6777d0afe544f3" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| bool enabled | (   |     | )   | const |

Check whether the account service is enabled.

Note  
this is just a wrapper of isEnabled

<!-- -->

See also  
<a href="../../sdk-15.04.1/Accounts.AccountService.md#ae2931e09e0fd8eac15c83f0254b4e4ac" title="Check whether the account service is enabled. ">isEnabled()</a>

<!-- -->

**<a href="../../sdk-15.04.1/Accounts.deprecated.md#_deprecated000001">Deprecated:</a>**  
use isEnabled instead

Definition at line 231 of file account-service.cpp.

References AccountService::isEnabled().

<span id="a89c0a3a6c660a5f577e5241a63052f2c" class="anchor"></span>
|             |     |                  |       |     |     |
|-------------|-----|------------------|-------|-----|-----|
| void remove | (   | const QString &  | *key* | )   |     |

Remove the given key.

If the key is the empty string, all keys in the current group are removed.

Parameters  
|     |                              |
|-----|------------------------------|
| key | The key name of the setting. |

Definition at line 363 of file account-service.cpp.

References AccountService::allKeys().

<span id="a256dc9d961214d5f60642a290a288998" class="anchor"></span>
|                                                                                        |     |     |     |       |
|----------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> service | (   |     | )   | const |

Return the <a href="../../sdk-15.04.1/Accounts.Service.md" title="Representation of an account service. ">Service</a>.

Do not delete this object explicitly.

Definition at line 218 of file account-service.cpp.

<span id="a48d1031ae51455e458b881c49c65a92e" class="anchor"></span>
|               |     |                   |          |
|---------------|-----|-------------------|----------|
| void setValue | (   | const QString &   | *key*,   |
|               |     | const QVariant &  | *value*  |
|               | )   |                   |          |

Change the value of an account setting.

Parameters  
|       |                               |
|-------|-------------------------------|
| key   | The name of the setting.      |
| value | The new value of the setting. |

Definition at line 391 of file account-service.cpp.

<span id="a299df626e5ca7968fd8b70f9c87acfbb" class="anchor"></span>
|                |     |                   |                 |
|----------------|-----|-------------------|-----------------|
| QVariant value | (   | const QString &   | *key*,          |
|                |     | const QVariant &  | *defaultValue*, |
|                |     | SettingSource \*  | *source* = `0`  |
|                | )   |                   | const           |

Retrieves the value of an account setting, as a QVariant.

Parameters  
|              |                                                                                        |
|--------------|----------------------------------------------------------------------------------------|
| key          | The key whose value must be retrieved.                                                 |
| defaultValue | Value returned if the key is unset.                                                    |
| source       | Indicates whether the value comes from the account, the service template or was unset. |

<!-- -->

Returns  
The value associated to *key*.

This method operates on the currently selected service.

Definition at line 423 of file account-service.cpp.

Referenced by AccountService::value().

<span id="a53cc185b2ceff59c833ebe939a6e18cb" class="anchor"></span>
|                |     |                   |                 |
|----------------|-----|-------------------|-----------------|
| QVariant value | (   | const QString &   | *key*,          |
|                |     | SettingSource \*  | *source* = `0`  |
|                | )   |                   | const           |

Retrieves the value of an account setting.

Parameters  
|        |                                                                                        |
|--------|----------------------------------------------------------------------------------------|
| key    | The key whose value must be retrieved                                                  |
| source | Indicates whether the value comes from the account, the service template or was unset. |

Returns the value of the setting, or an invalid QVariant if unset.

Definition at line 454 of file account-service.cpp.

References AccountService::value().

