---
Title: unity.scopes.CompletionDetails
---

# unity.scopes.CompletionDetails

<p>A container for details about the completion status of a query as well as any additional information regarding the operation of the request.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/CompletionDetails.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:a38cbf8502d92a411d1c6ac5d1bd6ee1c"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a> { <b>OK</b>, 
<b>Cancelled</b>, 
<b>Error</b>
}</td></tr>
<tr class="memdesc:a38cbf8502d92a411d1c6ac5d1bd6ee1c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates the completion status for a query.  <a href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">More...</a><br /></td></tr>
<tr class="separator:a38cbf8502d92a411d1c6ac5d1bd6ee1c"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a7d7e63b4ef6a1286bfd9746efd58e926"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7d7e63b4ef6a1286bfd9746efd58e926">CompletionDetails</a> (<a class="el" href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a> <a class="el" href="#ad9fdc4fb9b50a64bf29b0427e48c8c07">status</a>)</td></tr>
<tr class="memdesc:a7d7e63b4ef6a1286bfd9746efd58e926"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create CompletionDetails with the given completion status.  More...<br /></td></tr>
<tr class="separator:a7d7e63b4ef6a1286bfd9746efd58e926"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af85a27d3c36fc776f234712dcb4da55c"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af85a27d3c36fc776f234712dcb4da55c">CompletionDetails</a> (<a class="el" href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a> <a class="el" href="#ad9fdc4fb9b50a64bf29b0427e48c8c07">status</a>, std::string const &amp;<a class="el" href="#a08cb1da4948495694ef4f131e3f53bce">message</a>)</td></tr>
<tr class="memdesc:af85a27d3c36fc776f234712dcb4da55c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create CompletionDetails with the given completion status and message.  More...<br /></td></tr>
<tr class="separator:af85a27d3c36fc776f234712dcb4da55c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad9fdc4fb9b50a64bf29b0427e48c8c07"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad9fdc4fb9b50a64bf29b0427e48c8c07">status</a> () const noexcept</td></tr>
<tr class="memdesc:ad9fdc4fb9b50a64bf29b0427e48c8c07"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the completion status.  More...<br /></td></tr>
<tr class="separator:ad9fdc4fb9b50a64bf29b0427e48c8c07"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a08cb1da4948495694ef4f131e3f53bce"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a08cb1da4948495694ef4f131e3f53bce">message</a> () const </td></tr>
<tr class="memdesc:a08cb1da4948495694ef4f131e3f53bce"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the completion message string.  More...<br /></td></tr>
<tr class="separator:a08cb1da4948495694ef4f131e3f53bce"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af296751d26e25283e7287efaaf01878b"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af296751d26e25283e7287efaaf01878b">add_info</a> (<a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;info)</td></tr>
<tr class="memdesc:af296751d26e25283e7287efaaf01878b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Add additional operation info to the info list.  More...<br /></td></tr>
<tr class="separator:af296751d26e25283e7287efaaf01878b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad1d378fbd9600558920faafbe08e5f74"><td class="memItemLeft" align="right" valign="top">std::vector&lt; <a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad1d378fbd9600558920faafbe08e5f74">info_list</a> () const </td></tr>
<tr class="memdesc:ad1d378fbd9600558920faafbe08e5f74"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get a list of all additional operation info.  More...<br /></td></tr>
<tr class="separator:ad1d378fbd9600558920faafbe08e5f74"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a62928d8bb5782528159eb51bb08ba34a"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>CompletionDetails</b> (<a class="el" href="index.html">CompletionDetails</a> const &amp;other)</td></tr>
<tr class="separator:a62928d8bb5782528159eb51bb08ba34a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae6b1ea9b02287e13bf2d0397ccf489a7"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>CompletionDetails</b> (<a class="el" href="index.html">CompletionDetails</a> &amp;&amp;)</td></tr>
<tr class="separator:ae6b1ea9b02287e13bf2d0397ccf489a7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af6ebd300795d8116559abad4ff21ceff"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">CompletionDetails</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">CompletionDetails</a> const &amp;other)</td></tr>
<tr class="separator:af6ebd300795d8116559abad4ff21ceff"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2f853708d17bc4d5e28ba38bc0b0f8d5"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">CompletionDetails</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">CompletionDetails</a> &amp;&amp;)</td></tr>
<tr class="separator:a2f853708d17bc4d5e28ba38bc0b0f8d5"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A container for details about the completion status of a query as well as any additional information regarding the operation of the request. </p>
<h2 class="groupheader">Member Enumeration Documentation</h2>
<table class="memname">
<tr>
<td class="memname">enum <a class="el" href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">unity::scopes::CompletionDetails::CompletionStatus</a></td>
</tr>
</table>
<p>Indicates the completion status for a query. </p>
<p>The <code>Error</code> enumerator indicates that a query terminated abnormally, for example, a scope could not be reached over the network or explicitly reported an error. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::CompletionDetails::CompletionDetails </td>
<td>(</td>
<td class="paramtype"><a class="el" href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a>&#160;</td>
<td class="paramname"><em>status</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Create <a class="el" href="index.html" title="A container for details about the completion status of a query as well as any additional information ...">CompletionDetails</a> with the given completion status. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">status</td><td>Indicates the completion status of the query. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">unity::scopes::CompletionDetails::CompletionDetails </td>
<td>(</td>
<td class="paramtype"><a class="el" href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a>&#160;</td>
<td class="paramname"><em>status</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>message</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create <a class="el" href="index.html" title="A container for details about the completion status of a query as well as any additional information ...">CompletionDetails</a> with the given completion status and message. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">status</td><td>Indicates the completion status of the query. </td></tr>
<tr><td class="paramname">message</td><td>Contains further details about the completion status. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::CompletionDetails::add_info </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;&#160;</td>
<td class="paramname"><em>info</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Add additional operation info to the info list. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">info</td><td>Contains details about something of interest that occurs during the operation of a query. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">std::vector&lt; <a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> &gt; unity::scopes::CompletionDetails::info_list </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get a list of all additional operation info. </p>
<dl class="section return"><dt>Returns</dt><dd>List containing additional information regarding the operation of the query. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::CompletionDetails::message </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the completion message string. </p>
<dl class="section return"><dt>Returns</dt><dd>The completion message string. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionDetails::CompletionStatus</a> unity::scopes::CompletionDetails::status </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the completion status. </p>
<dl class="section return"><dt>Returns</dt><dd>Enum indicating the completion status of the query. </dd></dl>
