---
Title: Accounts.AccountService
---

# Accounts.AccountService

<p>Account settings for a specific service.  
<a href="#details">More...</a></p>
<p><code>#include &lt;Accounts/AccountService&gt;</code></p>
<p>Inherits QObject.</p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Signals</h2></td></tr>
<tr class="memitem:ab2f0d21a6f535870b37dcb44b2f77205"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae2931e09e0fd8eac15c83f0254b4e4ac">isEnabled</a>)</td></tr>
<tr class="memdesc:ab2f0d21a6f535870b37dcb44b2f77205"><td class="mdescLeft">&#160;</td><td class="mdescRight">Emitted when the enabledness state of the account service has changed. <br /></td></tr>
<tr class="separator:ab2f0d21a6f535870b37dcb44b2f77205"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4db9a5f1a7e34ec6902ff9630d98b777"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4db9a5f1a7e34ec6902ff9630d98b777">changed</a> ()</td></tr>
<tr class="memdesc:a4db9a5f1a7e34ec6902ff9630d98b777"><td class="mdescLeft">&#160;</td><td class="mdescRight">Emitted when some setting has changed on the account service.  More...<br /></td></tr>
<tr class="separator:a4db9a5f1a7e34ec6902ff9630d98b777"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:aef5d4691113e384992926928928ae334"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a256dc9d961214d5f60642a290a288998">service</a>)</td></tr>
<tr class="memdesc:aef5d4691113e384992926928928ae334"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructor.  More...<br /></td></tr>
<tr class="separator:aef5d4691113e384992926928928ae334"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5183e298082ee83004c503197ff14e20"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a256dc9d961214d5f60642a290a288998">service</a>, QObject *parent)</td></tr>
<tr class="memdesc:a5183e298082ee83004c503197ff14e20"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructor.  More...<br /></td></tr>
<tr class="separator:a5183e298082ee83004c503197ff14e20"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0622bfbd6cf486c0b73712ff02c0294e"><td class="memItemLeft" align="right" valign="top">
virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0622bfbd6cf486c0b73712ff02c0294e">~AccountService</a> ()</td></tr>
<tr class="memdesc:a0622bfbd6cf486c0b73712ff02c0294e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destructor. <br /></td></tr>
<tr class="separator:a0622bfbd6cf486c0b73712ff02c0294e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a490333c2ed4d6f107c5493a9465d993b"><td class="memItemLeft" align="right" valign="top">
Account *&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a490333c2ed4d6f107c5493a9465d993b">account</a> () const </td></tr>
<tr class="memdesc:a490333c2ed4d6f107c5493a9465d993b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return the Account. <br /></td></tr>
<tr class="separator:a490333c2ed4d6f107c5493a9465d993b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a256dc9d961214d5f60642a290a288998"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a256dc9d961214d5f60642a290a288998">service</a> () const </td></tr>
<tr class="memdesc:a256dc9d961214d5f60642a290a288998"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return the Service.  More...<br /></td></tr>
<tr class="separator:a256dc9d961214d5f60642a290a288998"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1d79980f25d38aba3d6777d0afe544f3"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1d79980f25d38aba3d6777d0afe544f3">enabled</a> () const </td></tr>
<tr class="memdesc:a1d79980f25d38aba3d6777d0afe544f3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether the account service is enabled.  More...<br /></td></tr>
<tr class="separator:a1d79980f25d38aba3d6777d0afe544f3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae2931e09e0fd8eac15c83f0254b4e4ac"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae2931e09e0fd8eac15c83f0254b4e4ac">isEnabled</a> () const </td></tr>
<tr class="memdesc:ae2931e09e0fd8eac15c83f0254b4e4ac"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether the account service is enabled. <br /></td></tr>
<tr class="separator:ae2931e09e0fd8eac15c83f0254b4e4ac"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9936a9bd6fca45f1d03a63b1b485ed88"><td class="memItemLeft" align="right" valign="top">
QStringList&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9936a9bd6fca45f1d03a63b1b485ed88">allKeys</a> () const </td></tr>
<tr class="memdesc:a9936a9bd6fca45f1d03a63b1b485ed88"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return all the keys in the current group. <br /></td></tr>
<tr class="separator:a9936a9bd6fca45f1d03a63b1b485ed88"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa889966b87d4315aea74c30088e9c8fa"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa889966b87d4315aea74c30088e9c8fa">beginGroup</a> (const QString &amp;prefix)</td></tr>
<tr class="memdesc:aa889966b87d4315aea74c30088e9c8fa"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enter a group.  More...<br /></td></tr>
<tr class="separator:aa889966b87d4315aea74c30088e9c8fa"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af5b653c82d3a3d7765da47fe5db0e128"><td class="memItemLeft" align="right" valign="top">
QStringList&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af5b653c82d3a3d7765da47fe5db0e128">childGroups</a> () const </td></tr>
<tr class="memdesc:af5b653c82d3a3d7765da47fe5db0e128"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return all the groups which are direct children of the current group. <br /></td></tr>
<tr class="separator:af5b653c82d3a3d7765da47fe5db0e128"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a09f8085bca6d1c8b4837beabcea7b639"><td class="memItemLeft" align="right" valign="top">
QStringList&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a09f8085bca6d1c8b4837beabcea7b639">childKeys</a> () const </td></tr>
<tr class="memdesc:a09f8085bca6d1c8b4837beabcea7b639"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return all the keys which are direct children of the current group. <br /></td></tr>
<tr class="separator:a09f8085bca6d1c8b4837beabcea7b639"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac8bb3912a3ce86b15842e79d0b421204"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac8bb3912a3ce86b15842e79d0b421204">clear</a> ()</td></tr>
<tr class="memdesc:ac8bb3912a3ce86b15842e79d0b421204"><td class="mdescLeft">&#160;</td><td class="mdescRight">Remove all the keys.  More...<br /></td></tr>
<tr class="separator:ac8bb3912a3ce86b15842e79d0b421204"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aab9f06bc42480ab555a9757e14303e5f"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aab9f06bc42480ab555a9757e14303e5f">contains</a> (const QString &amp;key) const </td></tr>
<tr class="memdesc:aab9f06bc42480ab555a9757e14303e5f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether the given key is in the current group.  More...<br /></td></tr>
<tr class="separator:aab9f06bc42480ab555a9757e14303e5f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af964cd7bde81d0f118ea09e201e155dd"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af964cd7bde81d0f118ea09e201e155dd">endGroup</a> ()</td></tr>
<tr class="memdesc:af964cd7bde81d0f118ea09e201e155dd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Exit a group. <br /></td></tr>
<tr class="separator:af964cd7bde81d0f118ea09e201e155dd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5adb315467de1866550658b4679bf9f9"><td class="memItemLeft" align="right" valign="top">
QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5adb315467de1866550658b4679bf9f9">group</a> () const </td></tr>
<tr class="memdesc:a5adb315467de1866550658b4679bf9f9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return the name of the current group. <br /></td></tr>
<tr class="separator:a5adb315467de1866550658b4679bf9f9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a89c0a3a6c660a5f577e5241a63052f2c"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a89c0a3a6c660a5f577e5241a63052f2c">remove</a> (const QString &amp;key)</td></tr>
<tr class="memdesc:a89c0a3a6c660a5f577e5241a63052f2c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Remove the given key.  More...<br /></td></tr>
<tr class="separator:a89c0a3a6c660a5f577e5241a63052f2c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a86c9e7ef7d0ab5919f6de30d16899659"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><b>setValue</b> (const char *key, const QVariant &amp;<a class="el" href="#a299df626e5ca7968fd8b70f9c87acfbb">value</a>)</td></tr>
<tr class="separator:a86c9e7ef7d0ab5919f6de30d16899659"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a48d1031ae51455e458b881c49c65a92e"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a299df626e5ca7968fd8b70f9c87acfbb">value</a>)</td></tr>
<tr class="memdesc:a48d1031ae51455e458b881c49c65a92e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Change the value of an account setting.  More...<br /></td></tr>
<tr class="separator:a48d1031ae51455e458b881c49c65a92e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a299df626e5ca7968fd8b70f9c87acfbb"><td class="memItemLeft" align="right" valign="top">QVariant&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a299df626e5ca7968fd8b70f9c87acfbb">value</a> (const QString &amp;key, const QVariant &amp;defaultValue, SettingSource *source=0) const </td></tr>
<tr class="memdesc:a299df626e5ca7968fd8b70f9c87acfbb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Retrieves the value of an account setting, as a QVariant.  More...<br /></td></tr>
<tr class="separator:a299df626e5ca7968fd8b70f9c87acfbb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a53cc185b2ceff59c833ebe939a6e18cb"><td class="memItemLeft" align="right" valign="top">QVariant&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a53cc185b2ceff59c833ebe939a6e18cb">value</a> (const QString &amp;key, SettingSource *source=0) const </td></tr>
<tr class="memdesc:a53cc185b2ceff59c833ebe939a6e18cb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Retrieves the value of an account setting.  More...<br /></td></tr>
<tr class="separator:a53cc185b2ceff59c833ebe939a6e18cb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a12c497bbb56e4f866c8e226ba774141c"><td class="memItemLeft" align="right" valign="top">
QVariant&#160;</td><td class="memItemRight" valign="bottom"><b>value</b> (const char *key, SettingSource *source=0) const </td></tr>
<tr class="separator:a12c497bbb56e4f866c8e226ba774141c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a678e391f34362471f042719d3b388d81"><td class="memItemLeft" align="right" valign="top">QStringList&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a678e391f34362471f042719d3b388d81">changedFields</a> () const </td></tr>
<tr class="memdesc:a678e391f34362471f042719d3b388d81"><td class="mdescLeft">&#160;</td><td class="mdescRight">This method should be called only in the context of a handler of the AccountService::changed() signal, and can be used to retrieve the set of changes.  More...<br /></td></tr>
<tr class="separator:a678e391f34362471f042719d3b388d81"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a49a9f7deccedeebacadc37ae01ac83ab"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a49a9f7deccedeebacadc37ae01ac83ab">authData</a> () const </td></tr>
<tr class="memdesc:a49a9f7deccedeebacadc37ae01ac83ab"><td class="mdescLeft">&#160;</td><td class="mdescRight">Read the authentication data stored in the account (merging the service-specific settings with the global account settings).  More...<br /></td></tr>
<tr class="separator:a49a9f7deccedeebacadc37ae01ac83ab"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Account settings for a specific service. </p>
<p>The <a class="el" href="#" title="Account settings for a specific service. ">AccountService</a> class provides access to the account settings for a specific service type. It is meant to be easier to use than the Account class because it hides the complexity of the account structure and gives access to only the limited subset of account settings which are relevant to a service.</p>
<p>To get an <a class="el" href="#" title="Account settings for a specific service. ">AccountService</a>(Account *account, <a class="el" href="Accounts.Service.md" title="Representation of an account service. ">Service</a> *service) constructor: this is useful if one already has an Account instance.</p>
<p>This is intended to be a convenient wrapper over the accounts settings specific for a service; as such, it doesn't offer all the editing possibilities offered by the Account class, such as enabling the service itself: these operations should ideally not be performed by consumer applications, but by the account editing UI only.</p>
<p>Example code: </p>
```
<span class="comment">// Instantiate an account manager interested in e-mail services only.</span>
<a class="code" href="Accounts.Manager.md">Accounts::Manager</a> *manager = <span class="keyword">new</span> <a class="code" href="Accounts.Manager.md">Accounts::Manager</a>(<span class="stringliteral">&quot;e-mail&quot;</span>);
<span class="comment">// Get the list of enabled AccountService objects of type e-mail.</span>
Accounts::AccountServiceList services = manager-&gt;enabledAccountServices();
<span class="comment">// Loop through the account services and do something useful with them.</span>
<span class="keywordflow">foreach</span> (<a class="code" href="#a256dc9d961214d5f60642a290a288998">service</a>, services) {
QString server = service.<a class="code" href="#a299df626e5ca7968fd8b70f9c87acfbb">value</a>(<span class="stringliteral">&quot;pop3/hostname&quot;</span>).toString();
<span class="keywordtype">int</span> port = service.<a class="code" href="#a299df626e5ca7968fd8b70f9c87acfbb">value</a>(<span class="stringliteral">&quot;pop3/port&quot;</span>).toInt();
<span class="comment">// Suppose that the e-mail address is stored in the global account</span>
<span class="comment">// settings; let&#39;s get it from there:</span>
QString fromAddress = service.<a class="code" href="#a490333c2ed4d6f107c5493a9465d993b">account</a>()-&gt;valueAsString(<span class="stringliteral">&quot;username&quot;</span>);
...
}
```
<dl class="section note"><dt>Note</dt><dd>User applications (with the notable exception of the accounts editing application) should never use account services which are not enabled, and should stop using an account when the account service becomes disabled. The latter can be done by connecting to the <a class="el" href="#ae2931e09e0fd8eac15c83f0254b4e4ac" title="Check whether the account service is enabled. ">isEnabled()</a> still returns true. </dd>
<dd>
Note that if the account gets deleted, it will always get disabled first; so, there is no need to connect to the Account::removed() signal; one can just monitor the <a class="el" href="#" title="Account settings for a specific service. ">AccountService</a> objects. </dd></dl>
<p>Definition at line 39 of file account-service.h.</p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#">AccountService</a> </td>
<td>(</td>
<td class="paramtype">Account *&#160;</td>
<td class="paramname"><em>account</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">const <a class="el" href="Accounts.Service.md">Service</a> &amp;&#160;</td>
<td class="paramname"><em>service</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">explicit</span></span>  </td>
</tr>
</table>
<p>Constructor. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">account</td><td>An Account. </td></tr>
<tr><td class="paramname">service</td><td>A <a class="el" href="Accounts.Service.md" title="Representation of an account service. ">Service</a> supported by the account. </td></tr>
</table>
</dd>
</dl>
<p>Definition at line 179 of file account-service.cpp.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#">AccountService</a> </td>
<td>(</td>
<td class="paramtype">Account *&#160;</td>
<td class="paramname"><em>account</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">const <a class="el" href="Accounts.Service.md">Service</a> &amp;&#160;</td>
<td class="paramname"><em>service</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">QObject *&#160;</td>
<td class="paramname"><em>parent</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">explicit</span></span>  </td>
</tr>
</table>
<p>Constructor. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">account</td><td>An Account. </td></tr>
<tr><td class="paramname">service</td><td>A <a class="el" href="Accounts.Service.md" title="Representation of an account service. ">Service</a> supported by the account. </td></tr>
<tr><td class="paramname">parent</td><td>The parent object. </td></tr>
</table>
</dd>
</dl>
<p>Definition at line 191 of file account-service.cpp.</p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="Accounts.AuthData.md">AuthData</a> authData </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Read the authentication data stored in the account (merging the service-specific settings with the global account settings). </p>
<p>The method and mechanism are read from the "auth/method" and "auth/mechanism" keys, respectively. The authentication parameters are found under the "auth/&lt;method&gt;/&lt;mechanism&gt;/" group.</p>
<dl class="section return"><dt>Returns</dt><dd>an <a class="el" href="Accounts.AuthData.md" title="Information for account authentication. ">AuthData</a> object, describing the authentication settings. </dd></dl>
<p>Definition at line 501 of file account-service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">void beginGroup </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>prefix</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Enter a group. </p>
<p>This method never fails. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">prefix</td><td></td></tr>
</table>
</dd>
</dl>
<p>Definition at line 271 of file account-service.cpp.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">changed </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">signal</span></span>  </td>
</tr>
</table>
<p>Emitted when some setting has changed on the account service. </p>
<p>You can use the <a class="el" href="#a678e391f34362471f042719d3b388d81" title="This method should be called only in the context of a handler of the AccountService::changed() signal...">changedFields()</a> method to retrieve the list of the settings which have changed. </p>
<table class="memname">
<tr>
<td class="memname">QStringList changedFields </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>This method should be called only in the context of a handler of the <a class="el" href="#a4db9a5f1a7e34ec6902ff9630d98b777" title="Emitted when some setting has changed on the account service. ">AccountService::changed()</a> signal, and can be used to retrieve the set of changes. </p>
<dl class="section return"><dt>Returns</dt><dd>a QStringList of the keys which have changed. </dd></dl>
<p>Definition at line 471 of file account-service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">void clear </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Remove all the keys. </p>
<dl class="section see"><dt>See also</dt><dd><a class="el" href="#a89c0a3a6c660a5f577e5241a63052f2c" title="Remove the given key. ">remove(const QString &amp;key)</a> </dd></dl>
<p>Definition at line 316 of file account-service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">bool contains </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check whether the given key is in the current group. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The key name of the setting. </td></tr>
</table>
</dd>
</dl>
<p>Definition at line 331 of file account-service.cpp.</p>
<p>References AccountService::childKeys().</p>
<table class="memname">
<tr>
<td class="memname">bool enabled </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check whether the account service is enabled. </p>
<dl class="section note"><dt>Note</dt><dd>this is just a wrapper of isEnabled </dd></dl>
<dl class="section see"><dt>See also</dt><dd><a class="el" href="#ae2931e09e0fd8eac15c83f0254b4e4ac" title="Check whether the account service is enabled. ">isEnabled()</a> </dd></dl>
<dl class="deprecated"><dt><b><a class="el" href="Accounts.deprecated.md#_deprecated000001">Deprecated:</a></b></dt><dd>use isEnabled instead </dd></dl>
<p>Definition at line 231 of file account-service.cpp.</p>
<p>References AccountService::isEnabled().</p>
<table class="memname">
<tr>
<td class="memname">void remove </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Remove the given key. </p>
<p>If the key is the empty string, all keys in the current group are removed. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The key name of the setting. </td></tr>
</table>
</dd>
</dl>
<p>Definition at line 363 of file account-service.cpp.</p>
<p>References AccountService::allKeys().</p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="Accounts.Service.md">Service</a> service </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return the <a class="el" href="Accounts.Service.md" title="Representation of an account service. ">Service</a>. </p>
<p>Do not delete this object explicitly. </p>
<p>Definition at line 218 of file account-service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">void setValue </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>key</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">const QVariant &amp;&#160;</td>
<td class="paramname"><em>value</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Change the value of an account setting. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the setting. </td></tr>
<tr><td class="paramname">value</td><td>The new value of the setting. </td></tr>
</table>
</dd>
</dl>
<p>Definition at line 391 of file account-service.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QVariant value </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>key</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">const QVariant &amp;&#160;</td>
<td class="paramname"><em>defaultValue</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">SettingSource *&#160;</td>
<td class="paramname"><em>source</em> = <code>0</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Retrieves the value of an account setting, as a QVariant. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The key whose value must be retrieved. </td></tr>
<tr><td class="paramname">defaultValue</td><td>Value returned if the key is unset. </td></tr>
<tr><td class="paramname">source</td><td>Indicates whether the value comes from the account, the service template or was unset.</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The value associated to <em>key</em>.</dd></dl>
<p>This method operates on the currently selected service. </p>
<p>Definition at line 423 of file account-service.cpp.</p>
<p>Referenced by AccountService::value().</p>
<table class="memname">
<tr>
<td class="memname">QVariant value </td>
<td>(</td>
<td class="paramtype">const QString &amp;&#160;</td>
<td class="paramname"><em>key</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">SettingSource *&#160;</td>
<td class="paramname"><em>source</em> = <code>0</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td> const</td>
</tr>
</table>
<p>Retrieves the value of an account setting. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The key whose value must be retrieved </td></tr>
<tr><td class="paramname">source</td><td>Indicates whether the value comes from the account, the service template or was unset.</td></tr>
</table>
</dd>
</dl>
<p>Returns the value of the setting, or an invalid QVariant if unset. </p>
<p>Definition at line 454 of file account-service.cpp.</p>
<p>References AccountService::value().</p>
