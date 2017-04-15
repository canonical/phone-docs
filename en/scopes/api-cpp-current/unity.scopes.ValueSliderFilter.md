---
Title: unity.scopes.ValueSliderFilter
---
        
ValueSliderFilter
=================

A value slider filter that allows for selecting a value within a given range. [More...](#details)

`#include <unity/scopes/ValueSliderFilter.h>`

Inheritance diagram for unity::scopes::ValueSliderFilter:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/4f1b7e5d-7fce-4dd0-9519-17450027688c-api/scopes/cpp/sdk-15.04.4/unity.scopes.ValueSliderFilter/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

void 
<a href="#ac868b40a91520b9a56c2ed98152f1a1a">set_default_value</a> (double val)
 
Change the default value of this filter. More...
 
double 
<a href="#a32344819474a1ef0956f63e87fb047a4">default_value</a> () const
 
Get the default value of this filter. More...
 
double 
<a href="#ab6a8d69f025709d3ee09d7cb362eba03">min</a> () const
 
Get the minimum allowed value. More...
 
double 
<a href="#a5e2e527d77390dc02db1bd1cbdce6460">max</a> () const
 
Get the maximum allowed value. More...
 
bool 
<a href="#a9a113cc7fbda26aed161067fb7892119">has_value</a> (<a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state) const
 
Check if filter state object holds a value of this filter. More...
 
double 
<a href="#a7a81dec2e0595cf95effa6f9f24259ba">value</a> (<a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state) const
 
Get value of this filter from filter state object. More...
 
<a href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const & 
<a href="#a6dc105b666f967fa6a9bbf2eca2ee9dc">labels</a> () const
 
Get value labeles for this slider filter. More...
 
void 
<a href="#a5b336122dcab4ed78974badb9016e622">update_state</a> (<a href="unity.scopes.FilterState.md">FilterState</a> &filter\_state, double <a href="#a7a81dec2e0595cf95effa6f9f24259ba">value</a>) const
 
Sets value of this filter instance in filter state object. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/2cd3cc1b-9b4e-4eaa-9a04-9cdc5974cb51-api/scopes/cpp/sdk-15.04.4/unity.scopes.ValueSliderFilter/closed.png) Public Member Functions inherited from <a href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a>
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

