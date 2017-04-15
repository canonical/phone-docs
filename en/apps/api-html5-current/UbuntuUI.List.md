---
Title: UbuntuUI.List
---
        
List
====

A List comes with various options, including: a &lt;em&gt;header&lt;/em&gt;, main text (pushed left), an icon (pushed left), and a secondary label (pushed right).

<span id="UbuntuUI.List"></span>
**`UbuntuUI.List`**( `  ` )
##### Example

``` code
<section data-role="list" id="testlist">
      <header>My header text</header>
      <ul>
        <li>
          <a href="#">Main text, to the left</a>
        </li>
        <li>
          <a href="#">Main text</a>
          <label>Right text</label>
        </li>
        <li>
          <aside>
            <img src="someicon.png">
          </aside>
          <a href="#">Main text</a>
          <label>Right</label>
        </li>
      </ul>
     </section>
    
     JavaScript access:
       var list = UI.list('[id="testlist"]');
```

-   Methods

<span id="append"></span>
Element **`append`**( `text, label, id, onclick, user_data ` )
Append an item to a list

**Parameters:**
-   `text` **&lt;String&gt;**
    -   The main text, flushed left (no markup)
-   `label` **&lt;String&gt;**
    -   Additional text, flushed right (no markup)
-   `id` **&lt;ID&gt;**
    -   An id attribute value set for the new list item (must be unique in DOM)
-   `onclick` **&lt;Function&gt;**
    -   The click callback function
-   `user_data` **&lt;Object&gt;**
    -   Additional data that is passed to the click callback

**Returns:** &lt;Element&gt;
-   The created list item, or null on failure ot create

<span id="at"></span>
**`at`**( `index ` )
Gets a list item &lt;li&gt; by its index, where index counting starts from 1

**Parameters:**
-   `index` **&lt;Number&gt;**

**Returns:**
The list item, or null on failure

<span id="element"></span>
DOMElement **`element`**( `  ` )
Returns the DOM element associated with the selector this widget is bind to.

**Returns:** &lt;DOMElement&gt;

##### Example

``` code
       var mylist = UI.list("#listid").element();
```

<span id="forEach"></span>
**`forEach`**( `func ` )
Iterates over all list items and runs a provided function on each

**Parameters:**
-   `func` **&lt;Function&gt;**
    -   The function to run on each list item

<span id="remove"></span>
**`remove`**( `index ` )
Removes a list item &lt;li&gt; by its index, where index counting starts from 1

**Parameters:**
-   `index` **&lt;Number&gt;**

<span id="removeAllItems"></span>
**`removeAllItems`**( `  ` )
Removes all items from a list

<span id="setHeader"></span>
**`setHeader`**( `text ` )
Add or Set the List Header

**Parameters:**
-   `text` **&lt;String&gt;**
    -   The header text

