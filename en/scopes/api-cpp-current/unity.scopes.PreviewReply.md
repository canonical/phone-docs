---
Title: unity.scopes.PreviewReply
---
        
PreviewReply
============

Allows the results of a preview to be sent to the preview requester. [More...](#details)

`#include <unity/scopes/PreviewReply.h>`

Inheritance diagram for unity::scopes::PreviewReply:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/cfafcb3c-ded9-42f6-b77b-05c240a8e0e9-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewReply/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual bool 
<a href="#a16a757d821bd3792d1a69112b1f13964">register_layout</a> (<a href="../unity.scopes.md#a5b970e3c73bf25548398b32e79b2224d">ColumnLayoutList</a> const &layouts)=0
 
Registers a list of column layouts for the current preview. More...
 
virtual bool 
<a href="#a9fc593618b83ec444fb6c9b2b298764a">push</a> (<a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> const &widget\_list)=0
 
Sends widget definitions to the sender of the preview query. More...
 
virtual bool 
<a href="#a8697306bc56dc29bb005d988841f0c8e">push</a> (std::string const &key, <a href="unity.scopes.Variant.md">Variant</a> const &value)=0
 
Sends data for a preview widget attribute. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/b2b3d009-bc7b-4877-9cc7-243314cac2f6-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewReply/closed.png) Public Member Functions inherited from <a href="unity.scopes.Reply.md">unity::scopes::Reply</a>
virtual void 
<a href="../unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749">finished</a> ()=0
 
Informs the source of a query that the query results are complete. More...
 
virtual void 
<a href="../unity.scopes.Reply.md#a526c9cbb11f896210835fb3420324ba8">error</a> (std::exception\_ptr ex)=0
 
Informs the source of a query that the query was terminated due to an error. More...
 
virtual void 
<a href="../unity.scopes.Reply.md#af35cbaba152e4919306f32b06bd81029">info</a> (<a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &op\_info)=0
 
Informs the source of a query that additional information regarding the reply is available. More...
 
virtual 
<a href="../unity.scopes.Reply.md#a9f0cfeeee75a27e111ebd955523e1bb0">~Reply</a> ()
 
Destroys a Reply. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/f8f80fd1-2d47-4fdf-82a6-122b2d4af66c-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewReply/closed.png) Public Member Functions inherited from <a href="unity.scopes.Object.md">unity::scopes::Object</a>
virtual std::string 
<a href="../unity.scopes.Object.md#ad7618cc9d878c40b389361d4acd473ae">endpoint</a> ()=0
 
Returns the endpoint this proxy connects to. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a1b55aea886f0a68cb8a578f7ee0b1cfd">identity</a> ()=0
 
Returns the identity of the target object of this proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a40a997516629df3dacca9742dbddd6cb">target_category</a> ()=0
 
Returns the category of the target object of this proxy. More...
 
virtual int64\_t 
<a href="../unity.scopes.Object.md#a41d9839f1e3cbcd6d8baee0736feccab">timeout</a> ()=0
 
Returns the timeout in milliseconds if this proxy is a twoway proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a9ae27e1f30dc755abcd796a1e8a25150">to_string</a> ()=0
 
Converts a proxy into its string representation. More...
 
<span id="details"></span>
Detailed Description
--------------------

Allows the results of a preview to be sent to the preview requester.

Member Function Documentation
-----------------------------

<span id="a9fc593618b83ec444fb6c9b2b298764a" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual bool unity::scopes::PreviewReply::push</td>
<td>(</td>
<td><a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> const &amp; </td>
<td><em>widget_list</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Sends widget definitions to the sender of the preview query.

This method can be called mutiple times to send widgets in stages.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<span id="a8697306bc56dc29bb005d988841f0c8e" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual bool unity::scopes::PreviewReply::push</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>key</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.Variant.md">Variant</a> const &amp; </td>
<td><em>value</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Sends data for a preview widget attribute.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<span id="a16a757d821bd3792d1a69112b1f13964" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual bool unity::scopes::PreviewReply::register_layout</td>
<td>(</td>
<td><a href="../unity.scopes.md#a5b970e3c73bf25548398b32e79b2224d">ColumnLayoutList</a> const &amp; </td>
<td><em>layouts</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Registers a list of column layouts for the current preview.

Layouts must be registered before pushing a <a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d" title="List of preview widgets (see unity::scopes::PreviewWidget) ">unity::scopes::PreviewWidgetList</a>, and must be registered only once.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<!-- -->

Exceptions  
|                       |                                                                                                                                                                                        |
|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | <a href="#a16a757d821bd3792d1a69112b1f13964" title="Registers a list of column layouts for the current preview. ">register_layout()</a> is called more than once. |

