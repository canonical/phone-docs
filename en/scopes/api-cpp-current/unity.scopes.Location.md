---
Title: unity.scopes.Location
---

# unity.scopes.Location

<p>Holds location attributes such as latitude, longitude, etc.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/Location.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a29785026741614382c49237af463b134"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a29785026741614382c49237af463b134">Location</a> (double <a class="el" href="#a50f5c02d7bab4a0d8dd57295a83d30a5">latitude</a>, double <a class="el" href="#a29476cb6bb6134f775ced08f49653fbf">longitude</a>)</td></tr>
<tr class="memdesc:a29785026741614382c49237af463b134"><td class="mdescLeft">&#160;</td><td class="mdescRight">Construct a new Location with the specified latitude and longitude.  More...<br /></td></tr>
<tr class="separator:a29785026741614382c49237af463b134"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acd547c0fd175dc09af7f21c2510455d8"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acd547c0fd175dc09af7f21c2510455d8">Location</a> (<a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> const &amp;variant)</td></tr>
<tr class="memdesc:acd547c0fd175dc09af7f21c2510455d8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Construct a <a class="el" href="index.html" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> from a the given serialized VariantMap. <br /></td></tr>
<tr class="separator:acd547c0fd175dc09af7f21c2510455d8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a835ec1dcd3c73decf26efe07edde7de1"><td class="memItemLeft" align="right" valign="top">double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a835ec1dcd3c73decf26efe07edde7de1">altitude</a> () const </td></tr>
<tr class="memdesc:a835ec1dcd3c73decf26efe07edde7de1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the altitude.  More...<br /></td></tr>
<tr class="separator:a835ec1dcd3c73decf26efe07edde7de1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acd12460c91fdfe505ca7c48c6d9ff8e0"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acd12460c91fdfe505ca7c48c6d9ff8e0">has_altitude</a> () const </td></tr>
<tr class="memdesc:acd12460c91fdfe505ca7c48c6d9ff8e0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Is there an altitude property.  More...<br /></td></tr>
<tr class="separator:acd12460c91fdfe505ca7c48c6d9ff8e0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a62e2b1a20fca9c7aa7e193d35fc0de1d"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a62e2b1a20fca9c7aa7e193d35fc0de1d">area_code</a> () const </td></tr>
<tr class="memdesc:a62e2b1a20fca9c7aa7e193d35fc0de1d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the area code.  More...<br /></td></tr>
<tr class="separator:a62e2b1a20fca9c7aa7e193d35fc0de1d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8f50b410a669b84fabe6b2fb335322e9"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8f50b410a669b84fabe6b2fb335322e9">has_area_code</a> () const </td></tr>
<tr class="memdesc:a8f50b410a669b84fabe6b2fb335322e9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Is there an area code property.  More...<br /></td></tr>
<tr class="separator:a8f50b410a669b84fabe6b2fb335322e9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af57bae33c7f02bb3aae6f3afdd8751b4"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af57bae33c7f02bb3aae6f3afdd8751b4">city</a> () const </td></tr>
<tr class="memdesc:af57bae33c7f02bb3aae6f3afdd8751b4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the city name.  More...<br /></td></tr>
<tr class="separator:af57bae33c7f02bb3aae6f3afdd8751b4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad87381d174720bdf4098ab073ad3036c"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad87381d174720bdf4098ab073ad3036c">has_city</a> () const </td></tr>
<tr class="memdesc:ad87381d174720bdf4098ab073ad3036c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Is there a city property.  More...<br /></td></tr>
<tr class="separator:ad87381d174720bdf4098ab073ad3036c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a12d1ffb8ebf540f09937f39bd93cf7a3"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a12d1ffb8ebf540f09937f39bd93cf7a3">country_code</a> () const </td></tr>
<tr class="memdesc:a12d1ffb8ebf540f09937f39bd93cf7a3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the country code.  More...<br /></td></tr>
<tr class="separator:a12d1ffb8ebf540f09937f39bd93cf7a3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afa933efd7a44f0e28757d132c480091e"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afa933efd7a44f0e28757d132c480091e">has_country_code</a> () const </td></tr>
<tr class="memdesc:afa933efd7a44f0e28757d132c480091e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Is there a country code property.  More...<br /></td></tr>
<tr class="separator:afa933efd7a44f0e28757d132c480091e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8545a7b5d50011c18068f2a90ae7440a"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8545a7b5d50011c18068f2a90ae7440a">country_name</a> () const </td></tr>
<tr class="memdesc:a8545a7b5d50011c18068f2a90ae7440a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the country name.  More...<br /></td></tr>
<tr class="separator:a8545a7b5d50011c18068f2a90ae7440a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ade946afbcfe219ad046e35b9818bc6c2"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ade946afbcfe219ad046e35b9818bc6c2">has_country_name</a> () const </td></tr>
<tr class="memdesc:ade946afbcfe219ad046e35b9818bc6c2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Is there a country name property.  More...<br /></td></tr>
<tr class="separator:ade946afbcfe219ad046e35b9818bc6c2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab8cae20de2053fd966a895a72b4c4d23"><td class="memItemLeft" align="right" valign="top">double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab8cae20de2053fd966a895a72b4c4d23">horizontal_accuracy</a> () const </td></tr>
<tr class="memdesc:ab8cae20de2053fd966a895a72b4c4d23"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the horizontal accuracy.  More...<br /></td></tr>
<tr class="separator:ab8cae20de2053fd966a895a72b4c4d23"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a849365d5a0a161e282badac69aa38e40"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a849365d5a0a161e282badac69aa38e40">has_horizontal_accuracy</a> () const </td></tr>
<tr class="memdesc:a849365d5a0a161e282badac69aa38e40"><td class="mdescLeft">&#160;</td><td class="mdescRight">Is there a horizontal accuracy property.  More...<br /></td></tr>
<tr class="separator:a849365d5a0a161e282badac69aa38e40"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a50f5c02d7bab4a0d8dd57295a83d30a5"><td class="memItemLeft" align="right" valign="top">double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a50f5c02d7bab4a0d8dd57295a83d30a5">latitude</a> () const </td></tr>
<tr class="memdesc:a50f5c02d7bab4a0d8dd57295a83d30a5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the latitude.  More...<br /></td></tr>
<tr class="separator:a50f5c02d7bab4a0d8dd57295a83d30a5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a29476cb6bb6134f775ced08f49653fbf"><td class="memItemLeft" align="right" valign="top">double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a29476cb6bb6134f775ced08f49653fbf">longitude</a> () const </td></tr>
<tr class="memdesc:a29476cb6bb6134f775ced08f49653fbf"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the longitude.  More...<br /></td></tr>
<tr class="separator:a29476cb6bb6134f775ced08f49653fbf"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2d17dfecd743f6777e39f9e06653b7cd"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2d17dfecd743f6777e39f9e06653b7cd">serialize</a> () const </td></tr>
<tr class="memdesc:a2d17dfecd743f6777e39f9e06653b7cd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return a dictionary of all location attributes.  More...<br /></td></tr>
<tr class="separator:a2d17dfecd743f6777e39f9e06653b7cd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a16f0fbcf4a0811506c64452289878539"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a16f0fbcf4a0811506c64452289878539">region_code</a> () const </td></tr>
<tr class="memdesc:a16f0fbcf4a0811506c64452289878539"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the region code.  More...<br /></td></tr>
<tr class="separator:a16f0fbcf4a0811506c64452289878539"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a18aa845b15b710fb32fa65bb02fcc8ec"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a18aa845b15b710fb32fa65bb02fcc8ec">has_region_code</a> () const </td></tr>
<tr class="memdesc:a18aa845b15b710fb32fa65bb02fcc8ec"><td class="mdescLeft">&#160;</td><td class="mdescRight">Is there a region code property.  More...<br /></td></tr>
<tr class="separator:a18aa845b15b710fb32fa65bb02fcc8ec"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4d13ccb82265c0622092d78fb708578c"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4d13ccb82265c0622092d78fb708578c">region_name</a> () const </td></tr>
<tr class="memdesc:a4d13ccb82265c0622092d78fb708578c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the region name.  More...<br /></td></tr>
<tr class="separator:a4d13ccb82265c0622092d78fb708578c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a244f6d61af0d09c6649ff352fd0da1e8"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a244f6d61af0d09c6649ff352fd0da1e8">has_region_name</a> () const </td></tr>
<tr class="memdesc:a244f6d61af0d09c6649ff352fd0da1e8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Is there a region name property.  More...<br /></td></tr>
<tr class="separator:a244f6d61af0d09c6649ff352fd0da1e8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a99f86caa4eecfeb278b1f8ec0ab640ed"><td class="memItemLeft" align="right" valign="top">double&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a99f86caa4eecfeb278b1f8ec0ab640ed">vertical_accuracy</a> () const </td></tr>
<tr class="memdesc:a99f86caa4eecfeb278b1f8ec0ab640ed"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the vertical accuracy.  More...<br /></td></tr>
<tr class="separator:a99f86caa4eecfeb278b1f8ec0ab640ed"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a734214294d31266e581aceba1c43fa04"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a734214294d31266e581aceba1c43fa04">has_vertical_accuracy</a> () const </td></tr>
<tr class="memdesc:a734214294d31266e581aceba1c43fa04"><td class="mdescLeft">&#160;</td><td class="mdescRight">Is there a vertical accuracy property.  More...<br /></td></tr>
<tr class="separator:a734214294d31266e581aceba1c43fa04"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2b7a689928e29c415a894dbc1cf640af"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2b7a689928e29c415a894dbc1cf640af">zip_postal_code</a> () const </td></tr>
<tr class="memdesc:a2b7a689928e29c415a894dbc1cf640af"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the zip or postal code.  More...<br /></td></tr>
<tr class="separator:a2b7a689928e29c415a894dbc1cf640af"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa49d5fcd4e67a86aea6a5354f01682a3"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa49d5fcd4e67a86aea6a5354f01682a3">has_zip_postal_code</a> () const </td></tr>
<tr class="memdesc:aa49d5fcd4e67a86aea6a5354f01682a3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Is there a zip / postal code property.  More...<br /></td></tr>
<tr class="separator:aa49d5fcd4e67a86aea6a5354f01682a3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6fe5248e04481732f75e2f51625ebf23"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6fe5248e04481732f75e2f51625ebf23">set_altitude</a> (double <a class="el" href="#a835ec1dcd3c73decf26efe07edde7de1">altitude</a>)</td></tr>
<tr class="memdesc:a6fe5248e04481732f75e2f51625ebf23"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the altitude.  More...<br /></td></tr>
<tr class="separator:a6fe5248e04481732f75e2f51625ebf23"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa2ae4c88a310152f375048fa9e109a70"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa2ae4c88a310152f375048fa9e109a70">set_area_code</a> (std::string const &amp;<a class="el" href="#a62e2b1a20fca9c7aa7e193d35fc0de1d">area_code</a>)</td></tr>
<tr class="memdesc:aa2ae4c88a310152f375048fa9e109a70"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the area code.  More...<br /></td></tr>
<tr class="separator:aa2ae4c88a310152f375048fa9e109a70"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa8518fd0a3eb35fbe6242fd3bdbe7635"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa8518fd0a3eb35fbe6242fd3bdbe7635">set_city</a> (std::string const &amp;<a class="el" href="#af57bae33c7f02bb3aae6f3afdd8751b4">city</a>)</td></tr>
<tr class="memdesc:aa8518fd0a3eb35fbe6242fd3bdbe7635"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the city name.  More...<br /></td></tr>
<tr class="separator:aa8518fd0a3eb35fbe6242fd3bdbe7635"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a458adf562171b91a27cb8402364bd505"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a458adf562171b91a27cb8402364bd505">set_country_code</a> (std::string const &amp;<a class="el" href="#a12d1ffb8ebf540f09937f39bd93cf7a3">country_code</a>)</td></tr>
<tr class="memdesc:a458adf562171b91a27cb8402364bd505"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the country code.  More...<br /></td></tr>
<tr class="separator:a458adf562171b91a27cb8402364bd505"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6848dccd62f563a2ed7f3afe7deed9bf"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6848dccd62f563a2ed7f3afe7deed9bf">set_country_name</a> (std::string const &amp;<a class="el" href="#a8545a7b5d50011c18068f2a90ae7440a">country_name</a>)</td></tr>
<tr class="memdesc:a6848dccd62f563a2ed7f3afe7deed9bf"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the country name.  More...<br /></td></tr>
<tr class="separator:a6848dccd62f563a2ed7f3afe7deed9bf"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9874386c93fa5864fc459fc88e311ee5"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a9874386c93fa5864fc459fc88e311ee5">set_horizontal_accuracy</a> (double <a class="el" href="#ab8cae20de2053fd966a895a72b4c4d23">horizontal_accuracy</a>)</td></tr>
<tr class="memdesc:a9874386c93fa5864fc459fc88e311ee5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the horizontal accuracy.  More...<br /></td></tr>
<tr class="separator:a9874386c93fa5864fc459fc88e311ee5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aef5aacbc207c4fff67c0fb5fbb3414be"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aef5aacbc207c4fff67c0fb5fbb3414be">set_latitude</a> (double <a class="el" href="#a50f5c02d7bab4a0d8dd57295a83d30a5">latitude</a>)</td></tr>
<tr class="memdesc:aef5aacbc207c4fff67c0fb5fbb3414be"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the latitude.  More...<br /></td></tr>
<tr class="separator:aef5aacbc207c4fff67c0fb5fbb3414be"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae0fc9cc4e3d1fd8c2c0c9a7297c3e6b2"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae0fc9cc4e3d1fd8c2c0c9a7297c3e6b2">set_longitude</a> (double <a class="el" href="#a29476cb6bb6134f775ced08f49653fbf">longitude</a>)</td></tr>
<tr class="memdesc:ae0fc9cc4e3d1fd8c2c0c9a7297c3e6b2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the longitude.  More...<br /></td></tr>
<tr class="separator:ae0fc9cc4e3d1fd8c2c0c9a7297c3e6b2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a35ba30e0a576f416854f5962ae292a02"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a35ba30e0a576f416854f5962ae292a02">set_region_code</a> (std::string const &amp;<a class="el" href="#a16f0fbcf4a0811506c64452289878539">region_code</a>)</td></tr>
<tr class="memdesc:a35ba30e0a576f416854f5962ae292a02"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the region code.  More...<br /></td></tr>
<tr class="separator:a35ba30e0a576f416854f5962ae292a02"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aeebff1a970e84a44f5f1cda7c8a9cdd9"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aeebff1a970e84a44f5f1cda7c8a9cdd9">set_region_name</a> (std::string const &amp;<a class="el" href="#a4d13ccb82265c0622092d78fb708578c">region_name</a>)</td></tr>
<tr class="memdesc:aeebff1a970e84a44f5f1cda7c8a9cdd9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the region name.  More...<br /></td></tr>
<tr class="separator:aeebff1a970e84a44f5f1cda7c8a9cdd9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa7e876729fdd07d5141203ad1a805e8c"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa7e876729fdd07d5141203ad1a805e8c">set_vertical_accuracy</a> (double <a class="el" href="#a99f86caa4eecfeb278b1f8ec0ab640ed">vertical_accuracy</a>)</td></tr>
<tr class="memdesc:aa7e876729fdd07d5141203ad1a805e8c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the vertical_accuracy.  More...<br /></td></tr>
<tr class="separator:aa7e876729fdd07d5141203ad1a805e8c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af0e7c149082d5d55ea6364b921fefcdf"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af0e7c149082d5d55ea6364b921fefcdf">set_zip_postal_code</a> (std::string const &amp;<a class="el" href="#a2b7a689928e29c415a894dbc1cf640af">zip_postal_code</a>)</td></tr>
<tr class="memdesc:af0e7c149082d5d55ea6364b921fefcdf"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the zip/postal code.  More...<br /></td></tr>
<tr class="separator:af0e7c149082d5d55ea6364b921fefcdf"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a9037622dec02d6e7753b3dfe56388c8c"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Location</b> (<a class="el" href="index.html">Location</a> const &amp;other)</td></tr>
<tr class="separator:a9037622dec02d6e7753b3dfe56388c8c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3305c9a52f796ffb5b94857b2fc56219"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Location</b> (<a class="el" href="index.html">Location</a> &amp;&amp;)</td></tr>
<tr class="separator:a3305c9a52f796ffb5b94857b2fc56219"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aae47db2e5e4c0d028848e06c03d2199c"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Location</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">Location</a> const &amp;other)</td></tr>
<tr class="separator:aae47db2e5e4c0d028848e06c03d2199c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aad4af210a13096a88d5ba03748ec60b0"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Location</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">Location</a> &amp;&amp;)</td></tr>
<tr class="separator:aad4af210a13096a88d5ba03748ec60b0"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Holds location attributes such as latitude, longitude, etc. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::Location::Location </td>
<td>(</td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>latitude</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>longitude</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Construct a new <a class="el" href="index.html" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> with the specified latitude and longitude. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">latitude</td><td>Latitude </td></tr>
<tr><td class="paramname">longitude</td><td>Longitude </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">double unity::scopes::Location::altitude </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the altitude. </p>
<dl class="section return"><dt>Returns</dt><dd>The altitude. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if altitude is not set. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Location::area_code </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the area code. </p>
<dl class="section return"><dt>Returns</dt><dd>The area code. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if area code is not set. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Location::city </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the city name. </p>
<dl class="section return"><dt>Returns</dt><dd>The city name. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if city is not set. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Location::country_code </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the country code. </p>
<dl class="section return"><dt>Returns</dt><dd>The country code. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if country code is not set. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Location::country_name </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the country name. </p>
<dl class="section return"><dt>Returns</dt><dd>The country name. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if country name is not set. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Location::has_altitude </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Is there an altitude property. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is an altitude property. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Location::has_area_code </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Is there an area code property. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is an area code property. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Location::has_city </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Is there a city property. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a city property. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Location::has_country_code </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Is there a country code property. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a country code property. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Location::has_country_name </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Is there a country name property. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a country name property. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Location::has_horizontal_accuracy </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Is there a horizontal accuracy property. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a horizontal accuracy property. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Location::has_region_code </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Is there a region code property. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a region code property. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Location::has_region_name </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Is there a region name property. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a region name property. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Location::has_vertical_accuracy </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Is there a vertical accuracy property. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a vertical accuracy property. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Location::has_zip_postal_code </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Is there a zip / postal code property. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a zip / postal code property. </dd></dl>
<table class="memname">
<tr>
<td class="memname">double unity::scopes::Location::horizontal_accuracy </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the horizontal accuracy. </p>
<dl class="section return"><dt>Returns</dt><dd>The horizontal accuracy. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if horizontal accuracy is not set. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">double unity::scopes::Location::latitude </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the latitude. </p>
<dl class="section return"><dt>Returns</dt><dd>The latitude. </dd></dl>
<table class="memname">
<tr>
<td class="memname">double unity::scopes::Location::longitude </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the longitude. </p>
<dl class="section return"><dt>Returns</dt><dd>The longitude. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Location::region_code </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the region code. </p>
<dl class="section return"><dt>Returns</dt><dd>The region code. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if region code is not set. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Location::region_name </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the region name. </p>
<dl class="section return"><dt>Returns</dt><dd>The region name. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if region name is not set. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::Location::serialize </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return a dictionary of all location attributes. </p>
<dl class="section return"><dt>Returns</dt><dd>Dictionary of all location attributes. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_altitude </td>
<td>(</td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>altitude</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the altitude. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">altitude</td><td>In meters. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_area_code </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>area_code</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the area code. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">area_code</td><td>FIPS10-4 area code. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_city </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>city</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the city name. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">city</td><td>Name of the city. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_country_code </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>country_code</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the country code. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">country_code</td><td>FIPS10-4 country code. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_country_name </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>country_name</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the country name. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">country_name</td><td>Human readable country name. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_horizontal_accuracy </td>
<td>(</td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>horizontal_accuracy</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the horizontal accuracy. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">horizontal_accuracy</td><td>Horizontal accouracy. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_latitude </td>
<td>(</td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>latitude</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the latitude. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">latitude</td><td>Latitude. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_longitude </td>
<td>(</td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>longitude</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the longitude. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">longitude</td><td>Latitude. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_region_code </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>region_code</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the region code. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">region_code</td><td>FIPS10-4 region code. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_region_name </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>region_name</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the region name. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">region_name</td><td>Human readable region name. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_vertical_accuracy </td>
<td>(</td>
<td class="paramtype">double&#160;</td>
<td class="paramname"><em>vertical_accuracy</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the vertical_accuracy. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">vertical_accuracy</td><td>Vertical accuracy in meters. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Location::set_zip_postal_code </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>zip_postal_code</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the zip/postal code. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">zip_postal_code</td><td>Either a zip or postal code. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">double unity::scopes::Location::vertical_accuracy </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the vertical accuracy. </p>
<dl class="section return"><dt>Returns</dt><dd>The vertical accuracy. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if vertical accuracy is not set. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Location::zip_postal_code </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the zip or postal code. </p>
<dl class="section return"><dt>Returns</dt><dd>The zip or postal code. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if postal code is not set. </td></tr>
</table>
</dd>
</dl>
