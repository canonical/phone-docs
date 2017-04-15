---
Title: unity.scopes.FilterBase
---
        
FilterBase
==========

Base class for all implementations of filters. [More...](#details)

`#include <unity/scopes/FilterBase.h>`

Inheritance diagram for unity::scopes::FilterBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/dff0c7f7-f6e3-4f39-a0ec-f1481831ceb5-api/scopes/cpp/sdk-15.04.4/unity.scopes.FilterBase/classunity_1_1scopes_1_1_filter_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-types
-----------------------------------------

enum  
<a href="#ab9e833d5e4029fed745d15ba63715159">DisplayHints</a> { <a href="#ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f">Default</a> = 0, <a href="#ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56">Primary</a> = 1 }
 
Display hints for the Shell UI. [More...](#ab9e833d5e4029fed745d15ba63715159)
 
pub-methods
------------------------------------------------------

void 
<a href="#ab4ab1b600ce3967dc50255e736c6d02e">set_display_hints</a> (int hints)
 
Sets display hints for the Shell UI. More...
 
int 
<a href="#a8f20819591155edaab29d535c5c4c261">display_hints</a> () const
 
Get display hints of this filter. More...
 
std::string 
<a href="#a1f2d96647b23af77b1ff1cffc80f3868">id</a> () const
 
Get the identifier of this filter. More...
 
std::string 
<a href="#aadc7344c951961331dcbe67149d56c78">filter_type</a> () const
 
Get the type name of this filter. More...
 
void 
<a href="#aec8ceae8141811833af087ba2ebe086c">set_title</a> (std::string const &<a href="#a3f0c324b3aac39bb8967fc900f3a909e">title</a>)
 
Set an optional title of this filter. More...
 
std::string 
<a href="#a3f0c324b3aac39bb8967fc900f3a909e">title</a> () const
 
Get the optional title of this filter. More...
 
FilterGroup::SCPtr 
<a href="#afff4685371fe67e6f87f58e31f69a037">filter_group</a> () const
 
Get the filter group this filter belongs to. More...
 
<span id="details"></span>
Detailed Description
--------------------

Base class for all implementations of filters.

All implementations of <a href="index.html" title="Base class for all implementations of filters. ">FilterBase</a> define the "look" of a filter in the UI and do not hold any state information. The actual state of a filters is kept by a <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> object.

Member Enumeration Documentation
--------------------------------

<span id="ab9e833d5e4029fed745d15ba63715159" class="anchor"></span>
|                                                                                                                    |
|--------------------------------------------------------------------------------------------------------------------|
| enum <a href="#ab9e833d5e4029fed745d15ba63715159">unity::scopes::FilterBase::DisplayHints</a> |

Display hints for the Shell UI.

Enumerator
<span id="ab9e833d5e4029fed745d15ba63715159a277f24de7d0bcc7e8ec8bfe0639f356f" class="anchor"></span>Default 
Default value (no hint)

<span id="ab9e833d5e4029fed745d15ba63715159a8c8262ffd071c61b213ec489b64bdf56" class="anchor"></span>Primary 
Display this filter as a primary navigation, if possible. Currently only the <a href="unity.scopes.OptionSelectorFilter.md" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a> can act as primary navigation.

Member Function Documentation
-----------------------------

<span id="a8f20819591155edaab29d535c5c4c261" class="anchor"></span>
|                                               |     |     |     |       |
|-----------------------------------------------|-----|-----|-----|-------|
| int unity::scopes::FilterBase::display\_hints | (   |     | )   | const |

Get display hints of this filter.

Returns  
Display hints flags.

<span id="afff4685371fe67e6f87f58e31f69a037" class="anchor"></span>
|                                                             |     |     |     |       |
|-------------------------------------------------------------|-----|-----|-----|-------|
| FilterGroup::SCPtr unity::scopes::FilterBase::filter\_group | (   |     | )   | const |

Get the filter group this filter belongs to.

Returns  
The filter group (or null)

<span id="aadc7344c951961331dcbe67149d56c78" class="anchor"></span>
|                                                     |     |     |     |       |
|-----------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::FilterBase::filter\_type | (   |     | )   | const |

Get the type name of this filter.

Returns  
The filter type string.

<span id="a1f2d96647b23af77b1ff1cffc80f3868" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::FilterBase::id | (   |     | )   | const |

Get the identifier of this filter.

Returns  
The filter id.

<span id="ab4ab1b600ce3967dc50255e736c6d02e" class="anchor"></span>
|                                                     |     |      |         |     |     |
|-----------------------------------------------------|-----|------|---------|-----|-----|
| void unity::scopes::FilterBase::set\_display\_hints | (   | int  | *hints* | )   |     |

Sets display hints for the Shell UI.

Parameters  
|       |                                                |
|-------|------------------------------------------------|
| hints | A combination of DisplayHints for this filter. |

<!-- -->

Exceptions  
|                                 |                                                             |
|---------------------------------|-------------------------------------------------------------|
| unity::InvalidArgumentException | if given hints value is unsupported by current filter type. |

<span id="aec8ceae8141811833af087ba2ebe086c" class="anchor"></span>
|                                            |     |                      |         |     |     |
|--------------------------------------------|-----|----------------------|---------|-----|-----|
| void unity::scopes::FilterBase::set\_title | (   | std::string const &  | *title* | )   |     |

Set an optional title of this filter.

Parameters  
|       |            |
|-------|------------|
| title | The title. |

<span id="a3f0c324b3aac39bb8967fc900f3a909e" class="anchor"></span>
|                                              |     |     |     |       |
|----------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::FilterBase::title | (   |     | )   | const |

Get the optional title of this filter.

Returns  
Filter title (can be empty).

