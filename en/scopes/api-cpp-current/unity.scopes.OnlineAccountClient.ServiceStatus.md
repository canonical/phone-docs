---
Title: unity.scopes.OnlineAccountClient.ServiceStatus
---

# unity.scopes.OnlineAccountClient.ServiceStatus

<p>A container for details about a service's status and authorization parameters.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/OnlineAccountClient.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Attributes</h2></td></tr>
<tr class="memitem:a3fff11d6960ba38de9eab3be2028352a"><td class="memItemLeft" align="right" valign="top">
unsigned int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3fff11d6960ba38de9eab3be2028352a">account_id</a></td></tr>
<tr class="memdesc:a3fff11d6960ba38de9eab3be2028352a"><td class="mdescLeft">&#160;</td><td class="mdescRight">A unique ID of the online account parenting this service. <br /></td></tr>
<tr class="separator:a3fff11d6960ba38de9eab3be2028352a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af38877a3d603f348af2af6d411aef1e2"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af38877a3d603f348af2af6d411aef1e2">service_enabled</a></td></tr>
<tr class="memdesc:af38877a3d603f348af2af6d411aef1e2"><td class="mdescLeft">&#160;</td><td class="mdescRight">True if this service is enabled. <br /></td></tr>
<tr class="separator:af38877a3d603f348af2af6d411aef1e2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad9e794cbd45b76b73efdc8915685609a"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad9e794cbd45b76b73efdc8915685609a">service_authenticated</a></td></tr>
<tr class="memdesc:ad9e794cbd45b76b73efdc8915685609a"><td class="mdescLeft">&#160;</td><td class="mdescRight">True if this service is authenticated. <br /></td></tr>
<tr class="separator:ad9e794cbd45b76b73efdc8915685609a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8bac7d6bcec29cc8d4c45309a6dce350"><td class="memItemLeft" align="right" valign="top">
std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8bac7d6bcec29cc8d4c45309a6dce350">client_id</a></td></tr>
<tr class="memdesc:a8bac7d6bcec29cc8d4c45309a6dce350"><td class="mdescLeft">&#160;</td><td class="mdescRight">"ConsumerKey" / "ClientId" OAuth (1 / 2) parameter. <br /></td></tr>
<tr class="separator:a8bac7d6bcec29cc8d4c45309a6dce350"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3025d89ff5f55e267e95c17d9af89d83"><td class="memItemLeft" align="right" valign="top">
std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3025d89ff5f55e267e95c17d9af89d83">client_secret</a></td></tr>
<tr class="memdesc:a3025d89ff5f55e267e95c17d9af89d83"><td class="mdescLeft">&#160;</td><td class="mdescRight">"ClientSecret" / "ConsumerSecret" OAuth (1 / 2) parameter. <br /></td></tr>
<tr class="separator:a3025d89ff5f55e267e95c17d9af89d83"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0f0f2471eaeb130f65cdbebd8c6cd40e"><td class="memItemLeft" align="right" valign="top">
std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0f0f2471eaeb130f65cdbebd8c6cd40e">access_token</a></td></tr>
<tr class="memdesc:a0f0f2471eaeb130f65cdbebd8c6cd40e"><td class="mdescLeft">&#160;</td><td class="mdescRight">"AccessToken" OAuth parameter. <br /></td></tr>
<tr class="separator:a0f0f2471eaeb130f65cdbebd8c6cd40e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abfb75786e9d517da4dce71e65c3f5bec"><td class="memItemLeft" align="right" valign="top">
std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#abfb75786e9d517da4dce71e65c3f5bec">token_secret</a></td></tr>
<tr class="memdesc:abfb75786e9d517da4dce71e65c3f5bec"><td class="mdescLeft">&#160;</td><td class="mdescRight">"TokenSecret" OAuth parameter. <br /></td></tr>
<tr class="separator:abfb75786e9d517da4dce71e65c3f5bec"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a73fac8ec582336993a476026d80c250b"><td class="memItemLeft" align="right" valign="top">
std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a73fac8ec582336993a476026d80c250b">error</a></td></tr>
<tr class="memdesc:a73fac8ec582336993a476026d80c250b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Error message (empty if no error occurred). <br /></td></tr>
<tr class="separator:a73fac8ec582336993a476026d80c250b"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
