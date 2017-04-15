---
Title: unity.scopes.FilterState
---
        
FilterState
===========

Stores the state of multiple filters. [More...](#details)

`#include <unity/scopes/FilterState.h>`

pub-methods
------------------------------------------------------

 
<a href="#a766de68bf8b5c99774dcd2f2e7e2ed39">FilterState</a> ()
 
Constructs a an empty filter state instance.
 
bool 
<a href="#a7c624fcc70cf767fdb6d6dc54e8a5015">has_filter</a> (std::string const &id) const
 
Check if state for the given filter has been stored. More...
 
void 
<a href="#a15c5759e79b6c75fcdd2cf802b6ffac2">remove</a> (std::string const &id)
 
Removes the state for a specific filter. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**FilterState** (<a href="index.html">FilterState</a> const &other)
 
 
**FilterState** (<a href="index.html">FilterState</a> &&)
 
<a href="index.html">FilterState</a> & 
**operator=** (<a href="index.html">FilterState</a> const &other)
 
<a href="index.html">FilterState</a> & 
**operator=** (<a href="index.html">FilterState</a> &&other)
 
<span id="details"></span>
Detailed Description
--------------------

Stores the state of multiple filters.

The state can be examined by passing an instance of <a href="index.html" title="Stores the state of multiple filters. ">FilterState</a> to the appropriate methods of classes derived from <a href="unity.scopes.FilterBase.md" title="Base class for all implementations of filters. ">FilterBase</a>.

Member Function Documentation
-----------------------------

<span id="a7c624fcc70cf767fdb6d6dc54e8a5015" class="anchor"></span>
|                                              |     |                      |      |     |       |
|----------------------------------------------|-----|----------------------|------|-----|-------|
| bool unity::scopes::FilterState::has\_filter | (   | std::string const &  | *id* | )   | const |

Check if state for the given filter has been stored.

Returns  
True if state for a filter with the given ID is present; false otherwise.

<span id="a15c5759e79b6c75fcdd2cf802b6ffac2" class="anchor"></span>
|                                         |     |                      |      |     |     |
|-----------------------------------------|-----|----------------------|------|-----|-----|
| void unity::scopes::FilterState::remove | (   | std::string const &  | *id* | )   |     |

Removes the state for a specific filter.

Parameters  
|     |                                       |
|-----|---------------------------------------|
| id  | The identity of the filter to remove. |

