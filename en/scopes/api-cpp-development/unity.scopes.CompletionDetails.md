---
Title: unity.scopes.CompletionDetails
---
        
CompletionDetails
=================

A container for details about the completion status of a query as well as any additional information regarding the operation of the request. [More...](#details)

`#include <unity/scopes/CompletionDetails.h>`

pub-types
-----------------------------------------

enum  
<a href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a> { **OK**, **Cancelled**, **Error** }
 
Indicates the completion status for a query. [More...](#a38cbf8502d92a411d1c6ac5d1bd6ee1c)
 
pub-methods
------------------------------------------------------

 
<a href="#a7d7e63b4ef6a1286bfd9746efd58e926">CompletionDetails</a> (<a href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a> <a href="#ad9fdc4fb9b50a64bf29b0427e48c8c07">status</a>)
 
Create CompletionDetails with the given completion status. More...
 
 
<a href="#af85a27d3c36fc776f234712dcb4da55c">CompletionDetails</a> (<a href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a> <a href="#ad9fdc4fb9b50a64bf29b0427e48c8c07">status</a>, std::string const &<a href="#a08cb1da4948495694ef4f131e3f53bce">message</a>)
 
Create CompletionDetails with the given completion status and message. More...
 
<a href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a> 
<a href="#ad9fdc4fb9b50a64bf29b0427e48c8c07">status</a> () const noexcept
 
Get the completion status. More...
 
std::string 
<a href="#a08cb1da4948495694ef4f131e3f53bce">message</a> () const
 
Get the completion message string. More...
 
void 
<a href="#af296751d26e25283e7287efaaf01878b">add_info</a> (<a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &info)
 
Add additional operation info to the info list. More...
 
std::vector&lt; <a href="unity.scopes.OperationInfo.md">OperationInfo</a> &gt; 
<a href="#ad1d378fbd9600558920faafbe08e5f74">info_list</a> () const
 
Get a list of all additional operation info. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**CompletionDetails** (<a href="index.html">CompletionDetails</a> const &other)
 
 
**CompletionDetails** (<a href="index.html">CompletionDetails</a> &&)
 
<a href="index.html">CompletionDetails</a> & 
**operator=** (<a href="index.html">CompletionDetails</a> const &other)
 
<a href="index.html">CompletionDetails</a> & 
**operator=** (<a href="index.html">CompletionDetails</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

A container for details about the completion status of a query as well as any additional information regarding the operation of the request.

Member Enumeration Documentation
--------------------------------

<span id="a38cbf8502d92a411d1c6ac5d1bd6ee1c" class="anchor"></span>
|                                                                                                                               |
|-------------------------------------------------------------------------------------------------------------------------------|
| enum <a href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">unity::scopes::CompletionDetails::CompletionStatus</a> |

Indicates the completion status for a query.

The `Error` enumerator indicates that a query terminated abnormally, for example, a scope could not be reached over the network or explicitly reported an error.

Constructor & Destructor Documentation
--------------------------------------

<span id="a7d7e63b4ef6a1286bfd9746efd58e926" class="anchor"></span>
|                                                     |     |                                                                                         |          |     |     |
|-----------------------------------------------------|-----|-----------------------------------------------------------------------------------------|----------|-----|-----|
| unity::scopes::CompletionDetails::CompletionDetails | (   | <a href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a>  | *status* | )   |     |

Create <a href="index.html" title="A container for details about the completion status of a query as well as any additional information ...">CompletionDetails</a> with the given completion status.

Parameters  
|        |                                               |
|--------|-----------------------------------------------|
| status | Indicates the completion status of the query. |

<span id="af85a27d3c36fc776f234712dcb4da55c" class="anchor"></span>
|                                                     |     |                                                                                         |            |
|-----------------------------------------------------|-----|-----------------------------------------------------------------------------------------|------------|
| unity::scopes::CompletionDetails::CompletionDetails | (   | <a href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionStatus</a>  | *status*,  |
|                                                     |     | std::string const &                                                                     | *message*  |
|                                                     | )   |                                                                                         |            |

Create <a href="index.html" title="A container for details about the completion status of a query as well as any additional information ...">CompletionDetails</a> with the given completion status and message.

Parameters  
|         |                                                       |
|---------|-------------------------------------------------------|
| status  | Indicates the completion status of the query.         |
| message | Contains further details about the completion status. |

Member Function Documentation
-----------------------------

<span id="af296751d26e25283e7287efaaf01878b" class="anchor"></span>
|                                                  |     |                                                                                          |        |     |     |
|--------------------------------------------------|-----|------------------------------------------------------------------------------------------|--------|-----|-----|
| void unity::scopes::CompletionDetails::add\_info | (   | <a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &  | *info* | )   |     |

Add additional operation info to the info list.

Parameters  
|      |                                                                                           |
|------|-------------------------------------------------------------------------------------------|
| info | Contains details about something of interest that occurs during the operation of a query. |

<span id="ad1d378fbd9600558920faafbe08e5f74" class="anchor"></span>
|                                                                                                                                                   |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| std::vector&lt; <a href="unity.scopes.OperationInfo.md">OperationInfo</a> &gt; unity::scopes::CompletionDetails::info\_list | (   |     | )   | const |

Get a list of all additional operation info.

Returns  
List containing additional information regarding the operation of the query.

<span id="a08cb1da4948495694ef4f131e3f53bce" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::CompletionDetails::message | (   |     | )   | const |

Get the completion message string.

Returns  
The completion message string.

<span id="ad9fdc4fb9b50a64bf29b0427e48c8c07" class="anchor"></span>
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
<td><a href="#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionDetails::CompletionStatus</a> unity::scopes::CompletionDetails::status</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the completion status.

Returns  
Enum indicating the completion status of the query.

