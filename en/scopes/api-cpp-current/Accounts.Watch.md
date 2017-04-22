---
Title: Accounts.Watch
---

# Accounts.Watch

<p>Monitors an account key or group of keys.  
<a href="Accounts.Watch.md#details">More...</a></p>
<p><code>#include &lt;Accounts/Account&gt;</code></p>
<p>Inherits QObject.</p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Signals</h2></td></tr>
<tr class="memitem:a6c9329531974648e3ea3f05f3ea36129"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>displayNameChanged</b> (const QString &amp;displayName)</td></tr>
<tr class="separator:a6c9329531974648e3ea3f05f3ea36129"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abc008e2f46ae60c14005e24f4cbf41e5"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>enabledChanged</b> (const QString &amp;serviceName, bool enabled)</td></tr>
<tr class="separator:abc008e2f46ae60c14005e24f4cbf41e5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae89dad11eccb775ceb9925d0ff27dd7d"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>error</b> (<a class="el" href="Accounts.Error.md">Accounts::Error</a> error)</td></tr>
<tr class="separator:ae89dad11eccb775ceb9925d0ff27dd7d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4fa6a9f29874eb5ad79fbc70532f71a6"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>synced</b> ()</td></tr>
<tr class="separator:a4fa6a9f29874eb5ad79fbc70532f71a6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adc2a0e638d7742d828062eeafd6769ab"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>removed</b> ()</td></tr>
<tr class="separator:adc2a0e638d7742d828062eeafd6769ab"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a483d9a1edcbc46d7070eb70ae23b5989"><td class="memItemLeft" align="right" valign="top">uint&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="Accounts.Watch.md#a483d9a1edcbc46d7070eb70ae23b5989">credentialsId</a> ()</td></tr>
<tr class="separator:a483d9a1edcbc46d7070eb70ae23b5989"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a54a9de969058292a257d9d692785ca63"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="Accounts.Watch.md#a54a9de969058292a257d9d692785ca63">setCredentialsId</a> (const uint id)</td></tr>
<tr class="memdesc:a54a9de969058292a257d9d692785ca63"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets the accounts credentials ID.  More...<br /></td></tr>
<tr class="separator:a54a9de969058292a257d9d692785ca63"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9def71dea12661002bb3a63b3b91d08d"><td class="memItemLeft" align="right" valign="top">
QString&#160;</td><td class="memItemRight" valign="bottom"><b>displayName</b> () const </td></tr>
<tr class="separator:a9def71dea12661002bb3a63b3b91d08d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac036a365819266590db91caa64b4fff0"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>setDisplayName</b> (const QString &amp;displayName)</td></tr>
<tr class="separator:ac036a365819266590db91caa64b4fff0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a65a95a0e50cf1761a9a21d21c0db412e"><td class="memItemLeft" align="right" valign="top">
QString&#160;</td><td class="memItemRight" valign="bottom"><b>providerName</b> () const </td></tr>
<tr class="separator:a65a95a0e50cf1761a9a21d21c0db412e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab2bf7a26f8729dfb6a8595b6294f5565"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="Accounts.Provider.md">Provider</a>&#160;</td><td class="memItemRight" valign="bottom"><b>provider</b> () const </td></tr>
<tr class="separator:ab2bf7a26f8729dfb6a8595b6294f5565"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8c7532fb7377ee33ab449d36200522b9"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>selectService</b> (const <a class="el" href="Accounts.Service.md">Service</a> &amp;service=<a class="el" href="Accounts.Service.md">Service</a>())</td></tr>
<tr class="separator:a8c7532fb7377ee33ab449d36200522b9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4831783cce39d897dc35b57ce233d735"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="Accounts.Service.md">Service</a>&#160;</td><td class="memItemRight" valign="bottom"><b>selectedService</b> () const </td></tr>
<tr class="separator:a4831783cce39d897dc35b57ce233d735"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9936a9bd6fca45f1d03a63b1b485ed88"><td class="memItemLeft" align="right" valign="top">
QStringList&#160;</td><td class="memItemRight" valign="bottom"><b>allKeys</b> () const </td></tr>
<tr class="separator:a9936a9bd6fca45f1d03a63b1b485ed88"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa889966b87d4315aea74c30088e9c8fa"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>beginGroup</b> (const QString &amp;prefix)</td></tr>
<tr class="separator:aa889966b87d4315aea74c30088e9c8fa"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af5b653c82d3a3d7765da47fe5db0e128"><td class="memItemLeft" align="right" valign="top">
QStringList&#160;</td><td class="memItemRight" valign="bottom"><b>childGroups</b> () const </td></tr>
<tr class="separator:af5b653c82d3a3d7765da47fe5db0e128"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a09f8085bca6d1c8b4837beabcea7b639"><td class="memItemLeft" align="right" valign="top">
QStringList&#160;</td><td class="memItemRight" valign="bottom"><b>childKeys</b> () const </td></tr>
<tr class="separator:a09f8085bca6d1c8b4837beabcea7b639"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac8bb3912a3ce86b15842e79d0b421204"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>clear</b> ()</td></tr>
<tr class="separator:ac8bb3912a3ce86b15842e79d0b421204"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aab9f06bc42480ab555a9757e14303e5f"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>contains</b> (const QString &amp;key) const </td></tr>
<tr class="separator:aab9f06bc42480ab555a9757e14303e5f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af964cd7bde81d0f118ea09e201e155dd"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>endGroup</b> ()</td></tr>
<tr class="separator:af964cd7bde81d0f118ea09e201e155dd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5adb315467de1866550658b4679bf9f9"><td class="memItemLeft" align="right" valign="top">
QString&#160;</td><td class="memItemRight" valign="bottom"><b>group</b> () const </td></tr>
<tr class="separator:a5adb315467de1866550658b4679bf9f9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa741717fa726eea03300fdde9934808a"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>isWritable</b> () const </td></tr>
<tr class="separator:aa741717fa726eea03300fdde9934808a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a89c0a3a6c660a5f577e5241a63052f2c"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>remove</b> (const QString &amp;key)</td></tr>
<tr class="separator:a89c0a3a6c660a5f577e5241a63052f2c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a48d1031ae51455e458b881c49c65a92e"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>setValue</b> (const QString &amp;key, const QVariant &amp;value)</td></tr>
<tr class="separator:a48d1031ae51455e458b881c49c65a92e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a11e51b34244f3e9288dacb30b6230085"><td class="memItemLeft" align="right" valign="top">
QVariant&#160;</td><td class="memItemRight" valign="bottom"><b>value</b> (const QString &amp;key, const QVariant &amp;defaultValue=QVariant(), SettingSource *source=0) const </td></tr>
<tr class="separator:a11e51b34244f3e9288dacb30b6230085"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6d1dedb9c7a20fc62310946d4e6881a6"><td class="memItemLeft" align="right" valign="top">
SettingSource&#160;</td><td class="memItemRight" valign="bottom"><b>value</b> (const QString &amp;key, QVariant &amp;value) const </td></tr>
<tr class="separator:a6d1dedb9c7a20fc62310946d4e6881a6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9b737faa22b94f329d0c377b94f9ecf3"><td class="memItemLeft" align="right" valign="top">
QString&#160;</td><td class="memItemRight" valign="bottom"><b>valueAsString</b> (const QString &amp;key, QString default_value=QString::null, SettingSource *source=0) const </td></tr>
<tr class="separator:a9b737faa22b94f329d0c377b94f9ecf3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a950ddc85d587c0d9372c031ce431edfe"><td class="memItemLeft" align="right" valign="top">
int&#160;</td><td class="memItemRight" valign="bottom"><b>valueAsInt</b> (const QString &amp;key, int default_value=0, SettingSource *source=0) const </td></tr>
<tr class="separator:a950ddc85d587c0d9372c031ce431edfe"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af26f7d7e660864d08b75dce98565684e"><td class="memItemLeft" align="right" valign="top">
quint64&#160;</td><td class="memItemRight" valign="bottom"><b>valueAsUInt64</b> (const QString &amp;key, quint64 default_value=0, SettingSource *source=0) const </td></tr>
<tr class="separator:af26f7d7e660864d08b75dce98565684e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7d639022739d7f3ef53ca0b0195f30ce"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>valueAsBool</b> (const QString &amp;key, bool default_value=false, SettingSource *source=0) const </td></tr>
<tr class="separator:a7d639022739d7f3ef53ca0b0195f30ce"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5e36b49426df748e27d189b2b11faf92"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="Accounts.Watch.md">Watch</a> *&#160;</td><td class="memItemRight" valign="bottom"><b>watchKey</b> (const QString &amp;key=QString())</td></tr>
<tr class="separator:a5e36b49426df748e27d189b2b11faf92"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad55f80ed3cd8b6c4f247763b747016af"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>sync</b> ()</td></tr>
<tr class="separator:ad55f80ed3cd8b6c4f247763b747016af"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4c182d464e5a7978fdf1817ce50d9531"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>syncAndBlock</b> ()</td></tr>
<tr class="separator:a4c182d464e5a7978fdf1817ce50d9531"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1fcb45e5d2428352eb36b487d1d4eea3"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>remove</b> ()</td></tr>
<tr class="separator:a1fcb45e5d2428352eb36b487d1d4eea3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4ebb90703ca3ec222b5822474e058547"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>sign</b> (const QString &amp;key, const char *token)</td></tr>
<tr class="separator:a4ebb90703ca3ec222b5822474e058547"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4f1aed052f72d4a55a35a2a1621fc391"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>verify</b> (const QString &amp;key, const char **token)</td></tr>
<tr class="separator:a4f1aed052f72d4a55a35a2a1621fc391"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af491d2638521b57cfa5f01e47a539b33"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>verifyWithTokens</b> (const QString &amp;key, QList&lt; const char * &gt; tokens)</td></tr>
<tr class="separator:af491d2638521b57cfa5f01e47a539b33"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Monitors an account key or group of keys. </p>
<p>A watch is created via the Account::watch method and is a simple object which will emit the notify() signal when the value of the key (or group) that it is monitoring is changed. </p>
<p>Definition at line 70 of file account.h.</p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">uint credentialsId </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Q_SIGNALS: void notify(const char *key); };</p>
<p>class ACCOUNTS_EXPORT Account: public QObject { Q_OBJECT</p>
<p>public: Account(<a class="el" href="Accounts.Manager.md" title="Manager of accounts, services and providers. ">Manager</a> *manager, const QString &amp;provider, QObject *parent = 0); virtual ~Account();</p>
<p>static Account *fromId(<a class="el" href="Accounts.Manager.md" title="Manager of accounts, services and providers. ">Manager</a> *manager, AccountId id, QObject *parent = 0);</p>
<p>AccountId id() const;</p>
<p><a class="el" href="Accounts.Manager.md" title="Manager of accounts, services and providers. ">Manager</a> *manager() const;</p>
<p>bool supportsService(const QString &amp;serviceType) const;</p>
<p>ServiceList services(const QString &amp;serviceType = QString()) const; ServiceList enabledServices() const;</p>
<p>bool enabled() const; bool isEnabled() const; void setEnabled(bool);</p>
<p>/*! Gets the account's credentials ID in Signon database.</p>
<p>The credentials ID is first read from the currently selected service; if it is not found, then it is ready from the global account settings. In any case, the currently selected service is not altered. </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void setCredentialsId </td>
<td>(</td>
<td class="paramtype">const uint&#160;</td>
<td class="paramname"><em>id</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">inline</span></span>  </td>
</tr>
</table>
<p>Sets the accounts credentials ID. </p>
<p>The change will be written only when sync() is called.</p>
<p>This method operates on the currently selected service. </p>
<p>Definition at line 134 of file account.h.</p>
