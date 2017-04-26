---
Title: unity.scopes.testing.Sample
---

# unity.scopes.testing.Sample

<p>The <a class="el" href="index.html" title="The Sample class models the interface to a sample of raw observations and their statistical propertie...">Sample</a> class models the interface to a sample of raw observations and their statistical properties.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/testing/Statistics.h&gt;</code></p>
Inheritance diagram for unity::scopes::testing::Sample:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/5e20e564-0235-48ff-9a3f-17e13aa2ce51-../unity.scopes.testing.Sample/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:a45542150c14b4486c58cb14cca3072e9"><td class="memItemLeft" align="right" valign="top">typedef std::size_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a45542150c14b4486c58cb14cca3072e9">SizeType</a></td></tr>
<tr class="separator:a45542150c14b4486c58cb14cca3072e9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9e02cfa261b23b40c9da59cda6ab0dc8"><td class="memItemLeft" align="right" valign="top">typedef double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a></td></tr>
<tr class="separator:a9e02cfa261b23b40c9da59cda6ab0dc8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4d588f4837a81c163ebd653d88648144"><td class="memItemLeft" align="right" valign="top">typedef std::function&lt; void(<a class="el" href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a>)&gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4d588f4837a81c163ebd653d88648144">Enumerator</a></td></tr>
<tr class="separator:a4d588f4837a81c163ebd653d88648144"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ab37cab3e43f1a8cbc9955ab6ec5e7e40"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="#a45542150c14b4486c58cb14cca3072e9">SizeType</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab37cab3e43f1a8cbc9955ab6ec5e7e40">get_size</a> () const =0</td></tr>
<tr class="separator:ab37cab3e43f1a8cbc9955ab6ec5e7e40"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa4e03bd0ca10b2172954b50a3c544667"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa4e03bd0ca10b2172954b50a3c544667">get_mean</a> () const =0</td></tr>
<tr class="separator:aa4e03bd0ca10b2172954b50a3c544667"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a646d6b0dca1081f812958c86ce7e8d01"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a646d6b0dca1081f812958c86ce7e8d01">get_variance</a> () const =0</td></tr>
<tr class="separator:a646d6b0dca1081f812958c86ce7e8d01"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a051bdf96e55f8da92bb3829bbf650cf4"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a051bdf96e55f8da92bb3829bbf650cf4">enumerate</a> (const <a class="el" href="#a4d588f4837a81c163ebd653d88648144">Enumerator</a> &amp;enumerator) const =0</td></tr>
<tr class="separator:a051bdf96e55f8da92bb3829bbf650cf4"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The <a class="el" href="index.html" title="The Sample class models the interface to a sample of raw observations and their statistical propertie...">Sample</a> class models the interface to a sample of raw observations and their statistical properties. </p>
<h2 class="groupheader">Member Typedef Documentation</h2>
<table class="memname">
<tr>
<td class="memname">typedef std::function&lt;void(<a class="el" href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a>)&gt; <a class="el" href="#a4d588f4837a81c163ebd653d88648144">unity::scopes::testing::Sample::Enumerator</a></td>
</tr>
</table>
<p>Function signature for enumerating all raw observations. </p>
<table class="memname">
<tr>
<td class="memname">typedef std::size_t <a class="el" href="#a45542150c14b4486c58cb14cca3072e9">unity::scopes::testing::Sample::SizeType</a></td>
</tr>
</table>
<p>Unsigned type describing the size of the sample. </p>
<table class="memname">
<tr>
<td class="memname">typedef double <a class="el" href="#a9e02cfa261b23b40c9da59cda6ab0dc8">unity::scopes::testing::Sample::ValueType</a></td>
</tr>
</table>
<p>Floating point type describing an individual observation. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::testing::Sample::enumerate </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="#a4d588f4837a81c163ebd653d88648144">Enumerator</a> &amp;&#160;</td>
<td class="paramname"><em>enumerator</em></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Enumerate all raw observations from the sample. </p>
<p>Implemented in unity::scopes::testing::Benchmark::Result::Timing.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a> unity::scopes::testing::Sample::get_mean </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Query the empirical mean of the sample. </p>
<p>Implemented in unity::scopes::testing::Benchmark::Result::Timing.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="#a45542150c14b4486c58cb14cca3072e9">SizeType</a> unity::scopes::testing::Sample::get_size </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Query the size of the sample. </p>
<p>Implemented in unity::scopes::testing::Benchmark::Result::Timing.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual <a class="el" href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a> unity::scopes::testing::Sample::get_variance </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Query the empirical variance of the sample. </p>
<p>Implemented in unity::scopes::testing::Benchmark::Result::Timing.</p>
