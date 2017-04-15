---
Title: ScopeJS.Result
---
        
Result
======

The attributes of a result returned by a Scope The Result API provides convenience methods for some typical attributes (title, art), but scopes are free to add and use any custom attributes with set/get methods. The only required attribute is 'uri' and it must not be empty before calling Reply.push().

-   Methods

<span id="art"></span>
String **`art`**( `  ` )
Get the "art" property of this Result

**Returns:** &lt;String&gt;

<span id="contains"></span>
Boolean **`contains`**( `  ` )
Check if this Result has an attribute

**Returns:** &lt;Boolean&gt;

<span id="direct_activation"></span>
Boolean **`direct_activation`**( `  ` )
Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result

**Returns:** &lt;Boolean&gt;

<span id="dnd_uri"></span>
String **`dnd_uri`**( `  ` )
Get the "dnd\_uri" property of this Result

**Returns:** &lt;String&gt;

<span id="get"></span>
String **`get`**( `key ` )
Get the value of an attribute

**Parameters:**
-   `key` **&lt;String&gt;**

**Returns:** &lt;String&gt;
, {Number} or {Object}

<span id="has_stored_result"></span>
Boolean **`has_stored_result`**( `  ` )
Check if this Result instance has a stored result

**Returns:** &lt;Boolean&gt;

<span id="retrieve"></span>
<a href="index.html" class="crosslink">Result</a> **`retrieve`**( `  ` )
Get a stored result

**Returns:** &lt;<a href="index.html" class="crosslink">Result</a>&gt;

<span id="set"></span>
**`set`**( `key, value ` )
Set the value of an attribute

**Parameters:**
-   `key` **&lt;String&gt;**
-   `value` **&lt;String&gt;**

<span id="set_art"></span>
**`set_art`**( `art ` )
Set the "art" attribute of this result.

**Parameters:**
-   `art` **&lt;String&gt;**

<span id="set_dnd_uri"></span>
**`set_dnd_uri`**( `dnd_uri ` )
Set the "dnd\_uri" attribute of this result.

**Parameters:**
-   `dnd_uri` **&lt;String&gt;**

<span id="set_intercept_activation"></span>
**`set_intercept_activation`**( `  ` )
Indicates to the receiver that this scope should intercept activation requests for this result

<span id="set_title"></span>
**`set_title`**( `title ` )
Set the "title" attribute of this result.

**Parameters:**
-   `title` **&lt;String&gt;**

<span id="set_uri"></span>
**`set_uri`**( `uri ` )
Set the "uri" attribute of this result.

**Parameters:**
-   `uri` **&lt;String&gt;**

<span id="title"></span>
String **`title`**( `  ` )
Get the "title" property of this Result

**Returns:** &lt;String&gt;

<span id="uri"></span>
String **`uri`**( `  ` )
Get the "uri" property of this Result

**Returns:** &lt;String&gt;

<span id="value"></span>
Dictonary **`value`**( `value ` )
Get the value of an attribute

**Parameters:**
-   `value` **&lt;String&gt;**

**Returns:** &lt;Dictonary&gt;

