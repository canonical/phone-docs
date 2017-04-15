---
Title: Accounts.Watch
---
        
Watch
=====

Monitors an account key or group of keys. [More...](../../sdk-15.04.1/Accounts.Watch.md#details)

`#include <Accounts/Account>`

Inherits QObject.

signals
----------------------------------

void 
**displayNameChanged** (const QString &displayName)
 
void 
**enabledChanged** (const QString &serviceName, bool enabled)
 
void 
**error** (<a href="../../sdk-15.04.1/Accounts.Error.md">Accounts::Error</a> error)
 
void 
**synced** ()
 
void 
**removed** ()
 
pub-methods
------------------------------------------------------

uint 
<a href="../../sdk-15.04.1/Accounts.Watch.md#a483d9a1edcbc46d7070eb70ae23b5989">credentialsId</a> ()
 
void 
<a href="../../sdk-15.04.1/Accounts.Watch.md#a54a9de969058292a257d9d692785ca63">setCredentialsId</a> (const uint id)
 
Sets the accounts credentials ID. More...
 
QString 
**displayName** () const
 
void 
**setDisplayName** (const QString &displayName)
 
QString 
**providerName** () const
 
<a href="../../sdk-15.04.1/Accounts.Provider.md">Provider</a> 
**provider** () const
 
void 
**selectService** (const <a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> &service=<a href="../../sdk-15.04.1/Accounts.Service.md">Service</a>())
 
<a href="../../sdk-15.04.1/Accounts.Service.md">Service</a> 
**selectedService** () const
 
QStringList 
**allKeys** () const
 
void 
**beginGroup** (const QString &prefix)
 
QStringList 
**childGroups** () const
 
QStringList 
**childKeys** () const
 
void 
**clear** ()
 
bool 
**contains** (const QString &key) const
 
void 
**endGroup** ()
 
QString 
**group** () const
 
bool 
**isWritable** () const
 
void 
**remove** (const QString &key)
 
void 
**setValue** (const QString &key, const QVariant &value)
 
QVariant 
**value** (const QString &key, const QVariant &defaultValue=QVariant(), SettingSource \*source=0) const
 
SettingSource 
**value** (const QString &key, QVariant &value) const
 
QString 
**valueAsString** (const QString &key, QString default\_value=QString::null, SettingSource \*source=0) const
 
int 
**valueAsInt** (const QString &key, int default\_value=0, SettingSource \*source=0) const
 
quint64 
**valueAsUInt64** (const QString &key, quint64 default\_value=0, SettingSource \*source=0) const
 
bool 
**valueAsBool** (const QString &key, bool default\_value=false, SettingSource \*source=0) const
 
<a href="../../sdk-15.04.1/Accounts.Watch.md">Watch</a> \* 
**watchKey** (const QString &key=QString())
 
void 
**sync** ()
 
bool 
**syncAndBlock** ()
 
void 
**remove** ()
 
void 
**sign** (const QString &key, const char \*token)
 
bool 
**verify** (const QString &key, const char \*\*token)
 
bool 
**verifyWithTokens** (const QString &key, QList&lt; const char \* &gt; tokens)
 
<span id="details"></span>
Detailed Description
--------------------

Monitors an account key or group of keys.

A watch is created via the Account::watch method and is a simple object which will emit the notify() signal when the value of the key (or group) that it is monitoring is changed.

Definition at line 70 of file account.h.

Member Function Documentation
-----------------------------

<span id="a483d9a1edcbc46d7070eb70ae23b5989" class="anchor"></span>
|                    |     |     |     |     |
|--------------------|-----|-----|-----|-----|
| uint credentialsId | (   |     | )   |     |

Q\_SIGNALS: void notify(const char \*key); };

class ACCOUNTS\_EXPORT Account: public QObject { Q\_OBJECT

public: Account(<a href="../../sdk-15.04.1/Accounts.Manager.md" title="Manager of accounts, services and providers. ">Manager</a> \*manager, const QString &provider, QObject \*parent = 0); virtual ~Account();

static Account \*fromId(<a href="../../sdk-15.04.1/Accounts.Manager.md" title="Manager of accounts, services and providers. ">Manager</a> \*manager, AccountId id, QObject \*parent = 0);

AccountId id() const;

<a href="../../sdk-15.04.1/Accounts.Manager.md" title="Manager of accounts, services and providers. ">Manager</a> \*manager() const;

bool supportsService(const QString &serviceType) const;

ServiceList services(const QString &serviceType = QString()) const; ServiceList enabledServices() const;

bool enabled() const; bool isEnabled() const; void setEnabled(bool);

/\*! Gets the account's credentials ID in Signon database.

The credentials ID is first read from the currently selected service; if it is not found, then it is ready from the global account settings. In any case, the currently selected service is not altered.

<span id="a54a9de969058292a257d9d692785ca63" class="anchor"></span>
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
<td>void setCredentialsId</td>
<td>(</td>
<td>const uint </td>
<td><em>id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Sets the accounts credentials ID.

The change will be written only when sync() is called.

This method operates on the currently selected service.

Definition at line 134 of file account.h.

