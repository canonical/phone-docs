---
Title: unity.scopes.ChildScope
---
        
ChildScope
==========

A container for details about an aggregator's child scope. [More...](#details)

`#include <unity/scopes/ChildScope.h>`

pub-methods
------------------------------------------------------

 
<a href="#a53d12d33536c16052f7a086e7d71e0de">ChildScope</a> (std::string const &<a href="#a38d1886c0459736186d6b9be548c75f5">id</a>, <a href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> const &<a href="#aade25bfd5f842dacbfc068d2ede3818e">metadata</a>, bool <a href="#aec9331d1f603d0a8eb77fafa59e1e829">enabled</a>=true, std::set&lt; std::string &gt; const &<a href="#a728e308053d201dfb321f2ba49e4cdc8">keywords</a>={})
 
Construct a new ChildScope with the specified id, metadata, enabled state and keywords list. More...
 
pub-attribs
------------------------------------------------

std::string 
<a href="#a38d1886c0459736186d6b9be548c75f5">id</a>
 
The scope id of this child scope.
 
<a href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> 
<a href="#aade25bfd5f842dacbfc068d2ede3818e">metadata</a>
 
The scope metadata of this child scope.
 
bool 
<a href="#aec9331d1f603d0a8eb77fafa59e1e829">enabled</a>
 
Whether this child scope should be aggregated.
 
std::set&lt; std::string &gt; 
<a href="#a728e308053d201dfb321f2ba49e4cdc8">keywords</a>
 
The list of keywords used to aggregate this scope (if any).
 
<span id="details"></span>
Detailed Description
--------------------

A container for details about an aggregator's child scope.

Constructor & Destructor Documentation
--------------------------------------

<span id="a53d12d33536c16052f7a086e7d71e0de" class="anchor"></span>
|                                       |     |                                                                                          |                     |
|---------------------------------------|-----|------------------------------------------------------------------------------------------|---------------------|
| unity::scopes::ChildScope::ChildScope | (   | std::string const &                                                                      | *id*,               |
|                                       |     | <a href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> const &  | *metadata*,         |
|                                       |     | bool                                                                                     | *enabled* = `true`, |
|                                       |     | std::set&lt; std::string &gt; const &                                                    | *keywords* = `{}`   |
|                                       | )   |                                                                                          |                     |

Construct a new <a href="index.html" title="A container for details about an aggregator&#39;s child scope. ">ChildScope</a> with the specified id, metadata, enabled state and keywords list.

Parameters  
|          |                                                             |
|----------|-------------------------------------------------------------|
| id       | The scope id of this child scope.                           |
| metadata | The scope metadata of this child scope.                     |
| enabled  | Whether this child scope should be aggregated.              |
| keywords | The list of keywords used to aggregate this scope (if any). |

