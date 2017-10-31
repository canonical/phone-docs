---
Title: Accounts.Manager
---

# Accounts.Manager

<p><a class="el" href="#" title="Manager of accounts, services and providers. ">Manager</a> of accounts, services and providers.  
<a href="#details">More...</a></p>
<p><code>#include &lt;Accounts/Manager&gt;</code></p>
<p>Inherits QObject.</p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:a0e65ad13124ea2cb5e255b640464e35f"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0e65ad13124ea2cb5e255b640464e35fa8ab6226b5ae4221689bc2d25d6201ae9">DisableNotifications</a> = 0x1
}</td></tr>
<tr class="memdesc:a0e65ad13124ea2cb5e255b640464e35f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Specifies options for the object.  <a href="#a0e65ad13124ea2cb5e255b640464e35f">More...</a><br /></td></tr>
<tr class="separator:a0e65ad13124ea2cb5e255b640464e35f"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Signals</h2></td></tr>
<tr class="memitem:ad6d2d0cfff2e9f11ab3327ddf573f1eb"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad6d2d0cfff2e9f11ab3327ddf573f1eb">accountCreated</a> (Accounts::AccountId id)</td></tr>
<tr class="memdesc:ad6d2d0cfff2e9f11ab3327ddf573f1eb"><td class="mdescLeft">&#160;</td><td class="mdescRight">The signal is emitted when new account is created.  More...<br /></td></tr>
<tr class="separator:ad6d2d0cfff2e9f11ab3327ddf573f1eb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9e18c1ab3efc480d15fe72d833e9ab95"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9e18c1ab3efc480d15fe72d833e9ab95">accountRemoved</a> (Accounts::AccountId id)</td></tr>
<tr class="memdesc:a9e18c1ab3efc480d15fe72d833e9ab95"><td class="mdescLeft">&#160;</td><td class="mdescRight">The signal is emitted when existing account is removed.  More...<br /></td></tr>
<tr class="separator:a9e18c1ab3efc480d15fe72d833e9ab95"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa228f4eaf987ea3575c7ff9da03208e8"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa228f4eaf987ea3575c7ff9da03208e8">accountUpdated</a> (Accounts::AccountId id)</td></tr>
<tr class="memdesc:aa228f4eaf987ea3575c7ff9da03208e8"><td class="mdescLeft">&#160;</td><td class="mdescRight">The signal is emitted when any account property for a particular service is updated.  More...<br /></td></tr>
<tr class="separator:aa228f4eaf987ea3575c7ff9da03208e8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9da726ad1ee02be3dea7c19b82bb373d"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9da726ad1ee02be3dea7c19b82bb373d">enabledEvent</a> (Accounts::AccountId id)</td></tr>
<tr class="memdesc:a9da726ad1ee02be3dea7c19b82bb373d"><td class="mdescLeft">&#160;</td><td class="mdescRight">If the manager has been created with serviceType, this signal will be emitted when an account (identified by AccountId) has been modified in such a way that the application might be interested to start/stop using it: the "enabled" flag on the account or in some service supported by the account and matching the AgManager::serviceType have changed.  More...<br /></td></tr>
<tr class="separator:a9da726ad1ee02be3dea7c19b82bb373d"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a904954dc41cf98ac053b00f12dbc0090"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a904954dc41cf98ac053b00f12dbc0090">Manager</a> (QObject *parent=0)</td></tr>
<tr class="memdesc:a904954dc41cf98ac053b00f12dbc0090"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructor.  More...<br /></td></tr>
<tr class="separator:a904954dc41cf98ac053b00f12dbc0090"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2d948d667caf0a065d995c847ef57176"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2ace548efe2fbf601ecf6efcfcf9c980">serviceType</a>, QObject *parent=0)</td></tr>
<tr class="memdesc:a2d948d667caf0a065d995c847ef57176"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructs a manager initialized with service type.  More...<br /></td></tr>
<tr class="separator:a2d948d667caf0a065d995c847ef57176"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5140dac7527af074eca9a9f97c5a8cea"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a42ec574899ed53e05880ce02e40073a1">options</a>, QObject *parent=0)</td></tr>
<tr class="memdesc:a5140dac7527af074eca9a9f97c5a8cea"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructor, allowing option flags to be specified.  More...<br /></td></tr>
<tr class="separator:a5140dac7527af074eca9a9f97c5a8cea"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a829d7114e3ed38c555af0fb4e974a6f6"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a829d7114e3ed38c555af0fb4e974a6f6">~Manager</a> ()</td></tr>
<tr class="memdesc:a829d7114e3ed38c555af0fb4e974a6f6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destructor. <br /></td></tr>
<tr class="separator:a829d7114e3ed38c555af0fb4e974a6f6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8999bd6e99eb3f8ee49bdf6c8e387a6d"><td class="memItemLeft" align="right" valign="top">Account *&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8999bd6e99eb3f8ee49bdf6c8e387a6d">account</a> (const AccountId &amp;id) const </td></tr>
<tr class="memdesc:a8999bd6e99eb3f8ee49bdf6c8e387a6d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Loads an account from the database.  More...<br /></td></tr>
<tr class="separator:a8999bd6e99eb3f8ee49bdf6c8e387a6d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af6cb7c309b94adfe0c000a2925745975"><td class="memItemLeft" align="right" valign="top">AccountIdList&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2ace548efe2fbf601ecf6efcfcf9c980">serviceType</a>=QString::null) const </td></tr>
<tr class="memdesc:af6cb7c309b94adfe0c000a2925745975"><td class="mdescLeft">&#160;</td><td class="mdescRight">Lists the accounts which support the requested service.  More...<br /></td></tr>
<tr class="separator:af6cb7c309b94adfe0c000a2925745975"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5034b5eb730a95722ad1bd1dd76b7867"><td class="memItemLeft" align="right" valign="top">AccountIdList&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2ace548efe2fbf601ecf6efcfcf9c980">serviceType</a>=QString::null) const </td></tr>
<tr class="memdesc:a5034b5eb730a95722ad1bd1dd76b7867"><td class="mdescLeft">&#160;</td><td class="mdescRight">Lists the enabled accounts which support the requested service that also must be enabled.  More...<br /></td></tr>
<tr class="separator:a5034b5eb730a95722ad1bd1dd76b7867"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab094ae9aa044b74123f9269dd9e5627c"><td class="memItemLeft" align="right" valign="top">Account *&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab094ae9aa044b74123f9269dd9e5627c">createAccount</a> (const QString &amp;providerName)</td></tr>
<tr class="memdesc:ab094ae9aa044b74123f9269dd9e5627c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a new account.  More...<br /></td></tr>
<tr class="separator:ab094ae9aa044b74123f9269dd9e5627c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac9b1bf173f68b9a0384cd1afad398931"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#ac9b1bf173f68b9a0384cd1afad398931">service</a> (const QString &amp;serviceName) const </td></tr>
<tr class="memdesc:ac9b1bf173f68b9a0384cd1afad398931"><td class="mdescLeft">&#160;</td><td class="mdescRight">Gets an object representing a service.  More...<br /></td></tr>
<tr class="separator:ac9b1bf173f68b9a0384cd1afad398931"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a77e3d998be834bacfb3378e64656edf8"><td class="memItemLeft" align="right" valign="top">ServiceList&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2ace548efe2fbf601ecf6efcfcf9c980">serviceType</a>=QString::null) const </td></tr>
<tr class="memdesc:a77e3d998be834bacfb3378e64656edf8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Gets the service list.  More...<br /></td></tr>
<tr class="separator:a77e3d998be834bacfb3378e64656edf8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a79085e0676834932f64d651f4231b2ec"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a79085e0676834932f64d651f4231b2ec">provider</a> (const QString &amp;providerName) const </td></tr>
<tr class="memdesc:a79085e0676834932f64d651f4231b2ec"><td class="mdescLeft">&#160;</td><td class="mdescRight">Gets an object representing a provider.  More...<br /></td></tr>
<tr class="separator:a79085e0676834932f64d651f4231b2ec"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa4b53bc6ceef8d0c51b50c4b047409dc"><td class="memItemLeft" align="right" valign="top">ProviderList&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa4b53bc6ceef8d0c51b50c4b047409dc">providerList</a> () const </td></tr>
<tr class="memdesc:aa4b53bc6ceef8d0c51b50c4b047409dc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Gets a provider list.  More...<br /></td></tr>
<tr class="separator:aa4b53bc6ceef8d0c51b50c4b047409dc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2ace548efe2fbf601ecf6efcfcf9c980"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a2ace548efe2fbf601ecf6efcfcf9c980">serviceType</a> (const QString &amp;name) const </td></tr>
<tr class="memdesc:a2ace548efe2fbf601ecf6efcfcf9c980"><td class="mdescLeft">&#160;</td><td class="mdescRight">Gets an object representing a service type.  More...<br /></td></tr>
<tr class="separator:a2ace548efe2fbf601ecf6efcfcf9c980"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a28ff538d5abd52ff691e30ed75a6b41f"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a28ff538d5abd52ff691e30ed75a6b41f">application</a> (const QString &amp;applicationName) const </td></tr>
<tr class="memdesc:a28ff538d5abd52ff691e30ed75a6b41f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get an object representing an application.  More...<br /></td></tr>
<tr class="separator:a28ff538d5abd52ff691e30ed75a6b41f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae18f9f8c59a4e15e8849dd832c54b874"><td class="memItemLeft" align="right" valign="top">ApplicationList&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac9b1bf173f68b9a0384cd1afad398931">service</a>) const </td></tr>
<tr class="memdesc:ae18f9f8c59a4e15e8849dd832c54b874"><td class="mdescLeft">&#160;</td><td class="mdescRight">List the registered applications which support the given service.  More...<br /></td></tr>
<tr class="separator:ae18f9f8c59a4e15e8849dd832c54b874"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa090de65c448278a23851f45f38fa9ce"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa090de65c448278a23851f45f38fa9ce">serviceType</a> () const </td></tr>
<tr class="memdesc:aa090de65c448278a23851f45f38fa9ce"><td class="mdescLeft">&#160;</td><td class="mdescRight">Gets the service type if given in manager constructor.  More...<br /></td></tr>
<tr class="separator:aa090de65c448278a23851f45f38fa9ce"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a453a462fc339dae385360dc73128bf14"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acd89c68759d802afa73ef928b293c82b">timeout</a>)</td></tr>
<tr class="memdesc:a453a462fc339dae385360dc73128bf14"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets the timeout for database operations.  More...<br /></td></tr>
<tr class="separator:a453a462fc339dae385360dc73128bf14"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acd89c68759d802afa73ef928b293c82b"><td class="memItemLeft" align="right" valign="top">quint32&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acd89c68759d802afa73ef928b293c82b">timeout</a> ()</td></tr>
<tr class="memdesc:acd89c68759d802afa73ef928b293c82b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Gets the database timeout.  More...<br /></td></tr>
<tr class="separator:acd89c68759d802afa73ef928b293c82b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9b4396a045e666376bdb535553bce09b"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9b4396a045e666376bdb535553bce09b">setAbortOnTimeout</a> (bool abort)</td></tr>
<tr class="memdesc:a9b4396a045e666376bdb535553bce09b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets whether to abort the application when a database timeout occurs.  More...<br /></td></tr>
<tr class="separator:a9b4396a045e666376bdb535553bce09b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afdf5d9b1cf381bf5a83ac0bf41be522b"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afdf5d9b1cf381bf5a83ac0bf41be522b">abortOnTimeout</a> () const </td></tr>
<tr class="separator:afdf5d9b1cf381bf5a83ac0bf41be522b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a42ec574899ed53e05880ce02e40073a1"><td class="memItemLeft" align="right" valign="top">Options&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a42ec574899ed53e05880ce02e40073a1">options</a> () const </td></tr>
<tr class="separator:a42ec574899ed53e05880ce02e40073a1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a31f856d7b015a7478550d90feac77f48"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a31f856d7b015a7478550d90feac77f48">lastError</a> () const </td></tr>
<tr class="memdesc:a31f856d7b015a7478550d90feac77f48"><td class="mdescLeft">&#160;</td><td class="mdescRight">Gets the last error.  More...<br /></td></tr>
<tr class="separator:a31f856d7b015a7478550d90feac77f48"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p><a class="el" href="#" title="Manager of accounts, services and providers. ">Manager</a> of accounts, services and providers. </p>
<p>The <a class="el" href="#" title="Manager of accounts, services and providers. ">Manager</a> offers ways to create accounts, list accounts, services and providers. It also emits signals when accounts are created and removed. </p>
<p>Definition at line 51 of file manager.h.</p>
<h2 class="groupheader">Member Enumeration Documentation</h2>
<table class="memname">
<tr>
<td class="memname">enum <a class="el" href="#a0e65ad13124ea2cb5e255b640464e35f">Option</a></td>
</tr>
</table>
<p>Specifies options for the object. </p>
<table class="fieldtable">
<tr><th colspan="2">Enumerator</th></tr><tr><td class="fieldname">DisableNotifications&#160;</td><td class="fielddoc">
<p>Disable all inter-process notifications </p>
</td></tr>
</table>
<p>Definition at line 60 of file manager.h.</p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#">Manager</a> </td>
<td>(</td>
<td class="paramtype">QObject *&#160;</td>
<td class="paramname"><em>parent</em> = <code>0</code></td><td>)</td>
<td></td>
</tr>
</table>
<p>Constructor. </p>
<p>Users should check for manager-&gt;<a class="el" href="#a31f856d7b015a7478550d90feac77f48" title="Gets the last error. ">lastError()</a> to check if manager construction was fully succesful. </p>
<p>Definition at line 146 of file manager.cpp.</p>
<p>References Error::DatabaseLocked.</p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#">Manager</a> </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>serviceType</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QObject *&#160;</td>
<td class="paramname"><em>parent</em> = <code>0</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Constructs a manager initialized with service type. </p>
<p>This constructor should be used when there is an interest for just one service type. Such a manager has influence on some class methods. When listing the accounts and services only the ones supporting the given service type will be returned. Also the creating account with this manager will affect the acccount class method for listing services in same manner. The signal <a class="el" href="#a31f856d7b015a7478550d90feac77f48" title="Gets the last error. ">lastError()</a> to check if manager construction was fully succesful. </p>
<p>Definition at line 173 of file manager.cpp.</p>
<p>References Error::DatabaseLocked.</p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#">Manager</a> </td>
<td>(</td>
<td class="paramtype">Options&#160;</td>
<td class="paramname"><em>options</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QObject *&#160;</td>
<td class="paramname"><em>parent</em> = <code>0</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Constructor, allowing option flags to be specified. </p>
<p>Users should check for <a class="el" href="#a31f856d7b015a7478550d90feac77f48" title="Gets the last error. ">lastError()</a> to check if manager construction was fully succesful. </p>
<p>Definition at line 194 of file manager.cpp.</p>
<p>References Manager::DisableNotifications.</p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">bool abortOnTimeout </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>Whether the application will be aborted when a database timeout occurs. </dd></dl>
<p>Definition at line 523 of file manager.cpp.</p>
<table class="memname">
<tr>
<td class="memname">Account * account </td>
<td>(</td>
<td class="paramtype">const AccountId &amp;&#160;</td>
<td class="paramname"><em>id</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Loads an account from the database. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>Id of the account to be retrieved.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Requested account or 0 if not found. If 0 is returned, call <a class="el" href="#a31f856d7b015a7478550d90feac77f48" title="Gets the last error. ">lastError()</a> to find out why. </dd></dl>
<dl class="section attention"><dt>Attention</dt><dd>The objects returned by this method are shared, meaning that calling this method twice with the same id will return the same object. It is recommended that clients do not destroy the objects returned by this method, if there's the possibility that they are still being used in other parts of the application. </dd></dl>
<p>Definition at line 245 of file manager.cpp.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">accountCreated </td>
<td>(</td>
<td class="paramtype">Accounts::AccountId&#160;</td>
<td class="paramname"><em>id</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">signal</span></span>  </td>
</tr>
</table>
<p>The signal is emitted when new account is created. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>Identifier of the Account </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">AccountIdList accountList </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>serviceType</em> = <code>QString::null</code></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Lists the accounts which support the requested service. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">serviceType</td><td>Type of service that returned accounts must support. If not given and the manager is not constructed with service type, all accounts are returned.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>List of account IDs. </dd></dl>
<p>Definition at line 266 of file manager.cpp.</p>
<table class="memname">
<tr>
<td class="memname">AccountIdList accountListEnabled </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>serviceType</em> = <code>QString::null</code></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Lists the enabled accounts which support the requested service that also must be enabled. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">serviceType</td><td>Type of service that returned accounts must support. If not given and the manager is not constructed with service type, all enabled accounts are returned.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>List of account IDs. </dd></dl>
<p>Definition at line 301 of file manager.cpp.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">accountRemoved </td>
<td>(</td>
<td class="paramtype">Accounts::AccountId&#160;</td>
<td class="paramname"><em>id</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">signal</span></span>  </td>
</tr>
</table>
<p>The signal is emitted when existing account is removed. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>Identifier of the Account </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">accountUpdated </td>
<td>(</td>
<td class="paramtype">Accounts::AccountId&#160;</td>
<td class="paramname"><em>id</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">signal</span></span>  </td>
</tr>
</table>
<p>The signal is emitted when any account property for a particular service is updated. </p>
<p>To receive this notification user has to create accounts manager using <a class="el" href="#a2d948d667caf0a065d995c847ef57176" title="Constructs a manager initialized with service type. ">Manager(const QString &amp;serviceType, QObject *parent)</a> constructor. Update notification is only emitted when manager is created for particular type of service.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>Identifier of the Account </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="Accounts.Application.md">Application</a> application </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>applicationName</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get an object representing an application. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">applicationName</td><td>Name of the application to load.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The requested <a class="el" href="Accounts.Application.md" title="Information on the client applications of libaccounts. ">Application</a>, or an invalid <a class="el" href="Accounts.Application.md" title="Information on the client applications of libaccounts. ">Application</a> object if not found. </dd></dl>
<p>Definition at line 448 of file manager.cpp.</p>
<p>Referenced by Manager::applicationList().</p>
<table class="memname">
<tr>
<td class="memname">ApplicationList applicationList </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="Accounts.Service.md">Service</a> &amp;&#160;</td>
<td class="paramname"><em>service</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>List the registered applications which support the given service. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">service</td><td>The service to be supported.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A list of <a class="el" href="Accounts.Application.md" title="Information on the client applications of libaccounts. ">Application</a> objects. </dd></dl>
<p>Definition at line 462 of file manager.cpp.</p>
<p>References Manager::application().</p>
<table class="memname">
<tr>
<td class="memname">Account * createAccount </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>providerName</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Creates a new account. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">providerName</td><td>Name of account provider.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Created account or NULL if some error occurs. </dd></dl>
<p>Definition at line 331 of file manager.cpp.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">enabledEvent </td>
<td>(</td>
<td class="paramtype">Accounts::AccountId&#160;</td>
<td class="paramname"><em>id</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">signal</span></span>  </td>
</tr>
</table>
<p>If the manager has been created with serviceType, this signal will be emitted when an account (identified by AccountId) has been modified in such a way that the application might be interested to start/stop using it: the "enabled" flag on the account or in some service supported by the account and matching the AgManager::serviceType have changed. </p>
<dl class="section note"><dt>Note</dt><dd>In practice, this signal might be emitted more often than when strictly needed; applications must call Account::enabledServices() to get the current state.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>identifier of the Account </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="Accounts.Error.md">Error</a> lastError </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Gets the last error. </p>
<p>Not all operations set/reset the error; see the individual methods' documentation to see if they set the last error or not. Call this method right after an account operation has failed; if no error occurred, the result of this method are undefined.</p>
<dl class="section return"><dt>Returns</dt><dd>The last error. </dd></dl>
<p>Definition at line 554 of file manager.cpp.</p>
<table class="memname">
<tr>
<td class="memname">Manager::Options options </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<dl class="section return"><dt>Returns</dt><dd>Configuration options for this object. </dd></dl>
<p>Definition at line 531 of file manager.cpp.</p>
<p>References Manager::DisableNotifications.</p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="Accounts.Provider.md">Provider</a> provider </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>providerName</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Gets an object representing a provider. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">providerName</td><td>Name of provider to get.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Requested provider or NULL if not found. </dd></dl>
<p>Definition at line 392 of file manager.cpp.</p>
<p>Referenced by Manager::providerList().</p>
<table class="memname">
<tr>
<td class="memname">ProviderList providerList </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Gets a provider list. </p>
<dl class="section return"><dt>Returns</dt><dd>List of registered providers. </dd></dl>
<p>Definition at line 406 of file manager.cpp.</p>
<p>References Manager::provider().</p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="Accounts.Service.md">Service</a> service </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>serviceName</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Gets an object representing a service. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">serviceName</td><td>Name of service to get.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The requested service or an invalid service if not found. </dd></dl>
<p>Definition at line 342 of file manager.cpp.</p>
<p>Referenced by Manager::serviceList().</p>
<table class="memname">
<tr>
<td class="memname">ServiceList serviceList </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>serviceType</em> = <code>QString::null</code></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Gets the service list. </p>
<p>If the manager is constructed with given service type only the services which supports the service type will be returned.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">serviceType</td><td>Type of services to be listed. If not given and the manager is not constructed with service type, all services are listed.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>List of <a class="el" href="Accounts.Service.md" title="Representation of an account service. ">Service</a> objects. </dd></dl>
<p>Definition at line 360 of file manager.cpp.</p>
<p>References Manager::service().</p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="Accounts.ServiceType.md">ServiceType</a> serviceType </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>name</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Gets an object representing a service type. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">name</td><td>Name of service type to load.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Requested service type or NULL if not found. </dd></dl>
<p>Definition at line 433 of file manager.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString serviceType </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Gets the service type if given in manager constructor. </p>
<dl class="section return"><dt>Returns</dt><dd><a class="el" href="Accounts.Service.md" title="Representation of an account service. ">Service</a> type or NULL if not given. </dd></dl>
<p>Definition at line 482 of file manager.cpp.</p>
<table class="memname">
<tr>
<td class="memname">void setAbortOnTimeout </td>
<td>(</td>
<td class="paramtype">bool&#160;</td>
<td class="paramname"><em>abort</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Sets whether to abort the application when a database timeout occurs. </p>
<p>By default the library does not abort the application. </p>
<p>Definition at line 514 of file manager.cpp.</p>
<table class="memname">
<tr>
<td class="memname">void setTimeout </td>
<td>(</td>
<td class="paramtype">quint32&#160;</td>
<td class="paramname"><em>timeout</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Sets the timeout for database operations. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">timeout</td><td>The new timeout in milliseconds.</td></tr>
</table>
</dd>
</dl>
<p>This tells the library how long it is allowed to block while waiting for a locked DB to become accessible. Higher values mean a higher chance of successful reads, but also mean that the execution might be blocked for a longer time. The default is 5 seconds. </p>
<p>Definition at line 496 of file manager.cpp.</p>
<table class="memname">
<tr>
<td class="memname">quint32 timeout </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Gets the database timeout. </p>
<dl class="section return"><dt>Returns</dt><dd>The timeout (in milliseconds) for database operations. </dd></dl>
<p>Definition at line 505 of file manager.cpp.</p>
