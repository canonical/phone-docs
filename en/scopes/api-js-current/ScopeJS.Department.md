---
Title: ScopeJS.Department
---
        
Department
==========

A department with optional sub-department

-   Methods

<span id="add_subdepartment"></span>
**`add_subdepartment`**( `sub ` )
Add sub-department to this department

**Parameters:**
-   `sub` **&lt;<a href="index.html" class="crosslink">Department</a>&gt;**

    department

<span id="alternate_label"></span>
String **`alternate_label`**( `  ` )
Get the alternate label of this department Return the alternate label of this department. The alternate label expresses the plural "all" form of the normal label. For example, if the normal label is "Books", then the alternate label is "All Books". Note that alternate label and can be empty - in that case the normal label should be displayed instead

**Returns:** &lt;String&gt;
alternate label

<span id="alternate_label"></span>
String **`alternate_label`**( `  ` )
Get the alternate label of this department

**Returns:** &lt;String&gt;
alternate label of this department

<span id="has_subdepartments"></span>
Boolean **`has_subdepartments`**( `  ` )
Check if this department has subdepartments or has\_subdepartments flag is set

**Returns:** &lt;Boolean&gt;
True if this department has subdepartments or has\_subdepartments flag is set

<span id="id"></span>
String **`id`**( `  ` )
Get the identifier of this department

**Returns:** &lt;String&gt;
identifier of this department

<span id="label"></span>
String **`label`**( `  ` )
Get the label of this department

**Returns:** &lt;String&gt;
label of this department

<span id="query"></span>
CannedQuery **`query`**( `  ` )
Get the canned query associated with this department

**Returns:** &lt;CannedQuery&gt;
canned query associated with this department

<span id="set_has_subdepartments"></span>
**`set_has_subdepartments`**( `subdepartments ` )
Sets has\_subdepartments flag of this department

**Parameters:**
-   `subdepartments` **&lt;Boolean&gt;**

<span id="set_subdepartments"></span>
**`set_subdepartments`**( `departments ` )
Set sub-departments of this department

**Parameters:**
-   `departments` **&lt;Array of Department&gt;**

<span id="subdepartments"></span>
Array of Department **`subdepartments`**( `  ` )
Get list of sub-departments of this department

**Returns:** &lt;Array of Department&gt;
list of sub-departments of this department

