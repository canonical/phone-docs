---
Title: Accounts.Error
---
        
Error
=====

Base object definition for accounts error handling. [More...](../../sdk-15.04.1/Accounts.Error.md#details)

`#include <Accounts/Error>`

pub-types
-----------------------------------------

enum  
<a href="../../sdk-15.04.1/Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a> {
  **NoError** = 0, **Unknown**, <a href="../../sdk-15.04.1/Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45aa31884bb2cfbd4d8e2d428904eb1c3f98">Database</a>, <a href="../../sdk-15.04.1/Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45aa04ba35ff69a05b2a16733a01fc003d88">Deleted</a>,
  <a href="../../sdk-15.04.1/Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45aa155f5bb6520a1d872efe0563428315bf">DatabaseLocked</a>, <a href="../../sdk-15.04.1/Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45aab49b276755b64c7a63a391e03aebbf49">AccountNotFound</a>
}
 
<a href="../../sdk-15.04.1/Accounts.Error.md" title="Base object definition for accounts error handling. ">Error</a> codes for all the accounts errors. [More...](../../sdk-15.04.1/Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a)
 
pub-methods
------------------------------------------------------

 
<a href="../../sdk-15.04.1/Accounts.Error.md#a17be1abe802fb9ab3acebe900748cf79">Error</a> ()
 
Basic constructor.
 
 
<a href="../../sdk-15.04.1/Accounts.Error.md#abc095ef325fbb7c22399270e62f400ca">Error</a> (const <a href="../../sdk-15.04.1/Accounts.Error.md">Error</a> &src)
 
Copy constructor. More...
 
 
<a href="../../sdk-15.04.1/Accounts.Error.md#a43fd5cb964997186acb7f0297cefd666">Error</a> (<a href="../../sdk-15.04.1/Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a> <a href="../../sdk-15.04.1/Accounts.Error.md#ac3b58ce6dc3ba4cbfbabd9d7d7774567">type</a>, const QString &<a href="../../sdk-15.04.1/Accounts.Error.md#aba2e3009745c37baeaf086e1bc6a3b8d">message</a>=QString())
 
Constructor. More...
 
<a href="../../sdk-15.04.1/Accounts.Error.md">Error</a> & 
<a href="../../sdk-15.04.1/Accounts.Error.md#a25f9ffea919d1d0c265a93df49ee3b32">operator=</a> (const <a href="../../sdk-15.04.1/Accounts.Error.md">Error</a> &src)
 
Assignment operator. More...
 
virtual 
<a href="../../sdk-15.04.1/Accounts.Error.md#a810251c55fc575f642cf343c4413c2b1">~Error</a> ()
 
Destructor.
 
<a href="../../sdk-15.04.1/Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a> 
<a href="../../sdk-15.04.1/Accounts.Error.md#ac3b58ce6dc3ba4cbfbabd9d7d7774567">type</a> () const
 
QString 
<a href="../../sdk-15.04.1/Accounts.Error.md#aba2e3009745c37baeaf086e1bc6a3b8d">message</a> () const
 
<span id="details"></span>
Detailed Description
--------------------

Base object definition for accounts error handling.

Definition at line 42 of file error.h.

Member Enumeration Documentation
--------------------------------

<span id="ab0df38968e4f03a3f1f6d6df0f31f45a" class="anchor"></span>
|                                                                                                                       |
|-----------------------------------------------------------------------------------------------------------------------|
| enum <a href="../../sdk-15.04.1/Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a> |

<a href="../../sdk-15.04.1/Accounts.Error.md" title="Base object definition for accounts error handling. ">Error</a> codes for all the accounts errors.

Enumerator
<span id="ab0df38968e4f03a3f1f6d6df0f31f45aa31884bb2cfbd4d8e2d428904eb1c3f98" class="anchor"></span>Database 
Generic database error

<span id="ab0df38968e4f03a3f1f6d6df0f31f45aa04ba35ff69a05b2a16733a01fc003d88" class="anchor"></span>Deleted 
The account object refers to an account which has been deleted

<span id="ab0df38968e4f03a3f1f6d6df0f31f45aa155f5bb6520a1d872efe0563428315bf" class="anchor"></span>DatabaseLocked 
The database is locked

<span id="ab0df38968e4f03a3f1f6d6df0f31f45aab49b276755b64c7a63a391e03aebbf49" class="anchor"></span>AccountNotFound 
The account couldn't be found

Definition at line 48 of file error.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="abc095ef325fbb7c22399270e62f400ca" class="anchor"></span>
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
<td><a href="../../sdk-15.04.1/Accounts.Error.md">Error</a></td>
<td>(</td>
<td>const <a href="../../sdk-15.04.1/Accounts.Error.md">Error</a> &amp; </td>
<td><em>src</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Copy constructor.

Parameters  
|     |                                                                                                                                                              |
|-----|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| src | <a href="../../sdk-15.04.1/Accounts.Error.md" title="Base object definition for accounts error handling. ">Error</a> object to be copied. |

Definition at line 67 of file error.h.

<span id="a43fd5cb964997186acb7f0297cefd666" class="anchor"></span>
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
<td><a href="../../sdk-15.04.1/Accounts.Error.md">Error</a></td>
<td>(</td>
<td><a href="../../sdk-15.04.1/Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a> </td>
<td><em>type</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>const QString &amp; </td>
<td><em>message</em> = <code>QString()</code> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Constructor.

Parameters  
|         |                      |
|---------|----------------------|
| type    | The error's type.    |
| message | The error's message. |

Definition at line 75 of file error.h.

Member Function Documentation
-----------------------------

<span id="aba2e3009745c37baeaf086e1bc6a3b8d" class="anchor"></span>
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
<td>QString message</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Returns  
The error's message.

Definition at line 99 of file error.h.

Referenced by Error::operator=().

<span id="a25f9ffea919d1d0c265a93df49ee3b32" class="anchor"></span>
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
<td><a href="../../sdk-15.04.1/Accounts.Error.md">Error</a>&amp; operator=</td>
<td>(</td>
<td>const <a href="../../sdk-15.04.1/Accounts.Error.md">Error</a> &amp; </td>
<td><em>src</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Assignment operator.

Parameters  
|     |                                                   |
|-----|---------------------------------------------------|
| src | The error object to be assigned to this instance. |

Definition at line 83 of file error.h.

References Error::message(), and Error::type().

<span id="ac3b58ce6dc3ba4cbfbabd9d7d7774567" class="anchor"></span>
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
<td><a href="../../sdk-15.04.1/Accounts.Error.md#ab0df38968e4f03a3f1f6d6df0f31f45a">ErrorType</a> type</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Returns  
The error's type.

Definition at line 94 of file error.h.

Referenced by Error::operator=().

