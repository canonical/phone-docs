---
Title: unity.scopes.testing.Sample
---
        
Sample
======

The <a href="index.html" title="The Sample class models the interface to a sample of raw observations and their statistical propertie...">Sample</a> class models the interface to a sample of raw observations and their statistical properties. [More...](#details)

`#include <unity/scopes/testing/Statistics.h>`

Inheritance diagram for unity::scopes::testing::Sample:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/5e20e564-0235-48ff-9a3f-17e13aa2ce51-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Sample/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-types
-----------------------------------------

typedef std::size\_t 
<a href="#a45542150c14b4486c58cb14cca3072e9">SizeType</a>
 
typedef double 
<a href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a>
 
typedef std::function&lt; void(<a href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a>)&gt; 
<a href="#a4d588f4837a81c163ebd653d88648144">Enumerator</a>
 
pub-methods
------------------------------------------------------

virtual <a href="#a45542150c14b4486c58cb14cca3072e9">SizeType</a> 
<a href="#ab37cab3e43f1a8cbc9955ab6ec5e7e40">get_size</a> () const =0
 
virtual <a href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a> 
<a href="#aa4e03bd0ca10b2172954b50a3c544667">get_mean</a> () const =0
 
virtual <a href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a> 
<a href="#a646d6b0dca1081f812958c86ce7e8d01">get_variance</a> () const =0
 
virtual void 
<a href="#a051bdf96e55f8da92bb3829bbf650cf4">enumerate</a> (const <a href="#a4d588f4837a81c163ebd653d88648144">Enumerator</a> &enumerator) const =0
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" title="The Sample class models the interface to a sample of raw observations and their statistical propertie...">Sample</a> class models the interface to a sample of raw observations and their statistical properties.

Member Typedef Documentation
----------------------------

<span id="a4d588f4837a81c163ebd653d88648144" class="anchor"></span>
|                                                                                                                                                                                                                                     |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| typedef std::function&lt;void(<a href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a>)&gt; <a href="#a4d588f4837a81c163ebd653d88648144">unity::scopes::testing::Sample::Enumerator</a> |

Function signature for enumerating all raw observations.

<span id="a45542150c14b4486c58cb14cca3072e9" class="anchor"></span>
|                                                                                                                                     |
|-------------------------------------------------------------------------------------------------------------------------------------|
| typedef std::size\_t <a href="#a45542150c14b4486c58cb14cca3072e9">unity::scopes::testing::Sample::SizeType</a> |

Unsigned type describing the size of the sample.

<span id="a9e02cfa261b23b40c9da59cda6ab0dc8" class="anchor"></span>
|                                                                                                                                |
|--------------------------------------------------------------------------------------------------------------------------------|
| typedef double <a href="#a9e02cfa261b23b40c9da59cda6ab0dc8">unity::scopes::testing::Sample::ValueType</a> |

Floating point type describing an individual observation.

Member Function Documentation
-----------------------------

<span id="a051bdf96e55f8da92bb3829bbf650cf4" class="anchor"></span>
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
<td>virtual void unity::scopes::testing::Sample::enumerate</td>
<td>(</td>
<td>const <a href="#a4d588f4837a81c163ebd653d88648144">Enumerator</a> &amp; </td>
<td><em>enumerator</em></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Enumerate all raw observations from the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

<span id="aa4e03bd0ca10b2172954b50a3c544667" class="anchor"></span>
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
<td>virtual <a href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a> unity::scopes::testing::Sample::get_mean</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Query the empirical mean of the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

<span id="ab37cab3e43f1a8cbc9955ab6ec5e7e40" class="anchor"></span>
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
<td>virtual <a href="#a45542150c14b4486c58cb14cca3072e9">SizeType</a> unity::scopes::testing::Sample::get_size</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Query the size of the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

<span id="a646d6b0dca1081f812958c86ce7e8d01" class="anchor"></span>
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
<td>virtual <a href="#a9e02cfa261b23b40c9da59cda6ab0dc8">ValueType</a> unity::scopes::testing::Sample::get_variance</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Query the empirical variance of the sample.

Implemented in unity::scopes::testing::Benchmark::Result::Timing.

