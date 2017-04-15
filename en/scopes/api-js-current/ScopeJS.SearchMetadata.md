---
Title: ScopeJS.SearchMetadata
---
        
SearchMetadata
==============

Metadata passed with search requests. Two forms of construction are allowed depending on the number and types of the parameters:

-   with locale and form factor or
-   with cardinality, locale, and form factor.

-   Methods

<span id="aggregated_keywords"></span>
Array of String **`aggregated_keywords`**( `  ` )
Get the list of scope keywords used to initiate this search request.

**Returns:** &lt;Array of String&gt;
The list of scope keywords used to initiate this search request.

<span id="cardinality"></span>
Int **`cardinality`**( `  ` )
Get cardinality.

**Returns:** &lt;Int&gt;

<span id="contains_hint"></span>
Boolean **`contains_hint`**( `key ` )
Check if this SearchMetadata has a hint.

**Parameters:**
-   `key` **&lt;String&gt;**

    The hint name.

**Returns:** &lt;Boolean&gt;
True if the hint is set.

<span id="form_factor"></span>
**`form_factor`**( `  ` )
Get the form factor string.

**Returns:**
The form factor string

<span id="get"></span>
String **`get`**( `key ` )
Get the value of an attribute

**Parameters:**
-   `key` **&lt;String&gt;**

**Returns:** &lt;String&gt;
, {Number} or {Object}

<span id="has_location"></span>
Boolean **`has_location`**( `  ` )
Does the SearchMetadata have a location.

**Returns:** &lt;Boolean&gt;
True if there is a location property.

<span id="hints"></span>
Dictionary **`hints`**( `  ` )
Get all hints.

**Returns:** &lt;Dictionary&gt;

<span id="internet_connectivity"></span>
ConnectivityStatus **`internet_connectivity`**( `  ` )
Get internet connectivity status.

**Returns:** &lt;ConnectivityStatus&gt;
The internet connectivity status.

<span id="is_aggregated"></span>
Boolean **`is_aggregated`**( `  ` )
Check if this search request originated from an aggregator scope.

**Returns:** &lt;Boolean&gt;
True if this search request originated from an aggregator scope.

<span id="locale"></span>
**`locale`**( `  ` )
Get the locale string.

**Returns:**
The locale string

<span id="location"></span>
Location **`location`**( `  ` )
Get location.

**Returns:** &lt;Location&gt;
data representing the current location, including attributes such as city and country.

<span id="remove_location"></span>
**`remove_location`**( `  ` )
Remove location data entirely. This method does nothing if no location data is present.

<span id="set"></span>
**`set`**( `key, value ` )
Set the value of an attribute

**Parameters:**
-   `key` **&lt;String&gt;**
-   `value` **&lt;String&gt;**

    , {Number} or {Object}

<span id="set_aggregated_keywords"></span>
**`set_aggregated_keywords`**( `aggregated_keywords ` )
Set the list of scope keywords used to initiate this search request.

**Parameters:**
-   `aggregated_keywords` **&lt;Array of String&gt;**

    The list of scope keywords used to initiate this search request.

<span id="set_cardinality"></span>
**`set_cardinality`**( `cardinality ` )
Set cardinality.

**Parameters:**
-   `cardinality` **&lt;Int&gt;**

<span id="set_hint"></span>
**`set_hint`**( `key, value ` )
Sets a hint.

**Parameters:**
-   `key` **&lt;String&gt;**

    The name of the hint.

-   `value` **&lt;Object&gt;**

    Hint value

<span id="set_internet_connectivity"></span>
**`set_internet_connectivity`**( `The ` )
Set internet connectivity status.

**Parameters:**
-   `The` **&lt;ConnectivityStatus&gt;**

    internet connectivity status.

<span id="set_location"></span>
**`set_location`**( `location ` )
Set location.

**Parameters:**
-   `location` **&lt;Location&gt;**

    data

