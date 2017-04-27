---
Title: Accounts.Application
---

# Accounts.Application

<p>Information on the client applications of libaccounts.  
<a href="#details">More...</a></p>
<p><code>#include &lt;Accounts/Application&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:aec7d6461aa7be31d98eff24b9d69ae3d"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aec7d6461aa7be31d98eff24b9d69ae3d">Application</a> ()</td></tr>
<tr class="memdesc:aec7d6461aa7be31d98eff24b9d69ae3d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Construct an invalid application. <br /></td></tr>
<tr class="separator:aec7d6461aa7be31d98eff24b9d69ae3d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af5e0a77dad01833eddabf0def1caa475"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#">Application</a> &amp;other)</td></tr>
<tr class="memdesc:af5e0a77dad01833eddabf0def1caa475"><td class="mdescLeft">&#160;</td><td class="mdescRight">Copy constructor.  More...<br /></td></tr>
<tr class="separator:af5e0a77dad01833eddabf0def1caa475"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a645636c24dff51fd2b9ec75fc083b928"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="#">Application</a> &amp;other)</td></tr>
<tr class="separator:a645636c24dff51fd2b9ec75fc083b928"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a713b51c450f3ae9db74cd857c2419173"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a713b51c450f3ae9db74cd857c2419173">~Application</a> ()</td></tr>
<tr class="memdesc:a713b51c450f3ae9db74cd857c2419173"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destructor. <br /></td></tr>
<tr class="separator:a713b51c450f3ae9db74cd857c2419173"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aac1b70a2ed67ead038c4d3f5ac4d8a81">isValid</a> () const </td></tr>
<tr class="memdesc:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether this object represents an Application.  More...<br /></td></tr>
<tr class="separator:aac1b70a2ed67ead038c4d3f5ac4d8a81"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2b0a198f837184bf6fff555cee3ce770"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2b0a198f837184bf6fff555cee3ce770">name</a> () const </td></tr>
<tr class="memdesc:a2b0a198f837184bf6fff555cee3ce770"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the unique ID of the application.  More...<br /></td></tr>
<tr class="separator:a2b0a198f837184bf6fff555cee3ce770"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9def71dea12661002bb3a63b3b91d08d"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9def71dea12661002bb3a63b3b91d08d">displayName</a> () const </td></tr>
<tr class="memdesc:a9def71dea12661002bb3a63b3b91d08d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the display name of the application.  More...<br /></td></tr>
<tr class="separator:a9def71dea12661002bb3a63b3b91d08d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aeaebc63d2181b1a4506603f4e03f1275"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aeaebc63d2181b1a4506603f4e03f1275">description</a> () const </td></tr>
<tr class="memdesc:aeaebc63d2181b1a4506603f4e03f1275"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the description of the application.  More...<br /></td></tr>
<tr class="separator:aeaebc63d2181b1a4506603f4e03f1275"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a038b22680aca535f9972908fe2f1f6a1"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a038b22680aca535f9972908fe2f1f6a1">iconName</a> () const </td></tr>
<tr class="memdesc:a038b22680aca535f9972908fe2f1f6a1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the icon name of the application.  More...<br /></td></tr>
<tr class="separator:a038b22680aca535f9972908fe2f1f6a1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8e3558c6d34db1186be87e3483ff59f8"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8e3558c6d34db1186be87e3483ff59f8">desktopFilePath</a> () const </td></tr>
<tr class="memdesc:a8e3558c6d34db1186be87e3483ff59f8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the .desktop file associated with this application.  More...<br /></td></tr>
<tr class="separator:a8e3558c6d34db1186be87e3483ff59f8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6c73afd4753195ea4eee794c95a770dd"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6c73afd4753195ea4eee794c95a770dd">trCatalog</a> () const </td></tr>
<tr class="memdesc:a6c73afd4753195ea4eee794c95a770dd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the translation catalog for the texts returned by the methods of this class.  More...<br /></td></tr>
<tr class="separator:a6c73afd4753195ea4eee794c95a770dd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3e79b6f20785764a31a750544fde6f39"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3e79b6f20785764a31a750544fde6f39">serviceUsage</a> (const <a class="el" href="Accounts.Service.md">Service</a> &amp;service) const </td></tr>
<tr class="memdesc:a3e79b6f20785764a31a750544fde6f39"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the description from the application XML file, for the specified service; if not found, get the service-type description instead.  More...<br /></td></tr>
<tr class="separator:a3e79b6f20785764a31a750544fde6f39"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Information on the client applications of libaccounts. </p>
<p>The <a class="el" href="#" title="Information on the client applications of libaccounts. ">Application</a> structure holds information on the client applications registered with libaccounts. It is instantiated by <a class="el" href="Accounts.Manager.md#a28ff538d5abd52ff691e30ed75a6b41f" title="Get an object representing an application. ">Manager::application()</a> and <a class="el" href="Accounts.Manager.md#ae18f9f8c59a4e15e8849dd832c54b874" title="List the registered applications which support the given service. ">Manager::applicationList()</a>. </p>
<p>Definition at line 40 of file application.h.</p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#">Application</a> </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="#">Application</a> &amp;&#160;</td>
<td class="paramname"><em>other</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Copy constructor. </p>
<p>Copying an <a class="el" href="#" title="Information on the client applications of libaccounts. ">Application</a> object is very cheap, because the data is shared among copies. </p>
<p>Definition at line 62 of file application.cpp.</p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">QString description </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the description of the application. </p>
<dl class="section return"><dt>Returns</dt><dd>The application description. </dd></dl>
<p>Definition at line 131 of file application.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString desktopFilePath </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the .desktop file associated with this application. </p>
<dl class="section return"><dt>Returns</dt><dd>The full path to the .desktop file. </dd></dl>
<p>Definition at line 160 of file application.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString displayName </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the display name of the application. </p>
<dl class="section return"><dt>Returns</dt><dd>The application display name. </dd></dl>
<p>Definition at line 115 of file application.cpp.</p>
<p>References Application::name().</p>
<table class="memname">
<tr>
<td class="memname">QString iconName </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the icon name of the application. </p>
<dl class="section return"><dt>Returns</dt><dd>The application icon name. </dd></dl>
<p>Definition at line 140 of file application.cpp.</p>
<table class="memname">
<tr>
<td class="memname">bool isValid </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check whether this object represents an <a class="el" href="#" title="Information on the client applications of libaccounts. ">Application</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>true if the <a class="el" href="#" title="Information on the client applications of libaccounts. ">Application</a> is a valid one. </dd></dl>
<p>Definition at line 95 of file application.cpp.</p>
<p>Referenced by Application::name().</p>
<table class="memname">
<tr>
<td class="memname">QString name </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the unique ID of the application. </p>
<p>This is the name of the .application file minus the .application suffix. </p><dl class="section return"><dt>Returns</dt><dd>The application unique ID. </dd></dl>
<p>Definition at line 105 of file application.cpp.</p>
<p>References Application::isValid().</p>
<p>Referenced by Application::displayName().</p>
<table class="memname">
<tr>
<td class="memname">QString serviceUsage </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="Accounts.Service.md">Service</a> &amp;&#160;</td>
<td class="paramname"><em>service</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the description from the application XML file, for the specified service; if not found, get the service-type description instead. </p>
<dl class="section return"><dt>Returns</dt><dd>Usage description of the service. </dd></dl>
<p>Definition at line 187 of file application.cpp.</p>
<table class="memname">
<tr>
<td class="memname">QString trCatalog </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the translation catalog for the texts returned by the methods of this class. </p>
<dl class="section return"><dt>Returns</dt><dd>The translation catalog name. </dd></dl>
<p>Definition at line 177 of file application.cpp.</p>
