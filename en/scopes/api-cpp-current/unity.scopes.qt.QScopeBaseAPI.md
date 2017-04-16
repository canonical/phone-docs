---
Title: unity.scopes.qt.QScopeBaseAPI
---

# unity.scopes.qt.QScopeBaseAPI

<p><code>#include &lt;unity/scopes/qt/QScopeBaseAPI.h&gt;</code></p>
Inheritance diagram for unity::scopes::qt::QScopeBaseAPI:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/cf8b8813-12db-46d3-9e1f-7aa9bed01001-../unity.scopes.qt.QScopeBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i_inherit__map" id="unity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i_inherit__map">
<area shape="rect" id="node2" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_scope_base.html" title="Base class for a scope implementation. " alt="" coords="32,80,217,107"/><area shape="rect" id="node3" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_abstract_scope_base.html" title="Abstract base class for a scope implementation. " alt="" coords="5,5,244,32"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:aefcd8d1262a89d1c9b6c63dbdc8bfcea"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aefcd8d1262a89d1c9b6c63dbdc8bfcea">start</a> (std::string const &amp;scope_id) override</td></tr>
<tr class="memdesc:aefcd8d1262a89d1c9b6c63dbdc8bfcea"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes run time after the create function completes.  More...<br /></td></tr>
<tr class="separator:aefcd8d1262a89d1c9b6c63dbdc8bfcea"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7cfc17b94cc01761ac53acc1613ab8ce"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7cfc17b94cc01761ac53acc1613ab8ce">stop</a> () override</td></tr>
<tr class="memdesc:a7cfc17b94cc01761ac53acc1613ab8ce"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes run time when the scope should shut down.  More...<br /></td></tr>
<tr class="separator:a7cfc17b94cc01761ac53acc1613ab8ce"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a839ca01a0085c27edc5ee6fa060f7b75"><td class="memItemLeft" align="right" valign="top">virtual unity::scopes::PreviewQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a839ca01a0085c27edc5ee6fa060f7b75">preview</a> (const <a class="el" href="unity.scopes.Result.md">unity::scopes::Result</a> &amp;, const <a class="el" href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a> &amp;) override</td></tr>
<tr class="separator:a839ca01a0085c27edc5ee6fa060f7b75"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac5023d43f3169eb51283ebd6488da631"><td class="memItemLeft" align="right" valign="top">virtual unity::scopes::SearchQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac5023d43f3169eb51283ebd6488da631">search</a> (<a class="el" href="unity.scopes.CannedQuery.md">unity::scopes::CannedQuery</a> const &amp;q, <a class="el" href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> const &amp;) override</td></tr>
<tr class="separator:ac5023d43f3169eb51283ebd6488da631"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_scope_base"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_scope_base')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/f3246472-f2de-4eb0-9bbe-05e036c1ce8e-../unity.scopes.qt.QScopeBaseAPI/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a></td></tr>
<tr class="memitem:a386e99b98318a70f25db84bbe11c0292 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#a386e99b98318a70f25db84bbe11c0292">run</a> ()</td></tr>
<tr class="memdesc:a386e99b98318a70f25db84bbe11c0292 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime after it has called start() to hand a thread of control to the scope.  More...<br /></td></tr>
<tr class="separator:a386e99b98318a70f25db84bbe11c0292 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a49a0b9ada0eeb4c71e6a2181c3d8c9e7 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual ActivationQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7">activate</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata)</td></tr>
<tr class="memdesc:a49a0b9ada0eeb4c71e6a2181c3d8c9e7 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime when a scope needs to respond to a result activation request.  More...<br /></td></tr>
<tr class="separator:a49a0b9ada0eeb4c71e6a2181c3d8c9e7 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2f4d476fa790349c9a7de52be3232d11 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual ActivationQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#a2f4d476fa790349c9a7de52be3232d11">perform_action</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata, std::string const &amp;widget_id, std::string const &amp;action_id)</td></tr>
<tr class="memdesc:a2f4d476fa790349c9a7de52be3232d11 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Invoked when a scope is requested to handle a preview action.  More...<br /></td></tr>
<tr class="separator:a2f4d476fa790349c9a7de52be3232d11 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a32744a21076d9dacc98362412c6a63d5 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#a32744a21076d9dacc98362412c6a63d5">scope_directory</a> () const final</td></tr>
<tr class="memdesc:a32744a21076d9dacc98362412c6a63d5 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the directory that stores the scope's configuration files and shared library.  More...<br /></td></tr>
<tr class="separator:a32744a21076d9dacc98362412c6a63d5 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a36cfdda42db58da399390e7c5df2385e inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#a36cfdda42db58da399390e7c5df2385e">cache_directory</a> () const final</td></tr>
<tr class="memdesc:a36cfdda42db58da399390e7c5df2385e inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a directory that is (exclusively) writable for the scope.  More...<br /></td></tr>
<tr class="separator:a36cfdda42db58da399390e7c5df2385e inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4f54564b752a3451e05bd11171abb27e inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#a4f54564b752a3451e05bd11171abb27e">app_directory</a> () const final</td></tr>
<tr class="memdesc:a4f54564b752a3451e05bd11171abb27e inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a directory that is shared with an app in the same click package.  More...<br /></td></tr>
<tr class="separator:a4f54564b752a3451e05bd11171abb27e inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ade8de1dca94e10aa9788624710ab49eb inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#ade8de1dca94e10aa9788624710ab49eb">tmp_directory</a> () const final</td></tr>
<tr class="memdesc:ade8de1dca94e10aa9788624710ab49eb inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a tmp directory that is (exclusively) writable for the scope.  More...<br /></td></tr>
<tr class="separator:ade8de1dca94e10aa9788624710ab49eb inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af874b8b3c5c28dcaacc416076c9dfc35 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a45babc254d3548863d79ee54f266e84d">unity::scopes::RegistryProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#af874b8b3c5c28dcaacc416076c9dfc35">registry</a> () const final</td></tr>
<tr class="memdesc:af874b8b3c5c28dcaacc416076c9dfc35 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the proxy to the registry.  More...<br /></td></tr>
<tr class="separator:af874b8b3c5c28dcaacc416076c9dfc35 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acddeebb3357c6941b3b77617133cda23 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#acddeebb3357c6941b3b77617133cda23">settings</a> () const final</td></tr>
<tr class="memdesc:acddeebb3357c6941b3b77617133cda23 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a dictionary with the scope's current settings.  More...<br /></td></tr>
<tr class="separator:acddeebb3357c6941b3b77617133cda23 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abc864e2fa714b9424a89293fea6972bc inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#abc864e2fa714b9424a89293fea6972bc">find_child_scopes</a> () const </td></tr>
<tr class="memdesc:abc864e2fa714b9424a89293fea6972bc inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a defaulted list of child scopes aggregated by this scope.  More...<br /></td></tr>
<tr class="separator:abc864e2fa714b9424a89293fea6972bc inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4016075ab95bbf1b5dfa1444e9d750e0 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#a4016075ab95bbf1b5dfa1444e9d750e0">child_scopes</a> () const final</td></tr>
<tr class="memdesc:a4016075ab95bbf1b5dfa1444e9d750e0 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the current list of child scopes aggregated by this scope.  More...<br /></td></tr>
<tr class="separator:a4016075ab95bbf1b5dfa1444e9d750e0 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7ac39ca44f4790dd36900657692d0565 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">virtual ActivationQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#a7ac39ca44f4790dd36900657692d0565">activate_result_action</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata, std::string const &amp;action_id)</td></tr>
<tr class="memdesc:a7ac39ca44f4790dd36900657692d0565 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Invoked when a scope is requested to handle a result in-card action.  More...<br /></td></tr>
<tr class="separator:a7ac39ca44f4790dd36900657692d0565 inherit pub_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Additional Inherited Members</h2></td></tr>
<tr class="inherit_header pub_static_methods_classunity_1_1scopes_1_1_scope_base"><td colspan="2" onclick="javascript:toggleInherit('pub_static_methods_classunity_1_1scopes_1_1_scope_base')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/30427f39-600b-404e-b8df-97c1d22bea00-../unity.scopes.qt.QScopeBaseAPI/closed.png" alt="-"/>&#160;Static Public Member Functions inherited from <a class="el" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a></td></tr>
<tr class="memitem:a4cbdf8cb790e6f44e388e70ab456e686 inherit pub_static_methods_classunity_1_1scopes_1_1_scope_base"><td class="memItemLeft" align="right" valign="top">
static void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.ScopeBase.md#a4cbdf8cb790e6f44e388e70ab456e686">runtime_version</a> (int &amp;v_major, int &amp;v_minor, int &amp;v_micro) noexcept</td></tr>
<tr class="memdesc:a4cbdf8cb790e6f44e388e70ab456e686 inherit pub_static_methods_classunity_1_1scopes_1_1_scope_base"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the version information for the scopes API that the scope was linked with. <br /></td></tr>
<tr class="separator:a4cbdf8cb790e6f44e388e70ab456e686 inherit pub_static_methods_classunity_1_1scopes_1_1_scope_base"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Defines the lifecycle of scope plugin, and acts as a factory for Query and Preview objects. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual unity::scopes::PreviewQueryBase::UPtr unity::scopes::qt::QScopeBaseAPI::preview </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="unity.scopes.Result.md">unity::scopes::Result</a> &amp;&#160;</td>
<td class="paramname">, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">const <a class="el" href="unity.scopes.ActionMetadata.md">unity::scopes::ActionMetadata</a> &amp;&#160;</td>
<td class="paramname">&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called each time a new preview is requested </p>
<p>Implements <a class="el" href="unity.scopes.ScopeBase.md#a154b9b4cfc0f40572cfec60dd819396f">unity::scopes::ScopeBase</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual unity::scopes::SearchQueryBase::UPtr unity::scopes::qt::QScopeBaseAPI::search </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.CannedQuery.md">unity::scopes::CannedQuery</a> const &amp;&#160;</td>
<td class="paramname"><em>q</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> const &amp;&#160;</td>
<td class="paramname">&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called each time a new query is requested </p>
<p>Implements <a class="el" href="unity.scopes.ScopeBase.md#a0e4969ff26dc1d396d74c56d896fd564">unity::scopes::ScopeBase</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::qt::QScopeBaseAPI::start </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>scope_id</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called by the scopes run time after the create function completes. </p>
<p>If <a class="el" href="#aefcd8d1262a89d1c9b6c63dbdc8bfcea" title="Called by the scopes run time after the create function completes. ">start()</a> throws an exception, <a class="el" href="#a7cfc17b94cc01761ac53acc1613ab8ce" title="Called by the scopes run time when the scope should shut down. ">stop()</a> will <em>not</em> be called.</p>
<p>The call to <a class="el" href="#aefcd8d1262a89d1c9b6c63dbdc8bfcea" title="Called by the scopes run time after the create function completes. ">start()</a> is made by the same thread that calls the create function.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">scope_id</td><td>The name of the scope as defined by the scope's configuration file. </td></tr>
</table>
</dd>
</dl>
<p>Reimplemented from <a class="el" href="unity.scopes.ScopeBase.md#ac25f3f326e2cf25de2f2eca18de5926c">unity::scopes::ScopeBase</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::qt::QScopeBaseAPI::stop </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called by the scopes run time when the scope should shut down. </p>
<p>A scope should deallocate as many resources as possible when <a class="el" href="#a7cfc17b94cc01761ac53acc1613ab8ce" title="Called by the scopes run time when the scope should shut down. ">stop()</a> is called, for example, deallocate any caches and close network connections. In addition, if the scope implements <a class="el" href="unity.scopes.ScopeBase.md#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> and did not return from <a class="el" href="unity.scopes.ScopeBase.md#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>, it must return from <a class="el" href="unity.scopes.ScopeBase.md#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> in response to the call to <a class="el" href="#a7cfc17b94cc01761ac53acc1613ab8ce" title="Called by the scopes run time when the scope should shut down. ">stop()</a>.</p>
<p>Exceptions from <a class="el" href="#a7cfc17b94cc01761ac53acc1613ab8ce" title="Called by the scopes run time when the scope should shut down. ">stop()</a> are ignored.</p>
<p>The call to <a class="el" href="#a7cfc17b94cc01761ac53acc1613ab8ce" title="Called by the scopes run time when the scope should shut down. ">stop()</a> is made by the same thread that calls the create function and <a class="el" href="#aefcd8d1262a89d1c9b6c63dbdc8bfcea" title="Called by the scopes run time after the create function completes. ">start()</a>. </p>
<p>Reimplemented from <a class="el" href="unity.scopes.ScopeBase.md#a80c5fec9e985dbb315d780ef2a56bfbf">unity::scopes::ScopeBase</a>.</p>
