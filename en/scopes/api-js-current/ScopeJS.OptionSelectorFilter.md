---
Title: ScopeJS.OptionSelectorFilter
---
        
OptionSelectorFilter
====================

A selection filter that displays a list of choices and allows one or more of them to be selected

-   Methods

<span id="active_options"></span>
Array of FilterOption **`active_options`**( `filter_state ` )
Get active options from an instance of FilterState for this filter

**Parameters:**
-   `filter_state` **&lt;Object&gt;**

    FilterState

**Returns:** &lt;Array of FilterOption&gt;
LIst of active FilterOption

<span id="add_option"></span>
**`add_option`**( `  ` )
Add a new option to this filter

**Returns:**
FilterOption The added filter option

<span id="filter_type"></span>
String **`filter_type`**( `  ` )
Get the type name of this filter

**Returns:** &lt;String&gt;
type name of this filter

<span id="has_active_option"></span>
Boolean **`has_active_option`**( `filter_state ` )
Check if an option is active for this filter

**Parameters:**
-   `filter_state` **&lt;Object&gt;**

    FilterState

**Returns:** &lt;Boolean&gt;
True if an option is active for this filter

<span id="id"></span>
String **`id`**( `  ` )
Get the identifier of this filter

**Returns:** &lt;String&gt;
identifier of this filter

<span id="label"></span>
String **`label`**( `  ` )
Get the label of this filter

**Returns:** &lt;String&gt;
label of this filter

<span id="multi_select"></span>
Boolean **`multi_select`**( `  ` )
Check if this filter supports multiple options to be selected

**Returns:** &lt;Boolean&gt;
True if this filter multiple options to be selected

<span id="options"></span>
Array of FilterOption **`options`**( `  ` )
Get all options of this filter, in the order they were added

**Returns:** &lt;Array of FilterOption&gt;

<span id="set_display_hints"></span>
**`set_display_hints`**( `hints ` )
Sets display hints for the Shell UI

**Parameters:**
-   `hints` **&lt;Int&gt;**

    0 is Default filter hint, 1 is Primary filter hint

<span id="update_state"></span>
**`update_state`**( `filter_state, option, active ` )
Marks given FilterOption of this filter instance as active (or not active) in a FilterState object. Records the given FilterOption as "selected" in the FilterState. This is meant to be used to modify a FilterState received with a search request before sending it back to the client (UI shell).

**Parameters:**
-   `filter_state` **&lt;FilterState&gt;**
-   `option` **&lt;<a href="ScopeJS.FilterOption.md" class="crosslink">FilterOption</a>&gt;**
-   `active` **&lt;Boolean&gt;**

