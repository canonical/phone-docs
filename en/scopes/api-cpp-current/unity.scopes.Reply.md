---
Title: unity.scopes.Reply
---
        
Reply
=====

Allows query termination to be sent to the source of a query. [More...](#details)

`#include <unity/scopes/Reply.h>`

Inheritance diagram for unity::scopes::Reply:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/6791ff0a-f885-455e-8b6b-3e8ddee4f845-api/scopes/cpp/sdk-15.04.4/unity.scopes.Reply/classunity_1_1scopes_1_1_reply__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#a9ca653d5d7f7c97a781bc362f2af7749">finished</a> ()=0
 
Informs the source of a query that the query results are complete. More...
 
virtual void 
<a href="#a526c9cbb11f896210835fb3420324ba8">error</a> (std::exception\_ptr ex)=0
 
Informs the source of a query that the query was terminated due to an error. More...
 
virtual void 
<a href="#af35cbaba152e4919306f32b06bd81029">info</a> (<a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &op\_info)=0
 
Informs the source of a query that additional information regarding the reply is available. More...
 
virtual 
<a href="#a9f0cfeeee75a27e111ebd955523e1bb0">~Reply</a> ()
 
Destroys a Reply. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/d9309aca-5067-421e-ae8c-a30e87b0d6d1-api/scopes/cpp/sdk-15.04.4/unity.scopes.Reply/closed.png) Public Member Functions inherited from <a href="unity.scopes.Object.md">unity::scopes::Object</a>
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

Allows query termination to be sent to the source of a query.

Constructor & Destructor Documentation
--------------------------------------

<span id="a9f0cfeeee75a27e111ebd955523e1bb0" class="anchor"></span>
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
<td>virtual unity::scopes::Reply::~Reply</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Destroys a <a href="index.html" title="Allows query termination to be sent to the source of a query. ">Reply</a>.

If a <a href="index.html" title="Allows query termination to be sent to the source of a query. ">Reply</a> goes out of scope without a prior call to <a href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>, the destructor implicitly calls <a href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>, provided QueryBase::run() has returned.

Member Function Documentation
-----------------------------

<span id="a526c9cbb11f896210835fb3420324ba8" class="anchor"></span>
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
<td>virtual void unity::scopes::Reply::error</td>
<td>(</td>
<td>std::exception_ptr </td>
<td><em>ex</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Informs the source of a query that the query was terminated due to an error.

Multiple calls to <a href="#a526c9cbb11f896210835fb3420324ba8" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> and calls to <a href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> after <a href="#a526c9cbb11f896210835fb3420324ba8" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> was called are ignored.

Parameters  
|     |                                                                                                                                                                                                                   |
|-----|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ex  | An exception\_ptr indicating the cause of the error. If ex is a `std::exception`, the return value of `what()` is made available to the query source. Otherwise, the query source receives `"unknown exception"`. |

<span id="a9ca653d5d7f7c97a781bc362f2af7749" class="anchor"></span>
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
<td>virtual void unity::scopes::Reply::finished</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Informs the source of a query that the query results are complete.

Calling <a href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> informs the source of a query that the final result for the query was sent, that is, that the query is complete. Multiple calls to <a href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> and calls to <a href="#a526c9cbb11f896210835fb3420324ba8" title="Informs the source of a query that the query was terminated due to an error. ">error()</a> after <a href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> was called are ignored. The destructor implicitly calls <a href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> if a <a href="index.html" title="Allows query termination to be sent to the source of a query. ">Reply</a> goes out of scope without a prior call to <a href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>. Similarly, QueryBase::run() implicitly calls <a href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> when it returns, provided there are no more reply proxies in scope. In other words, calling <a href="#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> is optional. The scopes runtime ensures that the call happens automatically, either when the last reply proxy goes out of scope, or when QueryBase::run() returns (whichever happens last).

<span id="af35cbaba152e4919306f32b06bd81029" class="anchor"></span>
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
<td>virtual void unity::scopes::Reply::info</td>
<td>(</td>
<td><a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp; </td>
<td><em>op_info</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Informs the source of a query that additional information regarding the reply is available.

Calling <a href="#af35cbaba152e4919306f32b06bd81029" title="Informs the source of a query that additional information regarding the reply is available. ">info()</a> does not terminate the query, it simply informs the source that something interesting occured during execution of the query (usually affecting the results returned in some way).

Multiple calls to <a href="#af35cbaba152e4919306f32b06bd81029" title="Informs the source of a query that additional information regarding the reply is available. ">info()</a> for each condition are legal.

Parameters  
|          |                                                         |
|----------|---------------------------------------------------------|
| op\_info | Contains all details of the information being reported. |

