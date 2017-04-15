---
Title: unity.scopes.Object
---
        
Object
======

The root base class for all proxies. [More...](#details)

`#include <unity/scopes/Object.h>`

Inheritance diagram for unity::scopes::Object:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/5036301b-7bb5-4ac6-892b-342f28290393-api/scopes/cpp/sdk-15.04.4/unity.scopes.Object/classunity_1_1scopes_1_1_object__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual std::string 
<a href="#ad7618cc9d878c40b389361d4acd473ae">endpoint</a> ()=0
 
Returns the endpoint this proxy connects to. More...
 
virtual std::string 
<a href="#a1b55aea886f0a68cb8a578f7ee0b1cfd">identity</a> ()=0
 
Returns the identity of the target object of this proxy. More...
 
virtual std::string 
<a href="#a40a997516629df3dacca9742dbddd6cb">target_category</a> ()=0
 
Returns the category of the target object of this proxy. More...
 
virtual int64\_t 
<a href="#a41d9839f1e3cbcd6d8baee0736feccab">timeout</a> ()=0
 
Returns the timeout in milliseconds if this proxy is a twoway proxy. More...
 
virtual std::string 
<a href="#a9ae27e1f30dc755abcd796a1e8a25150">to_string</a> ()=0
 
Converts a proxy into its string representation. More...
 
<span id="details"></span>
Detailed Description
--------------------

The root base class for all proxies.

Member Function Documentation
-----------------------------

<span id="ad7618cc9d878c40b389361d4acd473ae" class="anchor"></span>
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
<td>virtual std::string unity::scopes::Object::endpoint</td>
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

Returns the endpoint this proxy connects to.

Returns  
The endpoint of the proxy.

<span id="a1b55aea886f0a68cb8a578f7ee0b1cfd" class="anchor"></span>
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
<td>virtual std::string unity::scopes::Object::identity</td>
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

Returns the identity of the target object of this proxy.

Returns  
The identity of the target of the proxy.

<span id="a40a997516629df3dacca9742dbddd6cb" class="anchor"></span>
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
<td>virtual std::string unity::scopes::Object::target_category</td>
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

Returns the category of the target object of this proxy.

Returns  
The category of the target of the proxy.

<span id="a41d9839f1e3cbcd6d8baee0736feccab" class="anchor"></span>
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
<td>virtual int64_t unity::scopes::Object::timeout</td>
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

Returns the timeout in milliseconds if this proxy is a twoway proxy.

For oneway proxies and twoway proxies without a timeout, the return value is -1.

Returns  
The timeout value in milliseconds (-1 if none or timeout does not apply).

<span id="a9ae27e1f30dc755abcd796a1e8a25150" class="anchor"></span>
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
<td>virtual std::string unity::scopes::Object::to_string</td>
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

Converts a proxy into its string representation.

A proxy string can be converted back into a proxy by calling <a href="../unity.scopes.Runtime.md#a24eec46bc15975c219642fcfe8e5357f" title="Convert a string to a proxy. ">Runtime::string_to_proxy()</a>.

Returns  
The string representation of the proxy.

