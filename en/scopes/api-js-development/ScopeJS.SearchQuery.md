---
Title: ScopeJS.SearchQuery
---
        
SearchQuery
===========

Represents a particular query

A scope must return an instance of this class from its implementation of Scope.search().

-   Methods

<span id="query"></span>
**`query`**( `  ` )
Get a canned query for this search request

**Returns:**
CannedQuery

<span id="search_metadata"></span>
**`search_metadata`**( `  ` )
Get metadata for this search request

**Returns:**
SearchMetadata

<span id="settings"></span>
**`settings`**( `  ` )
Returns a dictionary with the scope's current settings

**Returns:**
Dictionary

<span id="valid"></span>
**`valid`**( `  ` )
Check whether this query is still valid

**Returns:**
Boolean False if the query is finished or was cancelled ealier.

