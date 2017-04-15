---
Title: ScopeJS.SearchReply
---
        
SearchReply
===========

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

<span id="id"></span>
**`id`**( `id ` )
Returns a previously registered category

**Parameters:**
-   `id` **&lt;Object&gt;**

<span id="push"></span>
**`push`**( `result ` )
Sends a single result to the source of a query

**Parameters:**
-   `result` **&lt;Object&gt;**

    CategorisedResult

<span id="register_category"></span>
**`register_category`**( `id, title, icon, category_renderer ` )
Register new category and send it to the source of the query

**Parameters:**
-   `id` **&lt;Object&gt;**

    String id

-   `title` **&lt;Object&gt;**

    String title

-   `icon` **&lt;Object&gt;**

    String icon

-   `category_renderer` **&lt;Object&gt;**

    CategoryRenderer

