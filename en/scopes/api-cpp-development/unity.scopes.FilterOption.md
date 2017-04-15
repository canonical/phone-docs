---
Title: unity.scopes.FilterOption
---
        
FilterOption
============

Holds definition of filter option for <a href="unity.scopes.OptionSelectorFilter.md" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a>. [More...](#details)

`#include <unity/scopes/FilterOption.h>`

pub-methods
------------------------------------------------------

std::string 
<a href="#af85bb24c630335f26a201e5d78af4fec">id</a> () const
 
Get the identifier of this filter option. More...
 
std::string 
<a href="#ac8b998f42e5dd144b235d8a8d1f38ab3">label</a> () const
 
Get the label of this filter option. More...
 
bool 
<a href="#ae202dadd8615a4c416c169f702c4f711">default_value</a> () const
 
Return the default value of this filter option. More...
 
<span id="details"></span>
Detailed Description
--------------------

Holds definition of filter option for <a href="unity.scopes.OptionSelectorFilter.md" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a>.

Member Function Documentation
-----------------------------

<span id="ae202dadd8615a4c416c169f702c4f711" class="anchor"></span>
|                                                  |     |     |     |       |
|--------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::FilterOption::default\_value | (   |     | )   | const |

Return the default value of this filter option.

Returns  
The default value.

<span id="af85bb24c630335f26a201e5d78af4fec" class="anchor"></span>
|                                             |     |     |     |       |
|---------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::FilterOption::id | (   |     | )   | const |

Get the identifier of this filter option.

Returns  
The option identifier.

<span id="ac8b998f42e5dd144b235d8a8d1f38ab3" class="anchor"></span>
|                                                |     |     |     |       |
|------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::FilterOption::label | (   |     | )   | const |

Get the label of this filter option.

Returns  
The option label.

