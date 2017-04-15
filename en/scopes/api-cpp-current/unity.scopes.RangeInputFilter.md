---
Title: unity.scopes.RangeInputFilter
---
        
RangeInputFilter
================

A range filter allows a start and end value to be entered by the user. [More...](#details)

`#include <unity/scopes/RangeInputFilter.h>`

Inheritance diagram for unity::scopes::RangeInputFilter:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/1654f80c-66f9-48a2-a0d5-726ba01ac327-api/scopes/cpp/sdk-15.04.4/unity.scopes.RangeInputFilter/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

std::string 
<a href="#a1a4cf761c6bfa2e07eb24b6f584ec05b">start_prefix_label</a> () const
 
Get the prefix label of start value. More...
 
std::string 
<a href="#a9e2a6ec4e9c06234ee4759dce2644008">start_postfix_label</a> () const
 
Get the postfix label of start value. More...
 
std::string 
<a href="#a8acb48c94b3e9b6ca228a0e7ebb26ae5">end_prefix_label</a> () const
 
Get the prefix label of end value. More...
 
std::string 
<a href="#a81dde713bcfb2b2ca24683ba9e808e34">end_postfix_label</a> () const
 
Get the postfix label of end value. More...
 
std::string 
<a href="#a41f517d0071ca0f953c478f8272bf41b">central_label</a> () const
 
Get the central label for this filter. More...
 
<a href="unity.scopes.Variant.md">Variant</a> 
<a href="#adf545096dacbea4303361527450321fa">default_start_value</a> () const
 
Get the default start value if set (int, double or null). More...
 
<a href="unity.scopes.Variant.md">Variant</a> 
<a href="#aaf471258f02a8af0f7bfdb186ed61b0e">default_end_value</a> () const
 
Get default end value if set (int, double or null). More...
 
bool 
<a href="#a64f2c9ff7ed484f49d26f601f30e8616">has_start_value</a> (<a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state) const
 
Check if filter state holds a start value for this filter instance. More...
 
bool 
<a href="#ae459a665a5dae27445547b1c0be8c7c3">has_end_value</a> (<a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state) const
 
Check if filter state holds an end value for this filter instance. More...
 
double 
<a href="#afd86208a5f8fe8a81877bd0bf4588758">start_value</a> (<a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state) const
 
Get the start value for this filter instance. More...
 
double 
<a href="#af5bee0ddf65a375a4a5e19b4313de940">end_value</a> (<a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state) const
 
Get end value for this filter instance. More...
 
void 
<a href="#a5fa97b63d86a89e7144a89e0996d1304">update_state</a> (<a href="unity.scopes.FilterState.md">FilterState</a> &filter\_state, <a href="unity.scopes.Variant.md">Variant</a> const &<a href="#afd86208a5f8fe8a81877bd0bf4588758">start_value</a>, <a href="unity.scopes.Variant.md">Variant</a> const &<a href="#af5bee0ddf65a375a4a5e19b4313de940">end_value</a>) const
 
Store start and end value for this filter in the filter state. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/21c7accc-fcf8-4ffe-a2ac-18d8b17aea09-api/scopes/cpp/sdk-15.04.4/unity.scopes.RangeInputFilter/closed.png) Public Member Functions inherited from <a href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a>
void 
<a href="../unity.scopes.FilterBase.md#ab4ab1b600ce3967dc50255e736c6d02e">set_display_hints</a> (int hints)
 
Sets display hints for the Shell UI. More...
 
int 
<a href="../unity.scopes.FilterBase.md#a8f20819591155edaab29d535c5c4c261">display_hints</a> () const
 
Get display hints of this filter. More...
 
std::string 
<a href="../unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a> () const
 
Get the identifier of this filter. More...
 
std::string 
<a href="../unity.scopes.FilterBase.md#aadc7344c951961331dcbe67149d56c78">filter_type</a> () const
 
Get the type name of this filter. More...
 
void 
<a href="../unity.scopes.FilterBase.md#aec8ceae8141811833af087ba2ebe086c">set_title</a> (std::string const &<a href="../unity.scopes.FilterBase.md#a3f0c324b3aac39bb8967fc900f3a909e">title</a>)
 
Set an optional title of this filter. More...
 
std::string 
<a href="../unity.scopes.FilterBase.md#a3f0c324b3aac39bb8967fc900f3a909e">title</a> () const
 
Get the optional title of this filter. More...
 
FilterGroup::SCPtr 
<a href="../unity.scopes.FilterBase.md#afff4685371fe67e6f87f58e31f69a037">filter_group</a> () const
 
