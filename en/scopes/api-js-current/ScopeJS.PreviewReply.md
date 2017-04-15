---
Title: ScopeJS.PreviewReply
---
        
PreviewReply
============

Allows the results of a preview to be sent to the preview requester.

-   Methods

<span id="error"></span>
**`error`**( `  ` )
Informs the source of a query that the query was terminated due to an error

**Returns:**
error String error

<span id="finished"></span>
**`finished`**( `  ` )
Informs the source of a query that the query results are complete

**Returns:**
Boolean

<span id="push"></span>
**`push`**( `widget_list ` )
Sends widget definitions to the sender of the preview query

**Parameters:**
-   `widget_list` **&lt;Array of PreviewWidget&gt;**

<span id="register_layout"></span>
**`register_layout`**( `layout ` )
Registers a list of column layouts for the current preview

**Parameters:**
-   `layout` **&lt;Array of Column layout&gt;**

