---
Title: Ubuntu.OnlineAccounts.Manager
---
        
Manager
=======

<span class="subtitle"></span>
The account manager More...

|                   |                                  |
|-------------------|----------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts 0.1 |

<span id="methods"></span>
Methods
-------

-   object ****[createAccount](#createAccount-method)****(string *providerName*)
-   object ****[loadAccount](#loadAccount-method)****(uint *accountId*)

<span id="details"></span>
Detailed Description
--------------------

The Manager element is a singleton class which can be used to create new online accounts or load existing ones.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createAccount-method"></span><span class="type">object</span> <span class="name">createAccount</span>(<span class="type">string</span> <em>providerName</em>)</p></td>
</tr>
</tbody>
</table>

Create a new account interfacing to the provider identified by *providerName*.

**See also** [loadAccount()](#loadAccount-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loadAccount-method"></span><span class="type">object</span> <span class="name">loadAccount</span>(<span class="type">uint</span> <em>accountId</em>)</p></td>
</tr>
</tbody>
</table>

Loads the account identified by *accountId*. The returned object can be used to instantiate an [Account](../Ubuntu.OnlineAccounts.Account.md).

**See also** [createAccount()](#createAccount-method).

