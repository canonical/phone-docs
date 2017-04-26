---
Title: unity.scopes.Variant
---

# unity.scopes.Variant

<p>Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/Variant.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:a84e79f64156503599a549d86230a2cf5"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a84e79f64156503599a549d86230a2cf5">Type</a> { <br />
&#160;&#160;<b>Null</b>, 
<b>Int</b>, 
<b>Bool</b>, 
<b>String</b>, 
<br />
&#160;&#160;<b>Double</b>, 
<b>Dict</b>, 
<b>Array</b>, 
<b>Int64</b>
<br />
}</td></tr>
<tr class="memdesc:a84e79f64156503599a549d86230a2cf5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Type of value held by a <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance. <br /></td></tr>
<tr class="separator:a84e79f64156503599a549d86230a2cf5"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a88075e23bac5f3e6cffa68425f82b92f"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Variant</b> (<a class="el" href="index.html">Variant</a> const &amp;)</td></tr>
<tr class="separator:a88075e23bac5f3e6cffa68425f82b92f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa1c818282bc22ccec1f32127a4b8eda8"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Variant</b> (<a class="el" href="index.html">Variant</a> &amp;&amp;)</td></tr>
<tr class="separator:aa1c818282bc22ccec1f32127a4b8eda8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0039129c79ca9c762c49950e8495c178"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">Variant</a> const &amp;)</td></tr>
<tr class="separator:a0039129c79ca9c762c49950e8495c178"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f29c80e9f2c0b768b992df6492e6e27"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">Variant</a> &amp;&amp;)</td></tr>
<tr class="separator:a1f29c80e9f2c0b768b992df6492e6e27"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Value assignment</td></tr>
<tr><td colspan="2"><p>The assignment operators replace the value currently held by a <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> with the supplied value, potentially changing the type of the value held by the <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>. Assigning a <code>const char*</code> to a <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> stores the corresponding <code>std::string</code> value. </p>
</td></tr>
<tr class="memitem:a3c8fd52c00ecf529f09bd79349587824"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (int val) noexcept</td></tr>
<tr class="separator:a3c8fd52c00ecf529f09bd79349587824"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aaa3d729ae97d84cc20a97ecd8688d65d"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (int64_t val) noexcept</td></tr>
<tr class="separator:aaa3d729ae97d84cc20a97ecd8688d65d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a77c823e6017c38415bf57745285c2fee"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (double val) noexcept</td></tr>
<tr class="separator:a77c823e6017c38415bf57745285c2fee"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af40496a8c192e4fecadc8e3531cb4735"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (bool val) noexcept</td></tr>
<tr class="separator:af40496a8c192e4fecadc8e3531cb4735"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af477dc59fa9c181a4ceafbe71bfec9ed"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (std::string const &amp;val)</td></tr>
<tr class="separator:af477dc59fa9c181a4ceafbe71bfec9ed"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0e816393dd9cfc2851c0f2ecd9a5b29c"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (char const *val)</td></tr>
<tr class="separator:a0e816393dd9cfc2851c0f2ecd9a5b29c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a52371fcea776de20a73682022eee9614"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> const &amp;val)</td></tr>
<tr class="separator:a52371fcea776de20a73682022eee9614"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1cc6b40a50a9bef153d651f6d0e44ffb"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="unity.scopes.md#aa3bf32d584efd902bca79698a07dd934">VariantArray</a> const &amp;val)</td></tr>
<tr class="separator:a1cc6b40a50a9bef153d651f6d0e44ffb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Comparison operators</td></tr>
<tr><td colspan="2"><p>Two variants are considered equal if they both store values of the same type and equal value.</p>
<p>For Variants storing values of different type, ordering follows the types defined in the Type enum. For example, any integer value compares less than any boolean value. For Variants of the same type, the stored values determine order as usual. </p>
</td></tr>
<tr class="memitem:a7e5ee7524e25bc5ab18fc164c584fb8f"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>operator==</b> (<a class="el" href="index.html">Variant</a> const &amp;) const noexcept</td></tr>
<tr class="separator:a7e5ee7524e25bc5ab18fc164c584fb8f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aec73b890f6afbb1d72faa12e9a8bd913"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>operator&lt;</b> (<a class="el" href="index.html">Variant</a> const &amp;) const noexcept</td></tr>
<tr class="separator:aec73b890f6afbb1d72faa12e9a8bd913"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Value accessors</td></tr>
<tr><td colspan="2"><p>The accessor methods retrieve a value of the specified type.</p>
<p>If a <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> currently stores a value of different type, these methods throw <code>unity::LogicException</code>. </p>
</td></tr>
<tr class="memitem:a96853808c0257b08a203c6222865083f"><td class="memItemLeft" align="right" valign="top">
int&#160;</td><td class="memItemRight" valign="bottom"><b>get_int</b> () const </td></tr>
<tr class="separator:a96853808c0257b08a203c6222865083f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a62ad848e4203e189b40d70fcda438ed8"><td class="memItemLeft" align="right" valign="top">
int64_t&#160;</td><td class="memItemRight" valign="bottom"><b>get_int64_t</b> () const </td></tr>
<tr class="separator:a62ad848e4203e189b40d70fcda438ed8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abd729790b187ccf8c32689c78a22f286"><td class="memItemLeft" align="right" valign="top">
double&#160;</td><td class="memItemRight" valign="bottom"><b>get_double</b> () const </td></tr>
<tr class="separator:abd729790b187ccf8c32689c78a22f286"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa9d6463eb83feef67888ce14d22fc9a2"><td class="memItemLeft" align="right" valign="top">
bool&#160;</td><td class="memItemRight" valign="bottom"><b>get_bool</b> () const </td></tr>
<tr class="separator:aa9d6463eb83feef67888ce14d22fc9a2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ada6e4905661dab460c5021f7a57bed28"><td class="memItemLeft" align="right" valign="top">
std::string&#160;</td><td class="memItemRight" valign="bottom"><b>get_string</b> () const </td></tr>
<tr class="separator:ada6e4905661dab460c5021f7a57bed28"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ade7909d9798c3ee98c4da4bc210a6c08"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><b>get_dict</b> () const </td></tr>
<tr class="separator:ade7909d9798c3ee98c4da4bc210a6c08"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a04950b07c204b40c5ed1a07fee0f981d"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#aa3bf32d584efd902bca79698a07dd934">VariantArray</a>&#160;</td><td class="memItemRight" valign="bottom"><b>get_array</b> () const </td></tr>
<tr class="separator:a04950b07c204b40c5ed1a07fee0f981d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abcbee9f21657da6ccabff844bb5f472f"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#abcbee9f21657da6ccabff844bb5f472f">is_null</a> () const </td></tr>
<tr class="memdesc:abcbee9f21657da6ccabff844bb5f472f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Test if variant holds null value.  More...<br /></td></tr>
<tr class="separator:abcbee9f21657da6ccabff844bb5f472f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Observers</td></tr>
<tr class="memitem:a5d5234019ce1069df485d539852f23be"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="#a84e79f64156503599a549d86230a2cf5">Type</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5d5234019ce1069df485d539852f23be">which</a> () const noexcept</td></tr>
<tr class="memdesc:a5d5234019ce1069df485d539852f23be"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the type of value currently stored by this <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>. <br /></td></tr>
<tr class="separator:a5d5234019ce1069df485d539852f23be"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Modifiers</td></tr>
<tr class="memitem:a84e3a3281dd078fc7a690e17104f0c07"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a84e3a3281dd078fc7a690e17104f0c07">swap</a> (<a class="el" href="index.html">Variant</a> &amp;other) noexcept</td></tr>
<tr class="memdesc:a84e3a3281dd078fc7a690e17104f0c07"><td class="mdescLeft">&#160;</td><td class="mdescRight">Swaps the contents of this <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> with <code>other</code>. <br /></td></tr>
<tr class="separator:a84e3a3281dd078fc7a690e17104f0c07"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Constructors and destructor</h2></td></tr>
<tr class="memitem:afb7dc4ba8297d82003009cd5e22a0056"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afb7dc4ba8297d82003009cd5e22a0056">Variant</a> () noexcept</td></tr>
<tr class="memdesc:afb7dc4ba8297d82003009cd5e22a0056"><td class="mdescLeft">&#160;</td><td class="mdescRight">The default constructor creates a <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance containing a null. <br /></td></tr>
<tr class="separator:afb7dc4ba8297d82003009cd5e22a0056"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4c011541041207fb0aac2455a004dd91"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4c011541041207fb0aac2455a004dd91">Variant</a> (int val) noexcept</td></tr>
<tr class="memdesc:a4c011541041207fb0aac2455a004dd91"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied integer. <br /></td></tr>
<tr class="separator:a4c011541041207fb0aac2455a004dd91"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1b506516f565c8a28ceeba9e75922b9f"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Variant</b> (int64_t val) noexcept</td></tr>
<tr class="separator:a1b506516f565c8a28ceeba9e75922b9f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa0965c3cf5bf396709b90f88e9e84069"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa0965c3cf5bf396709b90f88e9e84069">Variant</a> (double val) noexcept</td></tr>
<tr class="memdesc:aa0965c3cf5bf396709b90f88e9e84069"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied double. <br /></td></tr>
<tr class="separator:aa0965c3cf5bf396709b90f88e9e84069"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a10b5eeaa5716be6e87878e9abfa4a54d"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a10b5eeaa5716be6e87878e9abfa4a54d">Variant</a> (bool val) noexcept</td></tr>
<tr class="memdesc:a10b5eeaa5716be6e87878e9abfa4a54d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied boolean. <br /></td></tr>
<tr class="separator:a10b5eeaa5716be6e87878e9abfa4a54d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aeef78caa145819293d14672537f299f2"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aeef78caa145819293d14672537f299f2">Variant</a> (std::string const &amp;val)</td></tr>
<tr class="memdesc:aeef78caa145819293d14672537f299f2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied string. <br /></td></tr>
<tr class="separator:aeef78caa145819293d14672537f299f2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5608d071cccb81fa5f6840210df332c9"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5608d071cccb81fa5f6840210df332c9">Variant</a> (char const *val)</td></tr>
<tr class="memdesc:a5608d071cccb81fa5f6840210df332c9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Converts the supplied pointer to a string and stores the string in the <a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance. <br /></td></tr>
<tr class="separator:a5608d071cccb81fa5f6840210df332c9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a92e5f8e75066ce878e267d692a42fd23"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Variant</b> (<a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> const &amp;val)</td></tr>
<tr class="separator:a92e5f8e75066ce878e267d692a42fd23"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad0ea8a32cdff0b810e0956e62ae4fa17"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Variant</b> (<a class="el" href="unity.scopes.md#aa3bf32d584efd902bca79698a07dd934">VariantArray</a> const &amp;val)</td></tr>
<tr class="separator:ad0ea8a32cdff0b810e0956e62ae4fa17"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac03ed47f49e4c5f4ec4d4a663fdd3945"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac03ed47f49e4c5f4ec4d4a663fdd3945">~Variant</a> ()</td></tr>
<tr class="memdesc:ac03ed47f49e4c5f4ec4d4a663fdd3945"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destructor. <br /></td></tr>
<tr class="separator:ac03ed47f49e4c5f4ec4d4a663fdd3945"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2bd2d5425fdec9af9340c22e3b47ac1c"><td class="memItemLeft" align="right" valign="top">
static <a class="el" href="index.html">Variant</a> const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2bd2d5425fdec9af9340c22e3b47ac1c">null</a> ()</td></tr>
<tr class="memdesc:a2bd2d5425fdec9af9340c22e3b47ac1c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Construct a null variant. <br /></td></tr>
<tr class="separator:a2bd2d5425fdec9af9340c22e3b47ac1c"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Serialization</h2></td></tr>
<tr class="memitem:a60d63bafa627e24f14c39790573b34db"><td class="memItemLeft" align="right" valign="top">
std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a60d63bafa627e24f14c39790573b34db">serialize_json</a> () const </td></tr>
<tr class="memdesc:a60d63bafa627e24f14c39790573b34db"><td class="mdescLeft">&#160;</td><td class="mdescRight">Serializes the variant to a JSON encoded string. <br /></td></tr>
<tr class="separator:a60d63bafa627e24f14c39790573b34db"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa2defbe2d1601c38c2a2188eb547b44b"><td class="memItemLeft" align="right" valign="top">
static <a class="el" href="index.html">Variant</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa2defbe2d1601c38c2a2188eb547b44b">deserialize_json</a> (std::string const &amp;json_string)</td></tr>
<tr class="memdesc:aa2defbe2d1601c38c2a2188eb547b44b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Deserializes a JSON encoded string to a <code><a class="el" href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a></code>. <br /></td></tr>
<tr class="separator:aa2defbe2d1601c38c2a2188eb547b44b"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Variant::is_null </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Test if variant holds null value. </p>
<dl class="section return"><dt>Returns</dt><dd>True if variant holds null. </dd></dl>
