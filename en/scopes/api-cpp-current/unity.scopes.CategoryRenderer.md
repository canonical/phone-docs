---
Title: unity.scopes.CategoryRenderer
---

# unity.scopes.CategoryRenderer

<p>A category renderer template in JSON format.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/CategoryRenderer.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a046414ae2092968686ee4ee00629054a"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a046414ae2092968686ee4ee00629054a">CategoryRenderer</a> (std::string const &amp;json_text=<a class="el" href="unity.scopes.md#a697a8f21545922bcfc8345d83f5cc156">DEFAULT_RENDERER</a>)</td></tr>
<tr class="memdesc:a046414ae2092968686ee4ee00629054a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a CategoryRenderer from a JSON string.  More...<br /></td></tr>
<tr class="separator:a046414ae2092968686ee4ee00629054a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3bc0a10ca63c2bb90c14207ca28b536d"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3bc0a10ca63c2bb90c14207ca28b536d">data</a> () const </td></tr>
<tr class="memdesc:a3bc0a10ca63c2bb90c14207ca28b536d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns complete renderer template definition in JSON format.  More...<br /></td></tr>
<tr class="separator:a3bc0a10ca63c2bb90c14207ca28b536d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:aa63d8639781ef78f2e759612ca53807b"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>CategoryRenderer</b> (<a class="el" href="index.html">CategoryRenderer</a> const &amp;)</td></tr>
<tr class="separator:aa63d8639781ef78f2e759612ca53807b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acfc382058a6858628080feedef5b60fd"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">CategoryRenderer</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">CategoryRenderer</a> const &amp;)</td></tr>
<tr class="separator:acfc382058a6858628080feedef5b60fd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a275d2eba8660427bb62a4989086b489f"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>CategoryRenderer</b> (<a class="el" href="index.html">CategoryRenderer</a> &amp;&amp;)</td></tr>
<tr class="separator:a275d2eba8660427bb62a4989086b489f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac9e54474fce3f2ab48a6ac73f5fc68ac"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">CategoryRenderer</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">CategoryRenderer</a> &amp;&amp;)</td></tr>
<tr class="separator:ac9e54474fce3f2ab48a6ac73f5fc68ac"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adfafdf0a7b0239b391868ccddd6376b0"><td class="memItemLeft" align="right" valign="top">
virtual&#160;</td><td class="memItemRight" valign="bottom"><b>~CategoryRenderer</b> ()</td></tr>
<tr class="separator:adfafdf0a7b0239b391868ccddd6376b0"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Static Public Member Functions</h2></td></tr>
<tr class="memitem:a3236d422bffd659e9e5a8eaae418320c"><td class="memItemLeft" align="right" valign="top">static <a class="el" href="index.html">CategoryRenderer</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3236d422bffd659e9e5a8eaae418320c">from_file</a> (std::string const &amp;path)</td></tr>
<tr class="memdesc:a3236d422bffd659e9e5a8eaae418320c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a CategoryRenderer from a text file.  More...<br /></td></tr>
<tr class="separator:a3236d422bffd659e9e5a8eaae418320c"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A category renderer template in JSON format. </p>
<p>This class specifies how is a particular category rendered by Unity. Note that the data is likely to change between major versions of Unity, and therefore the definition isn't strongly typed and provided by a scope author as a JSON string.</p>
<p>A <a class="el" href="unity.scopes.Category.md" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a> contains all the information needed by Unity to render results provided by a scope author (by handling <a class="el" href="unity.scopes.SearchQueryBase.md#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">unity::scopes::SearchQueryBase::run()</a>) in a way that gives the user as much useful information as possible. When pushing results to the query originator (<a class="el" href="unity.scopes.SearchReply.md#a63d6de93152b3a972901c2d406ef5760" title="Sends a single result to the source of a query. ">unity::scopes::SearchReply::push()</a>), each result needs to have a category associated, and this association determines what will the result look like.</p>
<p>The most important part of a category definition is the <a class="el" href="index.html" title="A category renderer template in JSON format. ">unity::scopes::CategoryRenderer</a> instance. If you use the default constructor <a class="el" href="#a046414ae2092968686ee4ee00629054a" title="Creates a CategoryRenderer from a JSON string. ">CategoryRenderer()</a>, the renderer will use the following definition:</p>
<pre class="fragment">{
"schema-version" : 1,
"template" : {
"category-layout" : "grid"
},
"components" : {
"title" : "title",
"art" : "art"
}
}
</pre><p>As specified by the <code>"category-layout"</code> key of the <code>"template"</code> dictionary, Unity will render results associated with this category in a grid layout. The <code>"components"</code> dictionary specifies which result fields are used by Unity. In case of this definition, each tile of the grid will map the "title" field from the result (set also by the call to <a class="el" href="unity.scopes.Result.md#adf8cf3d863babb02107fb5ef35acc925" title="Set the &quot;title&quot; attribute of this result. ">unity::scopes::Result::set_title()</a>) as title for the grid tile, and "art" field from the result (see <a class="el" href="unity.scopes.Result.md#a3f2e512b10dbf2ed867d260ec33a89a1" title="Set the &quot;art&quot; attribute of this result. ">unity::scopes::Result::set_art()</a>) as the icon for the grid tile.</p>
<p>To sum up, the <code>"template"</code> dictionary contains information to determine the correct renderer and its parameters, and the <code>"components"</code> dictionary contains a mapping that specifies which fields of the results are used by the renderer. The keys of the dictionary are understood by Unity and the values specify a field name of the results. For example, <code>{"title": "album_name"}</code> means that Unity will use <code>result["album_name"]</code> as a title for the grid tile.r</p>
<p>A value also can specify extra hints for the renderer, such as the result field name and a fallback image. For example, <code>{"art": {"field": "icon", "aspect-ratio": 1.3, "fallback": "<a href="file:///path_to_fallback_image">file:///path_to_fallback_image</a>}}</code>. The fallback image is shown by Unity if no image URL is provided by the result, but the card requires an image. The fallback image is also shown if the result provides an empty URL for an image, the image does not load due to an error, or if loading results in an empty image. If a result does not specify a fallback image and the actual image is empty or cannot be loaded, Unity substitutes a generic fallback image.</p>
<h1>
JSON structure (v1)</h1>
<p>When using <code>{"schema-version": 1}</code>, the following keys are understood:</p>
<h2>
template keys</h2>
<ul>
<li><code>category-layout</code> Specifies renderer type; possible values: <code>"grid"</code> (default), <code>"carousel"</code>, <code>"vertical-journal"</code>, <code>"horizontal-list"</code> </li>
<li><code>card-layout</code> Specifies layout of the individual result cards; possible values: <code>"vertical"</code> (default), <code>"horizontal"</code> </li>
<li><code>card-size</code> Size of the result cards; possible values: <code>"small"</code>, <code>"medium"</code> (default), <code>"large"</code>; when using <code>"category-layout": "vertical-journal"</code> any integer between 12 and 38 </li>
<li><code>overlay</code> Overlay text data on top of the art; boolean, default false </li>
<li><code>collapsed-rows</code> Number of result rows displayed while the category is collapsed; possible values: any non-negative integer, where 0 fully expands the category (only affects grid and vertical journal) </li>
<li><code>card-background</code> Background color for the cards; string; URI in the format<pre class="fragment">color:///#rrggbb </pre> or<pre class="fragment">color:///color_name
</pre> or<pre class="fragment">gradient:///#rrggbb/#rrggbb </pre> or an image URI (will be stretched) </li>
<li><code>quick-preview-type</code> The type of media content represented by result cards, for use with inline playback; the only currently supported type is "audio".</li>
</ul>
<h2>
components keys</h2>
<ul>
<li><code>title</code> String specifying card's title </li>
<li><code>subtitle</code> String specifying subtitle of a card </li>
<li><code>art</code> URI specifying card's art (primary graphics), can contain subkeys: <code>"aspect-ratio"</code> (double specifying the aspect ratio of the graphics, default: 1.0), <code>"field"</code> (specifying the result's field name that contains the URI), and <code>"fallback"</code> (fallback image to be used if the URI for a result's artwork cannot be retrieved). </li>
<li><code>mascot</code> URI specifying card's mascot (secondary graphics), can contain subkeys: <code>"aspect-ratio"</code> (double specifying the aspect ratio of the graphics, default: 1.0), <code>"field"</code> (specifying the result's field name that contains the URI), and <code>"fallback"</code> (fallback image to be used if the URI for a result's mascot cannot be retrieved). </li>
<li><code>emblem</code> URI specifying card's emblem </li>
<li><code>summary</code> String specifying text summary </li>
<li><code>background</code> Card background URI, can override the default specified in the card-background field of the template section (same format as for card-background) </li>
<li><code>attributes</code> Array of dictionaries specifying text and an optional icon (keys: "value", "icon") </li>
<li><code>overlay-color</code> Color of overlay for templates with overlay </li>
<li><code>quick-preview-data</code> A dictionary with the following keys: <code>"uri"</code> (an uri of audio stream or file), <code>"duration"</code> (duration in seconds), <code>"playlist"</code> (an array of uris of additional songs to be played in sequence when the main song finishes).</li>
</ul>
<h1>
Example</h1>
<p>In the following example a category named "Recommended" containing three components is created (title, art, and subtitle), and a result providing values for these components is pushed.</p>
<p>Note that the scope is free to set any other extra result fields even if they are not used by the renderer (and therefore not specified in the <code>"components"</code> dictionary), such fields will be preserved and available to the scope when handling result-specific methods (for example <a class="el" href="unity.scopes.ScopeBase.md#a154b9b4cfc0f40572cfec60dd819396f" title="Invoked when a scope is requested to create a preview for a particular result. ">unity::scopes::ScopeBase::preview()</a>).</p>
```
<span class="comment">// use raw string literal, so we don&#39;t have to escape all the quotes</span>
std::string CATEGORY_DEFINITION = R<span class="stringliteral">&quot;(</span>
<span class="stringliteral">{</span>
<span class="stringliteral">  &quot;schema-version&quot; : 1,</span>
<span class="stringliteral">  &quot;template&quot; : {</span>
<span class="stringliteral">    &quot;category-layout&quot; : &quot;carousel&quot;,</span>
<span class="stringliteral">    &quot;card-size&quot; : &quot;small&quot;</span>
<span class="stringliteral">  },</span>
<span class="stringliteral">  &quot;components&quot; : {</span>
<span class="stringliteral">    &quot;title&quot; : &quot;title&quot;,</span>
<span class="stringliteral">    &quot;art&quot; : {</span>
<span class="stringliteral">      &quot;field&quot; : &quot;art&quot;,</span>
<span class="stringliteral">      &quot;aspect-ratio&quot; : 1.3</span>
<span class="stringliteral">      &quot;fallback&quot; : &quot;file:///path_to_fallback_image&quot;,</span>
<span class="stringliteral">    },</span>
<span class="stringliteral">    &quot;subtitle&quot; : &quot;publisher&quot;</span>
<span class="stringliteral">  }</span>
<span class="stringliteral">}</span>
<span class="stringliteral">)&quot;;</span>
<span class="stringliteral"></span>
<span class="stringliteral"></span><span class="keywordtype">void</span> MyQuery::run(<a class="code" href="unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">SearchReplyProxy</a> <span class="keyword">const</span>&amp; reply)
{
<span class="keyword">auto</span> category = reply-&gt;register_category(<span class="stringliteral">&quot;recommended&quot;</span>, <span class="stringliteral">&quot;Recommended&quot;</span>, icon, <a class="code" href="#a046414ae2092968686ee4ee00629054a">CategoryRenderer</a>(CATEGORY_DEFINITION));
<span class="comment">// push a sample result</span>
CategorisedResult result(category); <span class="comment">// create a result item in &quot;recommended&quot; category</span>
result.set_uri(<span class="stringliteral">&quot;http://www.example.org&quot;</span>);
result.set_title(<span class="stringliteral">&quot;Example Result&quot;</span>);
result.set_art(<span class="stringliteral">&quot;http://www.example.org/graphics.png&quot;</span>);
result.set_dnd_uri(<span class="stringliteral">&quot;http://www.example.org&quot;</span>);
result[<span class="stringliteral">&quot;publisher&quot;</span>] = <span class="stringliteral">&quot;Example.org&quot;</span>;
reply-&gt;push(result); <span class="comment">// send result to the client</span>
}
```
 <h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">unity::scopes::CategoryRenderer::CategoryRenderer </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>json_text</em> = <code><a class="el" href="unity.scopes.md#a697a8f21545922bcfc8345d83f5cc156">DEFAULT_RENDERER</a></code></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">explicit</span></span>  </td>
</tr>
</table>
<p>Creates a <a class="el" href="index.html" title="A category renderer template in JSON format. ">CategoryRenderer</a> from a JSON string. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">json_text</td><td>Renderer template in JSON format </td></tr>
</table>
</dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>if json_text cannot be parsed </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::CategoryRenderer::data </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns complete renderer template definition in JSON format. </p>
<dl class="section return"><dt>Returns</dt><dd>The renderer template (JSON). </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">static <a class="el" href="index.html">CategoryRenderer</a> unity::scopes::CategoryRenderer::from_file </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>path</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">static</span></span>  </td>
</tr>
</table>
<p>Creates a <a class="el" href="index.html" title="A category renderer template in JSON format. ">CategoryRenderer</a> from a text file. </p>
<dl class="section return"><dt>Returns</dt><dd>The <a class="el" href="index.html" title="A category renderer template in JSON format. ">CategoryRenderer</a> corresponding to the information in the file. </dd></dl>
