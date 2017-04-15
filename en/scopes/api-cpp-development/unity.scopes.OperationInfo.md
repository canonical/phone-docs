---
Title: unity.scopes.OperationInfo
---
        
OperationInfo
=============

A container for details about something of interest that occurs during the operation of a request. [More...](#details)

`#include <unity/scopes/OperationInfo.h>`

pub-types
-----------------------------------------

enum  
<a href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a> {
  **Unknown**, **NoInternet**, **PoorInternet**, **NoLocationData**,
  **InaccurateLocationData**, **ResultsIncomplete**, **DefaultSettingsUsed**, **SettingsProblem**,
  **LastInfoCode\_** = SettingsProblem
}
 
Indicates the type of / cause for the information being reported. [More...](#a57178085d8ea6d116347b8fa3fe8878d)
 
pub-methods
------------------------------------------------------

 
<a href="#a38875517344af4ca90565cc523af918b">OperationInfo</a> (<a href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a> <a href="#a7e00ec86a3a0974df981146cea0202f9">code</a>)
 
Create OperationInfo with the given info code. More...
 
 
<a href="#a711cd4c4d7ca4a4ff884b81440fd3934">OperationInfo</a> (<a href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a> <a href="#a7e00ec86a3a0974df981146cea0202f9">code</a>, std::string <a href="#a2676a34824fc6c2481dbc30836d7ebf2">message</a>)
 
Create OperationInfo with the given info code and message. More...
 
<a href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a> 
<a href="#a7e00ec86a3a0974df981146cea0202f9">code</a> () const noexcept
 
Get the info code. More...
 
std::string 
<a href="#a2676a34824fc6c2481dbc30836d7ebf2">message</a> () const
 
Get the message string. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**OperationInfo** (<a href="index.html">OperationInfo</a> const &other)
 
 
**OperationInfo** (<a href="index.html">OperationInfo</a> &&)
 
<a href="index.html">OperationInfo</a> & 
**operator=** (<a href="index.html">OperationInfo</a> const &other)
 
<a href="index.html">OperationInfo</a> & 
**operator=** (<a href="index.html">OperationInfo</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

A container for details about something of interest that occurs during the operation of a request.

Member Enumeration Documentation
--------------------------------

<span id="a57178085d8ea6d116347b8fa3fe8878d" class="anchor"></span>
|                                                                                                                   |
|-------------------------------------------------------------------------------------------------------------------|
| enum <a href="#a57178085d8ea6d116347b8fa3fe8878d">unity::scopes::OperationInfo::InfoCode</a> |

Indicates the type of / cause for the information being reported.

For example, the `NoInternet` enumerator may indicate that access to the internet was required in order to properly evaluate a request, but no internet connectivity was available.

Constructor & Destructor Documentation
--------------------------------------

<span id="a38875517344af4ca90565cc523af918b" class="anchor"></span>
|                                             |     |                                                                                 |        |     |     |
|---------------------------------------------|-----|---------------------------------------------------------------------------------|--------|-----|-----|
| unity::scopes::OperationInfo::OperationInfo | (   | <a href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a>  | *code* | )   |     |

Create <a href="index.html" title="A container for details about something of interest that occurs during the operation of a request...">OperationInfo</a> with the given info code.

Parameters  
|      |                                                    |
|------|----------------------------------------------------|
| code | Indicates the type of / cause for the information. |

<span id="a711cd4c4d7ca4a4ff884b81440fd3934" class="anchor"></span>
|                                             |     |                                                                                 |            |
|---------------------------------------------|-----|---------------------------------------------------------------------------------|------------|
| unity::scopes::OperationInfo::OperationInfo | (   | <a href="#a57178085d8ea6d116347b8fa3fe8878d">InfoCode</a>  | *code*,    |
|                                             |     | std::string                                                                     | *message*  |
|                                             | )   |                                                                                 |            |

Create <a href="index.html" title="A container for details about something of interest that occurs during the operation of a request...">OperationInfo</a> with the given info code and message.

Parameters  
|         |                                                    |
|---------|----------------------------------------------------|
| code    | Indicates the type of / cause for the information. |
| message | Contains further details about the info code.      |

Member Function Documentation
-----------------------------

<span id="a7e00ec86a3a0974df981146cea0202f9" class="anchor"></span>
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
<td><a href="#a57178085d8ea6d116347b8fa3fe8878d">OperationInfo::InfoCode</a> unity::scopes::OperationInfo::code</td>
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

Get the info code.

Returns  
Enum indicating the type of info contained.

<span id="a2676a34824fc6c2481dbc30836d7ebf2" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::OperationInfo::message | (   |     | )   | const |

Get the message string.

Returns  
The message string.

