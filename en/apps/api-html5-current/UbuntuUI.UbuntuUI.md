---
Title: UbuntuUI.UbuntuUI
---
        
UbuntuUI
========

UbuntuUI is the critical Ubuntu HTML5 framework class. You need to construct an UbuntuUI object and initialize it to have an Ubuntu HTML5 app. You then use this object to access Ubuntu HTML5 objects (and object methods) that correspond to the Ubuntu HTML5 DOM elements.

Note: The UbuntuUI object is "UI" in all API doc examples.

<span id="UbuntuUI"></span>
**`UbuntuUI`**( `  ` )
##### Example

``` code
 var UI = new UbuntuUI();
     window.onload = function () {
       UI.init();
       UI.pagestack.push('pageid');
       [...]
     };
```

-   Methods

<span id="button"></span>
Button **`button`**( `id ` )
Gets an Ubuntu Button object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Button&gt;
-   The Button with the specified id

<span id="dialog"></span>
Dialog **`dialog`**( `id ` )
Gets an Ubuntu Dialog object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Dialog&gt;
-   The Dialog with the specified id

<span id="element"></span>
Element **`element`**( `  ` )
Gets the DOM element from a given selector

**Returns:** &lt;Element&gt;
-   The DOM element Gets the HTML element associated with an Ubuntu HTML5 JavaScript object

<span id="header"></span>
Header **`header`**( `id ` )
Gets an Ubuntu Header object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Header&gt;
-   The Header with the specified id

<span id="init"></span>
**`init`**( `  ` )
Required call that initializes the UbuntuUI object

<span id="list"></span>
List **`list`**( `selector ` )
Gets an Ubuntu List

**Parameters:**
-   `selector` **&lt;Selector&gt;**
    -   A selector that JavaScript querySelector method understands

**Returns:** &lt;List&gt;

<span id="optionselector"></span>
OptionSelector **`optionselector`**( `id, expanded, multiSelection ` )
Gets an Ubuntu Option Selector

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute
-   `expanded` **&lt;Boolean&gt;**
    -   Specifies whether the list is always expanded
-   `multiSelection` **&lt;Boolean&gt;**
    -   If multiple choice selection is enabled the list is always expanded.

**Returns:** &lt;OptionSelector&gt;

<span id="page"></span>
Page **`page`**( `id ` )
Gets an Ubuntu Page object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Page&gt;
-   The Page with the specified id

<span id="pagestack"></span>
Pagestack **`pagestack`**( `  ` )
Gets this UbuntuUI's single Pagestack object

**Returns:** &lt;Pagestack&gt;
-   The Pagestack

<span id="popover"></span>
Popover **`popover`**( `el, id ` )
Gets an Ubuntu Popover object

**Parameters:**
-   `el` **&lt;Element&gt;**
    -   The element to which the Popover's position is relative
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Popover&gt;
-   The Popover with the specified id

<span id="progress"></span>
Progress **`progress`**( `id ` )
Gets an Ubuntu Progress object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Progress&gt;
-   The Progress with the specified id

<span id="shape"></span>
Shape **`shape`**( `id ` )
Gets an Ubuntu Shape object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Shape&gt;
-   The Shape with the specified id

<span id="tab"></span>
Tab **`tab`**( `id ` )
Gets an Ubuntu Tab object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Tab&gt;
-   The Tab with the specified id

<span id="tabs"></span>
Tabs **`tabs`**( `  ` )
Gets this UbuntuUI's single Tabs object

**Returns:** &lt;Tabs&gt;
-   The Tabs

<span id="toolbar"></span>
Toolbar **`toolbar`**( `id ` )
Gets an Ubuntu Toolbar object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Toolbar&gt;
-   The Toolbar with the specified id