Get the filter group this filter belongs to. More...
 
pub-static-methods
--------------------------------------------------------------------

static RangeInputFilter::SPtr 
<a href="#a0717644ec86abcdc9dabf30302fead5d">create</a> (std::string const &<a href="../unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, std::string const &<a href="#a1a4cf761c6bfa2e07eb24b6f584ec05b">start_prefix_label</a>, std::string const &<a href="#a9e2a6ec4e9c06234ee4759dce2644008">start_postfix_label</a>, std::string const &<a href="#a41f517d0071ca0f953c478f8272bf41b">central_label</a>, std::string const &<a href="#a8acb48c94b3e9b6ca228a0e7ebb26ae5">end_prefix_label</a>, std::string const &<a href="#a81dde713bcfb2b2ca24683ba9e808e34">end_postfix_label</a>)
 
Creates a RangeInputFilter. More...
 
static RangeInputFilter::SPtr 
<a href="#af011c6e541e7a3776cccacf88fdba2b5">create</a> (std::string const &<a href="../unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, <a href="unity.scopes.Variant.md">Variant</a> const &<a href="#adf545096dacbea4303361527450321fa">default_start_value</a>, <a href="unity.scopes.Variant.md">Variant</a> const &<a href="#aaf471258f02a8af0f7bfdb186ed61b0e">default_end_value</a>, std::string const &<a href="#a1a4cf761c6bfa2e07eb24b6f584ec05b">start_prefix_label</a>, std::string const &<a href="#a9e2a6ec4e9c06234ee4759dce2644008">start_postfix_label</a>, std::string const &<a href="#a41f517d0071ca0f953c478f8272bf41b">central_label</a>, std::string const &<a href="#a8acb48c94b3e9b6ca228a0e7ebb26ae5">end_prefix_label</a>, std::string const &<a href="#a81dde713bcfb2b2ca24683ba9e808e34">end_postfix_label</a>)
 
Creates a RangeInputFilter with specific default values for start and end. More...
 
static RangeInputFilter::SPtr 
<a href="#aba826b77159d4d51ec804c2132ff0f62">create</a> (std::string const &<a href="../unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, std::string const &<a href="#a1a4cf761c6bfa2e07eb24b6f584ec05b">start_prefix_label</a>, std::string const &<a href="#a9e2a6ec4e9c06234ee4759dce2644008">start_postfix_label</a>, std::string const &<a href="#a41f517d0071ca0f953c478f8272bf41b">central_label</a>, std::string const &<a href="#a8acb48c94b3e9b6ca228a0e7ebb26ae5">end_prefix_label</a>, std::string const &<a href="#a81dde713bcfb2b2ca24683ba9e808e34">end_postfix_label</a>, FilterGroup::SCPtr const &group)
 
Creates a RangeInputFilter inside a FilterGroup. More...
 
static RangeInputFilter::SPtr 
<a href="#ac782e01462c0f1868fca744119da91c6">create</a> (std::string const &<a href="../unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, <a href="unity.scopes.Variant.md">Variant</a> const &<a href="#adf545096dacbea4303361527450321fa">default_start_value</a>, <a href="unity.scopes.Variant.md">Variant</a> const &<a href="#aaf471258f02a8af0f7bfdb186ed61b0e">default_end_value</a>, std::string const &<a href="#a1a4cf761c6bfa2e07eb24b6f584ec05b">start_prefix_label</a>, std::string const &<a href="#a9e2a6ec4e9c06234ee4759dce2644008">start_postfix_label</a>, std::string const &<a href="#a41f517d0071ca0f953c478f8272bf41b">central_label</a>, std::string const &<a href="#a8acb48c94b3e9b6ca228a0e7ebb26ae5">end_prefix_label</a>, std::string const &<a href="#a81dde713bcfb2b2ca24683ba9e808e34">end_postfix_label</a>, FilterGroup::SCPtr const &group)
 
Creates a RangeInputFilter with specific default values for start and end, inside a FilterGroup. More...
 
static void 
<a href="#a7cb0b4523641ea4dec9b3c619f5b9c21">update_state</a> (<a href="unity.scopes.FilterState.md">FilterState</a> &filter\_state, std::string const &filter\_id, <a href="unity.scopes.Variant.md">Variant</a> const &<a href="#afd86208a5f8fe8a81877bd0bf4588758">start_value</a>, <a href="unity.scopes.Variant.md">Variant</a> const &<a href="#af5bee0ddf65a375a4a5e19b4313de940">end_value</a>)
 
Store start and end value in the filter state, without having an instance of RangeInputFilter. More...
 
inherited
---------------------------------------------------------

![-](https://developer.ubuntu.com/static/devportal_uploaded/958ffd4c-28fd-4872-b623-b3625f8b0257-api/scopes/cpp/sdk-15.04.4/unity.scopes.RangeInputFilter/closed.png) Public Types inherited from <a href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a>
enum  
<a href="../unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159">DisplayHints</a> { <a href="../unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f">Default</a> = 0, <a href="../unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56">Primary</a> = 1 }
 
Display hints for the Shell UI. [More...](../unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159)
 
<span id="details"></span>
Detailed Description
--------------------

A range filter allows a start and end value to be entered by the user.

A <a href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> is composed of two input boxes that accept numeric values (both of them optional). The filter can have prefix and/or postfix labels for the start and end value, respectively, plus a single label that is displayed between the two input boxes. The filter can provide defaults for that start and end value, which are used by the UI if the user does not enter explicit values.

Member Function Documentation
-----------------------------

<span id="a41f517d0071ca0f953c478f8272bf41b" class="anchor"></span>
|                                                             |     |     |     |       |
|-------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::RangeInputFilter::central\_label | (   |     | )   | const |

Get the central label for this filter.

Returns  
The central label.

<span id="a0717644ec86abcdc9dabf30302fead5d" class="anchor"></span>
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
<td>RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_prefix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_postfix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>central_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_prefix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_postfix_label</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

Parameters  
|                       |                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------|
| id                    | A unique identifier for the filter that can be used to later identify it among several filters. |
| start\_prefix\_label  | A display label for the input box for the start value, displayed to the left (can be empty).    |
| start\_postfix\_label | A display label for the input box for the start value, displayed to the right (can be empty).   |
| central\_label        | A display label that is displayed between the two input boxes (can be empty).                   |
| end\_prefix\_label    | A display label for the input box for the end value, displayed to the left (can be empty).      |
| end\_postfix\_label   | A display label for the input box for the end value, displayed to the right (can be empty).     |

<!-- -->

Returns  
Instance of <a href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

<span id="af011c6e541e7a3776cccacf88fdba2b5" class="anchor"></span>
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
<td>RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.Variant.md">Variant</a> const &amp; </td>
<td><em>default_start_value</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="unity.scopes.Variant.md">Variant</a> const &amp; </td>
<td><em>default_end_value</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_prefix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_postfix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>central_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_prefix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_postfix_label</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> with specific default values for start and end.

Parameters  
|                       |                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------|
| id                    | A unique identifier for the filter that can be used to later identify it among several filters. |
| default\_start\_value | A default start value (double, int, or null).                                                   |
| default\_end\_value   | A default end value (double, int, or null).                                                     |
| start\_prefix\_label  | A display label for the input box for the start value, displayed to the left (can be empty).    |
| start\_postfix\_label | A display label for the input box for the start value, displayed to the right (can be empty).   |
| central\_label        | A display label displayed between the two input boxes (can be empty).                           |
| end\_prefix\_label    | A display label for the input box for the end value, displayed to the left (can be empty).      |
| end\_postfix\_label   | A display label for the input box for the end value, displayed to the right (can be empty).     |

<!-- -->

Returns  
Instance of <a href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

<span id="aba826b77159d4d51ec804c2132ff0f62" class="anchor"></span>
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
<td>RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_prefix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_postfix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>central_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_prefix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_postfix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>FilterGroup::SCPtr const &amp; </td>
<td><em>group</em> </td>
</tr>
<tr class="even">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> inside a <a href="unity.scopes.FilterGroup.md" title="Groups several filters into an expandable widget in the UI. ">FilterGroup</a>.

Parameters  
|                       |                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------|
| id                    | A unique identifier for the filter that can be used to later identify it among several filters. |
| start\_prefix\_label  | A display label for the input box for the start value, displayed to the left (can be empty).    |
| start\_postfix\_label | A display label for the input box for the start value, displayed to the right (can be empty).   |
| central\_label        | A display label displayed between the two input boxes (can be empty).                           |
| end\_prefix\_label    | A display label for the input box for the end value, displayed to the left (can be empty).      |
| end\_postfix\_label   | A display label for the input box for the end value, displayed to the right (can be empty).     |
| group                 | A filter group this filter should be added to.                                                  |

<!-- -->

Returns  
Instance of <a href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

<span id="ac782e01462c0f1868fca744119da91c6" class="anchor"></span>
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
<td>RangeInputFilter::SPtr unity::scopes::RangeInputFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.Variant.md">Variant</a> const &amp; </td>
<td><em>default_start_value</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="unity.scopes.Variant.md">Variant</a> const &amp; </td>
<td><em>default_end_value</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_prefix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>start_postfix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>central_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_prefix_label</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>end_postfix_label</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>FilterGroup::SCPtr const &amp; </td>
<td><em>group</em> </td>
</tr>
<tr class="even">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a> with specific default values for start and end, inside a <a href="unity.scopes.FilterGroup.md" title="Groups several filters into an expandable widget in the UI. ">FilterGroup</a>.

Parameters  
|                       |                                                                                                 |
|-----------------------|-------------------------------------------------------------------------------------------------|
| id                    | A unique identifier for the filter that can be used to later identify it among several filters. |
| default\_start\_value | The default start value (double, int, or null).                                                 |
| default\_end\_value   | The default end value (double, int, or null).                                                   |
| start\_prefix\_label  | A display label for the input box for the start value, displayed to the left (can be empty).    |
| start\_postfix\_label | A display label for the input box for the start value, displayed to the right (can be empty).   |
| central\_label        | A display label displayed between the two input boxes (can be empty).                           |
| end\_prefix\_label    | A display label for the input box for the end value, displayed to the left (can be empty).      |
| end\_postfix\_label   | A display label for the input box for the end value, displayed to the right (can be empty).     |
| group                 | A filter group this filter should be added to.                                                  |

<!-- -->

Returns  
Instance of <a href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

<span id="aaf471258f02a8af0f7bfdb186ed61b0e" class="anchor"></span>
|                                                                                                                          |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.Variant.md">Variant</a> unity::scopes::RangeInputFilter::default\_end\_value | (   |     | )   | const |

Get default end value if set (int, double or null).

The default value should be used unless a value is present in the <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> - use <a href="#ae459a665a5dae27445547b1c0be8c7c3" title="Check if filter state holds an end value for this filter instance. ">unity::scopes::RangeInputFilter::has_end_value()</a> and <a href="#af5bee0ddf65a375a4a5e19b4313de940" title="Get end value for this filter instance. ">unity::scopes::RangeInputFilter::end_value()</a> before resorting to the default value.

<span id="adf545096dacbea4303361527450321fa" class="anchor"></span>
|                                                                                                                            |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.Variant.md">Variant</a> unity::scopes::RangeInputFilter::default\_start\_value | (   |     | )   | const |

Get the default start value if set (int, double or null).

The default value should be used unless a value is present in the <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> - use <a href="#a64f2c9ff7ed484f49d26f601f30e8616" title="Check if filter state holds a start value for this filter instance. ">unity::scopes::RangeInputFilter::has_start_value()</a> and <a href="#afd86208a5f8fe8a81877bd0bf4588758" title="Get the start value for this filter instance. ">unity::scopes::RangeInputFilter::start_value()</a> before resorting to the default value.

<span id="a81dde713bcfb2b2ca24683ba9e808e34" class="anchor"></span>
|                                                                  |     |     |     |       |
|------------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::RangeInputFilter::end\_postfix\_label | (   |     | )   | const |

Get the postfix label of end value.

Returns  
The postfix label of end value.

<span id="a8acb48c94b3e9b6ca228a0e7ebb26ae5" class="anchor"></span>
|                                                                 |     |     |     |       |
|-----------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::RangeInputFilter::end\_prefix\_label | (   |     | )   | const |

Get the prefix label of end value.

Returns  
The prefix label of end value.

<span id="af5bee0ddf65a375a4a5e19b4313de940" class="anchor"></span>
|                                                    |     |                                                                                      |                 |     |       |
|----------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| double unity::scopes::RangeInputFilter::end\_value | (   | <a href="unity.scopes.FilterState.md">FilterState</a> const &  | *filter\_state* | )   | const |

Get end value for this filter instance.

Returns  
The end value or the default end value if not null.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                                                                |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if the end value is not set and the default end value is null. |

<span id="ae459a665a5dae27445547b1c0be8c7c3" class="anchor"></span>
|                                                       |     |                                                                                      |                 |     |       |
|-------------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| bool unity::scopes::RangeInputFilter::has\_end\_value | (   | <a href="unity.scopes.FilterState.md">FilterState</a> const &  | *filter\_state* | )   | const |

Check if filter state holds an end value for this filter instance.

Parameters  
|               |                       |
|---------------|-----------------------|
| filter\_state | The state of filters. |

<!-- -->

Returns  
`true` if filter\_state has an end value for this filter.

<span id="a64f2c9ff7ed484f49d26f601f30e8616" class="anchor"></span>
|                                                         |     |                                                                                      |                 |     |       |
|---------------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| bool unity::scopes::RangeInputFilter::has\_start\_value | (   | <a href="unity.scopes.FilterState.md">FilterState</a> const &  | *filter\_state* | )   | const |

Check if filter state holds a start value for this filter instance.

Parameters  
|               |                       |
|---------------|-----------------------|
| filter\_state | The state of filters. |

<!-- -->

Returns  
`true` if filter\_state has a start value for this filter.

<span id="a9e2a6ec4e9c06234ee4759dce2644008" class="anchor"></span>
|                                                                    |     |     |     |       |
|--------------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::RangeInputFilter::start\_postfix\_label | (   |     | )   | const |

Get the postfix label of start value.

Returns  
The postfix label of start value.

<span id="a1a4cf761c6bfa2e07eb24b6f584ec05b" class="anchor"></span>
|                                                                   |     |     |     |       |
|-------------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::RangeInputFilter::start\_prefix\_label | (   |     | )   | const |

Get the prefix label of start value.

Returns  
The prefix label of start value.

<span id="afd86208a5f8fe8a81877bd0bf4588758" class="anchor"></span>
|                                                      |     |                                                                                      |                 |     |       |
|------------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| double unity::scopes::RangeInputFilter::start\_value | (   | <a href="unity.scopes.FilterState.md">FilterState</a> const &  | *filter\_state* | )   | const |

Get the start value for this filter instance.

Returns  
The start value or the default start value if not null.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                                                                    |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if the start value is not set and the default start value is null. |

<span id="a5fa97b63d86a89e7144a89e0996d1304" class="anchor"></span>
|                                                     |     |                                                                                |                  |
|-----------------------------------------------------|-----|--------------------------------------------------------------------------------|------------------|
| void unity::scopes::RangeInputFilter::update\_state | (   | <a href="unity.scopes.FilterState.md">FilterState</a> &  | *filter\_state*, |
|                                                     |     | <a href="unity.scopes.Variant.md">Variant</a> const &    | *start\_value*,  |
|                                                     |     | <a href="unity.scopes.Variant.md">Variant</a> const &    | *end\_value*     |
|                                                     | )   |                                                                                | const            |

Store start and end value for this filter in the filter state.

Updates filter\_state with start and end values for this filter instance. Allowed data types for start\_value and end\_value are Variant::Type::Null, Variant::Type::Double and Variant::Type::Int. Integer values are converted to double when returned via <a href="#afd86208a5f8fe8a81877bd0bf4588758" title="Get the start value for this filter instance. ">unity::scopes::RangeInputFilter::start_value()</a> and <a href="#af5bee0ddf65a375a4a5e19b4313de940" title="Get end value for this filter instance. ">unity::scopes::RangeInputFilter::end_value()</a> methods. Pass <a href="../unity.scopes.Variant.md#a2bd2d5425fdec9af9340c22e3b47ac1c" title="Construct a null variant. ">Variant::null()</a> as start\_value or end\_value if that value is unspecified (hasn't been entered or was erased by the user from the input box).

Parameters  
|               |                                                                                                                                               |
|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| filter\_state | <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> instance to update |
| start\_value  | Start value                                                                                                                                   |
| end\_value    | End value                                                                                                                                     |

<span id="a7cb0b4523641ea4dec9b3c619f5b9c21" class="anchor"></span>
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
<td>void unity::scopes::RangeInputFilter::update_state</td>
<td>(</td>
<td><a href="unity.scopes.FilterState.md">FilterState</a> &amp; </td>
<td><em>filter_state</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>filter_id</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="unity.scopes.Variant.md">Variant</a> const &amp; </td>
<td><em>start_value</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.Variant.md">Variant</a> const &amp; </td>
<td><em>end_value</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Store start and end value in the filter state, without having an instance of <a href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>.

Updates filter\_state with start and end values without an instance of <a href="index.html" title="A range filter allows a start and end value to be entered by the user. ">RangeInputFilter</a>. This is meant to be used when creating a <a href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a> that references another scope.

Parameters  
|               |                                                                                                                                               |
|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| filter\_state | <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> instance to update |
| filter\_id    | Unique identifier of filter                                                                                                                   |
| start\_value  | Start value                                                                                                                                   |
| end\_value    | End value                                                                                                                                     |