static ValueSliderFilter::UPtr 
<a href="#a5828d2bf89830af47ac5b2cd53cd4e57">create</a> (std::string const &<a href="../unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, double <a href="#ab6a8d69f025709d3ee09d7cb362eba03">min</a>, double <a href="#a5e2e527d77390dc02db1bd1cbdce6460">max</a>, double <a href="#a32344819474a1ef0956f63e87fb047a4">default_value</a>, <a href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const &value\_labels)
 
Create ValueSliderFilter. More...
 
static ValueSliderFilter::UPtr 
<a href="#accaaa9011772ba4f297cb245b3d24738">create</a> (std::string const &<a href="../unity.scopes.FilterBase.md#a1f2d96647b23af77b1ff1cffc80f3868">id</a>, double <a href="#ab6a8d69f025709d3ee09d7cb362eba03">min</a>, double <a href="#a5e2e527d77390dc02db1bd1cbdce6460">max</a>, double <a href="#a32344819474a1ef0956f63e87fb047a4">default_value</a>, <a href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const &value\_labels, FilterGroup::SCPtr const &group)
 
Create ValueSliderFilter inside a FilterGroup. More...
 
static void 
<a href="#ae72a0d0a94095bd3d2fb6950a2c9221e">update_state</a> (<a href="unity.scopes.FilterState.md">FilterState</a> &filter\_state, std::string const &filter\_id, double <a href="#a7a81dec2e0595cf95effa6f9f24259ba">value</a>)
 
Sets value of this filter instance in filter state object, without having an instance of ValueSliderFilter. More...
 
inherited
---------------------------------------------------------

![-](https://developer.ubuntu.com/static/devportal_uploaded/c2c9a077-bd14-4e80-b7d3-86c38b41f153-api/scopes/cpp/sdk-15.04.4/unity.scopes.ValueSliderFilter/closed.png) Public Types inherited from <a href="unity.scopes.FilterBase.md">unity::scopes::FilterBase</a>
enum  
<a href="../unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159">DisplayHints</a> { <a href="../unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f">Default</a> = 0, <a href="../unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56">Primary</a> = 1 }
 
Display hints for the Shell UI. [More...](../unity.scopes.FilterBase.md#ab9e833d5e4029fed745d15ba63715159)
 
<span id="details"></span>
Detailed Description
--------------------

A value slider filter that allows for selecting a value within a given range.

The <a href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> allows for selecting a value within a range defined by minimum and maximum values. Both minimum and maximum values can have labels and, in addition, the scope may provide extra labels to mark other values from that range - these label will serve as a guidance to the user.

Member Function Documentation
-----------------------------

<span id="a5828d2bf89830af47ac5b2cd53cd4e57" class="anchor"></span>
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
<td>ValueSliderFilter::UPtr unity::scopes::ValueSliderFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>double </td>
<td><em>min</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>double </td>
<td><em>max</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>double </td>
<td><em>default_value</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const &amp; </td>
<td><em>value_labels</em> </td>
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

Create <a href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>.

Creates <a href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> of ValueSliderFilter::SliderType::LessThan type.

Parameters  
|                |                                                                                                 |
|----------------|-------------------------------------------------------------------------------------------------|
| id             | A unique identifier for the filter that can be used to later identify it among several filters. |
| min            | The minimum allowed value                                                                       |
| max            | The maximum allowed value                                                                       |
| default\_value | The default value of this filter, from the min..max range.                                      |
| value\_labels  | The labels for min and max values as well as optional extra labels.                             |

<!-- -->

Returns  
Instance of <a href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>.

<!-- -->

Exceptions  
|                       |                                                         |
|-----------------------|---------------------------------------------------------|
| unity::LogicException | on invalid (min, max) range or erroneous value\_labels. |

<span id="accaaa9011772ba4f297cb245b3d24738" class="anchor"></span>
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
<td>ValueSliderFilter::UPtr unity::scopes::ValueSliderFilter::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>double </td>
<td><em>min</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>double </td>
<td><em>max</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>double </td>
<td><em>default_value</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const &amp; </td>
<td><em>value_labels</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>FilterGroup::SCPtr const &amp; </td>
<td><em>group</em> </td>
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

Create <a href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> inside a <a href="unity.scopes.FilterGroup.md" title="Groups several filters into an expandable widget in the UI. ">FilterGroup</a>.

Creates <a href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> of ValueSliderFilter::SliderType::LessThan type.

Parameters  
|                |                                                                                                 |
|----------------|-------------------------------------------------------------------------------------------------|
| id             | A unique identifier for the filter that can be used to later identify it among several filters. |
| min            | The minimum allowed value                                                                       |
| max            | The maximum allowed value                                                                       |
| default\_value | The default value of this filter, from the min..max range.                                      |
| value\_labels  | The labels for min and max values as well as optional extra labels.                             |
| group          | A filter group this filter should be added to.                                                  |

<!-- -->

Returns  
Instance of <a href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>.

<!-- -->

Exceptions  
|                       |                                                         |
|-----------------------|---------------------------------------------------------|
| unity::LogicException | on invalid (min, max) range or erroneous value\_labels. |

<span id="a32344819474a1ef0956f63e87fb047a4" class="anchor"></span>
|                                                         |     |     |     |       |
|---------------------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::ValueSliderFilter::default\_value | (   |     | )   | const |

Get the default value of this filter.

The default value will be used by the shell if no value is present for this filter in the <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">unity::scopes::FilterState</a> (no value has been set by the user).

Returns  
The default value

<span id="a9a113cc7fbda26aed161067fb7892119" class="anchor"></span>
|                                                   |     |                                                                                      |                 |     |       |
|---------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| bool unity::scopes::ValueSliderFilter::has\_value | (   | <a href="unity.scopes.FilterState.md">FilterState</a> const &  | *filter\_state* | )   | const |

Check if filter state object holds a value of this filter.

Returns  
true if filter\_state has a value of this filter.

<span id="a6dc105b666f967fa6a9bbf2eca2ee9dc" class="anchor"></span>
|                                                                                                                                          |     |     |     |       |
|------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> const & unity::scopes::ValueSliderFilter::labels | (   |     | )   | const |

Get value labeles for this slider filter.

Returns  
the value labels.

<span id="a5e2e527d77390dc02db1bd1cbdce6460" class="anchor"></span>
|                                              |     |     |     |       |
|----------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::ValueSliderFilter::max | (   |     | )   | const |

Get the maximum allowed value.

Returns  
maximum value

<span id="ab6a8d69f025709d3ee09d7cb362eba03" class="anchor"></span>
|                                              |     |     |     |       |
|----------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::ValueSliderFilter::min | (   |     | )   | const |

Get the minimum allowed value.

Returns  
mimimum value

<span id="ac868b40a91520b9a56c2ed98152f1a1a" class="anchor"></span>
|                                                            |     |         |       |     |     |
|------------------------------------------------------------|-----|---------|-------|-----|-----|
| void unity::scopes::ValueSliderFilter::set\_default\_value | (   | double  | *val* | )   |     |

Change the default value of this filter.

The default value will be used by the shell if no value is present for this filter in the <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">unity::scopes::FilterState</a> (no value has been set by the user).

Parameters  
|     |                        |
|-----|------------------------|
| val | The new default value. |

<span id="a5b336122dcab4ed78974badb9016e622" class="anchor"></span>
|                                                      |     |                                                                                |                  |
|------------------------------------------------------|-----|--------------------------------------------------------------------------------|------------------|
| void unity::scopes::ValueSliderFilter::update\_state | (   | <a href="unity.scopes.FilterState.md">FilterState</a> &  | *filter\_state*, |
|                                                      |     | double                                                                         | *value*          |
|                                                      | )   |                                                                                | const            |

Sets value of this filter instance in filter state object.

This is meant to be used to modify a <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> received with a search request before sending it back to the client (UI shell).

Exceptions  
|                       |                                      |
|-----------------------|--------------------------------------|
| unity::LogicException | if value is out of (min, max) range. |

<span id="ae72a0d0a94095bd3d2fb6950a2c9221e" class="anchor"></span>
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
<td>void unity::scopes::ValueSliderFilter::update_state</td>
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
<td>double </td>
<td><em>value</em> </td>
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

Sets value of this filter instance in filter state object, without having an instance of <a href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>.

Updates an instance of <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a>, without the need for an <a href="index.html" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> instance. This is meant to be used when creating a canned Query that references another scope.

<span id="a7a81dec2e0595cf95effa6f9f24259ba" class="anchor"></span>
|                                                |     |                                                                                      |                 |     |       |
|------------------------------------------------|-----|--------------------------------------------------------------------------------------|-----------------|-----|-------|
| double unity::scopes::ValueSliderFilter::value | (   | <a href="unity.scopes.FilterState.md">FilterState</a> const &  | *filter\_state* | )   | const |

Get value of this filter from filter state object.

Returns  
value of this filter or the default value if value is not present in the filter\_state.

