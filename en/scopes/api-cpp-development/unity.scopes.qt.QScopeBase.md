---
Title: unity.scopes.qt.QScopeBase
---

# unity.scopes.qt.QScopeBase

<p>Base class for a scope implementation.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QScopeBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::qt::QScopeBase:
<img src="https://assets.ubuntu.com/v1/ce4e3fa1-classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a948bd6ed6f465292db9ffb0eff11f1de"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a948bd6ed6f465292db9ffb0eff11f1de">start</a> (QString const &amp;)</td></tr>
<tr class="separator:a948bd6ed6f465292db9ffb0eff11f1de"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4cd139ca1b5cb8a1943b39d0729d8ca5"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4cd139ca1b5cb8a1943b39d0729d8ca5">stop</a> ()</td></tr>
<tr class="separator:a4cd139ca1b5cb8a1943b39d0729d8ca5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afdedf1ba41623c1ac060ecc4b014f67f"><td class="memItemLeft" align="right" valign="top">virtual QPreviewQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afdedf1ba41623c1ac060ecc4b014f67f">preview</a> (const <a class="el" href="unity.scopes.qt.QResult.md">QResult</a> &amp;, const <a class="el" href="unity.scopes.qt.QActionMetadata.md">QActionMetadata</a> &amp;)=0</td></tr>
<tr class="separator:afdedf1ba41623c1ac060ecc4b014f67f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5132deae23a3916170dcfe6fa41810f4"><td class="memItemLeft" align="right" valign="top">virtual QSearchQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5132deae23a3916170dcfe6fa41810f4">search</a> (<a class="el" href="unity.scopes.CannedQuery.md">unity::scopes::CannedQuery</a> const &amp;q, <a class="el" href="unity.scopes.SearchMetadata.md">unity::scopes::SearchMetadata</a> const &amp;)=0</td></tr>
<tr class="separator:a5132deae23a3916170dcfe6fa41810f4"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Base class for a scope implementation. </p>
<p>Scopes are accessed by the scopes run time as a shared library (one library per scope). Each scope must implement a class that derives from <a class="el" href="index.html" title="Base class for a scope implementation. ">QScopeBase</a>, for example:</p>
```
<span class="preprocessor">#include &lt;unity/scopes/qt/QScopeBase.h&gt;</span>
<span class="keyword">class </span>MyScope : <span class="keyword">public</span> <a class="code" href="index.html">unity::scopes::qt::QScopeBase</a>
{
<span class="keyword">public</span>:
MyScope();
<span class="keyword">virtual</span> ~MyScope();
<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a class="code" href="#a948bd6ed6f465292db9ffb0eff11f1de">start</a>(QString <span class="keyword">const</span>&amp; scope_id);       <span class="comment">// Optional</span>
<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a class="code" href="#a4cd139ca1b5cb8a1943b39d0729d8ca5">stop</a>();                               <span class="comment">// Optional</span>
<span class="comment">// ...</span>
};
```
<p>In addition, the library must provide two functions with "C" linkage:</p><ul>
<li>a create function that must return a pointer to the derived instance</li>
<li>a destroy function that is passed the pointer returned by the create function</li>
</ul>
<p>If the create function throws an exception, the destroy function will not be called. If the create function returns NULL, the destroy function <em>will</em> be called with NULL as its argument.</p>
<p>Rather than hard-coding the names of the functions, use the UNITY_SCOPE_CREATE_FUNCTION and UNITY_SCOPE_DESTROY_FUNCTION macros, for example:</p>
```
<span class="comment">// You must provide a function that creates your scope on the heap and</span>
<span class="comment">// pass this function to the QScopeBaseAPI constructor.</span>
<a class="code" href="index.html">unity::scopes::qt::QScopeBase</a> *create_my_scope()
{
<span class="keywordflow">return</span> <span class="keyword">new</span> MyScope();
}
<a class="code" href="unity.scopes.ScopeBase.md">unity::scopes::ScopeBase</a>*
UNITY_SCOPE_CREATE_FUNCTION()
{
<span class="comment">// You must return a dynamically allocated QScopeBaseAPI instance here.</span>
<span class="comment">// In turn, that instance calls your creation function to instantiate</span>
<span class="comment">// your scope in the correct Qt thread.</span>
<span class="keywordflow">return</span> <span class="keyword">new</span> QScopeBaseAPI(create_my_scope);
}
<span class="comment">// The runtime, once it has stopped your scope, calls the destroy function.</span>
<span class="keywordtype">void</span>
UNITY_SCOPE_DESTROY_FUNCTION(unity::scopes::ScopeBase* scope)
{
<span class="keyword">delete</span> scope;
}
```
<p>After the scopes run time has obtained a pointer to the class instance from the create function, it calls <a class="el" href="#a948bd6ed6f465292db9ffb0eff11f1de">start()</a>, which allows the scope to initialize itself. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual QPreviewQueryBase::UPtr unity::scopes::qt::QScopeBase::preview </td>
<td>(</td>
<td class="paramtype">const <a class="el" href="unity.scopes.qt.QResult.md">QResult</a> &amp;&#160;</td>
<td class="paramname">, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">const <a class="el" href="unity.scopes.qt.QActionMetadata.md">QActionMetadata</a> &amp;&#160;</td>
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
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Called each time a new preview is requested </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual QSearchQueryBase::UPtr unity::scopes::qt::QScopeBase::search </td>
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
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Called each time a new query is requested </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void QScopeBase::start </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>start_string</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called once at startup </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void QScopeBase::stop </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called at shutdown </p>
